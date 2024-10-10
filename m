Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD5B997EA5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 10:04:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBAF910E2BA;
	Thu, 10 Oct 2024 08:04:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jBTUxuDQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE6D10E2BA;
 Thu, 10 Oct 2024 08:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728547448; x=1760083448;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1xPSJhYsFcvXIRnkaXV7Qc9EdzM+c3vohE+xXXs/B5g=;
 b=jBTUxuDQ6LLFTqCcvUSJ5JIikqL99G9M00kmBVQEnzw+C7nnXZIm2SA4
 q4lR20gCOlPukisVN03ANhu+Has8HAYYUjpVIe45eMvB3HQ/3a85csxzy
 jb1aeGwbYlG5XGbfuD7qyeQLP9cfz1f+o4ru2FO/4k/RxWXKWMkiuUNpI
 llm65gEAkf3n5auq1bJhgKF/qZ6AXrsNEe5x6JM3pjbIpsp3k7sz360Di
 bYm9CTyt22i81iWOC8LsI9lFG1V8ivqCIgij1vkT4qoazRF93auNOO8yz
 SWSihkdPAgoGzXHa1D4ZN8ibEhjj+CGcvHyEb8COMddgxMBtZ9UlO9Wot w==;
X-CSE-ConnectionGUID: gs/vNV3yQqefFTKBvPkPRg==
X-CSE-MsgGUID: 2qjotR1aSNSCFFUUJK4/Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="30762564"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="30762564"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 01:03:56 -0700
X-CSE-ConnectionGUID: lRist4B4RT2Y9q1v3LDYnQ==
X-CSE-MsgGUID: crkymVNqRyy1e4c9I0r3Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76432208"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.131])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 01:03:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, intel-xe@lists.freedesktop.org, Jouni
 =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 6/7] drm/i915/psr: Add VRR send push interface for PSR
 usage
In-Reply-To: <20241010053316.1580527-7-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
 <20241010053316.1580527-7-jouni.hogander@intel.com>
Date: Thu, 10 Oct 2024 11:03:50 +0300
Message-ID: <877cag8jvd.fsf@intel.com>
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

On Thu, 10 Oct 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Add own interface for PSR usage to perform push on frontbuffer tracking
> invalidate and flush call backs. Use this new interface from PSR code.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c |  7 ++++++-
>  drivers/gpu/drm/i915/display/intel_vrr.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h |  4 ++++
>  3 files changed, 28 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 5be8076475f0b..7959a33771b13 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2326,8 +2326,13 @@ static void psr_force_exit(struct intel_dp *intel_=
dp)
>  	 * This workaround do not exist for platforms with display 10 or newer
>  	 * but testing proved that it works for up display 13, for newer
>  	 * than that testing will be needed.
> +	 *
> +	 * In Lunarlake we can use TRANS_PUSH mechanism to force sending update
> +	 * to sink.
>  	 */
> -	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
> +	DISPLAY_VER(display) >=3D 20 ?
> +		intel_vrr_psr_send_push(display, cpu_transcoder) :
> +		intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
>  }
>=20=20
>  void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 5925ade4591d4..d51830d173b61 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -328,6 +328,24 @@ void intel_vrr_send_push(const struct intel_crtc_sta=
te *crtc_state)
>  		       trans_push_val);
>  }
>=20=20
> +/**
> + * intel_vrr_psr_send_push - Send push interface for PSR code
> + * @display: Intel display
> + * @cpu_transcoder: cpu_transcode
> + *
> + * This is for PSR usage to perform push on frontbuffer tracking invalid=
ate and
> + * flush call back. PSR mutex should be taken by caller.
> + */
> +void intel_vrr_psr_send_push(struct intel_display *display,
> +			     enum transcoder cpu_transcoder)
> +{
> +	if (DISPLAY_VER(display) < 20)
> +		return;
> +
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0,
> +		     TRANS_PUSH_SEND | LNL_TRANS_PUSH_PSR_PR_EN);
> +}
> +
>  bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i=
915/display/intel_vrr.h
> index a75f159168c11..3da7ba12697ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -12,6 +12,8 @@ struct drm_connector_state;
>  struct intel_atomic_state;
>  struct intel_connector;
>  struct intel_crtc_state;
> +struct intel_display;
> +enum transcoder;
>=20=20
>  bool intel_vrr_is_capable(struct intel_connector *connector);
>  bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefre=
sh);
> @@ -25,6 +27,8 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_sta=
te *crtc_state);
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>  void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *cr=
tc_state);
>  void intel_vrr_psr_frame_change_disable(const struct intel_crtc_state *c=
rtc_state);
> +void intel_vrr_psr_send_push(struct intel_display *display,
> +			     enum transcoder cpu_transcoder);

Nitpick, why not just make that parameter crtc_state like for all the
other functions?

BR,
Jani.

>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_stat=
e);
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_stat=
e);

--=20
Jani Nikula, Intel
