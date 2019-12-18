Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE75124497
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 11:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0478288894;
	Wed, 18 Dec 2019 10:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FFF88894
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 10:32:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 02:32:54 -0800
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="210048191"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.5.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 02:32:52 -0800
MIME-Version: 1.0
In-Reply-To: <20191216161717.2688274-2-chris@chris-wilson.co.uk>
References: <20191216161717.2688274-1-chris@chris-wilson.co.uk>
 <20191216161717.2688274-2-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 18 Dec 2019 12:32:50 +0200
Message-ID: <157666517028.1052.16015077712364948876@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Hold reference to
 intel_frontbuffer as we track activity
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Matthew Auld <matthew.auld@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2019-12-16 18:17:17)
> Since obj->frontbuffer is no longer protected by the struct_mutex, as we
> are processing the execbuf, it may be removed. Mark the
> intel_frontbuffer as rcu protected, and so acquire a reference to
> the struct as we track activity upon it.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/827
> Fixes: 8e7cb1799b4f ("drm/i915: Extract intel_frontbuffer active tracking")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+

<SNIP>

> @@ -54,6 +55,35 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
>  void intel_frontbuffer_flip(struct drm_i915_private *i915,
>                             unsigned frontbuffer_bits);
>  
> +void intel_frontbuffer_put(struct intel_frontbuffer *front);
> +
> +static inline struct intel_frontbuffer *
> +__intel_frontbuffer_get(const struct drm_i915_gem_object *obj)
> +{
> +       struct intel_frontbuffer *front;
> +
> +       if (likely(!rcu_access_pointer(obj->frontbuffer)))
> +               return NULL;
> +
> +       rcu_read_lock();
> +       do {
> +               front = rcu_dereference(obj->frontbuffer);
> +               if (!front)
> +                       break;
> +
> +               if (!kref_get_unless_zero(&front->ref))
> +                       continue;
> +
> +               if (front == rcu_access_pointer(obj->frontbuffer))
> +                       break;
> +
> +               intel_frontbuffer_put(front);
> +       } while (1);
> +       rcu_read_unlock();
> +
> +       return front;
> +}

Understood that there can only be so many writers, so it's not
technically blocking, but the constructs looks like it was designed to
spin.

It would look more appropriate without the loop:

if (unlikely(!kref_get_unless_zero(&front->ref)))
	goto retry;

<SNIP>

> +void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
> +                                        enum fb_op_origin origin)
> +{
> +       struct intel_frontbuffer *front;
> +
> +       front = __intel_frontbuffer_get(obj);
> +       if (front) {
> +               intel_frontbuffer_flush(front, origin);
> +               intel_frontbuffer_put(front);
> +       }
> +}
> +
> +void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
> +                                             enum fb_op_origin origin)
> +{
> +       struct intel_frontbuffer *front;
> +
> +       front = __intel_frontbuffer_get(obj);
> +       if (front) {
> +               intel_frontbuffer_invalidate(front, origin);
> +               intel_frontbuffer_put(front);
> +       }
> +}

Could be de-duped as by taking the vfunc as parameter, but that's
just by coincidence that parameters match.

The rest checks out, so with the loop removed:

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
