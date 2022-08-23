Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F26A559DACE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 13:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3710310F859;
	Tue, 23 Aug 2022 11:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780B610E21B
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 11:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661252536; x=1692788536;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PUVqryryaM6DJnk6WTYu7mezcw26ua3GsjYv4bOd9M8=;
 b=X1dHtkD0URil+Dl7cpSl2npRwhofDDmf6QzFhK2Xx1xyKWy6SM68/RLm
 QT54KBPiKTixFdBWbvJemi7CgXmi5PSTdlJlpDwhLPO5+Bb2hcl5/fEF9
 bV5R07vwckEJj7t4m2YfjXvHQfXEl4X4ExJZetogWt4BTydHEtpa8jOHc
 OMN0td5wlNgY7TAhe3RUwG5XeqdvUV11WH1u9Tc2bFd9km49Ctqz13B/b
 48MIfbDGnUaSmW6YjcreOJ8BgSZMj4IEiKK4sqa0DOlyIHL8KljI1fF1V
 /siaFVc10VzpaPkO1JF6KSN6WSVvOc/YQlmuImPKndFxYg2kdJjlYl9sE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="319702000"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="319702000"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:02:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="669982615"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:02:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220822105426.3521960-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
 <20220822105426.3521960-2-ankit.k.nautiyal@intel.com>
Date: Tue, 23 Aug 2022 14:02:06 +0300
Message-ID: <87h723kytt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dp: Add helper to check DSC1.2
 for HDMI2.1 DFP
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

On Mon, 22 Aug 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add helper function to check if Downstream HDMI 2.1 sink supports
> DSC1.2.

If we do this, are we going to add helpers for all the details in
display_info, when there's no conversions being done? I think the answer
should be "no".

i.e. why do we really need this?

BR,
Jani.

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 32292c0be2bd..fdf82373a22d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -118,6 +118,15 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  static void intel_dp_unset_edid(struct intel_dp *intel_dp);
>  static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>  
> +static bool
> +is_dfp_hdmi_sink_dsc_1_2(struct intel_dp *intel_dp)
> +{
> +	struct intel_connector *intel_connector = intel_dp->attached_connector;
> +	struct drm_connector *connector = &intel_connector->base;
> +
> +	return connector->display_info.hdmi.dsc_cap.v_1p2;
> +}
> +
>  /* Is link rate UHBR and thus 128b/132b? */
>  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
>  {
> @@ -2393,7 +2402,7 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
>  	rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
>  	max_frl_rate = max_lanes * rate_per_lane;
>  
> -	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
> +	if (is_dfp_hdmi_sink_dsc_1_2(intel_dp)) {
>  		max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
>  		dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
>  		if (max_dsc_lanes && dsc_rate_per_lane)
> @@ -2605,7 +2614,7 @@ intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
>  	if (!intel_connector)
>  		return;
>  	connector = &intel_connector->base;
> -	hdmi_is_dsc_1_2 = connector->display_info.hdmi.dsc_cap.v_1p2;
> +	hdmi_is_dsc_1_2 = is_dfp_hdmi_sink_dsc_1_2(intel_dp);
>  
>  	if (!drm_dp_pcon_enc_is_dsc_1_2(intel_dp->pcon_dsc_dpcd) ||
>  	    !hdmi_is_dsc_1_2)

-- 
Jani Nikula, Intel Open Source Graphics Center
