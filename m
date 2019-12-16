Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F95121B6F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 22:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948656E89B;
	Mon, 16 Dec 2019 21:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382156E89B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 21:03:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 13:03:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="209445761"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.251.95.248])
 by orsmga008.jf.intel.com with ESMTP; 16 Dec 2019 13:03:49 -0800
MIME-Version: 1.0
From: Chris Wilson <chris.p.wilson@intel.com>
User-Agent: alot/0.6
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191216185332.83289-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191216185332.83289-1-venkata.s.dhanalakota@intel.com>
Message-ID: <157653022755.2428.2738383096837141193@skylake-alporthouse-com>
Date: Mon, 16 Dec 2019 21:03:47 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix typecheck macro in GT_TRACE
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

Quoting Venkata Sandeep Dhanalakota (2019-12-16 18:53:32)
> typecheck() macro creates an huge stack size causing
> issues with static analysis with coverity, addressing
> this with creating a local pointer.
> 
> Fixes: 639f2f24895f ("drm/i915: Introduce new macros for tracing")
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 9d9e8831daeb..2355cf129e9c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -12,9 +12,9 @@
>  
>  struct drm_i915_private;
>  
> -#define GT_TRACE(gt__, fmt, ...) do {                                  \
> -       typecheck(struct intel_gt, *(gt__));                            \
> -       GEM_TRACE("%s  " fmt, dev_name(gt->i915->drm.dev),              \
> +#define GT_TRACE(gt, fmt, ...) do {                                    \
> +       const struct intel_gt *gt__ __maybe_unused = (gt);              \
> +       GEM_TRACE("%s  " fmt, dev_name(gt__->i915->drm.dev),            \
>                   ##__VA_ARGS__);                                       \
>  } while (0)

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
