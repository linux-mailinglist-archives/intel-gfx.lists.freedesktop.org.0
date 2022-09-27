Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E05885EBE8D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 11:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4889410E0C7;
	Tue, 27 Sep 2022 09:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84CC10E0C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 09:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664270836; x=1695806836;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RA7xy9bn7fuyiWhUN20BxZQYB5WXInVqqqEQ61BtR6o=;
 b=cpcKxx/QMvpxBwc7aP3Z9LU6vTYYVCto7n5v/wZEN1OmIcMVMdiWr8Wc
 9rFzm3UrnKYlzmvecpxxJM8PBS416UYQAnC7FIa7/6RTii06wZbKb05tb
 SFyok6GE9+6yNbNKKoaPnyDjt9oFn+WDPkkuKceIEMmNhJj3oXl2JZK4n
 9jq8V5xeKRmunwATIvKLg2XtBEwccgOWPY+DOSXswvqjy+2gjH23HA9d0
 IQbo7PitoRtIe76ZWt+tuFWv3+qQFziIM3FEgE/Wuj6KFPmnCrXDu6g+7
 jX0+jLAdFFel+2+n0ialnqop1JNbtA+Oz3AB9mDS+XF3FM6AYmcPBjHDc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="281638929"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="281638929"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 02:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="599112972"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="599112972"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2022 02:27:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 12:27:13 +0300
Date: Tue, 27 Sep 2022 12:27:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <YzLB8f7tlZWkH3/P@intel.com>
References: <20220927091625.2127039-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220927091625.2127039-1-mika.kahola@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add check for null dereference
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 27, 2022 at 12:16:25PM +0300, Mika Kahola wrote:
> fixed_mode in intel_edp_add_properties() function may be NULL
> which is used later on in the function. Return early, in case of
> fixed_mode is NULL to avoid NULL dereference.

Should no longer be possible:
commit bde544e1d701 ("drm/i915: Don't init eDP if we can't find a fixed mode")

> 
> Discovered by klockwork static analysis.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6ebd6e104b2c..db2541873f9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5188,6 +5188,9 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
>  	const struct drm_display_mode *fixed_mode =
>  		intel_panel_preferred_fixed_mode(connector);
>  
> +	if (!fixed_mode)
> +		return;
> +
>  	intel_attach_scaling_mode_property(&connector->base);
>  
>  	drm_connector_set_panel_orientation_with_quirk(&connector->base,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
