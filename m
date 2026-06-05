Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bYZaEgx2ImoOXwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:09:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607FF645C95
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:08:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=leemhuis.info header.s=key2 header.b=kL+qe9jF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F1E11A4D3;
	Fri,  5 Jun 2026 07:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 526 seconds by postgrey-1.36 at gabe;
 Fri, 05 Jun 2026 07:08:56 UTC
Received: from relay.yourmailgateway.de (relay.yourmailgateway.de
 [194.59.206.189])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB7011A4D2;
 Fri,  5 Jun 2026 07:08:56 +0000 (UTC)
Received: from relay02-mors.netcup.net (localhost [127.0.0.1])
 by relay02-mors.netcup.net (Postfix) with ESMTPS id 4gWskw3pGWz4HNY;
 Fri,  5 Jun 2026 09:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=leemhuis.info;
 s=key2; t=1780642808;
 bh=C4LywOONUo9mM7SYCl9JaZ1nEcm3gsy9ldzredo9jW0=;
 h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
 b=kL+qe9jFQlDIIFWazrdM9DPHT8ZxTESUvlVZ5eHBkQwY4fZJyPV4J/Csp8xt7zZFy
 XACWiPgKk8OtyQMUjwLIy5KrvZZvz6LoN9g8tljf4aHhAydHkLFGzSCzrFIJbcP4SS
 45Elvf7avy7ydyXoj3kTM6C/ZPUgcF6eX82AkWy6h2p94+uiGe1Cg1UP0lTTqBf4ls
 3BaNScqlouL3TNQa1GcTX8dn/4jcAmoKLqevI92Ayls7BJEnfbV7DATNj6bmh8V1mo
 +b+mSwKmcZAv/xf7WreQ3u3vIAgyUs/177aIu//SKSetVjXqnUP4EKBt0zuLpSIhNh
 e1uRHnOTYDUeA==
Received: from policy01-mors.netcup.net (unknown [46.38.225.35])
 by relay02-mors.netcup.net (Postfix) with ESMTPS id 4gWshp18Q2z7wPS;
 Fri,  5 Jun 2026 08:58:18 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at policy01-mors.netcup.net
X-Spam-Flag: NO
X-Spam-Score: -2.898
X-Spam-Level: 
X-Spam-Status: No, score=-2.898 required=6.31 tests=[ALL_TRUSTED=-1,
 BAYES_00=-1.9, SPF_PASS=-0.001, URIBL_BLOCKED=0.001,
 URIBL_DBL_BLOCKED_OPENDNS=0.001, URIBL_ZEN_BLOCKED_OPENDNS=0.001]
 autolearn=ham autolearn_force=no
Received: from mxe9fb.netcup.net (unknown [10.243.12.53])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by policy01-mors.netcup.net (Postfix) with ESMTPS id 4gWshl5Cl8z8tXj;
 Fri,  5 Jun 2026 08:58:15 +0200 (CEST)
Received: from [IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f] (unknown
 [IPv6:2a02:8108:8984:1d00:a0cf:1912:4be:477f])
 by mxe9fb.netcup.net (Postfix) with ESMTPSA id 6D2A65F9DD;
 Fri,  5 Jun 2026 08:58:14 +0200 (CEST)
Received-SPF: pass (mxe9fb: connection is authenticated)
Message-ID: <ffac6caf-0376-4a0c-908e-b89cce48d28f@leemhuis.info>
Date: Fri, 5 Jun 2026 08:58:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "drm/i915/backlight: Remove try_vesa_interface"
From: Thorsten Leemhuis <regressions@leemhuis.info>
To: Tvrtko Ursulin <tursulin@igalia.com>, Dave Airlie <airlied@gmail.com>,
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Linux kernel regressions list <regressions@lists.linux.dev>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20260515155340.1000997-1-suraj.kandpal@intel.com>
 <20260517024709.1016121-1-suraj.kandpal@intel.com>
 <53a2a8dd-d1b6-41c5-ade2-7ed870d074ac@leemhuis.info>
Content-Language: de-DE, en-US
In-Reply-To: <53a2a8dd-d1b6-41c5-ade2-7ed870d074ac@leemhuis.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: <178064269494.1178932.8212265372479905459@mxe9fb.netcup.net>
X-NC-CID: yZFu1qiK5+qb6kd4Rl2AdMorZ6t1O6HYlhAKMN1jnvJ0Ik1JIE4=
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
	R_DKIM_ALLOW(-0.20)[leemhuis.info:s=key2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[leemhuis.info];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[igalia.com,gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[leemhuis.info:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[regressions@leemhuis.info,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 607FF645C95

On 6/4/26 15:55, Thorsten Leemhuis wrote:
> On 5/17/26 04:47, Suraj Kandpal wrote:
>> This reverts commit 40d2f5820951dee818d05c14677277048bd85f9f.
>>
>> Removing the try_vesa_interface gate caused a backlight regression on
>> panels whose VBT correctly reports INTEL_BACKLIGHT_DISPLAY_DDI and whose
>> PWM path is the actual backlight control, but whose DPCD optimistically
>> advertises DP_EDP_BACKLIGHT_AUX_ENABLE_CAP / _BRIGHTNESS_AUX_SET_CAP.
>> After the commit such panels silently bind to the VESA AUX backlight
>> funcs; AUX writes complete but the panel ignores them, leaving
>> brightness stuck (no-op backlight). Observed on at least KBL and TGL
>> eDP setups.
> 
> Lo! What's the status of this regression fix? It's a -next for two weeks
> now as f30fddb4402313 ("Revert "drm/i915/backlight: Remove
> try_vesa_interface""), but from the outside and checking
> https://gitlab.freedesktop.org/drm/i915/kernel/-/commits/drm-intel-fixes
> it looks like it's scheduled for merging in the next cycle.

Resending to Tvrtko, who sent the i915 PR yesterday (which didn't
contain that fix), as well as Dave and Simona.

FWIW, due to the lack of response to various inquiries I'm considering
to ask Linus to directly pick up the mentioned regression fix to ensure
it makes it into rc7.

In case anyone wonder what regression I'm talking about:

* https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16015 /
https://lore.kernel.org/lkml/CADo9pHjr-zZ9C3%2B026y5%2BXOGPSeRzSJMCHof27TVPtAUNgTc8A@mail.gmail.com/
* https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16043
* https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16097 /
https://lore.kernel.org/lkml/d2de7933-e650-4b19-8d88-90d66693dcfc@message-id.googlemail.com/

Ciao, Thorsten

> But I think it should be merged this cycle (ideally before -rc7, as
> Linus wants all known regression fixed by -rc6), as it fixes a
> regression that is known since the -rc1 days. I already asked for the
> mainlining plans in gitlab tickets about a week ago (and since then
> affected users spoke up, too), but there was no conclusive answer for
> the plans, which is why I'm trying this way now.
> 
> Ciao, Thorsten
> 
> 
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  .../drm/i915/display/intel_dp_aux_backlight.c | 19 ++++++++++++-------
>>  1 file changed, 12 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> index a8d56ebf06a2..7a6c07f6aaeb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> @@ -691,10 +691,9 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>  	struct drm_device *dev = connector->base.dev;
>>  	struct intel_panel *panel = &connector->panel;
>> -	bool try_intel_interface = false;
>> +	bool try_intel_interface = false, try_vesa_interface = false;
>>  
>> -	/*
>> -	 * Check the VBT and user's module parameters to figure out which
>> +	/* Check the VBT and user's module parameters to figure out which
>>  	 * interfaces to probe
>>  	 */
>>  	switch (display->params.enable_dpcd_backlight) {
>> @@ -703,6 +702,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>>  	case INTEL_DP_AUX_BACKLIGHT_AUTO:
>>  		switch (panel->vbt.backlight.type) {
>>  		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
>> +			try_vesa_interface = true;
>>  			break;
>>  		case INTEL_BACKLIGHT_DISPLAY_DDI:
>>  			try_intel_interface = true;
>> @@ -715,12 +715,20 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>>  		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
>>  			try_intel_interface = true;
>>  
>> +		try_vesa_interface = true;
>> +		break;
>> +	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
>> +		try_vesa_interface = true;
>>  		break;
>>  	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
>>  		try_intel_interface = true;
>>  		break;
>>  	}
>>  
>> +	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
>> +	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
>> +		try_vesa_interface = true;
>> +
>>  	/*
>>  	 * Since Intel has their own backlight control interface, the majority of machines out there
>>  	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
>> @@ -733,9 +741,6 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>>  	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
>>  	 * backlight interface at all. This means that the only sensible way for us to detect both
>>  	 * interfaces is to probe for Intel's first, and VESA's second.
>> -	 *
>> -	 * Also there is a chance some VBTs may advertise false Intel backlight support even if the
>> -	 * TCON DPCD says otherwise. This means we keep VESA interface as fallback in that case.
>>  	 */
>>  	if (try_intel_interface && intel_dp->edp_dpcd[0] <= DP_EDP_14b &&
>>  	    intel_dp_aux_supports_hdr_backlight(connector)) {
>> @@ -745,7 +750,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>>  		return 0;
>>  	}
>>  
>> -	if (intel_dp_aux_supports_vesa_backlight(connector)) {
>> +	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
>>  		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
>>  			    connector->base.base.id, connector->base.name);
>>  		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
> 

