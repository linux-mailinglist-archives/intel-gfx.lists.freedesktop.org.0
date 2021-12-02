Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3719466214
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 12:10:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91CA6EB41;
	Thu,  2 Dec 2021 11:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808036EB41
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 11:10:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216703013"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="216703013"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:10:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="513153640"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 02 Dec 2021 03:10:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 03:10:39 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 03:10:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 2 Dec 2021 03:10:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 2 Dec 2021 03:10:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ehZ+NKY7yDvJQIE4WSZA60HAGAFLGm55WfwZTYpqV7HR4+nUM+Bo19foQVy4aubJiFNGMesVWFHqxWFV0AyZcA4VHGJJ7o7xKEv/AcBavHGPYtj6iw1MCvRqVDcBw7Am2hToD7gLgZNi89ZlauFXeCC25nPtxJiLYGq1qOqv1POfr+222S6mttTXd9rp9La9LoJjw3g3jD41OMu8hCLNMIeU23Piq2qr3C8/4YFe5sdNFw/n6sL0lzkxrEiNUBsczUOxa756GNsneqoSwlFx1poVL10QxM2+VfIBcH0ORVHcApAjLlAYOAwyB6Wm7lyQnDh67QgyAqtuU3uda1Q0TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JfEFmeJT7VTwfeeKZkXchoFw319ubJPrYremV+sNGpQ=;
 b=HNecQwkWZ9/RXDp243uDgkd3eEagMqGYE4y7cNo/31ucKm5YUJhDKsjQXqLOT/Q1m0iTwx7cKxaR0o+n0k5ml4Qvxc4VLeROJBRI27A3v1FVjLWta+AcJzxw1lgpG4fA+tvyc5qYYwOtYnVNvnuFn8e8PzGScFDcbF7xWXHI4MyjXfYjq6W6rcPbXG5kEIV64/iv+W24JBGfWL60mZoowQSkychlCeXePyH+MHePXmFGetinxzpxomniXoG0lXkbawik7Sr4YiTk+R1YJ0IIxL9Vg3JoIDXVDAEmGQ4MoadPWu2BYNZt5jrovgjJ5dx5RRhYzvGkQSeKn2FNERyxrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JfEFmeJT7VTwfeeKZkXchoFw319ubJPrYremV+sNGpQ=;
 b=BUmTr/56luDMcOeZc6ZbfleR3oX/YOon6oZa/zVUIKUB3hFf23F+oA8MaydIWYlsZ90thdRgWf/I8eUqgBPmrFe1xt4MeD1bv7XXPUQrqPueQi5leqs+DFsbe4qVPG8+GP3DHNqb4ZJJKZ5jF7VWgCcBrPx54It+3eMx37fDXRg=
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by DM6PR11MB2666.namprd11.prod.outlook.com (2603:10b6:5:c9::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.28; Thu, 2 Dec
 2021 11:10:37 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69%7]) with mapi id 15.20.4755.011; Thu, 2 Dec 2021
 11:10:37 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
Thread-Index: AQHX5gVprwDdC/GP0EKN6F+06sVOHqwcTtIAgACxdICAALyqgIAAzzDQgAB+JACAAAOgMA==
Date: Thu, 2 Dec 2021 11:10:37 +0000
Message-ID: <DM6PR11MB4204191747EEC6D75ECF7D7989699@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20211130171220.8622-1-vidya.srinivas@intel.com>
 <20211201034727.1666-1-vidya.srinivas@intel.com> <YaeOkxURq25NfLhy@intel.com>
 <DM6PR11MB420430F778CF34CC8C18A9BA89699@DM6PR11MB4204.namprd11.prod.outlook.com>
 <YaimMOeNzuSBgVHf@intel.com>
In-Reply-To: <YaimMOeNzuSBgVHf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05df03a9-8600-4b6c-68cb-08d9b5845e6e
x-ms-traffictypediagnostic: DM6PR11MB2666:
x-microsoft-antispam-prvs: <DM6PR11MB26669E9A6DCC87BF96FA33D589699@DM6PR11MB2666.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4gCjXH6PTqr08jbSY2Ce02RYWWLanQLFWOS86vuO0OMTI6onDbpK4SkPUMYpKP6WuzWepclSVS3Hd/NFnCdiue9RC6hCUMzMBpiHn7q0ShiBJe8rO4hWAqqkLbpLy5KTCXGDFCeDbinmvYto9e0DYDH8JUosEob8+iXoJdv9+2rpvnIV0J408YNB85Hl7hv2qMhuYbBpGAJmGTOoQzn/sL15QcdrOLOTrKFn11DpG3oNJdlmKtThHNiJBy1n08LaOvxp0sn1kIPak9XGWFkvtaDfvTWY0TvIascqJ/DEx3ligblD/qMnqSfI1CkRW4i1kTa8fCxLXu1ZesYzfm0zTQeo2lzd4H9JhcdEckBttg9mvRY644uRCTpagua4rayhATrGSJUDlftYvMzhY7Eq3vZk5UlBnozwttGCnyNk3zo2dmlO+0dcYGfiMWSjaRiUGSAOw866DKvvvzpdHI3bfLVfxpqqJEMxbYG9jZ1bXZuBcAyjwVBPgJtg7oTOx8o1XM+V5DYlUuzRLoTvOuiTghJ3tc8ANCn4Ll+vso/EUfYrGKIrNrvYNzQAZh9sAV8UFLCrDy/TMNSsZRWuRcJ/lm2Lct/jIEYnlwJpyq/niOocFcZ8Y61bTE1F9KUTcD7PtfxQ8Uyilbjximrvbtbax4PfG+4x2DF9LCyDGKZrlAmYcr8uu96m5Ol/0S2v/9Ewfda1oTwe2x20TuGNaety4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(76116006)(186003)(66946007)(38070700005)(52536014)(33656002)(54906003)(82960400001)(7696005)(8676002)(8936002)(9686003)(26005)(316002)(66476007)(64756008)(66446008)(6506007)(53546011)(66556008)(38100700002)(66574015)(5660300002)(508600001)(83380400001)(4326008)(71200400001)(86362001)(2906002)(6916009)(122000001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kXIFGMMvgSv5bUc8b6R57F4eLa2tDbznkZGe6I2pxiRkfO2nrMw9wZvjkU?=
 =?iso-8859-1?Q?hHnamHlz/cds4HOD6v9beWt3RUV3nVwdpIk41Q/Vk1Yh3M74O+/QiQfesZ?=
 =?iso-8859-1?Q?BA5Pmd99HmP4zqNM0ziCIo9LnPi34xod+/hgjfoa1sluR4XJQpDYvb+U9P?=
 =?iso-8859-1?Q?7Z3fQ7LzN+o3x3srKjiXk9z9ozA1Key6A1GghWHq5f6ErdYnsAKWCdpfwF?=
 =?iso-8859-1?Q?wg3iWGortPAYrrNqK8v8j5oIlZnDS3x/G4kUvNnJuDdvGyDeG4sqqJ0bB9?=
 =?iso-8859-1?Q?0WIDQVApKKxXKiMc67Y8y9ew+3Wk9UY/GF1llge1RzOnBi0Fbr2o1izWl9?=
 =?iso-8859-1?Q?Id9cpNrvZaSa1zorYkl8Nu32jHTyU/sP3OUBq2BU6RD+fohQGKXwi15OwH?=
 =?iso-8859-1?Q?ctah3BtT2DY1dFX6TQXaSdaJ2UvqN6U1F/Y0TbyDLGVtCX0jv3B//DCb0F?=
 =?iso-8859-1?Q?MosPni+axDJuS1+53Q3FKG+zpC5WzTeeFbRfJ64qJkJJJrukCwknTR6boW?=
 =?iso-8859-1?Q?yKtubPPAxug8zjWopNGmGrSHMJRo1VLVpst2oudm4344OL0Ppr4NPr33gN?=
 =?iso-8859-1?Q?fLDHEIww1EJCjwIFpc6037thbBuUET0+sfpanXjRKaORXrGG1c9BvBnMCf?=
 =?iso-8859-1?Q?eBEZGQIULHDFFYBFHA1AN+/yB6I7AnowsXutjnr2/VmtEzfCpzcVDRGq6e?=
 =?iso-8859-1?Q?KvTmdsGL1SfqOT5YBI6RE8AxFF48/2zsE2TdhfONbDARN0ejrL6dGhrrue?=
 =?iso-8859-1?Q?gNU9M+5xbmW8p0RXdKzyC2PEp0LuSuzJTUC/Ux/7xvGxY3UCT/vAxFMz1C?=
 =?iso-8859-1?Q?uOCczrhgHdIok8C27AWJRLfKCzo/1BD6hkyCniYO6nhgj6Nz5VvrjGVFh/?=
 =?iso-8859-1?Q?ndNUv3BP6+RGxP81Ydq9Z3eLwFb+v46Qu3lgvJPfUwohAqBxW4k5yPPtO/?=
 =?iso-8859-1?Q?J4P6WaTsYzciCBaz9xeLB4yPdnoTT7/pfDBNwvDDt/ACKpWTXV+oo8C3a6?=
 =?iso-8859-1?Q?BwDrmsw5RtN6ScdrnQRlabI3umDlQ+VAFTqW07O2G2Ly6eW847GssM7Iag?=
 =?iso-8859-1?Q?ocTysHXyy4CyXmIwv7ZXxqec6ssLTUQAri2TeRfR1DNNQt2IGcqn/qVQNA?=
 =?iso-8859-1?Q?XWQXV0rebB1N7GHW48CigWS5Ajq1SsVzJhm/+CLfNaeNbv0Hh+no/RPX6r?=
 =?iso-8859-1?Q?mUBkocSRu9TvKLF/KFUSlyYcmcNrgnsoEWZzinGqmKSD5lb1brPJWnJIPY?=
 =?iso-8859-1?Q?N7OJJqm1U+XTP9q2kDMrXbQckJtA0QYfJ78S2s6PuINKs22OszDeshouV5?=
 =?iso-8859-1?Q?2iAF2irnFX9nXNtwhDhpw+/doCxXN2zKLJUmGO/mrAh9OvgCSxTw/HQNOO?=
 =?iso-8859-1?Q?Bb7HSrAl8RPpbJDZaQbBpL9ktcL5tns+KhdtruKkEUIVO+m3sBIIW2nSfP?=
 =?iso-8859-1?Q?H8htxNAc7TSpdZjbo9SCZm5eoDHeuJUWcRQJUkAV7i31+VMaxvrKa5Drq7?=
 =?iso-8859-1?Q?0pvO83XDWhedRPrsBqXUWgXCaZm+0TXPym0yv1HV+hYghqd8ZPHw2a/cSX?=
 =?iso-8859-1?Q?q4LimtwyA2b4SvTmFM6ghcZt7qUcNyRBOpT1ZgunULofUYrq4whoUqax9L?=
 =?iso-8859-1?Q?ZHPoFAHebcDWqr8IjXnPhyY+CuesknUr/rLM9QQzyd5tNp3ATcCpgR5vKP?=
 =?iso-8859-1?Q?mf6G4kordqbnB6Nb4r78jUKbOt+INrw6OW19nhMrFZYlRgRJyjrZ5PimZk?=
 =?iso-8859-1?Q?9uQw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05df03a9-8600-4b6c-68cb-08d9b5845e6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 11:10:37.3770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: phi2tQjJTOLJjeRQcxaJKmjnwKXmLJtbqEyh6nuzLO4KhacyHPxF7QmN5uX6fL8vjWbreDhHxof0+azUBimRMiff4UsEP0Nq2QmXMDD9Mcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2666
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
 max_width
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
Cc: "Yashashvi, Shantam" <shantam.yashashvi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, December 2, 2021 4:26 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> <shantam.yashashvi@intel.com>
> Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
>=20
> On Thu, Dec 02, 2021 at 03:25:34AM +0000, Srinivas, Vidya wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Wednesday, December 1, 2021 8:33 PM
> > > To: Srinivas, Vidya <vidya.srinivas@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> > > <shantam.yashashvi@intel.com>
> > > Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
> > > max_width
> > >
> > > On Wed, Dec 01, 2021 at 09:17:27AM +0530, Vidya Srinivas wrote:
> > > > PLANE_CUS_CTL has a restriction of 4096 width even though
> > > > PLANE_SIZE and scaler size registers supports max 5120.
> > > > Take care of this restriction in max_width.
> > > >
> > > > Without this patch, when 5k content is sent on HDR plane with NV12
> > > > content, FIFO underrun is seen and screen blanks out.
> > > >
> > > > v2: Addressed review comments from Ville. Added separate functions
> > > > for max_width - for HDR and SDR
> > > >
> > > > v3: Addressed review comments from Ville. Changed names of HDR and
> > > SDR
> > > > max_width functions to icl_hdr_plane_max_width and
> > > > icl_sdr_plane_max_width
> > > >
> > > > v4: Fixed paranthesis alignment. No code change
> > > >
> > > > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > > Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> > >
> > > Hmm. What's this extra sob doing here?
> >
> > Hello Ville, sincere apologies. When I run checkpatch.pl I see no warni=
ngs
> on my host.
> > However patchwork keeps reporting paranthesis alignment warning.
> > I tried to push it multiple times after running checkpatch.pl on my hos=
t.
> Really sorry about that.
>=20
> I was asking about the extra "signed-off-by" (sob).

Hello Ville, I am really sorry about that. Should I keep single signed-off-=
by and push the patch
again? Kindly let me know. Thank you.

Regards
Vidya

>=20
> --
> Ville Syrj=E4l=E4
> Intel
