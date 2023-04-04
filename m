Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3511A6D6952
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 18:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4CA10E714;
	Tue,  4 Apr 2023 16:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9FA10E714
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 16:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680627004; x=1712163004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dCQ5hCoByyGV2PWsVeVhDMgHbRK8gMGU9iJiOY0Ybkw=;
 b=gRniQI/o3Wz4RKFE17sIdplaIBKgRuHUKB415EAUspPbFHUX7mLIIxkU
 lQXJJHRmkkeXLT9hxMGTOHXSz5ixRuKaAx9Gizv7W+OIbPc0HiFFhvUIz
 DxBacB51y+qNJsP1wfGj4fNSI3gtmE8n50eUJ/fgd/fICueGppP8aBBMr
 dCEhdgHPuecS8qjL+JOV3KN5JlG2l8E0pJ5R1ZhDXgkoyCz0bi0X5tDUv
 7y1CCJ5FkBfn4JxpisHRzUD+kzYfSs1YKlvFLYFTDEt+crJBDlBSzA5fA
 dPMNCs7V9ray+YnRbtrwUiyo2m0P0G7EMp9LAAQvIV/UOrUC9+tkgDfal Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="342262620"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="342262620"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 09:50:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810316964"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="810316964"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 04 Apr 2023 09:50:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 09:50:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 09:50:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 09:50:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlyXExXFY9bmjyRCkX3JLfmT+QfoAgFihjPkjx8re7WJHQE9jKGY1eeJu7KXlKgMIJZTSdXY2ilbpXpAy5SwN/wGuus/dm4ib6lECxkKqanQKI3UKbh6iYN349wihCgsBfGpf5V4Di/K0vTqLbfr3Nb8jLMPHKJxCh2STHXDVnVee9YaKDRUZc1atmjlPZRSuONh8fJbD/YRIuQc3J/GamMLonEHMQztXREZWuTfBruz0MzsP6SkA8zTlZDE+zoZM1BkrvjvzUravHuM22x6G+qcjiFYieYQYwn4Ol8Q89YO8mI6kAG3pdkFvMe+bY6gHBKF0pvx+9E/gm2TMAKtFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FEb9qME7/CJJ9yAjUdQMcT5jKCHjuKNbmXwXtlIuWto=;
 b=HQu/jXRKC2X8begcjc/Bm5JKxi05nLowhfK/V5l+tx1mmj4Gj7z6K/1suaR/Gk6ml8rC/gzgn/xvfKA5bMmUwqn6NG88kIFfKobynizXmChab5x0pkW4ny4nw/lH9wDW2ldDer/D79PhrnUZhKUgSaIxsx1YIS32J+s+NgkxmsVbOYwQd82fVZOxEEknMq0jPq+/sncs3o40zIvMbXew3hcF+0usf8qNfPqplQABVnInGXrXUIjg0b5OtNIMLoK4gDasZziW74tG75YHZEw7tX27P2vSwDxMtB8EfLkKP3P7WQkwnPioQ3MrAiJ/LGSlWW29Bt8M6Ohpvp9oKt2bag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MW4PR11MB6887.namprd11.prod.outlook.com (2603:10b6:303:225::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 16:50:00 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6254.030; Tue, 4 Apr 2023
 16:50:00 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Thread-Topic: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY message bus
 and pll programming
Thread-Index: AQHZYKk8DcFq6QWoA0igrhsTJ2KwV68R6E2AgAka6wCAABHKAIAAFO6AgAAHKwCAADgv8A==
Date: Tue, 4 Apr 2023 16:50:00 +0000
Message-ID: <DM4PR11MB59717A07465A88779935469487939@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
 <MW4PR11MB7054D6DBF09E04B3E89268DEEF939@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCwONC/frYg8QqEJ@ideak-desk.fi.intel.com>
 <MW4PR11MB7054ABBA1564C3558AB67064EF939@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCwlxrm4MCZU7cQD@ideak-desk.fi.intel.com>
In-Reply-To: <ZCwlxrm4MCZU7cQD@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MW4PR11MB6887:EE_
x-ms-office365-filtering-correlation-id: bc8d5bb9-6215-4471-0416-08db352ca141
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HF+3Mpd0MsKApl5y8ju505unx4CUHWi1xVDR+W5VO48CBuT5mANzT/yuDoINpLZCSdqngrmfW7K5RwKPm5gLFJDlSSQugfUrPAJFAfcyCZp6mu+2VbbVNwMSd1U2xsqFjcK1stZ7i0aR91amufe5HHU5g21oxuvmrAnp6OKw4anquBDIPw+fNCrIeTYm2C1HscqTMPiJcGEHyJQoHpJggqxMSCKdXU3W+uREuGDd/qxi8eYl0DHBN+s6mGw7C0h+JortN+HfwAgHOXXGvdwKfIbj+DyZ20sKZGasmwAvtxjUrkmcPBwUdIE5P1YxPYabDJmss6Y7ReUh7mDR72YBmLLSEWre07CDx5Lp/0GudQk0W4S2PxPTuI2CcVemaPZrHwfDS3FfQOMZM2avSRNXgMtoOjTcSujOHgamMyalLUi4e2WSTiCkSgtGurt3zM3OFCsVcuziU3tCmGkHle7IdPzbTt1Kb6JH/TZ89OGW4h8jrKDNNKclBDLZJiV7Ick3VjoJTUbLI/mtHCS2rA7BQdL7G4LjFrLvvMIgsd7FOunTUW+SPln2jOq29EQuVrpUcweYc2tFk0eIqYduNG2oMo7AYtZgji/+x8ErSvadNyjlTcoNrxp/2FIKA1ImbW4E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(396003)(346002)(39860400002)(451199021)(15650500001)(38070700005)(52536014)(8936002)(38100700002)(41300700001)(122000001)(5660300002)(33656002)(55016003)(2906002)(110136005)(478600001)(316002)(6636002)(54906003)(9686003)(53546011)(107886003)(26005)(6506007)(71200400001)(7696005)(8676002)(86362001)(4326008)(83380400001)(64756008)(66556008)(76116006)(66946007)(66446008)(66476007)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PD2m0eK/dGUMlSRtWI5sI9ZGLPTcZdmL65ecxi14UFX1Im9BS7Mr56u4sVOn?=
 =?us-ascii?Q?VCkaqLJgQ3lMfTSpoX/pjxiuAW9JJYaoFT0JZYIAoV+st9ChYe0Eix99XR9g?=
 =?us-ascii?Q?hms1CWygBuB8FeS8gygu3CsVWtRGTGzAUWXxzpAbl+Ltk92OYGRHOqu8OVkJ?=
 =?us-ascii?Q?BxXhlTMCWenaZSOwYzw/MfqkLfcsQpmG1IyflpiFDU4/HHHyheo1uxCJJ1Zo?=
 =?us-ascii?Q?leScuu/AUNEEudl/i/5wOXuWh2s2sUR1/JDZfzUL+hk7NP+V2t7Hm0Ej7toZ?=
 =?us-ascii?Q?lLg+b2wTRvK+7vsGcLjNkjSRLyBvbOKHnBKiJM1sON3jotXY7Wi3OvzCc47b?=
 =?us-ascii?Q?ZVUhaIe1fNuDOAGzHuGjPDIkE9Y6B+YdSG8KSWd848w86nq0SQAppxYsf5aL?=
 =?us-ascii?Q?KkfW9iQpQd4HUraJ4Q7DLC4xfcgDLncvaIbrPd6kbcEfchO6KXvF+Uqc3uby?=
 =?us-ascii?Q?WzPvc3CljirIKhP0dW3Ydya/0OEApi/UcQvZLN22LYqzSrw3rtJRdrsLjUZR?=
 =?us-ascii?Q?T+OxM75NShfY7gEbhCBpve0fhechJGWSHQbwpkXMptXsitzN1cyBdMYh4Y73?=
 =?us-ascii?Q?vYYxZ/etPHUNJhwk0GpZ7/UI8P8Ti4isLCydjw97yfI8SI9/8fTXD4qGIet8?=
 =?us-ascii?Q?VBOJjhJm4pbTOGkn5u/0MsI+Dw4TiJHQWl7gL4lNpEsZqYXDRO7T6uPtNS3L?=
 =?us-ascii?Q?mgPI+B34bWlulUoM7fY068IuZO+SnTL5CGhZg2fqg1OWBslV3hrdPOuc0M1F?=
 =?us-ascii?Q?q76mpKvtfkwoxzDTR367JijiBRWoaylWF4nd/ywCMpKYYsJKc7kpRQZuWkEm?=
 =?us-ascii?Q?qeiQ7enAbonrscQSlpTwc6Byc7A9pQk2h8KTMD5pY2XnziapcHnHtJZ+Tqrw?=
 =?us-ascii?Q?t5JeLEuakZXUBVy4ZiQDbJLtatzTxwDhtrctqo8kfprJO8c482u04e9CDYYF?=
 =?us-ascii?Q?hMScOSUWeRrepfj2QVMVRn5gTdlqvmcM4WlSEDbS6rIP/tXiBmfkXsf9udxL?=
 =?us-ascii?Q?6E01R+tcBo7hE6w5GlIdov4El81ZMQAex4pZGJWotBIG44AHI/tP8HsknytR?=
 =?us-ascii?Q?DQyXYuMFkSeGFo3Za2rQmVX0x+KhGWHcjBqLNzB0Kc+AcrVc9biUCCG1Hrf9?=
 =?us-ascii?Q?IX49p1Wx1t/lrGr1u6ILsOzJNmVeQ9eKBszwWO1YGgrH5VfCvclt7HTRaie6?=
 =?us-ascii?Q?LumiJEMWghqdcimhWLtlfEaN/Xf5PUmygpj9mwZlrAxrUB1xhorEfnUp3XZ+?=
 =?us-ascii?Q?FJfi2uQUyAsVDTFo+09PG0W/Oa5JATYF+Lu0/1gxV236ayyKGumSmtgIvkWa?=
 =?us-ascii?Q?AcvnApIwKxs9PhtNFt/VjOD3jt89sFycKto9a1QxJKHuO8dGlabkS2PSZakp?=
 =?us-ascii?Q?1vos7NupJKe0IG5/SKn4lILvWfNgNJ1k6q1wptnOabCPkblpe40VUS7WfQqh?=
 =?us-ascii?Q?1SVLrAt6CoOwudm1/kIGmnZ2d1baWCRsqHM9iPqiweQGkDkDARXlB31kcwMu?=
 =?us-ascii?Q?+SUs4AcSfiC6bVhXkM3rXu/bRdxULby06oPzIdweRRe2qwnskrGLBcAHkvoX?=
 =?us-ascii?Q?fqNQvvuMgmNt9wzAr9Kl6wcYhG2NHyGXe+yFYLy+R9bkkPIUwWKyr/ibrFJj?=
 =?us-ascii?Q?zA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc8d5bb9-6215-4471-0416-08db352ca141
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 16:50:00.3180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TEIAw/Buj0mwjUA6kERcbL1gG027upD9OORXrzp41D/5iEI8ViRgL4R8xa9Io5/liyDEy/Pa/VBkSWKaazqvo8L9iLJBbl718AO9GCLFe4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6887
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, April 4, 2023 6:28 AM
> To: Kahola, Mika <mika.kahola@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Sousa, Gustavo <gustavo.sousa@intel.com>
> Subject: Re: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY message bu=
s
> and pll programming
>=20
> On Tue, Apr 04, 2023 at 04:01:55PM +0300, Kahola, Mika wrote:
> > [...]
> > > >
> > > > > > +void intel_c10mpllb_readout_hw_state(struct intel_encoder
> *encoder,
> > > > > > +                                struct intel_c10mpllb_state
> > > > > > +*pll_state) {
> > > > > > +   struct drm_i915_private *i915 =3D to_i915(encoder->base.dev=
);
> > > > > > +   struct intel_digital_port *dig_port =3D enc_to_dig_port(enc=
oder);
> > > > > > +   bool lane_reversal =3D dig_port->saved_port_bits &
> DDI_BUF_PORT_REVERSAL;
> > > > > > +   u8 lane =3D lane_reversal ? INTEL_CX0_LANE1 :
> > > > > > +                             INTEL_CX0_LANE0;
> > > > > > +   enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> > > > > > +   int i;
> > > > > > +   u8 cmn, tx0;
> > > > > > +
> > > > > > +   /*
> > > > > > +    * According to C10 VDR Register programming Sequence we ne=
ed
> > > > > > +    * to do this to read PHY internal registers from MsgBus.
> > > > > > +    */
> > > > > > +   intel_cx0_rmw(i915, encoder->port, lane,
> PHY_C10_VDR_CONTROL(1), 0,
> > > > > > +                 C10_VDR_CTRL_MSGBUS_ACCESS,
> MB_WRITE_COMMITTED);
> > > > > > +
> > > > > > +   for (i =3D 0; i < ARRAY_SIZE(pll_state->pll); i++)
> > > > > > +           pll_state->pll[i] =3D intel_cx0_read(i915, encoder-=
>port, lane,
> PHY_C10_VDR_PLL(i));
> > > > > > +
> > > > > > +   cmn =3D intel_cx0_read(i915, encoder->port, lane,
> PHY_C10_VDR_CMN(0));
> > > > > > +   tx0 =3D intel_cx0_read(i915, encoder->port, lane,
> PHY_C10_VDR_TX(0));
> > > > >
> > > > > The driver programs these registers, so why aren't they also stor=
ed
> > > > > in the intell_c20pll_state struct?
> > > >
> > > > Maybe I'm not really following here but intel_c20pll_state has its =
own
> > > > tx, cmn and mplla/mpllb stored.
> > >
> > > Yes, just typoed that, I meant struct intel_c10mpllb_state which
> > > doesn't include tx and cmn.
> >
> > Yes, for C10 tx and cmn is missing. Maybe we could add those here as
> > well. It seems that currently these are not necessary required but for
> > the future use, these could be defined.
>=20
> These are needed already now to make the state computation / HW readout /
> state checking work for these two params the same way they do for the
> rest of PLL state.
I believe C10 tx and cmn values are not changing across frequencies. Cmn on=
 ly
Changes for DP and HDMI so does it make sense to include in the pll structu=
re?

-RK
>=20
> > > > > > +
> > > > > > +   if (tx0 !=3D C10_TX0_VAL || cmn !=3D C10_CMN0_DP_VAL)
> > > > > > +           drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x =
for phy:
> %c.\n",
> > > > > > +                    tx0, cmn, phy_name(phy));
> > > > >
> > > > > Shouldn't
> PHY_C10_VDR_CONTROL(1)/C10_VDR_CTRL_MSGBUS_ACCESS be
> > > > > cleared here?
> > > >
> > > > Usually this means that we are not accessing these values from the
> > > > register. Was this in the spec that we would need to clear it?
> > >
> > > It does get cleared at the end of intel_c10_pll_program(), at least
> > > from one of the PHY lanes, so was wondering why things are done
> > > differently here. Yes, the spec doesn't require clearing it, but
> > > then it should not be cleared at other places either (has related
> > > comments on this in follow-up reviews).
> >
> > To be consistent maybe we can clear this here as well.
>=20
> If there is no need for it, let's follow the spec and not clear it at
> any other spot either.
>=20
> >
> > >
> > > > > > +}
> > > > > > +
