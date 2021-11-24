Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C0745C81D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 15:57:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D346E899;
	Wed, 24 Nov 2021 14:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF966E899
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 14:57:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="232784577"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="232784577"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 06:57:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="650414834"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 24 Nov 2021 06:57:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 16:57:34 +0200
Date: Wed, 24 Nov 2021 16:57:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YZ5S3tnYZZbYPbYo@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
 <20211123193649.3153258-4-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211123193649.3153258-4-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/xelpd: Add Pipe Color Lut caps
 to platform config
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
Cc: intel-gfx@lists.freedesktop.org, =ville.syrjala@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 24, 2021 at 01:06:49AM +0530, Uma Shankar wrote:
> XE_LPD has 128 Lut entries for Degamma, with additional 3 entries for
> extended range. It has 511 entries for gamma with additional 2 entries
> for extended range.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index f01cba4ec283..40d21a8c50ff 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -938,7 +938,7 @@ static const struct intel_device_info adl_s_info = {
>  
>  #define XE_LPD_FEATURES \
>  	.abox_mask = GENMASK(1, 0),						\
> -	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
> +	.color = { .degamma_lut_size = 128, .gamma_lut_size = 513 },		\

Missing .degamma_lut_tests.

Shouldn't .gamma_lut_size be 1024 or did they really change it?

>  	.dbuf.size = 4096,							\
>  	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>  		BIT(DBUF_S4),							\
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
