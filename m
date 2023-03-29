Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C756CD7F6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 12:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42EE210EA8B;
	Wed, 29 Mar 2023 10:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 200B010EA6C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 10:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680087285; x=1711623285;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ehtC9pdWfQr+oAO6jIJqQ1/xwcRzsk0K7fyh+BlmoDY=;
 b=kpXUv/2sTeIBmQzerodol2e6S5MoLSGkDuJjirnwZY9BrP+lfavMytrm
 rg6tN7q6y14gYz2CvNNKE6lmeRs9czLYv6yjFAw4/LgkNKbdyBQH41WzR
 3qcoWR0FSZigy+u6mN3Zs3iLbx5D2sY/MUb9G9a+FOoAFBb5SVM+YFoTu
 4gkg7RbkCVjk7B7l+qGM4JYbjV/LnW9lMaEOT3G7tOOfcDTJnY5BAxQHi
 FAsnUg4MNjiJJXEb/lf/eCmmECWZOaJ5Hjy6Oi3LtHnkYqJKurhxKvknc
 5jO2tdEVMtpNc9FsZx+zTMnuDKoC82XsV80yigJNeiAqGc8ZKTx2/K2+I g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="321238542"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="321238542"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 03:54:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="858453947"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="858453947"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga005.jf.intel.com with SMTP; 29 Mar 2023 03:54:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 13:54:38 +0300
Date: Wed, 29 Mar 2023 13:54:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZCQY7n2Le5GDvLSK@intel.com>
References: <20230329084449.717954-2-ankit.k.nautiyal@intel.com>
 <20230329090745.719672-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230329090745.719672-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Update Bigjoiner
 interface bits for computing compressed bpp
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

On Wed, Mar 29, 2023 at 02:37:45PM +0530, Ankit Nautiyal wrote:
> In Bigjoiner check for DSC, bigjoiner interface bits for DP for
> DISPLAY > 13 is 36 (Bspec: 49259).
> 
> v2: Corrected Display ver to 13.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index da1c00ee92fb..0b59c1e53678 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -756,8 +756,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	bits_per_pixel = min(bits_per_pixel, max_bpp_small_joiner_ram);
>  
>  	if (bigjoiner) {
> +		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 13 ? 24 : 36;

We generally prefer "new -> old" order. So please flip that around.

>  		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * 48 /
> +			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
>  			intel_dp_mode_to_fec_clock(mode_clock);

Hmm. Why is this using the FEC adjusted clock here?

>  
>  		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
