Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBOpOgOr3GlfVAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:36:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748C03E92FD
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:36:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A15F10E37B;
	Mon, 13 Apr 2026 08:36:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NVLSfnSl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F6B10E37B;
 Mon, 13 Apr 2026 08:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776069377; x=1807605377;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2LuspYCjk1x5mlXzmrlIlAO3vhhDXzNCITKWExUhjKY=;
 b=NVLSfnSlDiDTZihzMHw3/ScZr6+tue8ZsuuvFEC7sTOfbevuiWJYL/QC
 O/lu+Fc0lxzybzkZMZ7YWR8dEsYw+5DNuQrw0q2+lq3aZzGsaAlI/PCkr
 3+K5CWP+5qGmd65+ldNMoy9ITfLxN1PzpWgD8U1zU2hiwwtUe4mG6lAGZ
 RX97JTA9SW6BfS7vWEliIfUOafYXmAmkkrsFrwWiL06q10JVqVtCMiup2
 igU1r9ntvewwtPe1B/AqehaZ83wqLHFxkdRjwj3JuPAgXMA1Dx5Qz5GN5
 EV0vDdmjlphfCdMdFaGx/JKZmwD3BOR6KgOWgPzyuyx/ky9noG/u4bo1t Q==;
X-CSE-ConnectionGUID: 9kIl0rQRRZihvzIIiS8vcQ==
X-CSE-MsgGUID: lIXxIQGsSjep/v+WnV6JGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="76875691"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="76875691"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:36:17 -0700
X-CSE-ConnectionGUID: ATx9Q4HJQ1iE+CAg/+yB5g==
X-CSE-MsgGUID: EHRHr9TyS/yjiYtonb/y5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="225447712"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:36:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 05/12] drm/i915/dp: Add crtc state for AS SDP
 transmission line
In-Reply-To: <20260413035349.1730312-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-6-ankit.k.nautiyal@intel.com>
Date: Mon, 13 Apr 2026 11:36:10 +0300
Message-ID: <720b7ddc96cd4fe4c6af0f8e6e96c3e602634803@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_MULTI_FAIL(0.00)[dp_sdp_tl.as:server fail,intel.com:server fail,gabe.freedesktop.org:server fail];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 748C03E92FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> The Adaptive Sync SDP is currently the only DisplayPort SDP with a
> programmable transmission line. Store the AS SDP transmission line
> in the crtc state and include it in the pipe configuration comparison.
>
> This provides a common place for SDP transmission lines and paves the way
> for supporting additional SDP TL programming, including the common base
> SDP transmission line introduced with Xe3p_lpd.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 8 ++++++++
>  2 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 10b6c6fcb03f..c66541f26a09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5434,6 +5434,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	}
>  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
>  
> +	PIPE_CONF_CHECK_I(dp_sdp_tl.as);
> +

Too short, too many acronyms.

>  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>  	PIPE_CONF_CHECK_I(master_transcoder);
>  	PIPE_CONF_CHECK_X(joiner_pipes);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e2496db1642a..f58454c23859 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1298,6 +1298,14 @@ struct intel_crtc_state {
>  		struct drm_dp_as_sdp as_sdp;
>  	} infoframes;
>  
> +	struct {
> +		/*
> +		 * SDP Transmission line, relative to the Vtotal.
> +		 * The programmed transmit line is (Vtotal - value)
> +		 */
> +		u16 as;
> +	} dp_sdp_tl;

Why would this deserve to be a top level sub-struct in the crtc state?

> +
>  	u8 eld[MAX_ELD_BYTES];
>  
>  	/* HDMI scrambling status */

-- 
Jani Nikula, Intel
