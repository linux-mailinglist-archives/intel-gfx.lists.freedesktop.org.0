Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ED911A88A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 11:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D846EAF1;
	Wed, 11 Dec 2019 10:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05E46EAF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 10:03:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 02:03:35 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="207623803"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.9.238])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 02:03:34 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191207170110.2200142-5-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <20191207170110.2200142-5-chris@chris-wilson.co.uk>
Message-ID: <157605861147.10520.15411994387832724608@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 11 Dec 2019 12:03:31 +0200
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Align start for memcpy_from_wc
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

Quoting Chris Wilson (2019-12-07 19:01:07)
> The movntqda requires 16-byte alignment for the source pointer. Avoid
> falling back to clflush if the source pointer is misaligned by doing the
> doing a small uncached memcpy to fixup the alignments.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

<SNIP>

> @@ -1150,19 +1150,30 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
>                 return ERR_PTR(ret);
>         }
>  
> +       ptr = dst;

I'd add a newline here as this will propagate to the later branch if WC
map fails.

>         src = ERR_PTR(-ENODEV);
> -       if (src_needs_clflush &&
> -           i915_can_memcpy_from_wc(NULL, offset, 0)) {
> +       if (src_needs_clflush && i915_has_memcpy_from_wc()) {
>                 src = i915_gem_object_pin_map(src_obj, I915_MAP_WC);
>                 if (!IS_ERR(src)) {
> -                       i915_memcpy_from_wc(dst,
> -                                           src + offset,
> -                                           ALIGN(length, 16));
> +                       src += offset;
> +
> +                       if (!IS_ALIGNED(offset, 16)) {
> +                               len = min(ALIGN(offset, 16) - offset, length);
> +
> +                               memcpy(ptr, src, len);
> +
> +                               offset += len;
> +                               length -= len;
> +                               ptr += len;
> +                               src += len;
> +                       }
> +                       GEM_BUG_ON(!IS_ALIGNED((unsigned long)src, 16));
> +
> +                       i915_memcpy_from_wc(ptr, src, ALIGN(length, 16));

Could be a helper function.

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
