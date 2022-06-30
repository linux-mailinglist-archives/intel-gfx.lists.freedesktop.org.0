Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB472561A49
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 14:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8ED211A5E2;
	Thu, 30 Jun 2022 12:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959D7113608
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 12:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656591917; x=1688127917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=G3H+dCSvUujczmbQsPs8Y5WgUCk2/Qw1sERdLD9eAO4=;
 b=n5vwLKTvWh5T4gowIUMV/1vr7jEkQ1lOy8R3WxhA5UUaLjxk/sRACbAh
 TebkR9aSOtTRUHUnbXCNcv4aiIKoRd7SD7CNVvlKOTSgSyd1Dp5InUqlQ
 XK3mQRMz/gdHV27ZjEgJk6iNk2Uch5aWg4di/Y2Rg9FcZsyk82eBVfFl6
 GIWR6watljyKljsieE1R8IyK02F3Nu8hzTgS4COi1DBdiYIH2XktNhh/q
 tp6BgM4Cx1B1rtwnzkX6kvhQkOfWhJafLAEROpPqkYtsGVgir5WGSI3yX
 Q1AEYHen6E3j146jHIXiOXaIowUtHBdqKw35PJO1cpcnpUV7D/M0PpgpL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="283432600"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="283432600"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647871594"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga008.fm.intel.com with SMTP; 30 Jun 2022 05:25:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 15:25:14 +0300
Date: Thu, 30 Jun 2022 15:25:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <Yr2WKgTSUH4/PHKS@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220601042411.3299122-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220601042411.3299122-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 01, 2022 at 09:54:11AM +0530, Arun R Murthy wrote:
> Starting from Gen12 Async Flip is supported on linear buffers.

I was asking for justification for the gen12+ approach. Why not
expose it on earlier platforms?

> This patch enables support for async on linear buffer.
> 
> UseCase: In Hybrid graphics, for harware unsupported pixel formats it
> will be converted to linear memory and then composed.
> 
> v2: Added use case
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e71b69425309..da2df7239353 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7524,6 +7524,13 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  		 * this selectively if required.
>  		 */
>  		switch (new_plane_state->hw.fb->modifier) {
> +		case DRM_FORMAT_MOD_LINEAR:
> +			if (DISPLAY_VER(i915) < 12) {
> +				drm_dbg_kms(&i915->drm,
> +					"[PLANE:%d:%s] Modifier does not support async flips\n",
> +					plane->base.base.id, plane->base.name);
> +				return -EINVAL;
> +			}
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
