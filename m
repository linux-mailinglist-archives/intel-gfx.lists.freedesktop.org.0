Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA9E7470AE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 14:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF28210E148;
	Tue,  4 Jul 2023 12:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94A1010E148
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 12:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688473058; x=1720009058;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=FKPuVyToXkoaw+nSFUFPFeABdoPanH+CrxGNRG4JaVI=;
 b=n1yDrqt+l0nm0DQ8jEgmja0njyieSS/PViLvYF2t1S2me8u6YClp4ceJ
 SA7am9QkUNatL2NtC23ZUc4Rm8HcbPHw4wxt+KSrvifnuRl66EZgWQ+Wg
 WxNT1d/HUNb0mwMLpUocco2nj1MeBRj8s5e0+qAcMPpO4j7LLIhuZJFhi
 tLGXv6KEDOB422ZkBgD1QtoR8fbdqsKahxKSbGrL+GEGwNeeBTYWEsXy9
 4inLeIkJzAO9NtVNKbo11kU9W3aTU3yiDoaNrsKh1OLg9qaYyQXo1Egd6
 HS+8pQUkww5Kj17wKrH9/cjF8KxSRou4r8B6YoL3bmS1tCX7ErgieVbC9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="365679723"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="365679723"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 05:17:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="863403446"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="863403446"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 05:17:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230704103107.11237-2-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230704103107.11237-1-stanislav.lisovskiy@intel.com>
 <20230704103107.11237-2-stanislav.lisovskiy@intel.com>
Date: Tue, 04 Jul 2023 15:17:10 +0300
Message-ID: <87bkgr27nd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add helper function for
 getting number of VDSC engines
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

On Tue, 04 Jul 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> Currently we are using dsc_split and bigjoiner variables for determining
> amount of VDSC instances, however that might change in future, if we happen
> to have more of those.
> So lets pack all that logic into single function for convenience, so that
> at least this isn't hardcoded throughout the whole VDSC code.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 15 +++++++++++----
>  drivers/gpu/drm/i915/display/intel_vdsc.h |  1 +
>  2 files changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..2811810a5eb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -293,6 +293,16 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>  }
>  
> +u8 intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)

s/u8/int/

> +{
> +	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
> +
> +	if (crtc_state->bigjoiner_pipes)
> +		num_vdsc_instances *= 2;
> +
> +	return num_vdsc_instances;
> +}
> +
>  static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -303,11 +313,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  	u32 pps_val = 0;
>  	u32 rc_buf_thresh_dword[4];
>  	u32 rc_range_params_dword[8];
> -	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
>  	int i = 0;
> -
> -	if (crtc_state->bigjoiner_pipes)
> -		num_vdsc_instances *= 2;
> +	u8 num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
>  
>  	/* Populate PICTURE_PARAMETER_SET_0 registers */
>  	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 8763f00fa7e2..94a7652498e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -22,6 +22,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
>  struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc);
> +u8 intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>  			     const struct intel_crtc_state *crtc_state);
>  void intel_dsc_dp_pps_write(struct intel_encoder *encoder,

-- 
Jani Nikula, Intel Open Source Graphics Center
