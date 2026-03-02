Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yATpErZzpWkNBgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 12:25:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 834C51D76FD
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 12:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA3710E010;
	Mon,  2 Mar 2026 11:25:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lF9oW4AD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E732310E010;
 Mon,  2 Mar 2026 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772450738; x=1803986738;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ryhY777bCLCf6JHq4SupwGlVA50ZGL7NVyJ4/Ycc2vU=;
 b=lF9oW4ADNh/iz+S/xcbb6tX6iozvJC8ln/AjsLw3CogpTpNPecYQ8OvI
 +juPq8cGHRe8ctS5tWh+u9d14qzZg4TuYGoGJIgdUqw+iEnIgl3pkQCwu
 NDtLQ1gGTpFya3mJRVkv/hIrds1kHUWr2NShQX/BXibk/SOEEn+0TGgMU
 xeENwVQGxZH4sZP/Wb+Cn7tEZw8nXCAKr3L/VmxNrTwuJQhU9+GdaU97X
 qKJ0Qza+Gd83GmarbniufyQY0sUn1CN+g5Ho+8rvjvJTgsIf/cOm54afM
 qIvooerWdvOZFLSlziw1REfR0HPmju94A9/KLaESIlFenKfMpH0ViLCnu g==;
X-CSE-ConnectionGUID: zRJjMZ1ORTiJX6hm9BPVqA==
X-CSE-MsgGUID: aZHMz5ipRQOp57Go9KurEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="76057809"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="76057809"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 03:25:37 -0800
X-CSE-ConnectionGUID: 9Qfz5AhyS6WzInOCO5b6+Q==
X-CSE-MsgGUID: efmw7faBTROkejDlBC8hRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217650566"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 03:25:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
In-Reply-To: <DM3PPF208195D8D8B2C13C0E7E9385ED0FCE37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
 <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
 <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <9f9be7c4361428b7ccb77dcc04f93b0eda024c8b@intel.com>
 <DM3PPF208195D8DBB70E17DC6764BC5A276E37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <676746dc5a9fe839e3ed071dee1c8e89174ce0ea@intel.com>
 <DM3PPF208195D8D8B2C13C0E7E9385ED0FCE37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Mon, 02 Mar 2026 13:25:32 +0200
Message-ID: <6af697ac89413d21faee8515056cfe4bb699d733@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 834C51D76FD
X-Rspamd-Action: no action

On Mon, 02 Mar 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness for
>> VESA AUX backlight init
>> 
>> On Mon, 02 Mar 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> >> Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max
>> >> brightness for VESA AUX backlight init
>> >>
>> >> On Wed, 25 Feb 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> >> >> Subject: Re: [PATCH v3 1/8] drm/i915/backlight: Use default/max
>> >> >> brightness for VESA AUX backlight init
>> >> >>
>> >> >> On Tue, 24 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> >> >> > If the brightness fetched from VBT/previous state is 0 on
>> >> >> > backlight initialization, then set the brightness to a default/max value.
>> >> >> > Whenever the minimum brightness is reported as 0 there are
>> >> >> > chances we end up with blank screen. This confuses the user into
>> >> >> > thinking the display is acting weird. This occurs in eDP 1.5
>> >> >> > when we are using PANEL_LUMINANCE_OVERRIDE mode to mainpulate
>> >> >> > brightness via luminance values.
>> >> >> >
>> >> >> > Closes:
>> >> >> > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
>> >> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> >> >> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>> >> >> > ---
>> >> >> > v1 -> v2:
>> >> >> > - Let users set brightness to 0, make it so that it's just not
>> >> >> > done by default (Arun)
>> >> >> >
>> >> >> > v2 -> v3:
>> >> >> > -Update commit header and message (Arun)
>> >> >> >
>> >> >> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
>> >> >> >  1 file changed, 4 insertions(+)
>> >> >> >
>> >> >> > diff --git
>> >> >> > a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> >> >> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> >> >> > index eb05ef4bd9f6..c40ce310ad97 100644
>> >> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> >> >> > @@ -564,6 +564,8 @@ static int
>> >> >> > intel_dp_aux_vesa_setup_backlight(struct
>> >> >> intel_connector *connector,
>> >> >> >  		}
>> >> >> >  		panel->backlight.level =
>> >> >> intel_dp_aux_vesa_get_backlight(connector, 0);
>> >> >> >  		panel->backlight.enabled = panel->backlight.level != 0;
>> >> >> > +		if (!panel->backlight.level)
>> >> >> > +			panel->backlight.level = panel->backlight.max;
>> >> >>
>> >> >> How does this help when .enabled is still based on level != 0 above?
>> >> >>
>> >> >
>> >> > Well we keep the backlight.enabled as false if we read a 0 back
>> >> > from the DPCD
>> >> or the current level state is 0.
>> >> > This is to maintain the policy that if during setup we get 0 as
>> >> > backlight value eDP backlight is currently disabled (which means
>> >> > __intel_backlight_enable needs be called). We then change the
>> >> > current level to max so that when backlight enable is called after
>> >> > setup from
>> >> intel_backlight_update, we enable backlight with max level so that we
>> >> do not end up with a blank screen. This is also where we set
>> backlight.enabled = true.
>> >> > This is  to tackle different eDP behavior where, some preserve the
>> >> > last brightness value programmed in them (in that case users want
>> >> > the same brightness to continue) while others don't and just 0 it
>> >> > out instead of
>> >> having some default value (in that case we keep backlight.enabled =
>> >> false later to be made true during the __intel_backlight_enable call).
>> >> > We face these scenarios in some compositors during the pass key
>> >> > phase where the compositor is still totally not doing everything
>> >> > and does not send
>> >> us any explicit brightness value to set thinking eDP would have some
>> >> basic default value of it's own . We end up getting a 0 from DPCD and
>> >> we enable and set the backlight enable with 0 value which anyways
>> >> later causes us to call backlight disable.
>> >> > In this case during authentication in some compositors like Fedora
>> >> > there are cases where we do not get a explicitly backlight value
>> >> > till the user
>> >> has to blindly enter their Passkey, after which the compositor sends
>> >> us some sane value which we then program.
>> >>
>> >> There's a long history of problems with the PWM backlight
>> >> unexpectedly going from 0 to max.
>> >
>> > Right but at least with this now luminance values will continue if
>> > DPCD maintains its state if we get a value back, otherwise we set a Default
>> value.
>> 
>> What's the brightness control mode *before* we enable luminance control?
>> 
>> When taking over, we should try to read the current brightness setting with the
>> current brightness control method. If we're switching to luminance control, the
>> existing luminance value is meaningless.
>> 
>> AFAICT drm_edp_backlight_probe_state() uses bl->luminance_set to determine
>> the value to read, not the current mode. At a glance, seems wrong to me.
>
> Luminance mode is the current mode. Which we determine that by checking different capabilities from the and setting them
> In this case aux_set and aux_enable to represent them.

The question is not about the panel's *ability* to use luminance mode,
it's about whether that mode was set and in use by GOP/pre-os.

BR,
Jani.

>
> [    1.667694] i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_helper]] AUX A/DDI A/PHY A: Found backlight: aux_set=1 aux_enable=0 mode=0
> [    1.667703] i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_helper]] AUX A/DDI A/PHY A: Backlight caps: level=496/496 pwm_freq_pre_divider=0 lsb_reg_used=1
>
> In this case aux_set = 1 and luminance_set = 1 which means we are in luminance mode
>
>> 
>> Of course, regressions have priority, so a revert should also be a consideration
>> before quickly going for adding level = max in there.
>> 
>
> From what I can see
> We are in Luminance Mode to begin with. From logs there is a level mentioned in VBT should we use that ?
>
> [    1.665632] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel type (VBT): 255
> [    1.665770] i915 0000:00:02.0: [drm:pnpid_get_panel_type [i915]] EDID manufacturer name: SDC, product code: 16899, serial number: 0, year of manufacture: 2024
> [    1.665890] i915 0000:00:02.0: [drm:pnpid_get_panel_type [i915]] EDID raw product id: 4c 83 03 42 00 00 00 00 00 22
> [    1.666006] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel type (fallback): 0
> [    1.666124] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Selected panel type (fallback): 0
> [    1.666235] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] DRRS supported mode is seamless
> [    1.666346] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Found panel mode in BIOS VBT legacy lfp table: "640x480": 63 25180 640 648 744 784 480 482 484 509 0x8 0xa
> [    1.666454] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel manufacturer name: @H@, product code: 0, serial number: 0, year of manufacture: 1990
> [    1.666560] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Panel name: LFP_PanelName
> [    1.666665] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Seamless DRRS min refresh rate: 0 Hz
> [    1.666757] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] VBT backlight PWM modulation frequency 200 Hz, active high, min brightness 0, level 255, controller 0
> [    1.666847] i915 0000:00:02.0: [drm:intel_panel_add_edid_fixed_modes [i915]] [CONNECTOR:502:eDP-1] using preferred EDID fixed mode: "2880x1800": 60 709633 2880 2888 2920 3080 1800 3800 3816 3840 0x48 0xa
> [    1.666931] i915 0000:00:02.0: [drm:intel_panel_add_edid_fixed_modes [i915]] [CONNECTOR:502:eDP-1] using alternate EDID fixed mode: "2880x1800": 120 709633 2880 2888 2920 3080 1800 1880 1896 1920 0x40 0xa
> [    1.667117] mmc0: SDHCI controller on PCI [0000:58:00.0] using ADMA
> [    1.667206] i915 0000:00:02.0: [drm:drm_dp_dpcd_read [drm_display_helper]] AUX A/DDI A/PHY A: 0x007a4 AUX -> (ret=  1) 00
> [    1.667223] i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]] [CONNECTOR:502:eDP-1] AUX Luminance Based Backlight Control Supported!
> [    1.667335] i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]] [CONNECTOR:502:eDP-1] Using VESA eDP backlight controls
> [    1.667413] i915 0000:00:02.0: [drm:intel_panel_init [i915]] [CONNECTOR:502:eDP-1] DRRS type: none
>
> VBT here says use level 255 would it be okay if we set that to level as VBT level, if no value is returned from DPCD panel.
>
> Regards,
> Suraj Kandpal
>
>> > Can we proceed with getting this merged ? Would really help the user.
>> 
>> The real problem with quick fixes to help the user is that they have the
>> potential to make it a lot harder for a lot more users and developers in the long
>> run.
>> 
>> 
>> BR,
>> Jani.
>> 
>> >
>> > Regards,
>> > Suraj Kandpal
>> >
>> >>
>> >> BR,
>> >> Jani.
>> >>
>> >> >
>> >> > Regards,
>> >> > Suraj Kandpal
>> >> >
>> >> >> >  		drm_dbg_kms(display->drm,
>> >> >> >  			    "[CONNECTOR:%d:%s] AUX VESA Nits
>> backlight level
>> >> >> is controlled through DPCD\n",
>> >> >> >  			    connector->base.base.id, connector-
>> >base.name);
>> >> >> @@ -573,6
>> >> >> > +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
>> >> >> intel_connector *connector,
>> >> >> >  		if (current_mode ==
>> >> >> DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
>> >> >> >  			panel->backlight.level = current_level;
>> >> >> >  			panel->backlight.enabled = panel-
>> >backlight.level != 0;
>> >> >> > +			if (!panel->backlight.level)
>> >> >> > +				panel->backlight.level = panel-
>> >backlight.max;
>> >> >>
>> >> >> Ditto.
>> >> >>
>> >> >> >  		} else {
>> >> >> >  			panel->backlight.level = panel->backlight.max;
>> >> >> >  			panel->backlight.enabled = false;
>> >> >>
>> >> >> --
>> >> >> Jani Nikula, Intel
>> >>
>> >> --
>> >> Jani Nikula, Intel
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
