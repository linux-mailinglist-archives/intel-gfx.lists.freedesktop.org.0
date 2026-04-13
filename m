Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPSINR+q3GlfVAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:32:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521D93E928B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB4110E37A;
	Mon, 13 Apr 2026 08:32:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SzwdkJNO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE99710E376;
 Mon, 13 Apr 2026 08:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776069148; x=1807605148;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2NyYDKTl8rgMPQJA1ydwD6V1OQHloyI7+62Faq6RV+0=;
 b=SzwdkJNO3QgWlW9+5u3+p7VsXjw5OiLWu+dWlk4sVFSd6e/09NXI/CXM
 REAeAs5X4SH/lkyq25yR63MKKtyFbTrP+RVyiHjjjYE5TS84FceBEhkYz
 zgjNajG1l2HzUO3IF1kgg7sHH9AMlObMq7LRB5EsJHIkBGe55iIxqFOTa
 3zzDIZdLmw+epWoWAgzkh9VO5QP9QYYkiItGoiRaMwlzBaYMlEnCqSl2m
 eqrB5wOM5KWnczIug+bRhEMK5lZrCjScJz5a0yv05wDPaYtLoI2zN//Gd
 0o217XGrA5DRnAHupreqkdCmCpGTAV3h+LyNlkMifosHah7wBmrTqZkid Q==;
X-CSE-ConnectionGUID: l9yOHkfwTJKj/AmdNZ4A6A==
X-CSE-MsgGUID: Bx9aiuOGRoCV6Q5lQTvLUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="77016630"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="77016630"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:32:27 -0700
X-CSE-ConnectionGUID: NdDLdxUPQrm2byENR0QQsA==
X-CSE-MsgGUID: UlUzN+sLS0WoRclBXFWyMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229642921"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:32:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 02/12] drm/i915/vrr: Add helper to readback EMP_AS_SDP_TL
In-Reply-To: <20260413035349.1730312-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-3-ankit.k.nautiyal@intel.com>
Date: Mon, 13 Apr 2026 11:32:22 +0300
Message-ID: <4daee56a2d6dd3a5797e13b19232d1b3b5fd1c2e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 521D93E928B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> EMP_AS_SDP_TL is used to program both DP Adaptive Sync SDP and HDMI
> Video Timing EMP for VRR operation. Add a helper to read back the
> programmed transmission line from hardware so VRR code can populate
> the corresponding CRTC state fields during get_config.
>
> This provides a common read-back path for VRR packet transmission
> line state.

Still no idea what "emp" means.

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h |  1 +
>  2 files changed, 14 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1fed597439b0..abdae7f1f8a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1218,3 +1218,16 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
>  
>  	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
>  }
> +
> +u16 intel_vrr_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 val;
> +
> +	if (!HAS_EMP_AS_SDP_TL(display))
> +		return 0;
> +
> +	val = intel_de_read(display, EMP_AS_SDP_TL(display, cpu_transcoder));
> +	return REG_FIELD_GET(EMP_AS_SDP_DB_TL_MASK, val);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 4f16ca4af91f..6659a8a53432 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -53,5 +53,6 @@ int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_sta
>  int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +u16 intel_vrr_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */

-- 
Jani Nikula, Intel
