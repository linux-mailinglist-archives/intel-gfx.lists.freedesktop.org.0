Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F4C1584B1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 22:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262636E9F7;
	Mon, 10 Feb 2020 21:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF10D6E9F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 21:25:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 13:25:48 -0800
X-IronPort-AV: E=Sophos;i="5.70,426,1574150400"; d="scan'208";a="431740081"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 13:25:48 -0800
Date: Mon, 10 Feb 2020 13:27:14 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200210212714.GA258873@intel.com>
References: <20200208220106.3311791-1-chris@chris-wilson.co.uk>
 <20200208220106.3311791-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208220106.3311791-3-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gtt: Downgrade gen7 (ivb, byt,
 hsw) back to aliasing-ppgtt
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 08, 2020 at 10:01:06PM +0000, Chris Wilson wrote:
> Full-ppgtt on gen7 is proving to be highly unstable and not robust.
> 
> Fixes: 3cd6e8860ecd ("drm/i915/gen7: Re-enable full-ppgtt for ivb & hsw")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  drivers/gpu/drm/i915/i915_pci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 24b1f0ce8743..1d678aa7d420 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -437,7 +437,7 @@ static const struct intel_device_info snb_m_gt2_info = {
>  	.has_rc6 = 1, \
>  	.has_rc6p = 1, \
>  	.has_rps = true, \
> -	.ppgtt_type = INTEL_PPGTT_FULL, \
> +	.ppgtt_type = INTEL_PPGTT_ALIASING, \
>  	.ppgtt_size = 31, \
>  	IVB_PIPE_OFFSETS, \
>  	IVB_CURSOR_OFFSETS, \
> @@ -494,7 +494,7 @@ static const struct intel_device_info vlv_info = {
>  	.has_rps = true,
>  	.display.has_gmch = 1,
>  	.display.has_hotplug = 1,
> -	.ppgtt_type = INTEL_PPGTT_FULL,
> +	.ppgtt_type = INTEL_PPGTT_ALIASING,
>  	.ppgtt_size = 31,
>  	.has_snoop = true,
>  	.has_coherent_ggtt = false,
> -- 
> 2.25.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
