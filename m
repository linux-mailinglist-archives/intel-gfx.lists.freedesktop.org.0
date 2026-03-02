Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LGCMndbpWlc+QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:42:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D541D5B16
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7382C10E471;
	Mon,  2 Mar 2026 09:42:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RG5Ku3DE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8B7010E471;
 Mon,  2 Mar 2026 09:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772444533; x=1803980533;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GqZoQURoODrG4SlWqUYNvO+VfsVwKjX27EuH5HpsCDI=;
 b=RG5Ku3DEzUIjLA9Xpl0ElxpvgDN9jHyGF2tA0jIapPz+ojAd8OTbu+qA
 lGsVT84UkT7TNy/FKPWtNVCY9zPQCefwEPVHiTOsKod3eZyRymASPcbKH
 J284jQkKSpL2oPIIQdFCJhb8nAF8mfI4HftpQobkotqPKBNOotyshl8bd
 C4VirqxBNJGzd9AQ/lchv6gKn/xM4LnglFcxlknvCcc+u5u4uh4FkPg4k
 0QuAlyIx2SIXnA5xhVutoY6neUHt2XuOHde7juj2vB81ok2Uv0I6OMiPS
 z1NHzzOBJ7TNlHuAv8bhaNfH9Xc9Aq9BhDohTH4YdZE6Tuclvv2t8MyF4 Q==;
X-CSE-ConnectionGUID: zLGPfm3IRUeNBgf5ubXaBA==
X-CSE-MsgGUID: VhX+aBQqSzemkBcPqrP0+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73513675"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73513675"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:42:12 -0800
X-CSE-ConnectionGUID: rHNVpWlMRf6SrwdhtznOgg==
X-CSE-MsgGUID: oJO6bKOIS0uzyQmrt3Xuog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="222235392"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:42:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
In-Reply-To: <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
 <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
 <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Mon, 02 Mar 2026 11:42:07 +0200
Message-ID: <9f9be7c4361428b7ccb77dcc04f93b0eda024c8b@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 38D541D5B16
X-Rspamd-Action: no action

On Wed, 25 Feb 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: Re: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness for
>> VESA AUX backlight init
>> 
>> On Tue, 24 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > If the brightness fetched from VBT/previous state is 0 on backlight
>> > initialization, then set the brightness to a default/max value.
>> > Whenever the minimum brightness is reported as 0 there are chances we
>> > end up with blank screen. This confuses the user into thinking the
>> > display is acting weird. This occurs in eDP 1.5 when we are using
>> > PANEL_LUMINANCE_OVERRIDE mode to mainpulate brightness via luminance
>> > values.
>> >
>> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > ---
>> > v1 -> v2:
>> > - Let users set brightness to 0, make it so that it's just not done by
>> > default (Arun)
>> >
>> > v2 -> v3:
>> > -Update commit header and message (Arun)
>> >
>> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
>> >  1 file changed, 4 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> > index eb05ef4bd9f6..c40ce310ad97 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> > @@ -564,6 +564,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
>> intel_connector *connector,
>> >  		}
>> >  		panel->backlight.level =
>> intel_dp_aux_vesa_get_backlight(connector, 0);
>> >  		panel->backlight.enabled = panel->backlight.level != 0;
>> > +		if (!panel->backlight.level)
>> > +			panel->backlight.level = panel->backlight.max;
>> 
>> How does this help when .enabled is still based on level != 0 above?
>> 
>
> Well we keep the backlight.enabled as false if we read a 0 back from the DPCD or the current level state is 0.
> This is to maintain the policy that if during setup we get 0 as backlight value eDP backlight is currently disabled
> (which means __intel_backlight_enable needs be called). We then change the current level to max so that when
> backlight enable is called after setup from intel_backlight_update, we enable backlight with max level so that we
> do not end up with a blank screen. This is also where we set backlight.enabled = true.
> This is  to tackle different eDP behavior where, some preserve the last brightness value programmed in them (in that case
> users want the same brightness to continue) while others don't and just 0 it out instead of having some default value (in that
> case we keep backlight.enabled = false later to be made true during the __intel_backlight_enable call).
> We face these scenarios in some compositors during the pass key phase where the compositor is still totally not doing everything and does not send
> us any explicit brightness value to set thinking eDP would have some basic default value of it's own . We end up getting a 0 from DPCD and we enable and set the backlight enable with 0 value which anyways later causes us to call backlight disable.
> In this case during authentication in some compositors like Fedora there are cases where we do not get a explicitly backlight value till the user has to blindly enter their
> Passkey, after which the compositor sends us some sane value which we then program.

There's a long history of problems with the PWM backlight unexpectedly
going from 0 to max.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>
>> >  		drm_dbg_kms(display->drm,
>> >  			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight level
>> is controlled through DPCD\n",
>> >  			    connector->base.base.id, connector->base.name);
>> @@ -573,6
>> > +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
>> intel_connector *connector,
>> >  		if (current_mode ==
>> DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
>> >  			panel->backlight.level = current_level;
>> >  			panel->backlight.enabled = panel->backlight.level != 0;
>> > +			if (!panel->backlight.level)
>> > +				panel->backlight.level = panel->backlight.max;
>> 
>> Ditto.
>> 
>> >  		} else {
>> >  			panel->backlight.level = panel->backlight.max;
>> >  			panel->backlight.enabled = false;
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
