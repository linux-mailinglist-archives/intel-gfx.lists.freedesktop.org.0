Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B07622082
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 00:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32BD010E53F;
	Tue,  8 Nov 2022 23:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382CB10E541
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 23:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667951790; x=1699487790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+2CIIAIoHJ5bdDtKkPragMsWViYMa2O35utSYhv7eI8=;
 b=AzWZUvbIK5ftge5+RYgM8Ds1CNCsS5liNXfaOKPo6XqiCLe3OBjvUEXA
 Gph63csT6En/lH4lo7Xu7/jrcL8tF001sxPDsSYjMYXWl+jncSEdnJeB3
 TEjGOhlmO0bXeNfgJhmtNqLVAtd45nMqT7pmtoes7dRSdmNKYf9MRcotP
 nBkhqXZhkUS05xgSbhmA8d0YeuOT5w6gQTd03QFD55n8ppYBt5w0w/io9
 FeqwnvWZNX4VdJPaDz2ylajoYs5q7M9ElinPRGoxwE94ot99UVC1DC++9
 uwM3x0RyQmQLisDQa7AsoRDTvapb2ztSZ3UbIMwzwsO+iv/ulVZpCoU1o Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291228569"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="291228569"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 15:56:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="811420770"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="811420770"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 08 Nov 2022 15:56:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 15:56:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 8 Nov 2022 15:56:28 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 8 Nov 2022 15:56:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lv1ohFv/TPHc2QAtQuaw1ESTixSCbB43VkGTslv8KuZMxu4T24J/6vtg+EOP8VFbATJZjncqynvrJNpY1AFKkaeBeoU+mT8KRg0m1YY11e4TBx0Gz1OO3ykb0RC5g6e5/L0hxpY2uZAgG0prENnvHGXcTCnc117ctKTQJs2GM/NnnYxGdRlidrVa03FED8DLuoI/xkSD8F5LgoUukELBTo7UkdyBC3yshr9KEKLJUnEQR5h6bd8E4b19S7F4hU6BBTPBbhf2QApHee6+XvJHb1WO7ceSW/YMf6jW5/T0NpD+WMuwtdRqXlgHzn5ROB7ZU+O9pHvoRAveuLFYKx6S9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wluwyi1/YXP4scfpl84hLc7i7msrtB+ZoJiG9EbJjtI=;
 b=nayarlh1wW5XPLGpT59w7pFtPlHFbHQ7Hox8yClP7TfR6iixmUQARpI+1eU0ro1aTeJfwaGIzNGmVTphTUOQpEPJBqjSrAtIk5Pj3yhvV7vt3o7BQKbg4uQ6IyFh/KSeTEvzsc7cWg+TMXDSBtOA5F/tx/N+7m7kGNcrcK9BuNIBjDAk7dMDWJDToFuirlxM/eN1y4yHQyfCGH8LxXY8tGLpYcWJY2DJFW0/GlRDn4ouZknBjG+PqK+RVaLbguTJ1HItSZ7IF9c3Cpi8ZjnMC1sTra+a0uwRNI2v0zkRud6Cao8lYCrrZbSs2pfLuuxhBZGEroLX5NHJuJbmXyHBUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by MW3PR11MB4571.namprd11.prod.outlook.com
 (2603:10b6:303:59::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Tue, 8 Nov
 2022 23:56:23 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5791.027; Tue, 8 Nov 2022
 23:56:23 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
Thread-Index: AQHY8JyG1wvbs4AElU2oS7uVkgpqca41tlCAgAACstA=
Date: Tue, 8 Nov 2022 23:56:23 +0000
Message-ID: <CY4PR1101MB21662FF152C69CF61E943118F83F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221104222642.815560-1-anusha.srivatsa@intel.com>
 <Y2rpZ/8Li/186jR1@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y2rpZ/8Li/186jR1@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|MW3PR11MB4571:EE_
x-ms-office365-filtering-correlation-id: a278ddfa-50b0-4bf2-c436-08dac1e4d739
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Vb/IqBuQROvjkCEAzmSrrOOnSg/NA7niCSduPycWLKqk74ChsTkNy++kfeBprjrPmcul6fNbZ2or23Fm+ceUhCaeRS53yT9et4u1Q4WzIn4CBYpNjVu908u/f8dU3W7w+UfoVgAPJlrWOiXLUHhD9XWZxQpJzyhhlYZ/6xpbZLfhcGGqTX1bQC2r0e0Xmmaq8ObtQlqlkLaMderodu4aR94x6o94fI3Ka/8f4h54TTsel26hWmQwDb9OcN7wsliUlvSIJc9J6yKYb7Xy0o49GSCRWis7k8QQ81TNRcFHK8lllGb31dYl7yXfT0Es1BicAqTcr6WfUr5yCRMHdv32/RDEgKr/mmbvA4gz9gF69GoUiG9ONrvMXeri+VGU5v4ylUeqfoFVmkenCc1Abuxan44UsJZRaCAEzFkE/8He4y9FW8gT55b721sdtkbegAkXGXCl5VvpNaG+9SunJ0kkmVpNl2NAPhM5v1t91K9WZT0MsbKouvAF0LGE38Xi8D7vENFPdmPaS5WX5ns6Ry1Jwvo2ImbknVpsmyAJSdS6lY3NQF5uCIvoNf6IflAOM1r59kur4ISnxXt7SkUCVcd3gxAEJ6sGrS6g0R8kvUZITFR3ywId7eTkeO08NJoICrbqB5bv90SxqFhEDqYGQgOrNg0Jg2opKMjYaze1o3aIua2FIAdcsQApd2v5fng+zfWTPudJzifofz1VQd6UmKEJM8+4iEgOFdRuMlu4S7VJWGK0H5mVsoMvyG7ANbPpPyo9p7bDls8Y40tP0x9TSSQXpAORdhBnDxOOfh5tLnFv4Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(39860400002)(376002)(136003)(451199015)(6862004)(52536014)(41300700001)(9686003)(38070700005)(54906003)(8936002)(6636002)(5660300002)(26005)(186003)(30864003)(478600001)(107886003)(4326008)(8676002)(2906002)(316002)(66574015)(83380400001)(64756008)(66476007)(66946007)(76116006)(66556008)(66446008)(122000001)(6506007)(71200400001)(55016003)(7696005)(38100700002)(86362001)(53546011)(33656002)(82960400001)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NEZutpzLHuiguPAnnsMuw+elO19M6BgDpmRGye8WUHUaMq3/8PsHZw7PYH?=
 =?iso-8859-1?Q?1xZGXLw6k8bgtyO4j1SUK1nzJhUwjK4AkTBH4Mo/AnfPEiuXH2rOxKMbEU?=
 =?iso-8859-1?Q?E4mraLvEZLKPE8jWrfWI3MvA+KOtQM3huIoOv+0RebAtrh1mC1lA8yxwQR?=
 =?iso-8859-1?Q?gTogVY+ahfxFQzvGuyJsu5wwXqzcLHAY6/GdT3o5ZJIIR+evJ6OAVEQasb?=
 =?iso-8859-1?Q?6zcHVzyqeEyWbKlOk0OvuT1YTqnk19AGrz1AM+H4E9w+nWr4grpMxS9A89?=
 =?iso-8859-1?Q?npwk1TJQPej3Gt6msm34mBNMrIGm8z+H349t2KisbMSsmXZgVyviAowzs3?=
 =?iso-8859-1?Q?JFNuRFqQDg53d47iIJDaCC9/BPYSjHZi/Us1u9zbekuw9CE7EkFOwCpFUX?=
 =?iso-8859-1?Q?yR8Kvjp7QT8X0WHh72draffWAO8/K/wEZpmSXCP6w6qgxzBKBFRcbaGn46?=
 =?iso-8859-1?Q?/cjl3z5v2xjOyEs5M+ftCXxk5eBQzS2Uz2VU3coL++6l7iXIYETbjZ4EvF?=
 =?iso-8859-1?Q?m/K093XVkBot/vuuCg/CN8g2BBqd/rsYfsiTYNW8W2sMxhT0mL1+aSbN84?=
 =?iso-8859-1?Q?MEawHjjVLMjU+s4qiv1XpBbyJtOI1PQrIPyDI2I+nQwNMGulLPQpNCe+CB?=
 =?iso-8859-1?Q?uKaRTdEh+2YRwRNpj4qGt8bNFuXGRtArczBG58qr3mslVLwLRMQpnwA7hr?=
 =?iso-8859-1?Q?2loWbekNlihw4eOC/MtdXcNsUL3TlC9gN7aHRdioMePtDUNOXuEWjM59gO?=
 =?iso-8859-1?Q?n3svMWPZMeZP/Vocge9YsxchIGb2Q2aWg4WfPF4194lbO/9X/aw/WVdvmb?=
 =?iso-8859-1?Q?XhS+iCTykhKjvtX4QGaRMzStqN3KFhrWJPCFutLKMoV3JkH4biEQtLnhWZ?=
 =?iso-8859-1?Q?jhW3kmy0iuHA0YPkGh2FrHmhhV853djSnuzi2x4RFIkaCljBlcGhf1e48Y?=
 =?iso-8859-1?Q?LU4kHhh/lq5/muVWzMo/hsMiTjO0h/Jv8zlD7iU4VAqDvoS5bmSsI2nRZA?=
 =?iso-8859-1?Q?pCukErkjfPDPfPAQcWflpjtxe4UjwEsmFKR9PnCiwr9R3xf1cr9bL+CZ37?=
 =?iso-8859-1?Q?XI2T/+XqgQtea8KDhvlvan0qCfNtEm9SQRW8AOb2N7qNZt45C3iQ9qAQv9?=
 =?iso-8859-1?Q?Gzokf9aHFVtjcU1C1W+wUv9DnPFECbMwaqa/FlyrvF9x1Pfc2n7cK7VKMe?=
 =?iso-8859-1?Q?wDNhhKrtuUJHQ0wLxZ5fF4gp/BeeBuzZFlbH+wwnfEldkEjdp0UTF4iXMd?=
 =?iso-8859-1?Q?fg/+vxFUUPGYYCXKeoH5ZSLBfc93VXOEB8w53DUkoRkb3BtENIdMq+eSYa?=
 =?iso-8859-1?Q?R7ez+f0nK2FOzTgF8DRpWEl3o+U+oSOwknfrH7+PbOOazbsn4YFgUc8q9m?=
 =?iso-8859-1?Q?JABk1nduEm+CSMBQHet4beE94r0dLuKlVt6ARwegpy74lKTjngBLmdRNrO?=
 =?iso-8859-1?Q?10mvhiO9APp4E6uZIl9mw6ZoSIGsPVaU9/CFtqd7ZwHvNfZPS92UkrOGdA?=
 =?iso-8859-1?Q?K2G4XIM6j73HV74OixJBSM7MuLRMiEr2V2Jd5x2YYQ01LP6uGOSG3l/TGx?=
 =?iso-8859-1?Q?H2fJc7Peiq/+wLGsx5wvyPUOY904wuNBDe13wG/EPAQToESMVJyhOMDAnw?=
 =?iso-8859-1?Q?+i+syWcwmtmOBvVlhxM6E5IFYrrGXMaOEALeq9ckpP/AktjhETZBoDqw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a278ddfa-50b0-4bf2-c436-08dac1e4d739
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2022 23:56:23.3313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WdWNDdM4gdm6GqTANMltiS6RL7Nec40VTnrXhE1S6QJlM42xuRujhavrCKGN9p7AD9UWyfYDg5OpHymZLfdwsl+OBl/OWtilNSbPpHh6lPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4571
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, November 8, 2022 3:43 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
> squash when changing cdclk
>=20
> On Fri, Nov 04, 2022 at 03:26:41PM -0700, Anusha Srivatsa wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > For MTL, changing cdclk from between certain frequencies has both
> > squash and crawl. Use the current cdclk config and the new(desired)
> > cdclk config to construtc a mid cdclk config.
> > Set the cdclk twice:
> > - Current cdclk -> mid cdclk
> > - mid cdclk -> desired cdclk
> >
> > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change via
> > modeset for platforms that support squash_crawl sequences(Ville)
> >
> > v3: Add checks for:
> > - scenario where only slow clock is used and cdclk is actually 0
> > (bringing up display).
> > - PLLs are on before looking up the waveform.
> > - Squash and crawl capability checks.(Ville)
> >
> > v4: Rebase
> > - Move checks to be more consistent (Ville)
> > - Add comments (Bala)
> > v5:
> > - Further small changes. Move checks around.
> > - Make if-else better looking (Ville)
> >
> > v6: MTl should not follow PUnit mailbox communication as the rest of
> > gen11+ platforms.(Anusha)
> >
> > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> > Cc: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 161
> > +++++++++++++++++----
> >  1 file changed, 133 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index eada931cb1c8..d1e0763513be 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1716,37 +1716,74 @@ static void dg2_cdclk_squash_program(struct
> drm_i915_private *i915,
> >  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);  }
> >
> > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > -			  const struct intel_cdclk_config *cdclk_config,
> > -			  enum pipe pipe)
> > +static int cdclk_squash_divider(u16 waveform) {
> > +	return hweight16(waveform ?: 0xffff); }
> > +
> > +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
>=20
> Bikeshed:  maybe name this "cdclk_compute_crawl_squash_midpoint" to
> help clarify that we're just computing stuff here and not actually
> programming the hardware in this function?
>=20
> That naming would also help clarify why we're returning false if we crawl=
 but
> don't squash or vice versa (i.e., there's no midpoint in those cases).

Makes sense.

> > +				   const struct intel_cdclk_config
> *old_cdclk_config,
> > +				   const struct intel_cdclk_config
> *new_cdclk_config,
> > +				   struct intel_cdclk_config *mid_cdclk_config)
> {
> > +	u16 old_waveform, new_waveform, mid_waveform;
> > +	int size =3D 16;
> > +	int div =3D 2;
> > +
> > +	/* Return if both Squash and Crawl are not present */
> > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > +		return false;
> > +
> > +	old_waveform =3D cdclk_squash_waveform(i915, old_cdclk_config-
> >cdclk);
> > +	new_waveform =3D cdclk_squash_waveform(i915, new_cdclk_config-
> >cdclk);
> > +
> > +	/* Return if Squash only or Crawl only is the desired action */
> > +	if (old_cdclk_config->vco <=3D 0 || new_cdclk_config->vco <=3D 0 ||
>=20
> Isn't vco unsigned?  "=3D=3D 0" should be fine here I think.

You mean the new_cdclk_config->vco right?
=20
> > +	    old_cdclk_config->vco =3D=3D new_cdclk_config->vco ||
> > +	    old_waveform =3D=3D new_waveform)
> > +		return false;
> > +
> > +	*mid_cdclk_config =3D *new_cdclk_config;
> > +
> > +	/* Populate the mid_cdclk_config accordingly.
> > +	 * - If moving to a higher cdclk, the desired action is squashing.
> > +	 * The mid cdclk config should have the new (squash) waveform.
> > +	 * - If moving to a lower cdclk, the desired action is crawling.
> > +	 * The mid cdclk config should have the new vco.
> > +	 */
> > +
> > +	if (cdclk_squash_divider(new_waveform) >
> cdclk_squash_divider(old_waveform)) {
> > +		mid_cdclk_config->vco =3D old_cdclk_config->vco;
> > +		mid_waveform =3D new_waveform;
> > +	} else {
> > +		mid_cdclk_config->vco =3D new_cdclk_config->vco;
> > +		mid_waveform =3D old_waveform;
> > +	}
> > +
> > +	mid_cdclk_config->cdclk =3D
> DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > +						    mid_cdclk_config->vco, size
> * div);
> > +
> > +	/* make sure the mid clock came out sane */
> > +
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > +		    i915->display.cdclk.max_cdclk_freq);
> > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915,
> mid_cdclk_config->cdclk) !=3D
> > +		    mid_waveform);
> > +
> > +	return true;
> > +}
> > +
> > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			   const struct intel_cdclk_config *cdclk_config,
> > +			   enum pipe pipe)
> >  {
> >  	int cdclk =3D cdclk_config->cdclk;
> >  	int vco =3D cdclk_config->vco;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> > -	int ret;
> > -
> > -	/* Inform power controller of upcoming frequency change. */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11)
> > -		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > -	else
> > -		/*
> > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > -		 * timeouts; the 2ms used here is based on experiment.
> > -		 */
> > -		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > -
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > -					      0x80000000, 150, 2);
> > -	if (ret) {
> > -		drm_err(&dev_priv->drm,
> > -			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > -			ret, cdclk);
> > -		return;
> > -	}
> >
> >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0) {
> >  		if (dev_priv->display.cdclk.hw.vco !=3D vco) @@ -1781,6
> +1818,49 @@
> > static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >
> >  	if (pipe !=3D INVALID_PIPE)
> >
> 	intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv,
> > pipe));
> > +}
> > +
> > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			  const struct intel_cdclk_config *cdclk_config,
> > +			  enum pipe pipe)
> > +{
> > +	struct intel_cdclk_config mid_cdclk_config;
> > +	int cdclk =3D cdclk_config->cdclk;
> > +	int ret;
> > +
> > +	/* Inform power controller of upcoming frequency change.
> > +	 * MTL does not follow the PUnit mailbox communication, skip
> > +	 * this for MTL.
> > +	 */
> > +	if (!IS_METEORLAKE(dev_priv)) {
>=20
> Is there a reason to believe that we'll go back to using pcode again on f=
uture
> platforms?  If not, then it would be preferable to use a version check he=
re
> like
>=20
>         if (DISPLAY_VER(dev_priv) >=3D 14)
>=20
> since we usually assume future platforms will follow the newest platform'=
s
> behavior.
>=20
> It also might be best to flatten this out rather than using nested if's.
>=20
>         int ret =3D 0;
>=20
>         if (display >=3D 14) {
>                 /* noop; Pcode not used for this */
>         } else if (display >=3D 11) {
>                 pcode_request...
>         } else {
>                 pcode_write_timeout...
>         }
That's is definitely neater.
Does the rest of the patch look good?

Anusha=20
> Matt
>=20
> > +		if (DISPLAY_VER(dev_priv) >=3D 11)
> > +			ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > +
> 	SKL_CDCLK_PREPARE_FOR_CHANGE,
> > +
> 	SKL_CDCLK_READY_FOR_CHANGE,
> > +
> 	SKL_CDCLK_READY_FOR_CHANGE, 3);
> > +		else
> > +			/*
> > +			 * BSpec requires us to wait up to 150usec, but that
> leads to
> > +			 * timeouts; the 2ms used here is based on
> experiment.
> > +			 */
> > +			ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > +
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > +						      0x80000000, 150, 2);
> > +		if (ret) {
> > +			drm_err(&dev_priv->drm,
> > +				"Failed to inform PCU about cdclk change (err
> %d, freq %d)\n",
> > +				ret, cdclk);
> > +			return;
> > +		}
> > +	}
> > +
> > +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> > +				   cdclk_config, &mid_cdclk_config)) {
> > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	} else {
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	}
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		ret =3D snb_pcode_write(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > @@ -1953,6 +2033,26 @@ void intel_cdclk_uninit_hw(struct
> drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >
> > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private
> *i915,
> > +					     const struct intel_cdclk_config *a,
> > +					     const struct intel_cdclk_config *b) {
> > +	u16 old_waveform;
> > +	u16 new_waveform;
> > +
> > +	if (a->vco =3D=3D 0 || b->vco =3D=3D 0)
> > +		return false;
> > +
> > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > +		return false;
> > +
> > +	old_waveform =3D cdclk_squash_waveform(i915, a->cdclk);
> > +	new_waveform =3D cdclk_squash_waveform(i915, b->cdclk);
> > +
> > +	return a->vco !=3D b->vco &&
> > +	       old_waveform !=3D new_waveform; }
> > +
> >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b) @@ -
> 2759,9 +2859,14 @@ int
> > intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  			pipe =3D INVALID_PIPE;
> >  	}
> >
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > +					     &old_cdclk_state->actual,
> > +					     &new_cdclk_state->actual)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Can change cdclk via crawling and squashing\n");
> > +	} else if (intel_cdclk_can_squash(dev_priv,
> > +					&old_cdclk_state->actual,
> > +					&new_cdclk_state->actual)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squashing\n");
> >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
