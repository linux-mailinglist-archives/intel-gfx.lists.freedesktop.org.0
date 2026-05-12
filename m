Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kExODNoKA2pmzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 13:11:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5457651F1CB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 13:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E3C10E28F;
	Tue, 12 May 2026 11:11:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hCnsuE97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42C310E25B;
 Tue, 12 May 2026 11:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778584278; x=1810120278;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rb3tKkextS5zKAiaJEQkXsRhNp3nZyeU6KPOuV3zmug=;
 b=hCnsuE973HUFtZcNDUnZzGpkry8qVPSPHADF1n7VCSVZjIHsEfSyoD9n
 ETpcArhCV56Bi2Bqhv+DGRTMNgs5m/SksGQHROpV0RvGYkBNPCh3dBYoW
 1ZY9PkwEitKPUfCb43a0277ShR8uLIqnzFKVUlc6M6FRS3HWNKJW8F/pl
 WwSZQVx3+YEtBrfpWExVW2HCEccy1ts7Lr0xiFMbxo81CVb0pPjtNpeos
 aO3lC0JJWfC/BlrxjaqTqz5nj0Yp9wTVqsC6c2ftk09QZzl6pPs5Db/RK
 usveJkc5m9B7Ao/5Y7iH7GPl/Nrezippk0nDoND/IoRf33Hokv9FD7a3V g==;
X-CSE-ConnectionGUID: mVvR9wzBRGyqHAw1hyjC4g==
X-CSE-MsgGUID: fG6l2PVuSPmOvP5Dg9GLxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79510780"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79510780"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 04:11:18 -0700
X-CSE-ConnectionGUID: J4cQkHTaQzyDeN8tYtBtaw==
X-CSE-MsgGUID: USvWOxsARmSC/sHzz1HiUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="237980878"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.203])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 04:11:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, gustavo.sousa@intel.com,
 ankit.k.nautiyal@intel.com
Subject: Re: [PATCH v2 3/3] drm/i915/psr: Use DMC wakelock instead of DC
 state for VBI
In-Reply-To: <20260430134505.1728443-4-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260430134505.1728443-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260430134505.1728443-4-dibin.moolakadan.subrahmanian@intel.com>
Date: Tue, 12 May 2026 14:11:11 +0300
Message-ID: <78aeb45ca7f758089337b644814d195ad2dfdbe3@intel.com>
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
X-Rspamd-Queue-Id: 5457651F1CB
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Thu, 30 Apr 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> Use the DMC wakelock mechanism for preventing DC entry.
> platforms without wakelock support will continue to use
> set_target_dc_state() to disable DC entry during active vblank.

Why? Every commit message needs to answer the question *why*. I can
match the "what" above with the code, but it doesn't explain at all why
we should make this change.

BR,
Jani.


>
> Changes in v2:
> - Use intel_dmc_wl_supported() instead of
>   DISPLAY_VER check (Gustavo Sousa).
>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/2296
> Fixes: acfc688bc51b ("drm/i915/dmc: Reduce wakelock hold time")
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 26 +++++++++++++++---------
>  1 file changed, 16 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9acd47392192..5b48a677bf39 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4151,16 +4151,22 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>  		mutex_unlock(&intel_dp->psr.lock);
>  		break;
>  	}
> -
> -	/*
> -	 * NOTE: intel_display_power_set_target_dc_state is used
> -	 * only by PSR * code for DC3CO handling. DC3CO target
> -	 * state is currently disabled in * PSR code. If DC3CO
> -	 * is taken into use we need take that into account here
> -	 * as well.
> -	 */
> -	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
> -						DC_STATE_EN_UPTO_DC6);
> +	if (!intel_dmc_wl_supported(display)) {
> +		/*
> +		 * NOTE: intel_display_power_set_target_dc_state is used
> +		 * only by PSR code for DC3CO handling. DC3CO target
> +		 * state is currently disabled in PSR code. If DC3CO
> +		 * is taken into use we need take that into account here
> +		 * as well.
> +		 */
> +		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
> +							DC_STATE_EN_UPTO_DC6);
> +	} else {
> +		if (enable)
> +			intel_dmc_wl_get_noreg(display);
> +		else
> +			intel_dmc_wl_put_noreg(display);
> +	}
>  }
>  
>  static void

-- 
Jani Nikula, Intel
