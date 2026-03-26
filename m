Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI+pEV9KxWkU8wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:01:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE629337371
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69DA510EAD0;
	Thu, 26 Mar 2026 15:01:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4VSeWQy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B9510EACA;
 Thu, 26 Mar 2026 15:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774537302; x=1806073302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mukvr4hRddGSjLZG9JGvWPsqXgBVbMW4gLVs8MNst88=;
 b=I4VSeWQy+2gqbC/G/c0yGJ0a9I9kT4C4BQOeY57C+wM/LOv0fX2MLe5p
 ObE+Fr7IPXyziamR5sOM8aeo5wOvuDSA2ICOTVP3Sj5N51O51TPvAjac5
 yenZ2W+V8MCa8LqmicR+W8zDk73Wp0BftQ9GkoTcPXFxTFjdMiWnBCTFo
 DUXnNnDTQKmfhCy5qNJrju5AVn3zOPfatvwpkXoGlvAEOYv5viLvyrLKk
 Vlcac3L0XDCR2oRJFNfFafy0gd4K17ePqQuhAaITJEA3TeZOvUR1d0EBF
 M74Ln2wLGZXb67f1ntawi7TTtnYusjl9XXRt+qffT5caCg9UHP48vVUX4 Q==;
X-CSE-ConnectionGUID: fuij22CeRG6laGoXWw/aLg==
X-CSE-MsgGUID: mTR58obxSZST6BenfxOxiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="85903381"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="85903381"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:01:39 -0700
X-CSE-ConnectionGUID: 8+ZFY+czTqmixlWtALPKtA==
X-CSE-MsgGUID: RpgZYoX/QwqhOincS4TdxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="218426642"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.199])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:01:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/i915/dsi: Make 'clock_stop' boolean
In-Reply-To: <acU8ft5x55rIp-jx@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260326111814.9800-1-ville.syrjala@linux.intel.com>
 <20260326111814.9800-4-ville.syrjala@linux.intel.com>
 <1558669af43583b072c8c58eff1e01960c2d9f8c@intel.com>
 <acU8ft5x55rIp-jx@intel.com>
Date: Thu, 26 Mar 2026 17:01:33 +0200
Message-ID: <557b26b17545103834b9051b7165d8010a88f870@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RSPAMD_EMAILBL_FAIL(0.00)[ville.syrjala.linux.intel.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: EE629337371
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Mar 26, 2026 at 03:40:56PM +0200, Jani Nikula wrote:
>> On Thu, 26 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > The DSI 'clock_stop' parameter is a boolean, so use a real
>> > 'bool' for it. And pimp the debug print while at it.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dsi.h     | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 ++--
>> >  2 files changed, 3 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/dr=
m/i915/display/intel_dsi.h
>> > index 8e39d2b52c54..0023ac341aa0 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dsi.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
>> > @@ -81,7 +81,7 @@ struct intel_dsi {
>> >  	int video_mode;
>> >=20=20
>> >  	bool eot_pkt;
>> > -	u8 clock_stop;
>> > +	bool clock_stop;
>> >=20=20
>> >  	u8 escape_clk_div;
>> >  	u8 dual_link;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gp=
u/drm/i915/display/intel_dsi_vbt.c
>> > index 51f6a5b82cb2..23da7f5f9578 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> > @@ -719,7 +719,7 @@ void intel_dsi_log_params(struct intel_dsi *intel_=
dsi)
>> >  	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
>> >  	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
>> >  	drm_printf(&p, "EoT packet %s\n", str_enabled_disabled(intel_dsi->eo=
t_pkt));
>> > -	drm_printf(&p, "Clockstop %s\n", str_enabled_disabled(!intel_dsi->cl=
ock_stop));
>> > +	drm_printf(&p, "Clock stop during BLLP %s\n", str_enabled_disabled(i=
ntel_dsi->clock_stop));
>>=20
>> What's with the reversed !intel_dsi->clock_stop in the existing log and
>> the change here?
>
> I've had these sitting around for a while so completely forgot I changed
> it.
>
> Looks that it's been wrong since the initial commit.
>
> Apparently v2 of the patch
> https://lore.kernel.org/intel-gfx/1397454507-10273-5-git-send-email-shobh=
it.kumar@intel.com/
> had it the correct way around, but then it got messed in
> in v3 while the capital letters were being made lowercase.
>
> I can split that out into its own patch with that explanation.

Not sure I care enough, other than please mention it in the commit
message. Unless you specifically want that fix backported too.

BR,
Jani.


>
>>=20
>> >  	drm_printf(&p, "Mode %s\n", intel_dsi->operation_mode ? "command" : =
"video");
>> >  	if (intel_dsi->dual_link =3D=3D DSI_DUAL_LINK_FRONT_BACK)
>> >  		drm_printf(&p, "Dual link: DSI_DUAL_LINK_FRONT_BACK\n");
>> > @@ -771,7 +771,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_ds=
i, u16 panel_id)
>> >  	drm_dbg_kms(display->drm, "\n");
>> >=20=20
>> >  	intel_dsi->eot_pkt =3D !mipi_config->eot_pkt_disabled;
>> > -	intel_dsi->clock_stop =3D mipi_config->enable_clk_stop ? 1 : 0;
>> > +	intel_dsi->clock_stop =3D mipi_config->enable_clk_stop;
>> >  	intel_dsi->lane_count =3D mipi_config->lane_cnt + 1;
>> >  	intel_dsi->pixel_format =3D
>> >  		vbt_to_dsi_pixel_format(mipi_config->videomode_color_format);
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
