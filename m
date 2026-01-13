Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C4ED1B731
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jan 2026 22:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605EC10E54E;
	Tue, 13 Jan 2026 21:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JE1VGwOz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3544A10E381;
 Tue, 13 Jan 2026 21:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768340372; x=1799876372;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=B6Jw9Dtj+eRMfTbEQ0SvG3Bsov7a7T+RyLVhtaDnHco=;
 b=JE1VGwOzMM+ZXRJc4u3USsYj/ds9tQxNMPuzOYTPs/16TCECUG64M5SJ
 OU88/CpBKPpaQK2oBr8gFVkSgdGAh2DWuU7Y7bZjfo/18LPnzobNbXnAL
 8nqmRtoLQzEXxEnbbEnIYHsoRBw/EUJZ+SWNillEsm86fc7g48ae20o1R
 Cuhc+DlKSx2njVgscPyFrmWIPTDlG4KDh/wW0yXjMhEvt7AGho6F2jY9G
 AU2XyPc7eMDZHHBclkbQoA8npIpDibizSfV39dEkjlnFXE5Pe4EekRORr
 7dlIF+JXz+7kvm2F2+Va49XsrkEQTfWT0fbVAxmQSSwi2eSY0r0H7dfCy w==;
X-CSE-ConnectionGUID: oI7ciSwESXOMJdXhoppw2A==
X-CSE-MsgGUID: M6P7HindRiiayq5ra+4X3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="87051119"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="87051119"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 13:39:31 -0800
X-CSE-ConnectionGUID: UK8IjZVFSKiDfSPvhAI92A==
X-CSE-MsgGUID: 6D7zRXHYRCaLGNyO8X0zwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="208957864"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.220.52])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 13:39:29 -0800
Date: Tue, 13 Jan 2026 23:39:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, Jerome Tollet <jerome.tollet@gmail.com>
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Message-ID: <aWa7jjtOWnSd_JIp@intel.com>
References: <20260113133845.1636774-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260113133845.1636774-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 13, 2026 at 07:08:45PM +0530, Ankit Nautiyal wrote:
> From: Jerome Tollet <jerome.tollet@gmail.com>
> 
> As per HDMI 2.0 specification, after scrambled video transmission begins,
> the source must poll the TMDS_Scrambler_Status bit until it reads 1 or
> until a timeout of 200 ms.
> 
> Add a polling step after enabling the HDMI port to verify scrambling
> status, following the spec requirement.
> 
> Without the wait for the scrambling bit to set, some HDMI 2.0 monitors fail
> to decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
> fully configured by the sink.
> 
> v2:
>  - Instead of the fixed delay, poll for TMDS scramble status for 200 msec
>    as per the HDMI spec. (Ankit)
> 
> Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
> Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tollet@gmail.com/
> Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
> 
> Rebased and resend to intel-gfx and intel-xe so that the patch is picked
> up by intel gfx CI.
> 
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
>  3 files changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index cb91d07cdaa6..c708b713f0e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
>  	}
>  
>  	intel_ddi_buf_enable(encoder, buf_ctl);
> +
> +	intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);

This is the last thing we do in the modeset (apart for some HDCP stuff),
so it's not at all clear why this would fix anything. The only thing that
will change after this is the actual video data or some infoframes (audio
in particular). It would be good to find out what exactly is the thing
that needs the delay (ie. keep moving the delay further forward in the
modeset sequence until it fails again).

>  }
>  
>  static void intel_ddi_enable(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 055e68810d0d..6f7dcd7365a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3363,3 +3363,28 @@ intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width, int num_slices,
>  
>  	return 0;
>  }
> +
> +/*
> + * As Per HDMI 2.0 spec: after scrambled video transmission begins,
> + * poll TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
> + */
> +void
> +intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
> +				      struct drm_connector *_connector)
> +{
> +	struct intel_connector *connector = to_intel_connector(_connector);
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	bool scrambling_enabled = false;
> +	int ret;
> +
> +	if (!crtc_state->hdmi_scrambling)
> +		return;
> +
> +	/* Poll for a max of 200 msec as per HDMI spec */
> +	ret = poll_timeout_us(scrambling_enabled = drm_scdc_get_scrambling_status(&connector->base),
> +			      scrambling_enabled, 1000, 200 * 1000, false);
> +	if (ret)
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
> +			    connector->base.base.id, connector->base.name);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index be2fad57e4ad..0fa3661568e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state,
>  			unsigned int type,
>  			void *frame, ssize_t len);
> +void intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
> +					   struct drm_connector *_connector);
>  
>  #endif /* __INTEL_HDMI_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
