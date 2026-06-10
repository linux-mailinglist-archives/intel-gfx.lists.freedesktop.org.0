Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zDtDOhVMKWqvUAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:35:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50203668D89
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:35:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZIhtfqZ7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D457210E900;
	Wed, 10 Jun 2026 11:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9572E10E547;
 Wed, 10 Jun 2026 11:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781091346; x=1812627346;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sa2m75vvqPgoV0nD3tOEIbD/SNIFyUy0PiqvfFmcfwI=;
 b=ZIhtfqZ7aeqVPjNoY3fB4JJ+ZtoCBnMQq03P2rh4ywNcLg0bwtp0Cli2
 ZuoxDJKorQ0js0AiJSEhFBMpPKHe0zxwidFV7uEFIXClGpiEWwKWgS9Bw
 euNpOii/v1fKcOtP0lahrZRSENkHfDfzd8CsJk/vAUs5Hq4GAByIShCC8
 769ao/tKGd6PqMDuoY6lSSrzocOnFYwrs7UlhF+iy4YRTtamcEQQW5mRJ
 lYP0LcZpt1KAILFMeS03hJXkLWDr7NF0pP+LGy8BJkk0M+kkE5mwXgrKv
 KD2u+X+x/9Cp+uZSEHhyToTy8FkMWfPaOsvZPOjlns7lbF18EBC+Q5GEt g==;
X-CSE-ConnectionGUID: Jht8EBIXTnGyl02a3tYW4A==
X-CSE-MsgGUID: ZykGxcbOSq6iAEshrbqq9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="93368562"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="93368562"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:35:45 -0700
X-CSE-ConnectionGUID: CT5oxfBbS220vNIVoG1AXw==
X-CSE-MsgGUID: 4VXQ2Bx7Rx+OcWrmPO86oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="251235539"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:35:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v8 15/20] drm/i915/cmtg: Add CMTG interrupt handling
In-Reply-To: <20260603195416.91639-16-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-16-animesh.manna@intel.com>
Date: Wed, 10 Jun 2026 14:35:40 +0300
Message-ID: <dbf952c2fa43d7313a99b8ee79ef0194a522e0cc@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50203668D89

On Thu, 04 Jun 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> Add support for the CMTG vblank interrupt, which is delivered
> through the DE port interrupt block. Enable/disable the interrupt
> via the DE port IMR around CMTG enable/disable, and dispatch the
> CMTG_VBLANK_{A,B} bits to the corresponding pipe vblank handler in
> the gen8 DE IRQ handler.
>
> Wired up for DISPLAY_VER 35. The CMTG interrupt is not enabled via
> IER today because CMTG is brought up together with the eDP
> transcoder; this can be revisited later.
>
> v2:
> - Use consistent DC3co check as used in earlier patches. [Uma]
> - Use else-if instead of separate if block. [Uma]
> - Merge mask and unmask function as it is similar. [Uma]
> - Modify DISPLAY_VER() check. [Uma]
>
> v3:
> - Enable only vblank interrupt. [Dibin]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 47 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 +
>  .../gpu/drm/i915/display/intel_display_irq.c  | 12 +++++
>  .../gpu/drm/i915/display/intel_display_regs.h |  2 +
>  4 files changed, 63 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 20b74c2856c4..fb57fa41f721 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -13,6 +13,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_device.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> @@ -353,3 +354,49 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
>  	crtc->cmtg.enabled = true;
>  	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
>  }
> +
> +static void intel_cmtg_mask_interrupt(const struct intel_crtc_state *crtc_state, bool mask)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 interrupt_mask = 0;
> +
> +	if (cpu_transcoder == TRANSCODER_A)
> +		interrupt_mask = CMTG_VBLANK_A;
> +	else if (cpu_transcoder == TRANSCODER_B)
> +		interrupt_mask = CMTG_VBLANK_B;
> +
> +	if (mask)
> +		bdw_update_port_irq(display, interrupt_mask, 0);
> +	else
> +		bdw_update_port_irq(display, interrupt_mask, interrupt_mask);

Not a fan of using these directly in more places. The direction should
be for more abstractions.

> +}
> +
> +void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	/*
> +	 * TODO: Currently cmtg is enabled along with eDP transcoder so cmtg
> +	 * interrupt is not enabled through IER, need to do some fine
> +	 * tuning in future.
> +	 */
> +	spin_lock_irq(&display->irq.lock);
> +	intel_cmtg_mask_interrupt(crtc_state, false);
> +	spin_unlock_irq(&display->irq.lock);
> +}
> +
> +void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	spin_lock_irq(&display->irq.lock);
> +	intel_cmtg_mask_interrupt(crtc_state, true);
> +	spin_unlock_irq(&display->irq.lock);

Ditto with display->irq.lock usage, the direction should be to limit to
fewer places.

> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 79785afccc51..8fcb44d6398f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -21,5 +21,7 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_sanitize(struct intel_display *display);
>  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 4a821b0674fd..7ad722024c87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1469,6 +1469,18 @@ static void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
>  				found = true;
>  			}
>  
> +			if (DISPLAY_VER(display) == 35) {
> +				if (iir & (CMTG_VBLANK_A)) {
> +					intel_handle_vblank(display, PIPE_A);
> +					found = true;
> +				}
> +
> +				if (iir & (CMTG_VBLANK_B)) {
> +					intel_handle_vblank(display, PIPE_B);
> +					found = true;
> +				}
> +			}
> +
>  			if (DISPLAY_VER(display) >= 11) {
>  				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..fe851fe39222 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1458,6 +1458,8 @@
>  #define  GEN9_AUX_CHANNEL_B		(1 << 25)
>  #define  DSI1_TE			(1 << 24)
>  #define  DSI0_TE			(1 << 23)
> +#define  CMTG_VBLANK_B			(1 << 17)
> +#define  CMTG_VBLANK_A			(1 << 14)
>  #define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 + _HPD_PIN_DDI(hpd_pin))
>  #define  BXT_DE_PORT_HOTPLUG_MASK	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
>  					 GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \

-- 
Jani Nikula, Intel
