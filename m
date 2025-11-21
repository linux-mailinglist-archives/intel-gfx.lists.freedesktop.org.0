Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49995C78C4E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E97F10E867;
	Fri, 21 Nov 2025 11:24:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aBkcbbME";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65BF10E866;
 Fri, 21 Nov 2025 11:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763724267; x=1795260267;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=X7N1xbSAxyJYtcylDAtTNFmtdAai2kevJpXCEymjMXQ=;
 b=aBkcbbMEOp90USpUiARJPSc0OytImeq9Cw5oDu7LdvTWBoyeILTU6r/4
 5KB2R/f7lIoA/99b6MVm8NBdcRkd7IVMexs4v5LNjpPQpckT/PNgurD4P
 X8Vq04E4RbhONNdHdrP2bFPI6nCVL/LE/dWG2hXeybXU6YT7rkudkDErP
 a0ysfN0DCVXoDHpeZ9e4zW6xyVSmz/n8WQsr6l6NLTSspQoeF/ct5d7CB
 rHETTzwSJEizVJlLMNUAbgwC/Plz1GgWPexBEXJKXfm1vP0c5BK6CC6pi
 eNr1UZ4lMAbrhqpk/iwR5pnTWROExgB30bHLSi4LbvIqo+c+VdwmFAQ+h A==;
X-CSE-ConnectionGUID: OZRgJ9uQQPOTLHeeEmZbbw==
X-CSE-MsgGUID: +/BeyFgeQq6D3/HVYqe/UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65748942"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65748942"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:24:27 -0800
X-CSE-ConnectionGUID: Xr21cOZkTEqJerOi0HrilQ==
X-CSE-MsgGUID: nIg3LAQ6T8OG5V5xtCefnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196131120"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:24:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 3/8] drm/i915/psr: Compute Panel Replay/Adaptive
 coexistence behavior
In-Reply-To: <20251121111655.164830-4-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-4-jouni.hogander@intel.com>
Date: Fri, 21 Nov 2025 13:24:18 +0200
Message-ID: <e9c8d02a1567e58c53a4bce33b941a0e1b4b9975@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 21 Nov 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently we are checking Panel Replay capability DPCD register in
> intel_alpm.c and writing PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU
> and PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE in PR_ALPM_CTL
> register base on the informaion. Instead of directly accessing
> intel_dp->pr_dpcd compute the behavior during psr_compute_config and store
> it in intel_crtc_state.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     |  6 ++---
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c      | 22 +++++++++++++++----
>  3 files changed, 22 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/=
i915/display/intel_alpm.c
> index 6372f533f65b5..7ce8c674bb030 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -326,11 +326,9 @@ static void lnl_alpm_configure(struct intel_dp *inte=
l_dp,
>  		if (intel_dp->as_sdp_supported) {
>  			u32 pr_alpm_ctl =3D PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>=20=20
> -			if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABIL=
ITY)] &
> -			    DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP)
> +			if (crtc_state->link_off_after_as_sdp_when_pr_active)
>  				pr_alpm_ctl |=3D PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
> -			if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPAB=
ILITY)] &
> -						DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))
> +			if (crtc_state->disable_as_sdp_when_pr_active)
>  				pr_alpm_ctl |=3D PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
>=20=20
>  			intel_de_write(display, PR_ALPM_CTL(display, cpu_transcoder),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index f39d62aa99246..d8a222689a35b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1161,6 +1161,8 @@ struct intel_crtc_state {
>  	bool enable_psr2_su_region_et;
>  	bool req_psr2_sdp_prior_scanline;
>  	bool has_panel_replay;
> +	bool link_off_after_as_sdp_when_pr_active;
> +	bool disable_as_sdp_when_pr_active;
>  	bool wm_level_disabled;
>  	bool pkg_c_latency_used;

Side note, we really *really* should start adding more (anonymous)
sub-structs in intel_crtc_state to group things. This has gotten out of
hands.

>  	/* Only used for state verification. */
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 4c5883bed612b..9d2ba39423826 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1715,10 +1715,21 @@ static bool _psr_compute_config(struct intel_dp *=
intel_dp,
>  	return true;
>  }
>=20=20
> -static bool
> -_panel_replay_compute_config(struct intel_dp *intel_dp,
> -			     struct intel_crtc_state *crtc_state,
> -			     const struct drm_connector_state *conn_state)
> +static bool compute_link_off_after_as_sdp_when_pr_active(struct intel_dp=
 *intel_dp)
> +{
> +	return (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPAB=
ILITY)] &
> +		DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP);
> +}
> +
> +static bool compute_disable_as_sdp_when_pr_active(struct intel_dp *intel=
_dp)
> +{
> +	return !(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPA=
BILITY)] &
> +		 DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR);
> +}
> +
> +static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
> +					 struct intel_crtc_state *crtc_state,
> +					 const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_connector *connector =3D
> @@ -1747,6 +1758,9 @@ _panel_replay_compute_config(struct intel_dp *intel=
_dp,
>  		return false;
>  	}
>=20=20
> +	crtc_state->link_off_after_as_sdp_when_pr_active =3D compute_link_off_a=
fter_as_sdp_when_pr_active(intel_dp);
> +	crtc_state->disable_as_sdp_when_pr_active =3D compute_disable_as_sdp_wh=
en_pr_active(intel_dp);
> +
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;

--=20
Jani Nikula, Intel
