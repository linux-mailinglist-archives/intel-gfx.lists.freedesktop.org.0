Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPrjNLNB3mlvpwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 15:31:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 527253FA890
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 15:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A8C10E5FF;
	Tue, 14 Apr 2026 13:31:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="btaCxH8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0E810E5FC;
 Tue, 14 Apr 2026 13:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776173488; x=1807709488;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RAGj0BRheN//JbqmKXZg0RPj/DrBZcNxLGNN0k0Sgag=;
 b=btaCxH8tkPQCnASOOIyFykwUwqOwwAtgBCUf3pHdDCOzffBMTnDW/ddq
 5yFSGcympEc3SJhs5vk75BqKAjiNzWtFer+WFoqDNwy6bvwJsL2qbGXUE
 1lVOap8CXuRjEme4eAGbvYg2jQEpkj6C4QKS4uLoldW2JCuya2UsdTS1g
 xQ5UfomrL619+m9f4khXgT4diXSNcQrDVmxmz3DZc8iVeJvI2SkLn9vHL
 IGaKyR/1BuHCnDLvKNcfzHd+7b2N6DUwBbrlBVohkty0aRoIKttpLNnDU
 5ytrmzCM4J77YZaZm4Kkvxs2rUHai5WguZsrkgN3EEj5xD339y/VroLU0 Q==;
X-CSE-ConnectionGUID: ZSzH5oSuRDeYvj0K8lb/DA==
X-CSE-MsgGUID: TKd96YzERdy8KkbFgtj7LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="102587539"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="102587539"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 06:31:28 -0700
X-CSE-ConnectionGUID: YAfTFO8iQC24JH4tiYWksQ==
X-CSE-MsgGUID: /dmoFTEqTIu7Ky/IFfXu9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="229221824"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 06:31:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com, Animesh
 Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v4 01/13] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
In-Reply-To: <20260412103712.4021213-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-2-animesh.manna@intel.com>
Date: Tue, 14 Apr 2026 16:31:21 +0300
Message-ID: <26027f9989a2f963236ac3a41d69ca910d4e7069@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 527253FA890
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 12 Apr 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> CMTG will be enabled only with DC3co, so add a separate function
> intel_cmtg_is_allowed() to check the prerequisites for enabling CMTG.
> DC3co will be enabled in a separate patch.
>
> v2:
> - Remove separate flag for DC3co from crtc_state. [Uma, Dibin]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h |  2 ++
>  2 files changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index e1fdc6fe9762..1debed43cf2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_device.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
> +#include "intel_display_types.h"
>  
>  /**
>   * DOC: Common Primary Timing Generator (CMTG)
> @@ -185,3 +186,17 @@ void intel_cmtg_sanitize(struct intel_display *display)
>  
>  	intel_cmtg_disable(display, &cmtg_config);
>  }
> +
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct i915_power_domains *power_domains = &display->power.domains;
> +
> +	if ((cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B) &&
> +	    DISPLAY_VER(display) == 35 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
> +	    power_domains->target_dc_state == DC_STATE_EN_DC3CO)

intel_cmtg.c has no business accessing struct i915_power_domains members
directly. It belongs to intel_display_power.c.

BR,
Jani.

> +		return true;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ba62199adaa2..7692cc98cf87 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -7,7 +7,9 @@
>  #define __INTEL_CMTG_H__
>  
>  struct intel_display;
> +struct intel_crtc_state;
>  
>  void intel_cmtg_sanitize(struct intel_display *display);
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_CMTG_H__ */

-- 
Jani Nikula, Intel
