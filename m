Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EEWuAmCGIWpcIAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:06:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7E2640AA1
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:06:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=leemhuis.info header.s=key2 header.b=FQc46enO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91E611A0FE;
	Thu,  4 Jun 2026 14:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 564 seconds by postgrey-1.36 at gabe;
 Thu, 04 Jun 2026 14:06:20 UTC
Received: from relay.yourmailgateway.de (relay.yourmailgateway.de
 [188.68.63.162])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C8811A0FD;
 Thu,  4 Jun 2026 14:06:20 +0000 (UTC)
Received: from mors-relay-8201.netcup.net (localhost [127.0.0.1])
 by mors-relay-8201.netcup.net (Postfix) with ESMTPS id 4gWR1406Y9z3wnR;
 Thu,  4 Jun 2026 15:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=leemhuis.info;
 s=key2; t=1780581352;
 bh=/mG7+3rgszWjpHH0CboT06IapJJ148p8+UhZJhdUQeY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=FQc46enOsXYCpnbCJmx2moU2ysNxUR0N62GhBJNqofnrqiujLGeNKx/dw4/LaMTVY
 Q3NtEYdqw9h9A5EevWdp00AJAFzCHcIjgQ8d2eU3D9LwVMbS3eb8DAiBvjMyoajAad
 jmT7zSV+eRol3wUY2SES1DjYCL6veJ67yaCZbUMxwJfYAS5wTvF8usNJ6ELij+wOVQ
 ZUSVzITaY5FMgMN6MnyiXoSL4a/H1WuvWq+f6EuqVg908mwtTZXLd9PGBKKCTiyyPw
 VgLsmUm0GFIqdhWWVKDcmDuZxmmPobXYhEaumZwUVRrGgrbWKAsadFqREGc4RJjUu9
 1pHGMiTg0/ieg==
Received: from policy02-mors.netcup.net (unknown [46.38.225.35])
 by mors-relay-8201.netcup.net (Postfix) with ESMTPS id 4gWR112hhMz41Rc;
 Thu,  4 Jun 2026 15:55:49 +0200 (CEST)
Received: from mxe9fb.netcup.net (unknown [10.243.12.53])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by policy02-mors.netcup.net (Postfix) with ESMTPS id 4gWR102w2Xz8sb0;
 Thu,  4 Jun 2026 15:55:48 +0200 (CEST)
Received: from [IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f] (unknown
 [IPv6:2a02:8108:8984:1d00:a0cf:1912:4be:477f])
 by mxe9fb.netcup.net (Postfix) with ESMTPSA id 410C160389;
 Thu,  4 Jun 2026 15:55:47 +0200 (CEST)
Received-SPF: pass (mxe9fb: connection is authenticated)
Message-ID: <53a2a8dd-d1b6-41c5-ade2-7ed870d074ac@leemhuis.info>
Date: Thu, 4 Jun 2026 15:55:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "drm/i915/backlight: Remove try_vesa_interface"
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Linux kernel regressions list <regressions@lists.linux.dev>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
References: <20260515155340.1000997-1-suraj.kandpal@intel.com>
 <20260517024709.1016121-1-suraj.kandpal@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: de-DE, en-US
X-Enigmail-Draft-Status: N11222
Autocrypt: addr=linux@leemhuis.info; keydata=
 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 MEK4
In-Reply-To: <20260517024709.1016121-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: <178058134763.3804850.10659488935368293709@mxe9fb.netcup.net>
X-NC-CID: sAbt7yi+0BVXAc/p+Pgjga09iS2ApN8achznqY1jKQIhrhTqm3g=
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[leemhuis.info:s=key2];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[leemhuis.info];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[leemhuis.info:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[regressions@leemhuis.info,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,lists.freedesktop.org:from_smtp,leemhuis.info:mid,leemhuis.info:from_mime,leemhuis.info:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D7E2640AA1

On 5/17/26 04:47, Suraj Kandpal wrote:
> This reverts commit 40d2f5820951dee818d05c14677277048bd85f9f.
> 
> Removing the try_vesa_interface gate caused a backlight regression on
> panels whose VBT correctly reports INTEL_BACKLIGHT_DISPLAY_DDI and whose
> PWM path is the actual backlight control, but whose DPCD optimistically
> advertises DP_EDP_BACKLIGHT_AUX_ENABLE_CAP / _BRIGHTNESS_AUX_SET_CAP.
> After the commit such panels silently bind to the VESA AUX backlight
> funcs; AUX writes complete but the panel ignores them, leaving
> brightness stuck (no-op backlight). Observed on at least KBL and TGL
> eDP setups.

Lo! What's the status of this regression fix? It's a -next for two weeks
now as f30fddb4402313 ("Revert "drm/i915/backlight: Remove
try_vesa_interface""), but from the outside and checking
https://gitlab.freedesktop.org/drm/i915/kernel/-/commits/drm-intel-fixes
it looks like it's scheduled for merging in the next cycle.

But I think it should be merged this cycle (ideally before -rc7, as
Linus wants all known regression fixed by -rc6), as it fixes a
regression that is known since the -rc1 days. I already asked for the
mainlining plans in gitlab tickets about a week ago (and since then
affected users spoke up, too), but there was no conclusive answer for
the plans, which is why I'm trying this way now.

Ciao, Thorsten


> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index a8d56ebf06a2..7a6c07f6aaeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -691,10 +691,9 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	struct drm_device *dev = connector->base.dev;
>  	struct intel_panel *panel = &connector->panel;
> -	bool try_intel_interface = false;
> +	bool try_intel_interface = false, try_vesa_interface = false;
>  
> -	/*
> -	 * Check the VBT and user's module parameters to figure out which
> +	/* Check the VBT and user's module parameters to figure out which
>  	 * interfaces to probe
>  	 */
>  	switch (display->params.enable_dpcd_backlight) {
> @@ -703,6 +702,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  	case INTEL_DP_AUX_BACKLIGHT_AUTO:
>  		switch (panel->vbt.backlight.type) {
>  		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
> +			try_vesa_interface = true;
>  			break;
>  		case INTEL_BACKLIGHT_DISPLAY_DDI:
>  			try_intel_interface = true;
> @@ -715,12 +715,20 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
>  			try_intel_interface = true;
>  
> +		try_vesa_interface = true;
> +		break;
> +	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
> +		try_vesa_interface = true;
>  		break;
>  	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
>  		try_intel_interface = true;
>  		break;
>  	}
>  
> +	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
> +	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
> +		try_vesa_interface = true;
> +
>  	/*
>  	 * Since Intel has their own backlight control interface, the majority of machines out there
>  	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
> @@ -733,9 +741,6 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
>  	 * backlight interface at all. This means that the only sensible way for us to detect both
>  	 * interfaces is to probe for Intel's first, and VESA's second.
> -	 *
> -	 * Also there is a chance some VBTs may advertise false Intel backlight support even if the
> -	 * TCON DPCD says otherwise. This means we keep VESA interface as fallback in that case.
>  	 */
>  	if (try_intel_interface && intel_dp->edp_dpcd[0] <= DP_EDP_14b &&
>  	    intel_dp_aux_supports_hdr_backlight(connector)) {
> @@ -745,7 +750,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  		return 0;
>  	}
>  
> -	if (intel_dp_aux_supports_vesa_backlight(connector)) {
> +	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
>  		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
>  			    connector->base.base.id, connector->base.name);
>  		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;

