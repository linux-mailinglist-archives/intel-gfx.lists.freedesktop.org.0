Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE8HEvvYr2kLdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:40:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 668092476F7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A1910E197;
	Tue, 10 Mar 2026 08:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NHVZffrI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBCC10E197;
 Tue, 10 Mar 2026 08:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773132024; x=1804668024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R4HrxgS+VKtXG+GIOR9QsX24WrXAaEul/9FnFSXu4ys=;
 b=NHVZffrInElQz/VA9+HzmpyLiviPMckt4ZdM/HthepVaA4TpQQ1bG+1f
 VbAVIMIl90GAmnbOb64/FU09E4k4+ThB2LBjr8bkNE2nYkPDFlAIZBhK4
 YqXPcrNQ0bhTyi5zwqjFEwI3I1R3Ilnxh3d0oUIjjsBt8+nF4IPZ4FNqC
 e4waTilH3PpQ+ygCWnf7vOR9cZynt4PxJRYUnEv0TAIseXEB7JFJtNrVV
 uSTYcX9sn3+Ztc3W9OpbOgCvj7X2mEJdz2A3e5zQNnCUt4KPu8nuvHRgC
 2o5eMZY94W3hhfIITc67TfA6oABwDftRC8AefuL7ntWS47PoeGhalM4Kw A==;
X-CSE-ConnectionGUID: RP3DDeDqS42jZWv4ljpSHg==
X-CSE-MsgGUID: DanF2NO1Sc2PdL0wBTFHSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="85646789"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="85646789"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:40:24 -0700
X-CSE-ConnectionGUID: fK01IrQNQNi+5SXVB79c4g==
X-CSE-MsgGUID: LNl37PrGQFyeBR406jYsRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="220214473"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.33])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:40:20 -0700
Date: Tue, 10 Mar 2026 10:40:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mohammed Thasleem <mohammed.thasleem@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Tao Liu <ltao@redhat.com>, stable@vger.kernel.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [CI] drm/i915/dmc: Fix an unlikely NULL pointer deference at probe
Message-ID: <aa_Y7shwd1Vqiy3i@intel.com>
References: <20260309164803.1918158-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260309164803.1918158-1-imre.deak@intel.com>
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
X-Rspamd-Queue-Id: 668092476F7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 06:48:03PM +0200, Imre Deak wrote:
> intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> initialized, and dmc is thus NULL.
> 
> That would be the case when the call path is
> intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> intel_power_domains_init_hw() is called *before* intel_dmc_init().
> 
> However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> conditionally, depending on the current and target DC states. At probe,
> the target is disabled, but if DC6 is enabled, the function is called,
> and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> at probe, as we haven't seen this failure mode before.
> 
> It is also strange to have DC6 enabled at boot, since that would require
> the DMC firmware (loaded by BIOS); the BIOS loading the DMC firmware and
> the driver stopping / reprogramming the firmware is a poorly specified
> sequence and as such unlikely an intentional BIOS behaviour. It's more
> likely that BIOS is leaving an unintentionally enabled DC6 HW state
> behind (without actually loading the required DMC firmware for this).

Wasn't the original case some kdump kernel thing? I think that has
a few issues:
- loading full GPU drivers for a kdump kernel after the real kernel
  has crashed seems a bit risky. Who knows what state the hardware
  is in after the crash...
- we should probably try to unload DMC at kexec time (to the extent
  that DMC can actually be unloaded)

> 
> The tracking of the DC6 allowed counter only works if starting /
> stopping the counter depends on the _SW_ DC6 state vs. the current _HW_
> DC6 state (since stopping the counter requires the DC5 counter captured
> when the counter was started). Thus, using the HW DC6 state is incorrect
> and it also leads to the above oops. Fix both issues by using the SW DC6
> state for the tracking.
> 
> This is v2 of the fix originally sent by Jani, updated based on the
> first Link: discussion below.
> 
> Link: https://lore.kernel.org/all/3626411dc9e556452c432d0919821b76d9991217@intel.com
> Link: https://lore.kernel.org/all/20260228130946.50919-2-ltao@redhat.com
> Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
> Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Tao Liu <ltao@redhat.com>
> Cc: <stable@vger.kernel.org> # v6.16+
> Tested-by: Tao Liu <ltao@redhat.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +--
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 1e03187dbd38a..f855f0f886946 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -852,7 +852,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>  			power_domains->dc_state, val & mask);
>  
>  	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
> -	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> +	dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
>  	if (!dc6_was_enabled && enable_dc6)
>  		intel_dmc_update_dc6_allowed_count(display, true);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index c3b411259a0c5..90ba932d940ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1598,8 +1598,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
>  		return false;
>  
>  	mutex_lock(&power_domains->lock);
> -	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
> -		      DC_STATE_EN_UPTO_DC6;
> +	dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
>  	if (dc6_enabled)
>  		intel_dmc_update_dc6_allowed_count(display, false);
>  
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
