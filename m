Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CF2750118
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 10:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B457010E06E;
	Wed, 12 Jul 2023 08:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC5310E06E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 08:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689149895; x=1720685895;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hu2eUAn6z3UTBWrG7rGCz31xpdTmsoKgj96os3awymc=;
 b=Z0ke1RvyUaU5gSKrlDkP8pWQ7H1P3mTbXu24NLsIvz+4V0RhkxlAL3QJ
 WfwjONaAztS0fSWiPDF0j5FokkVzjhMBJRzbvJOX767e7S0Zs4GVHvxjj
 tW+oHdgkAtzcNOWKTjl3r+o/CDLiT55jt5jZv/iKPCWpfF8e+rjWnhpti
 HiosMfFpts8od17jOI9Gx+qqZSTfBErU4jS4MUQyimyg8GGQC8SbqkF9K
 95lLmjQpFE8IdV2qGPw+bQuJ6Gpbl3Yj+VESMgwX0fwxauroFmx5USnDM
 VzZy7HUxh6Jwwvnp0dhMLXfK4Gd0nYcmMFiEqTiasWNWURWrHJCDhxb44 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="345146748"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="345146748"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 01:18:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="715471629"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="715471629"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 12 Jul 2023 01:18:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 01:18:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 01:18:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 01:18:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 01:18:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NoQXguKYF5+kN9akcXppIut/wpmUarYvr2zyPmsZzLf1wbiu9aOyEjYvERDAvoB2NTsmplu0qiQeVl95BH9JnuVoGZvLc+X5+o0HH2ChRVqiNoEkMX9zcAuRHZvZcXPH7kiUGb27tszMvm89j4sV427dfUN8OXIoUnxwcDOzYSltAjJivN8qJc3dghU7u2VQNbDoLNId/6UVxspDu03TvyxaJiLP5ZsOAu/huZq+UhGgcYAJURJ9XlDL9VDgSKkMuuKsq7aB1RIMdp0+vzN/g9zlIfF7DfUEYKE1RKZrUMFIpuqEUcdQJLL3ncj1C96p92cmlNEVU67+34aPsrM93g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/T5wNmB8McCoRzUL6zSr22mRVPaA9uv2qSQPYKnZoZA=;
 b=Ouw+913pXUJcI7+yv+qyFVgqC8r9FMHLcSWM02wbCnoUb6lr+/VdyajXlo4iyUSgGeWvQDVcMTqyU66uXTPZIq+K/AHBKp3kURc6+wB66jjceYJj+J5i0DHjQvsWnI7JbITT+HTkLotZVRx684BtryI6Fcl0PeX0zQJlnj3twWD66KXzkk7OFQhLbEa3sYCdLdyVgb7SYpm6vBfBWgc1YO6HNCy+FaC7pAlXz3ua4WB3azss6x6rzCMzlmHiRuZHfe9qanQe4CIxOddT22Wf05zsX83eJYxwKfpm20vTcvWXTVwS1N/LuDJDVP7RlT9F2e0Y3pl45aMm0nxs6Xc3Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by PH0PR11MB4982.namprd11.prod.outlook.com (2603:10b6:510:37::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Wed, 12 Jul
 2023 08:18:11 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::a6c8:499b:361d:ca6b]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::a6c8:499b:361d:ca6b%6]) with mapi id 15.20.6588.022; Wed, 12 Jul 2023
 08:18:11 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
Thread-Index: AQHZs5CWXyt1cCKow02QYixtBw1CYq+0u24AgAEO/oCAAACnsA==
Date: Wed, 12 Jul 2023 08:18:10 +0000
Message-ID: <DM6PR11MB4204E1633B31119E05BA58238936A@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20230711002529.9742-1-vidya.srinivas@intel.com>
 <87o7kih1uh.fsf@intel.com> <87ilaph7ie.fsf@intel.com>
In-Reply-To: <87ilaph7ie.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4204:EE_|PH0PR11MB4982:EE_
x-ms-office365-filtering-correlation-id: 8b289919-ce2d-40ad-d500-08db82b087e3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qto+j7jD6O7YY+26/kggIbmGoAboZKnuon/Y6KlbOTQxPZ97IcDlAS/VnV+T/hdJ+96CwJwmND2+j7FwyulG41CjpyEeU1a/kOtNwrCCFZvLFfqs1asdSKPseQnufjZJMtSmQcGzYGtu1RBkfuoxGz6KrmLldtS6l7v6OqvIDPRkq/MJQvDZzn3KzlNaCc2ujQpywuwDJdr9mVBVJqaahiuVSiKrzhL+/EXhho2/vTkWkyUR7q8tWObblvKObJNAJ/cNMak8l7uQVkY7euu/T4OAQFI3ZpU8LlXSDxI4rD0wNk6uDzYPy0LzoByL01d2+ztGO0tEB3wkN+avFu0DXyq+GWE06Z3cXYCIg7QPwyMkKRPRqQSTHj+bL9UiO20/H/U+gtzNC3bRRrmO1HawRYRiSrtGS+Q3fLTbYjTDulxkve4oZpVJDEoSOrYoqCdrgjl1SwAxCwngh5NMU0aQea2Feab1xzWo3/E38/HOZJNpdK0OTu9Ic9N3OzGwDFcyA+UNYsaMyFTjOwFweGi8FiHDCJ09RfG1cmNz1u+s6jMxDq2s85qCiORUQMjNresQlDlgYI2q2l3zDrcfZt9PxsDFo7ePpTSwJGxn82fgvzPamEuK/9nJj5ZUg+lsEwXy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(7696005)(66476007)(66946007)(76116006)(66556008)(64756008)(66446008)(478600001)(82960400001)(55016003)(26005)(6506007)(9686003)(53546011)(122000001)(38100700002)(110136005)(71200400001)(316002)(41300700001)(38070700005)(8936002)(8676002)(86362001)(5660300002)(52536014)(186003)(33656002)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Vq45MB+37Vu9rLt0ZvIH6N3/dZ5yR1L3cxylNAAstD418oS+pl08TPNNEMKx?=
 =?us-ascii?Q?d4ggQDsoKRFRwiSDRBtwA7ynjftUEBAIFZYgJFOFX4bCrMNYG8+xZqpTxJEg?=
 =?us-ascii?Q?ZyNllW5jniNfEKWfcN1/yLQwXizVMOK8tjHkVLD+7pKRQO2YTi7ZDP4U0SHO?=
 =?us-ascii?Q?B7j2vz06mBZO3gP7Pl6gml1+Ig4upoIJC1MUJgaBYRr0c/H3AKh59HB/abFh?=
 =?us-ascii?Q?7szCP/CZBZ/WO1UZqP37QHpc/W1kDFAetuqWKJpgH3xydmQe/cJQFbIlMkcA?=
 =?us-ascii?Q?24iGEruJx5zz1ZoIICrro3KpjFdeg3rJ1N7o2/X+jmTRxE82mf/Z/YhOEr0n?=
 =?us-ascii?Q?a8P8Li+rMXQkJ+43mpv8XG9XDJsqdW0Qr9GHplH0HOwn3NioFIKMbNGDCLoH?=
 =?us-ascii?Q?p2X93zNHqk5ohw7/urKndih2nILdzkp4idzvTTM4IVFpgMkyCdSMYInuoGpb?=
 =?us-ascii?Q?XPA93DuMwoY3Pp5hIDTO1sxyhAMkmJQmmt/6+6nJbUE3HZtUfdgM9cbTu9I3?=
 =?us-ascii?Q?bIrIx68KO9u05wK8dP4l2EmBZWqWSALgZ8dQ0LQ7lcs2Vw+SU6pnw06SYQr0?=
 =?us-ascii?Q?IEc8ctt5QSoMcYUxSGcAhhOiM6ZAo1ytGhd6l4YaxyFh/EUPfZKxnpk07r1Q?=
 =?us-ascii?Q?5HLNahYo8n1BXluIQQ0UcRaMNYkf7ggKcpaPn/BoTPonIoI9w0tnwFSsltcM?=
 =?us-ascii?Q?bX/ZCsZBjGb5J9gDSk5kglxBsqIPW5OYA0aNXMqbfqbPvJeau8jUps513tW9?=
 =?us-ascii?Q?t/9GmG0CtvlDRGiPsPTx123Nfm53Dfh82k8otPo4QDOgHimHx5qSMHE3Q72m?=
 =?us-ascii?Q?RBq5fBbsZcoKr2yOfKIkNSwv2MA3An9PLj14+U1OFon5Me1G/wdDvQQsfGUC?=
 =?us-ascii?Q?rfNiYcNykErY1yy63zGwTw8zs/XNhaPRcOAjldXO2qlU/4HaEkh9sia4EXWj?=
 =?us-ascii?Q?aEM25gptSWcvkdBjT4zUFNXkijeQhS/g821eAwpQpuOCE0Av2vniTBxTiEi1?=
 =?us-ascii?Q?N3nHUk/k4rYfPBH60h0gGmVq3v86aLAxYDIHpqCQdxxnyIsuSVP4eRvDJZiJ?=
 =?us-ascii?Q?+Yj/BRBssvyK92uAT3kvD5+LpvIZI1F4pO2kBgz3ch6ztx83sbwdHyByZpMI?=
 =?us-ascii?Q?keg2usgOkPUCKZ4/lrOoE0gFfrDmVNKpf5Ju+2fyNiuf4up82+UXvCMNlFCq?=
 =?us-ascii?Q?WsJqHd+1ICeV5Phxy9Ja7vZAJKi0Dj/2urhQlaDl1Pzz419K6wnMzlwt3JgF?=
 =?us-ascii?Q?BPfvNgBMuCi/yTjljoduU+C38cGifLqR+DlKu4BCOjJlBz54/K8SNxHbtqyS?=
 =?us-ascii?Q?JLvyMYg+wpZc13lHxzReNLyt5QPA1g5JYKBUI8RhhflDuN82bciUS/5+B91k?=
 =?us-ascii?Q?dLTC2QmfIk4ZG3PteNm51bmCdl6npouKOBYMrjjGQvM9Pc+IbdlQCSCNoGqc?=
 =?us-ascii?Q?PZ0Qfwhvz7bXEo1mH6jNTYc5bRdyxdEmvuhjQyKY7rgF4/2//aun+p7kXJUu?=
 =?us-ascii?Q?nSt/j4YsZaum/shqF/5egg7MAWIVwxKajr9TG+zo8wIn1ZvWogBVNGy7tAx0?=
 =?us-ascii?Q?2BoHXtUYYN7PpOLl+Dx7pqyCqnpROl3D1w+LrYqD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b289919-ce2d-40ad-d500-08db82b087e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2023 08:18:10.8681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BEow46NhxJfXvjsE5aV8fNjdUOl79yR5kO6humWTmka9ZmiPNBMl8n5oKfxKoDvg7lvr1mtOavIvDale3kri8whrflRKain48kS6st+b75I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4982
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, July 12, 2023 1:44 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
> differing sync polarities
>=20
> On Tue, 11 Jul 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Tue, 11 Jul 2023, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> >> v2: Add Jani Nikula's change for quirk for sync polarity
> >
> > This was a quick hack suggestion to try. If it works, I think it works
> > by concidence, because a fastset won't update the sync flags in
> > TRANS_DDI_FUNC_CTL register. Did not check whether they can even be
> > updated while the transcoder is enabled.
>=20
> Bspec 49198 seems to indicate TRANS_DDI_FUNC_CTL can be changed
> without a full mode set.
>=20
> The sync polarity still needs to be modified in the ->update_pipe() hooks=
.

Hello Jani,

Thank you very much. Apart from sync polarity, VRR panel is doing full mode=
set between
refresh rates 165 to 60Hz due to vrr.vmin, vrr.vmax, vrr.flipline and vrr.g=
uardband mismatch.
Can VRR panel do seamless fastset between 165Hz and 60Hz? Kindly let me kno=
w.=20
Thank you.

Regards
Vidya
>=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> >> CC: Jani Nikula <jani.nikula@intel.com>
> >> Credits-to: Jani Nikula <jani.nikula@intel.com>
> >> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> >
> > It would be useful to have a bug report at fdo gitlab with the EDID
> > attached.
> >
> > BR,
> > Jani.
> >
> >
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_panel.c   | 10 ++++++----
> >>  2 files changed, 7 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >> b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 43cba98f7753..088b45e032aa 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -5234,7 +5234,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >>  	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >>  			      DRM_MODE_FLAG_INTERLACE);
> >>
> >> -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> >> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)
> &&
> >> +!fastset) {
> >>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >>  				      DRM_MODE_FLAG_PHSYNC);
> >>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> >> b/drivers/gpu/drm/i915/display/intel_panel.c
> >> index 9232a305b1e6..b9eeaedabd22 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> >> @@ -112,10 +112,12 @@ intel_panel_fixed_mode(struct intel_connector
> >> *connector,  static bool is_alt_drrs_mode(const struct drm_display_mod=
e
> *mode,
> >>  			     const struct drm_display_mode *preferred_mode)
> {
> >> -	return drm_mode_match(mode, preferred_mode,
> >> -			      DRM_MODE_MATCH_TIMINGS |
> >> -			      DRM_MODE_MATCH_FLAGS |
> >> -			      DRM_MODE_MATCH_3D_FLAGS) &&
> >> +	u32 sync_flags =3D DRM_MODE_FLAG_PHSYNC |
> DRM_MODE_FLAG_NHSYNC |
> >> +		DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
> >> +
> >> +	return (mode->flags & ~sync_flags) =3D=3D (preferred_mode->flags &
> ~sync_flags) &&
> >> +		mode->hdisplay =3D=3D preferred_mode->hdisplay &&
> >> +		mode->vdisplay =3D=3D preferred_mode->vdisplay &&
> >>  		mode->clock !=3D preferred_mode->clock;  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
