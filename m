Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAEzNKiO+2lvcgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 20:55:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341C84DF8D7
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 20:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E4D10E3B5;
	Wed,  6 May 2026 18:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lc66VpGb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF3A10E3B5;
 Wed,  6 May 2026 18:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778093733; x=1809629733;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=33U3n0RtJXkMLjn7Ssg3zvfU+/1rp5IxRAh2FxLbGOw=;
 b=lc66VpGbY13eFMveiR1cocs3I6TC/KbZu8b1TokJV5T8l/PF963KlPUI
 MgqFvuaqp/RDUNhYbbU20XKKU7DUrVCeDFc3M4cQIN6cSPfBzp7YM77G5
 UW9V5vjPUO4UmkSbloFoti2ZL4wBi4Rj23OB4OABcK2GL9F6D0622VKMi
 ojwPFap4wmuCCGQea/DEHozlqbQrgf7K4wyHRvs7EZS2Q2HWGfacZnUgB
 tqj8i3Kh/cfM/Ocx5o8S7Mly1EyMD1Fxb330nkhEgT84OK3pfoZy3i9gP
 7XBxc9npAYzpiKv2MO0eFUSYgTHPpKBSLnBoLBNh+zCO267b4ay1UlVbb g==;
X-CSE-ConnectionGUID: TJuEYbviTzmhNjaiFBbYkQ==
X-CSE-MsgGUID: Cvno8SoVSEGHBHjhj52dcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78927932"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78927932"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:55:32 -0700
X-CSE-ConnectionGUID: 6j/Q/CclSzymvvOp9dn43A==
X-CSE-MsgGUID: YqkCJ+LWToypuEkV52fCgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="231852609"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.47])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:55:29 -0700
Date: Wed, 6 May 2026 21:55:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: ChunAn Wu <an.wu@canonical.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/tc: Recover AUX channel after external TC
 port mode change
Message-ID: <afuOnvFCEHEft4-R@intel.com>
References: <20260505033558.157604-1-an.wu@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260505033558.157604-1-an.wu@canonical.com>
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
X-Rspamd-Queue-Id: 341C84DF8D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.75 / 15.00];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

On Tue, May 05, 2026 at 11:35:57AM +0800, ChunAn Wu wrote:
> When Fn+F4 triggers mirror mode, the BIOS/EC reconfigures a TC port
> mode (e.g. DP-Alt to TBT-Alt via UCSI) without generating HPD. The
> driver's cached TC mode becomes stale, so intel_dp_aux_xfer() uses
> the wrong power domain and IO routing, and AUX transactions fail.
> 
> This occurs when the USB-C-to-HDMI dongle does not support TBT, so
> the mode switch creates a mismatch. It also occurs with slow monitors
> whose delayed HPD/DDC/EDID recovery causes the Type-C layer to settle
> on a stale tbt-alt state before the dongle finishes re-negotiation.
> 
> Add intel_tc_port_aux_recover() to detect hardware/cached TC mode
> divergence and reset the PHY. Wrap it with
> intel_dp_aux_xfer_with_recovery() to retry with corrected settings.
> 
> Tested on Panther Lake and Lunar Lake with a BenQ HDMI monitor via
> USB-C-to-HDMI dongle.

This sounds like a completely insane thing for the firmware to do.
It's not supposed to screw with the hardware while the driver is in
control.

Please file a bug in gitlab and also attach full acpidumps there so
that we can check if that's where the insanity lives. This is isn't
some Fujitsu-Siemens laptop is it? Those have historically known to
do stupid stuff like this...

> 
> Signed-off-by: ChunAn Wu <an.wu@canonical.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 41 +++++++++--
>  drivers/gpu/drm/i915/display/intel_tc.c     | 75 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_tc.h     |  1 +
>  3 files changed, 113 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index b20ec3e589fa..d496b2231656 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -481,6 +481,39 @@ static u32 intel_dp_aux_xfer_flags(const struct drm_dp_aux_msg *msg)
>  	return 0;
>  }
>  
> +/**
> + * intel_dp_aux_xfer_with_recovery - AUX transfer with TC port recovery
> + * @intel_dp: the DP port
> + * @send: buffer of bytes to send
> + * @send_bytes: number of bytes to send
> + * @recv: buffer to store received reply
> + * @recv_size: maximum number of bytes to receive
> + * @aux_send_ctl_flags: extra flags for the AUX send control register
> + *
> + * Wrapper around intel_dp_aux_xfer() that attempts to recover from an
> + * external TC port mode change (e.g., dp-alt -> tbt-alt via hotkey BIOS
> + * action) when the initial AUX transfer fails. On failure, recovery is
> + * attempted once via intel_tc_port_aux_recover() before retrying.
> + *
> + * Returns: number of received bytes on success, negative error code on failure.
> + */
> +static int
> +intel_dp_aux_xfer_with_recovery(struct intel_dp *intel_dp,
> +				const u8 *send, int send_bytes,
> +				u8 *recv, int recv_size,
> +				u32 aux_send_ctl_flags)
> +{
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	int ret;
> +
> +	ret = intel_dp_aux_xfer(intel_dp, send, send_bytes, recv, recv_size,
> +				aux_send_ctl_flags);
> +	if (ret < 0 && intel_tc_port_aux_recover(dig_port))
> +		ret = intel_dp_aux_xfer(intel_dp, send, send_bytes, recv,
> +					recv_size, aux_send_ctl_flags);
> +	return ret;
> +}
> +
>  static ssize_t
>  intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
>  {
> @@ -508,8 +541,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
>  		if (msg->buffer)
>  			memcpy(txbuf + HEADER_SIZE, msg->buffer, msg->size);
>  
> -		ret = intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> -					rxbuf, rxsize, flags);
> +		ret = intel_dp_aux_xfer_with_recovery(intel_dp, txbuf, txsize,
> +						      rxbuf, rxsize, flags);
>  		if (ret > 0) {
>  			msg->reply = rxbuf[0] >> 4;
>  
> @@ -531,8 +564,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
>  		if (drm_WARN_ON(display->drm, rxsize > 20))
>  			return -E2BIG;
>  
> -		ret = intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> -					rxbuf, rxsize, flags);
> +		ret = intel_dp_aux_xfer_with_recovery(intel_dp, txbuf, txsize,
> +						      rxbuf, rxsize, flags);
>  		if (ret > 0) {
>  			msg->reply = rxbuf[0] >> 4;
>  			/*
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index a21dd4e3fe4c..1b23161e4eea 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1861,6 +1861,81 @@ void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port)
>  	cancel_delayed_work(&tc->link_reset_work);
>  }
>  
> +/**
> + * intel_tc_port_aux_recover - Recover AUX channel after external TC mode change
> + * @dig_port: digital port
> + *
> + * When firmware causes a TC port mode change (e.g., dp-alt -> disconnect ->
> + * tbt-alt) during a hotkey-triggered display mode switch, AUX transactions
> + * using the stale power domain and IO flags will fail with timeouts or errors.
> + * This happens because:
> + *
> + *   1. The display driver holds the TC link in dp-alt mode (link_refcount > 0)
> + *   2. Firmware (e.g., via HP WMI hotkey BIOS action) reconfigures the TC port
> + *      mode externally without notifying the display driver
> + *   3. tc->mode stays as TC_PORT_DP_ALT while HW transitions to a different
> + *      mode, invalidating the AUX power domain and IO flags used by
> + *      intel_dp_aux_xfer()
> + *
> + * This function detects the discrepancy between tc->mode and actual HW state,
> + * and re-synchronizes them via a TC PHY reset. After recovery, AUX retries
> + * will use the correct power domain and control flags.
> + *
> + * The link_refcount is temporarily cleared to allow intel_tc_port_reset_mode()
> + * to proceed without the PHY-ownership assertion that fires when link_refcount
> + * is non-zero and firmware has already released PHY ownership.
> + *
> + * Must be called outside the TC port lock (tc->lock).
> + *
> + * Returns: %true if recovery was performed and AUX can be retried,
> + *          %false if recovery was not needed or not possible.
> + */
> +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port)
> +{
> +	struct intel_tc_port *tc;
> +	struct intel_display *display;
> +	bool recovered = false;
> +
> +	if (!intel_encoder_is_tc(&dig_port->base))
> +		return false;
> +
> +	tc = to_tc_port(dig_port);
> +	display = to_intel_display(dig_port);
> +
> +	mutex_lock(&tc->lock);
> +
> +	/*
> +	 * Recovery is only needed when the link is actively held AND the HW
> +	 * TC mode has diverged from the driver's cached state.
> +	 */
> +	if (!tc->link_refcount || !intel_tc_port_needs_reset(tc))
> +		goto out;
> +
> +	drm_dbg_kms(display->drm,
> +		    "Port %s: AUX recover: external TC mode change detected (%s -> HW), reconnecting TC PHY\n",
> +		    tc->port_name, tc_port_mode_name(tc->mode));
> +
> +	/*
> +	 * Temporarily clear link_refcount so intel_tc_port_reset_mode() can
> +	 * run the PHY disconnect/connect cycle without the ownership assertion
> +	 * that fires when link_refcount > 0 and firmware has already released
> +	 * PHY ownership externally.
> +	 */
> +	tc->link_refcount = 0;
> +	intel_tc_port_reset_mode(tc, 1, false);
> +	tc->link_refcount = 1;
> +
> +	recovered = tc->mode != TC_PORT_DISCONNECTED;
> +	if (!recovered)
> +		drm_warn(display->drm,
> +			 "Port %s: AUX recover: failed to restore TC port mode\n",
> +			 tc->port_name);
> +
> +out:
> +	mutex_unlock(&tc->lock);
> +	return recovered;
> +}
> +
>  static void __intel_tc_port_lock(struct intel_tc_port *tc,
>  				 int required_lanes)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index 6719aea5bd58..d44998a3081a 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -108,6 +108,7 @@ bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
>  bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port);
>  bool intel_tc_port_link_reset(struct intel_digital_port *dig_port);
>  void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port);
> +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port);
>  
>  int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
>  void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
