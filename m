Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iO+jOXkJvWkO5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:46:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538EE2D76C6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B39610EA9D;
	Fri, 20 Mar 2026 08:46:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AdYKbUZu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25DA10E216;
 Fri, 20 Mar 2026 08:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773996406; x=1805532406;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TSrc2dEReTghhX+T93+oj2BEwvDZMIjqQuMnj/RX98s=;
 b=AdYKbUZu5g8tJVcmhyz2edVMtuH/1uS3+Hf458Xvp896XhRcQN5jvvhC
 b3Pihu87xPsZFX6kAp9vCNFPlkfYOkqVa/pO9bqVgI3tW/ItybiBoj7KH
 9714Byi1z2FmscECBHtdtEVAKKKiVE2IXtBcObyPiTqAA/CmWKZAtGrcp
 lo6TQ+95UAHP1/A1+LPwiP4tmkhVRx8+L2Qyxr92jOZvg15OEZL4preb2
 4lmocajmjEr/gugyM/5p+2Z6n5oUxcOxzVo0YfeO15LaqRwiMsMrZ6E6Q
 XT9rUHhuRpdiGqeeucbMsiPLHw8a6FTlLvR72yhmqmdLcOOJMlWxEtu+K w==;
X-CSE-ConnectionGUID: 6FrP+F17Q7CGkWywQG8wAg==
X-CSE-MsgGUID: KT8C3p9TTlWywBk+m2iikw==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74093761"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="74093761"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 01:46:46 -0700
X-CSE-ConnectionGUID: t4o/oT37TCyA17EL3p2UnQ==
X-CSE-MsgGUID: JEC3hzISTT6FparCxBb/KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="219052840"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.197])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 01:46:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Fixes for Dell XPS DA14260 quirk
In-Reply-To: <20260320080403.1396926-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260320080403.1396926-1-jouni.hogander@intel.com>
Date: Fri, 20 Mar 2026 10:46:40 +0200
Message-ID: <2392dd1f93c683734a8d1241655ca876d95830b9@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 538EE2D76C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 20 Mar 2026, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Dell seems to be changing device ID even within same device model. Due to
> this we need to ignore device ID when applying quirk for Dell XPS 14
> DA14260. Do this by adding DEVICE_ID_ANY and assign it to Dell XPS 14
> DA14260 quirk. Also apply the quirk only for eDP Panel Replay.
>
> Fixes: 45c77d4bf8d4 ("drm/i915/psr: Disable Panel Replay on Dell XPS 14 D=
A14260 as a quirk")
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c    |  3 ++-
>  drivers/gpu/drm/i915/display/intel_quirks.c | 16 ++++++++++------
>  drivers/gpu/drm/i915/display/intel_quirks.h |  2 +-
>  3 files changed, 13 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index b319e5bd6274..2f1b48cd8efd 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -610,7 +610,8 @@ static void _panel_replay_init_dpcd(struct intel_dp *=
intel_dp, struct intel_conn
>  	if (intel_dp->mst_detect =3D=3D DRM_DP_MST)
>  		return;
>=20=20
> -	if (intel_has_dpcd_quirk(intel_dp, QUIRK_DISABLE_PANEL_REPLAY)) {
> +	if (intel_dp_is_edp(intel_dp) &&
> +	    intel_has_dpcd_quirk(intel_dp, QUIRK_DISABLE_EDP_PANEL_REPLAY)) {

I'll note that intel_has_dpcd_quirk() could internally limit each quirk
for eDP/non-eDP. But that's for future.

BR,
Jani.

>  		drm_dbg_kms(display->drm,
>  			    "Panel Replay support not currently available for this setup\n");
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/dr=
m/i915/display/intel_quirks.c
> index 8f1bf8f418ec..883f297d4b83 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -86,11 +86,11 @@ static void quirk_edp_limit_rate_hbr2(struct intel_di=
splay *display)
>  	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
>  }
>=20=20
> -static void quirk_disable_panel_replay(struct intel_dp *intel_dp)
> +static void quirk_disable_edp_panel_replay(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>=20=20
> -	intel_set_dpcd_quirk(intel_dp, QUIRK_DISABLE_PANEL_REPLAY);
> +	intel_set_dpcd_quirk(intel_dp, QUIRK_DISABLE_EDP_PANEL_REPLAY);
>  	drm_info(display->drm, "Applying disable Panel Replay quirk\n");
>  }
>=20=20
> @@ -116,6 +116,8 @@ struct intel_dpcd_quirk {
>=20=20
>  #define SINK_DEVICE_ID_ANY	SINK_DEVICE_ID(0, 0, 0, 0, 0, 0)
>=20=20
> +#define DEVICE_ID_ANY		0
> +
>  /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
>  struct intel_dmi_quirk {
>  	void (*hook)(struct intel_display *display);
> @@ -261,11 +263,11 @@ static const struct intel_dpcd_quirk intel_dpcd_qui=
rks[] =3D {
>  	},
>  	/* Dell XPS 14 DA14260 */
>  	{
> -		.device =3D 0xb080,
> +		.device =3D DEVICE_ID_ANY,
>  		.subsystem_vendor =3D 0x1028,
>  		.subsystem_device =3D 0x0db9,
>  		.sink_oui =3D SINK_OUI(0x00, 0x22, 0xb9),
> -		.hook =3D quirk_disable_panel_replay,
> +		.hook =3D quirk_disable_edp_panel_replay,
>  	},
>  };
>=20=20
> @@ -277,7 +279,8 @@ void intel_init_quirks(struct intel_display *display)
>  	for (i =3D 0; i < ARRAY_SIZE(intel_quirks); i++) {
>  		struct intel_quirk *q =3D &intel_quirks[i];
>=20=20
> -		if (d->device =3D=3D q->device &&
> +		if ((d->device =3D=3D q->device ||
> +		     q->device =3D=3D DEVICE_ID_ANY) &&
>  		    (d->subsystem_vendor =3D=3D q->subsystem_vendor ||
>  		     q->subsystem_vendor =3D=3D PCI_ANY_ID) &&
>  		    (d->subsystem_device =3D=3D q->subsystem_device ||
> @@ -300,7 +303,8 @@ void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
>  	for (i =3D 0; i < ARRAY_SIZE(intel_dpcd_quirks); i++) {
>  		const struct intel_dpcd_quirk *q =3D &intel_dpcd_quirks[i];
>=20=20
> -		if (d->device =3D=3D q->device &&
> +		if ((d->device =3D=3D q->device ||
> +		     q->device =3D=3D DEVICE_ID_ANY) &&
>  		    (d->subsystem_vendor =3D=3D q->subsystem_vendor ||
>  		     q->subsystem_vendor =3D=3D PCI_ANY_ID) &&
>  		    (d->subsystem_device =3D=3D q->subsystem_device ||
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/dr=
m/i915/display/intel_quirks.h
> index 77e490caed0d..83214eb94b0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> @@ -21,7 +21,7 @@ enum intel_quirk_id {
>  	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>  	QUIRK_FW_SYNC_LEN,
>  	QUIRK_EDP_LIMIT_RATE_HBR2,
> -	QUIRK_DISABLE_PANEL_REPLAY,
> +	QUIRK_DISABLE_EDP_PANEL_REPLAY,
>  };
>=20=20
>  void intel_init_quirks(struct intel_display *display);

--=20
Jani Nikula, Intel
