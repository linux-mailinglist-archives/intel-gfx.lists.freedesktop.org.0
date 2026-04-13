Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIB3J7qq3GmKVAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:35:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2243E92DC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4175610E376;
	Mon, 13 Apr 2026 08:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YImj08Vp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C7A210E376;
 Mon, 13 Apr 2026 08:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776069304; x=1807605304;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FNMYdLUbKCwfnsCAWHQ6xk2KbR00B6vdy0vm4mii9cQ=;
 b=YImj08VpYcPujjnRGmuG3T1iWcu/lDuLbldCU+hcNeTMso6E+q72gsDg
 +XI+o9Hj/Mj8HBaymmbPCuZ3Gjo4WGgE5p7sHIudXPy89rRlnX2UOvkyM
 dFs6atMpHceMzJ3d1jFFThICTa2Hp85mpesW9S/6gtSWgEj/cdeUhrEIP
 YTd66kmkmVaNy1vSx3kBo8UL26Bm/oUsgk5AJFLSxXu2rA67bVkACb3VL
 bonmghRrj4HpCIeBK2uJpx4U9/8t0UhE185oZdFM26fJdJK1gsJEWfeYm
 b6vDPfzENnJSwtNbJCHyazRXzSgb/xZW8zY63u0XZPD3QEwkXpfRDfyp1 A==;
X-CSE-ConnectionGUID: QYXPAPlhRRe+8cUf/+NC/A==
X-CSE-MsgGUID: zCKg7o+FStSJWtYRWepPUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="87293674"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="87293674"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:35:02 -0700
X-CSE-ConnectionGUID: m2TLwogvS8aC5lsDXIbOtw==
X-CSE-MsgGUID: 4QwQAupIR42vFlqVkJToPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="231448449"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:34:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 04/12] drm/i915/dp: Add helper to get AS SDP
 Transmission Line
In-Reply-To: <20260413035349.1730312-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-5-ankit.k.nautiyal@intel.com>
Date: Mon, 13 Apr 2026 11:34:55 +0300
Message-ID: <60b491e73f722548e1d40f4aafccd1096c4807cf@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 0A2243E92DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Introduce a DP helper to compute the Adaptive Sync SDP transmission line
> and use it when programming the EMP_AS_SDP_TL register.
>
> Currently the AS SDP transmission line is programmed to the T1 position.
> This can be extended in the future to support programming the T2 position
> as well.
>
> While at it, improve the documentation: the AS SDP transmission line
> corresponds to the T1 position, which maps to the start of the VSYNC
> pulse.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h  |  2 ++
>  drivers/gpu/drm/i915/display/intel_vrr.c |  4 ++--
>  3 files changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4955bd8b11d7..fd668babd641 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7415,3 +7415,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  
>  	return true;
>  }
> +
> +int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state)

So the name of the function is Intel display port secondary data packet
adaptive sync transmission line.

The function name doesn't say what the function *does*.

> +{
> +	/*
> +	 * EMP_AS_SDP_TL defines the T1 position as the default AS SDP
> +	 * Transmission Line, which corresponds to the start of the
> +	 * VSYNC pulse.
> +	 *
> +	 * Use the T1 position for now.
> +	 */
> +	return crtc_state->vrr.vsync_start;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 2849b9ecdc71..7024fd0ace0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>  		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>  
> +int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state);
> +
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5164d8c354e0..b700da4e9256 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -607,11 +607,11 @@ void intel_vrr_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
>  
>  	/*
>  	 * Since currently we support VRR only for DP/eDP, so this is programmed
> -	 * only for Adaptive Sync SDP to Vsync start.
> +	 * only for Adaptive Sync SDP.
>  	 */
>  	intel_de_write(display,
>  		       EMP_AS_SDP_TL(display, cpu_transcoder),
> -		       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> +		       EMP_AS_SDP_DB_TL(intel_dp_sdp_as_tl(crtc_state)));
>  }
>  
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)

-- 
Jani Nikula, Intel
