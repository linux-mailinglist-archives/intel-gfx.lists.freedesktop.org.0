Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIJrMKsu3mnxogkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 14:10:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5F13F9D37
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 14:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44EB10E5EA;
	Tue, 14 Apr 2026 12:10:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=tuxedocomputers.com header.i=@tuxedocomputers.com header.b="lnzUFzMc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 586 seconds by postgrey-1.36 at gabe;
 Mon, 13 Apr 2026 23:19:37 UTC
Received: from mail.tuxedocomputers.com (mail.tuxedocomputers.com
 [157.90.84.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F75D10E3E9;
 Mon, 13 Apr 2026 23:19:37 +0000 (UTC)
Received: from [192.168.178.25] (i5C75F434.versanet.de [92.117.244.52])
 (Authenticated sender: wse@tuxedocomputers.com)
 by mail.tuxedocomputers.com (Postfix) with ESMTPSA id 844A22FC0050;
 Tue, 14 Apr 2026 01:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxedocomputers.com;
 s=default; t=1776121789;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hQrMwPP7AHLmS/HZHFmEI9yHSkcu3d1286G7GgdZmck=;
 b=lnzUFzMc8tS/LQJUk3N++EhewZ4Xl0jhWsrh36ybYuup546Mqtl6HeGQwLpGY3QkwtdXcL
 fRu+cVGa7t9cHYTzJfDhHkm4VlgSKIZbZ5YN6/mWC0Wh+vdFBOILh8259gmlipKz4tuTgp
 oNCsCvq51JbX3DoXfasx9OLb2I/MlcY=
Authentication-Results: mail.tuxedocomputers.com;
 auth=pass smtp.auth=wse@tuxedocomputers.com
 smtp.mailfrom=wse@tuxedocomputers.com
Message-ID: <38ba8502-4a9b-4881-9bac-7833ef755d77@tuxedocomputers.com>
Date: Tue, 14 Apr 2026 01:09:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/backlight: Remove try_vesa_interface
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
References: <20260224031322.2568874-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: Werner Sembach <wse@tuxedocomputers.com>
In-Reply-To: <20260224031322.2568874-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 14 Apr 2026 12:10:11 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[tuxedocomputers.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tuxedocomputers.com:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxedocomputers.com:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[wse@tuxedocomputers.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 3A5F13F9D37
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Am 24.02.26 um 04:13 schrieb Suraj Kandpal:
> Remove try_vesa_interface. This is because we now make VESA Interface
> as a fallback mechanism for Panels which needs VESA DPCD AUX backlight
> mechanism to work but have a broken VBT indicating otherwise.
> While at in sneak in a small comment cleanup too.

Just a heads up: I ran into some devices that don't auto select the intel 
interface and don't work with the vesa interface, but ran in the return -ENODEV 
case before and then still had a working backlight. This patch stops backlight 
control working on these devices. So there seems to be another fallback that 
this patch overwrites?

Explicitly forcing the intel interface via module property makes the backlight 
control work again.

I will do some more research and then write a proper bug report, but just to let 
you know that this patch will cause a regression bug in its current form.

Best regards,

Werner

>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_dp_aux_backlight.c | 19 +++++++------------
>   1 file changed, 7 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index eb05ef4bd9f6..a8e9872566cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -644,9 +644,10 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>   	struct drm_device *dev = connector->base.dev;
>   	struct intel_panel *panel = &connector->panel;
> -	bool try_intel_interface = false, try_vesa_interface = false;
> +	bool try_intel_interface = false;
>   
> -	/* Check the VBT and user's module parameters to figure out which
> +	/*
> +	 * Check the VBT and user's module parameters to figure out which
>   	 * interfaces to probe
>   	 */
>   	switch (display->params.enable_dpcd_backlight) {
> @@ -655,7 +656,6 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	case INTEL_DP_AUX_BACKLIGHT_AUTO:
>   		switch (panel->vbt.backlight.type) {
>   		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
> -			try_vesa_interface = true;
>   			break;
>   		case INTEL_BACKLIGHT_DISPLAY_DDI:
>   			try_intel_interface = true;
> @@ -668,20 +668,12 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
>   			try_intel_interface = true;
>   
> -		try_vesa_interface = true;
> -		break;
> -	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
> -		try_vesa_interface = true;
>   		break;
>   	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
>   		try_intel_interface = true;
>   		break;
>   	}
>   
> -	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
> -	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
> -		try_vesa_interface = true;
> -
>   	/*
>   	 * Since Intel has their own backlight control interface, the majority of machines out there
>   	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
> @@ -694,6 +686,9 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
>   	 * backlight interface at all. This means that the only sensible way for us to detect both
>   	 * interfaces is to probe for Intel's first, and VESA's second.
> +	 *
> +	 * Also there is a chance some VBT's may advertise false Intel backlight support even if the
> +	 * tcon's DPCD says otherwise. This mean we keep VESA interface as fallback in that case.
>   	 */
>   	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector) &&
>   	    intel_dp->edp_dpcd[0] <= DP_EDP_14b) {
> @@ -703,7 +698,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   		return 0;
>   	}
>   
> -	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
> +	if (intel_dp_aux_supports_vesa_backlight(connector)) {
>   		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
>   			    connector->base.base.id, connector->base.name);
>   		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
