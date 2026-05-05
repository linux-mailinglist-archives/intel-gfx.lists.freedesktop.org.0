Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EN2mAhKk+WnR+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:02:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA894C867E
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D78E10E9B2;
	Tue,  5 May 2026 08:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHvXlbNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D849410E150;
 Tue,  5 May 2026 08:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777968140; x=1809504140;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wMXo6MQ445WbglVqpMtmUWy7s02ZtdmVdwxdPVqWt8M=;
 b=ZHvXlbNbzwf3VPukQLx8jeNkFghLS6BItD60TkQyIF4GVWA9vbt+7DeR
 pxujRp0GSqIIHSBEg7FeHNj1bXT0YiqN6k7jSgjXQP5ctMvHyVbI4kzfh
 vATs/GjESDS5NyGxuZsM7eKXeVL7WLJqOStc6QtF1cWHGW8Yyeaj6e1T2
 r3ImI6TsRFxaOQCLXhgAlOfQXLXyN7i5UssS/qixg5HehQtERBYSB1Q3l
 Vj9/LuWikuWFdOwSi1SRDa/5b2WtYyatE7oiOWvy8q9tbLefmEe1AhMvV
 fu8KWui4M9DDwlA/kiMCe9uD6nSXVRSONVmP0uvq6xuITnClsTg5TYUH1 A==;
X-CSE-ConnectionGUID: Insbf+pXSNiuefZw8tkGNw==
X-CSE-MsgGUID: ZMMsOqcoQ0m2VNryUlypvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77854598"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="77854598"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 01:02:19 -0700
X-CSE-ConnectionGUID: 4foqKQZYQ6GZDsBTHWqUdw==
X-CSE-MsgGUID: YEXi8MJWQi6TQQWbhJ82UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="235616707"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.55])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 01:02:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: ChunAn Wu <an.wu@canonical.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/tc: Recover AUX channel after external TC
 port mode change
In-Reply-To: <20260505033558.157604-1-an.wu@canonical.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260505033558.157604-1-an.wu@canonical.com>
Date: Tue, 05 May 2026 11:02:13 +0300
Message-ID: <68d0176c7022293678a49e7641ad9308ed0438a4@intel.com>
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
X-Rspamd-Queue-Id: ADA894C867E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[canonical.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

On Tue, 05 May 2026, ChunAn Wu <an.wu@canonical.com> wrote:
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

What are the changes between v1 and v2?

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

-- 
Jani Nikula, Intel
