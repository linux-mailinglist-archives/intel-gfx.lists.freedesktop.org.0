Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804425B6157
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 20:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA67210E16D;
	Mon, 12 Sep 2022 18:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFFA10E16D
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 18:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663008913; x=1694544913;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GjDA9GRL2NVcIf25i5exim2/dHoIlmkt0POTfgAjy/0=;
 b=nTJPlA00kKFGS5bblwL7f1eu6kfbMDnzj1FIvb3nz/dLCi90H+XgFXv5
 nFRXsQkOSCnE3w8eCl3vNXpMymLsqdaDfNiJFAs6sUsM8Q8LD4a1buUQ0
 ggRFrlMglB2h/xpDJset/naoVDK9C5qfZ1p+bVgEokvrG6NMPzZrFSRTf
 SlvCdBkEgolKC8dbCKbgkWMHV++EqMKoFWQ/VbbRDw6Mwbjd58ZPwDjeQ
 sGorIzQhWfHbhfAI3GmyMNbmBQGeHyvoRfUUCrPuJokr3VKXDckXadg/l
 frFMLbsEXkax4YdgiGfZ2ps6Ot2h944JM7XJpaUhMpbJJrXzIqP6yJakE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="297945185"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="297945185"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 11:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="719876407"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 12 Sep 2022 11:55:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 21:55:08 +0300
Date: Mon, 12 Sep 2022 21:55:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Yx+AjCFEwgUGEfTC@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
 <20220901060101.1000290-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220901060101.1000290-5-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Add new members to
 configure PCON color conversion
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

On Thu, Sep 01, 2022 at 11:30:56AM +0530, Ankit Nautiyal wrote:
> The decision to use DFP output format conversion capabilities should be
> during compute_config phase.
> 
> This patch adds new members to crtc_state to help configure the DFP
> output related conversions. Also adds a member to intel_dp to store
> ycbcr420 pass through capability.
> 
> This will help to store only the format conversion capabilities of the
> DP device in intel_dp->dfp, and use crtc_state to compute and store the
> configuration for color/format conversion for a given mode.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0da9b208d56e..065ed19a5dd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1311,6 +1311,12 @@ struct intel_crtc_state {
>  
>  	/* for loading single buffered registers during vblank */
>  	struct drm_vblank_work vblank_work;
> +
> +	/* DP DFP color configuration */
> +	struct {
> +		bool rgb_to_ycbcr;
> +		bool ycbcr_444_to_420;
> +	} dp_dfp_config;

Hmm. I'm thinking just something like
 enum intel_output_format sink_format;
might be easier to deal with.

>  };
>  
>  enum intel_pipe_crc_source {
> @@ -1704,6 +1710,7 @@ struct intel_dp {
>  		int pcon_max_frl_bw;
>  		u8 max_bpc;
>  		bool ycbcr_444_to_420;
> +		bool ycbcr420_passthrough;
>  		bool rgb_to_ycbcr;
>  	} dfp;
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
