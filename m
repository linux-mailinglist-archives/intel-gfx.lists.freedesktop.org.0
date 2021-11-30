Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C2846308D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 11:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D9A6E3AC;
	Tue, 30 Nov 2021 10:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75C06E3AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 10:03:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="216877525"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="216877525"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 02:03:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="512113933"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 30 Nov 2021 02:03:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Nov 2021 12:03:23 +0200
Date: Tue, 30 Nov 2021 12:03:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YaX26zzEFMQZPX7p@intel.com>
References: <20211125202750.3263848-1-uma.shankar@intel.com>
 <20211125202750.3263848-4-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211125202750.3263848-4-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/xelpd: Add Pipe Color Lut
 caps to platform config
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

On Fri, Nov 26, 2021 at 01:57:50AM +0530, Uma Shankar wrote:
> XE_LPD has 128 Lut entries for Degamma, with additional 3 entries for
> extended range. It has 511 entries for gamma with additional 2 entries
> for extended range.
> 
> v2: Updated lut size for 10bit gamma, added lut_tests (Ville)
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index f01cba4ec283..22eae330f075 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -938,7 +938,11 @@ static const struct intel_device_info adl_s_info = {
>  
>  #define XE_LPD_FEATURES \
>  	.abox_mask = GENMASK(1, 0),						\
> -	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
> +	.color = { .degamma_lut_size = 128, .gamma_lut_size = 1024,		\
> +		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
> +					DRM_COLOR_LUT_EQUAL_CHANNELS,		\
> +		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING,		\

The 10bit mode doesn't interpolate so it can handle non-decreasing
values just fine.

With the gamma_lut_tests part dropped this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	},									\
>  	.dbuf.size = 4096,							\
>  	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>  		BIT(DBUF_S4),							\
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
