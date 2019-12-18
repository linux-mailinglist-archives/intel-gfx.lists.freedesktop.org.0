Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED461243B7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 10:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5FD76E2A8;
	Wed, 18 Dec 2019 09:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891DE6E2A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 09:52:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 01:52:02 -0800
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="210036407"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.5.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 01:52:00 -0800
MIME-Version: 1.0
In-Reply-To: <20191216161717.2688274-1-chris@chris-wilson.co.uk>
References: <20191216161717.2688274-1-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 18 Dec 2019 11:51:57 +0200
Message-ID: <157666271724.1052.2512293284980584134@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Unpin vma->obj on early error
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2019-12-16 18:17:16)
> If we inherit an error along the fence chain, we skip the main work
> callback and go straight to the error. In the case of the vma bind
> worker, we only dropped the pinned pages from the worker.
> 
> In the process, make sure we call the release earlier rather than wait
> until the final reference to the fence is dropped (as a reference is
> kept while being listened upon).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

<SNIP>

> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -292,6 +292,7 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
>  struct i915_vma_work {
>         struct dma_fence_work base;
>         struct i915_vma *vma;
> +       struct drm_i915_gem_object *pin;

This would reach much nicer as "pinned" to me.

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
