Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MrGQN/6PMmqk2AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:15:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D176999AD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:15:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Z9i3FKvU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A7710EFC5;
	Wed, 17 Jun 2026 12:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FF310EFC5;
 Wed, 17 Jun 2026 12:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781698556; x=1813234556;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WZr9Hu1YVBgDYyPc7JyInx3ywyW3GTrye6NYAza2ZHc=;
 b=Z9i3FKvUJZ9oZP6QTU/hTh2/KC8t9wrCNaoUFTNDFuyWa/YOgNl2lxCz
 xXNnoKKtntuliAa7CL2DRMV52Pj+ibBNgUV5Df4vZkVpajVoQXGztwKoh
 Eu3GAYtIodXJwN3JK+jr/jnwgopRDI86yinNMtWTquPy4jdwkfuwJk2RD
 eaIJGLH4l2T2r26HqDol3/aDNUfm+3wOi6q9uPjZPyWeKIfErLyqkC6A2
 xZgdtzBh7O0ViaKJ+p2aeAyKTRabQrGVyKtUYX5OTrIlIKr/GZARqqdNK
 iFmB/CWZZ9jVvJRLhjyooKI8cHXx39/dB6LYEyGy5yKoPkOOeOWOmOBkn A==;
X-CSE-ConnectionGUID: TZEgff/ERiCDyEwH6rA02A==
X-CSE-MsgGUID: EcYmK+qfT9KYfXiF30PqCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81485684"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81485684"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:15:56 -0700
X-CSE-ConnectionGUID: 9gzlkfLSQUqVP6OzvHs9Yw==
X-CSE-MsgGUID: 9kty1txiRV+79/NK5LRIYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="278242810"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:15:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/i915/backlight: Set brightness to 0 on disable
In-Reply-To: <20260616093636.2334540-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260616093636.2334540-1-arun.r.murthy@intel.com>
Date: Wed, 17 Jun 2026 15:15:51 +0300
Message-ID: <245d6c1875c760607407faeac238314b85c22c91@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01D176999AD

On Tue, 16 Jun 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> On backlight disable for AUX based panels set the brightness to 0 before
> disabling the backlight. PWM based backlight also does set the
> brightness to 0 before disable.

Both the commit message and the code comments have a lot of the *what*
but are very thin on the *why*.

Even if there's *zero* explanation of the *what*, it can be deduced from
the code changes. But nothing can replace the *why*.

Answering the *why* is the single most important thing a commit message
*must* do.

BR,
Jani.


>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_aux_backlight.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index a8d56ebf06a2..e4ce39c1eebb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -355,9 +355,14 @@ intel_dp_aux_hdr_disable_backlight(const struct drm_connector_state *conn_state,
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_panel *panel = &connector->panel;
>  
> -	/* Nothing to do for AUX based backlight controls */
> -	if (panel->backlight.edp.intel_cap.sdr_uses_aux)
> +	/*
> +	 * Drive the DPCD brightness to 0 before tearing down the link / power
> +	 * sequencer so the panel can blank emission gracefully.
> +	 */
> +	if (panel->backlight.edp.intel_cap.sdr_uses_aux) {
> +		intel_dp_aux_hdr_set_aux_backlight(conn_state, 0);
>  		return;
> +	}
>  
>  	/* Note we want the actual pwm_level to be 0, regardless of pwm_min */
>  	panel->backlight.pwm_funcs->disable(conn_state, intel_backlight_invert_pwm_level(connector, 0));
> @@ -519,6 +524,12 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
>  	struct intel_panel *panel = &connector->panel;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  
> +	/*
> +	 * Drive the DPCD brightness register to 0 before clearing BL_ENABLE or
> +	 * dropping the panel power.
> +	 */
> +	drm_edp_backlight_set_level(&intel_dp->aux, &panel->backlight.edp.vesa.info, 0);
> +
>  	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
>  
>  	if (!(panel->backlight.edp.vesa.info.aux_enable ||

-- 
Jani Nikula, Intel
