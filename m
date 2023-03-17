Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D426BDD95
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 01:28:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D8210E012;
	Fri, 17 Mar 2023 00:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3170210E012
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 00:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679012914; x=1710548914;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w/Z3AVIhDq/AJ1eqZItDMIl1tP12prvG7ikC56V2jyw=;
 b=b4BHMwV1vEs/+CkDUCLQQyWhf49vDUshuotM1VrZwJ39siiPi/nGRIZz
 XilfM1WOhkb7gjWdsZ60xjbuz0RDNh0f04TIxlNNKscAEHhnKmsCwaBAe
 FyEH3In8jcD57suKxsDmwDlm7tmFdSjauYOFXFBPSOw2MEh9Ef0fZQCPH
 4LlHYp28YzVw283wPf/tYu1vSMPJhjqR0lE2VjkBSkSIl0bI5ZU3En0yQ
 8MU+eM/DSG2HeWhcJK8ktRr5jwUW4U6Dbd2PHSxgSJy8S4GlgBSUZ2O78
 qJ9NZ2lW+vJLEs+0IadwnkriPRuP0Xqw2XhGhdhLxT2O/J3ch6Cde1ByM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="338161268"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="338161268"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 17:28:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744364992"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="744364992"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 16 Mar 2023 17:28:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 02:28:30 +0200
Date: Fri, 17 Mar 2023 02:28:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZBO0Lv15lO0qBx7y@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230314110415.2882484-6-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v11 05/11] drm/i915/dp: Rearrange check for
 illegal mode and comments in mode_valid
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

On Tue, Mar 14, 2023 at 04:34:09PM +0530, Ankit Nautiyal wrote:
> Check for MODE_H_ILLEGAL before calculating max rates, lanes etc.
> Move comments about compressed bpp U6.4 format closer to where it is used.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b49d113357e4..dcb3c2519041 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1098,6 +1098,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> +	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
> +		return MODE_H_ILLEGAL;
> +
>  	max_link_clock = intel_dp_max_link_rate(intel_dp);
>  	max_lanes = intel_dp_max_lane_count(intel_dp);
>  
> @@ -1105,13 +1108,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	mode_rate = intel_dp_link_required(target_clock,
>  					   intel_dp_mode_min_output_bpp(connector, mode));
>  
> -	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
> -		return MODE_H_ILLEGAL;
> -
> -	/*
> -	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> -	 * integer value since we support only integer values of bpp.
> -	 */
>  	if (HAS_DSC(dev_priv) &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>  		/*
> @@ -1120,6 +1116,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		 */
>  		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>  
> +		/*
> +		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> +		 * integer value since we support only integer values of bpp.
> +		 */
>  		if (intel_dp_is_edp(intel_dp)) {
>  			dsc_max_output_bpp =
>  				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
