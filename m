Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81DB6A0878
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 13:20:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BBA10E204;
	Thu, 23 Feb 2023 12:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5719610E204
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 12:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677154851; x=1708690851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nJ4e/vlXx6Vzc+aY44To2Jp6SH4T1xPOQmT64J6tNEY=;
 b=fElU7mCQzRulSJ61mLNgCYLBJ+L8chquBgip6FCTo5lZWumtJHsolnHZ
 isdVhpdghJd1jc1UDXwSFU9v0ayacE28orifoKiKs3/NtYeAC+a9RfvXP
 fuaOWmqV/O8XROD/MuQeh7jyEQwqMF+3Zr8z47+sOsTSMPEfK0z+sQ+Cf
 GbuWmDUrJxuSTWrINBQbqH06TjcePuwXGTxkZKG/yDAc5zq3JWnPWFzZx
 iwwCpmpG+cWwLx7NTIlv1wPCAS6gDs15IfH6sU5sLyFEWEkbRbQHADRM8
 PTUcWYgric0NXZu7r5gUFQhTPLu42xixcBIt2pNN6cE1Jf3g9SGcp5bZI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="334566880"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334566880"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 04:18:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="781860062"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="781860062"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2023 04:18:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 23 Feb 2023 04:18:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 23 Feb 2023 04:18:24 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 23 Feb 2023 04:18:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sbc+rqybymP2F9Pd3ezKCgYGbWIlLVTFhUDp/+l/JeJx7qdLiyBoJseZntc5ptB4dmdo6RDllKf3LRAyqCh8EqDgBrqJyO3BJg/MKeK24lJcwoa7VGT+UomBGTlhCvTaAIZKJhWWNu8TgWfujvfg7l9eqjMZ97bmg79tRAz9fLHGYBaMWTsD9/OtyRf7YTKC04rRv74yZFefZ1AnvzXj1sjxzb8KsN+bB93klbzzLgKBJWDXBlekBTQYE+RBIN9zKfuqPEUBdcIl+TbNw0J053M9gytsf62736njqymEXtPjrfQ25GU5d8JkiHEpdL8lmIUWd6BJHcvMppq2IvIk3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XGC4uJimUg5tlKBbu0NbM5k1herpcYwqVyphP1twFjQ=;
 b=Urv3KG+a6G8BWi9xKghAQasEzYzGAA4fmdxRlCUuSOHsRhzLiNVLDN8CjflgYpOyiNKTF9IrzWSUcUvLf9Ks/nq9/Hz91zSzz1/A5nwXrpwGBYiS6RVBDzakZLTK/a/r7QDB3CUWXkuG5I2bYP0v0+X56Yr6V5lODVqPbfR5YP3lFEj7MIdQtPEID+Ube+MECctjAYoF+PMpVi/hPeK8fKIV82lWd8JUYY0+nyUNIKZu3Nf5gJsrTvhfwbQBNxO4j2SHdwQyMSz50R/H0YGKPL8QyvJNaJQg+qR+O6IE2/pYM4YmbThnLVCCP2AU9ajwAJFf0JrG7rvAhZ8G0uwu6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5317.namprd11.prod.outlook.com (2603:10b6:208:309::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Thu, 23 Feb
 2023 12:18:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%4]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 12:18:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Add HDMI pixel clock
 frequencies 267.30 and 319.89 MHz
Thread-Index: AQHZR0DHyHgl4FVP1k+wZKb4F1AHGK7cEeNggABgDoCAAAEvkA==
Date: Thu, 23 Feb 2023 12:18:20 +0000
Message-ID: <DM4PR11MB63604643667CCE719F236EFAF4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230223043619.3941382-1-ankit.k.nautiyal@intel.com>
 <DM4PR11MB63601AE85E8ACE5DBD2B1570F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <87sfew37h8.fsf@intel.com>
In-Reply-To: <87sfew37h8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5317:EE_
x-ms-office365-filtering-correlation-id: 83325e42-d16f-4cf4-0fd4-08db15980d87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JqxqYv5Zq8Twyx0SUiQSVQV1WEaJzoYhYPyqDCTv172+gkfIkHGcIdYceMNXaqv4mQbJR5fzffU6CpxSJNMfzOwSxuSvCyCvzPMYW/r5cRmBJDpOhe+dy3hsqQXzWZe1wuhTI7uATSXQ8m+jqgzsnLPYQmzX7hA0FFMfCUNyHsjfE8gzqlH4esAAul8y291bzSqJHU13+p/rXPAF3QDQxY/GYYG4HNMB13pkHVUzEKR6hk3Mx2Ql2u6LmOWm/fw5go0KknmfTSB4FEW6mzQ3gkNr2DmXuj1irB6xKA/MpSlds4CPROrDkK+TbE0rYUV6P1zqOPzWalhzLFaVvn/hDqcWXnoOQjJrsIUs6n1FGEoiUeIu9sQWdaFtk7h1FB+c2TugRCrZIy2UgscqleBF3Vn9Pu+CgdWKnlWs7qEcZMyCiUAdKxSvmfaBC4gwgFwTm1+2WsZLLVo3ouxKF06L1fZKjPpMyr4AJHP4ooDqq/69QUoZyuF8fxDjK83xaiTWG4GPgo+p1lnolxNXyEm8GwwHsE3BpqfQDmujtV2rkGVKy/fSwyV9t7Kj2lC0S2eDO2RP97JJXS3vlyWM2jiKai5Fod/pUWadGLyQ3OOJsn0dVpRAvHFr6kQULkj1l6lfnRFU64rzjAuLPPc2dQr3AQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(376002)(136003)(39860400002)(366004)(451199018)(478600001)(110136005)(6506007)(26005)(71200400001)(7696005)(186003)(9686003)(66946007)(41300700001)(66446008)(66556008)(66476007)(316002)(966005)(64756008)(4326008)(53546011)(8676002)(83380400001)(52536014)(8936002)(5660300002)(2906002)(122000001)(82960400001)(38100700002)(38070700005)(86362001)(76116006)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mzupJwoK9HdhI1dErdKIxlJ+IbqIvZNPa+S5CVJQiJwE3cgkHJBZlT2YFAzh?=
 =?us-ascii?Q?phef+eXh/jEBnFdLdwr1R4Im8t+7ioCuvwNhXi4KmImvqD2OZyb42vIR8Hqy?=
 =?us-ascii?Q?2NTPvtJg8yJ2MQYPD4JZo7rf/bholV1QGwg16hUUmVQABsDejnRU9hBlnbmC?=
 =?us-ascii?Q?2EFSfHIgAqwA2Ys63faM7v5UzIS0J9W74fsk+3Yu3QpCvqvsWlW/lyUjnfRJ?=
 =?us-ascii?Q?7Z55KrC4k7M3Ic7Hs2yrsbdhHNhsyh4RrkjgYauR7sj5/9gzpvDjobH+h74b?=
 =?us-ascii?Q?6kT3GGENP4gJQqzaiS0P8VB8+OOiNrNhXh9KlbZ3THin8j+WFUdj5qyaPGvW?=
 =?us-ascii?Q?uAMSkSFObZ1vnZUdxTxj9mmJWQ8jj0oFH+LYfsN0c9+MFyGsTMYM8UqVrbnf?=
 =?us-ascii?Q?JnXVEOUDGQ0hVdlfTdPbIAKcqP7UWcl9rjcRLzAW3+QmOHXrOaUsdokit6UG?=
 =?us-ascii?Q?PtpynHnN8C7yKO/1JOpPKN1osVRj7yXg4lFRltwtTGILZuqg7RB0Njw2L0w+?=
 =?us-ascii?Q?jpKTq4vu9kCGjJqRCzrk+h2kJhl91BKY/zkbtIocCGZ7/AfvHzDNlTL82Vcg?=
 =?us-ascii?Q?g42s7YDNK2yQiApwEa1d/FNOZuwf9QtsPfZcEQW4CAn6E7O29YtJvMqAC8AM?=
 =?us-ascii?Q?onaQKKNTMzrt1cmXLCvqr3B+xsFALTXj75eb8VsFkvp5K0vXm6ETKWFR9b7s?=
 =?us-ascii?Q?7sGTT9JOBp56+MmRZqS7/F6dr9D3Eo40jxLJDntVThrX34sn3QS+Ku08pGY3?=
 =?us-ascii?Q?T4IaxSqBFNGenb6mqngfmwl0oIZnDgUW/8HqqFB+za1OzCF6QPDc/Ba46fkS?=
 =?us-ascii?Q?srWWw8D45jt/oBkycY4xRy/ceD+tj9oqniZpJmMdhhnhY1EeQAGNOOtIRa23?=
 =?us-ascii?Q?FY3rv0vGa7eC0Qce4qugdjk8zgK8ii+FI7k/alI/iMEJEoXGybIcadVxOqrf?=
 =?us-ascii?Q?XRjpjEza/Rsmxbab8qpK+nxT4F2Cm/FCA1uz9TKy/ukdfjNKAvEs2N8LfFSM?=
 =?us-ascii?Q?TgQQN3gyimdyR1c00LD6HuZITE1N1pwC2ffilqL2zXj2JCkqsl8WGTVUwvHq?=
 =?us-ascii?Q?z9Rjyjr4YJuWfZw0ZFaOlL+p3YGFQgtfbZNY31+rvNZO0CA3nS4tR8ypP/dh?=
 =?us-ascii?Q?FUVZCeRByLhvRlR6YUmQ2wgbwZPrbYgDcU1GXfUVABg48wMXA2M5hkDG2btF?=
 =?us-ascii?Q?TedxHkSgDo+e5LywNhKpErnLE5lbRYO/h0UCYIEYUjVTuZyzJnFDEuEJZ4PY?=
 =?us-ascii?Q?z6Wtemyt4joaEX5KgurtgwgBFbGoTJ9UEVxJk4rfYWxNWk4akSeLTqI0wjLZ?=
 =?us-ascii?Q?wz3/hyA8WaDPBiozRDieS9L4Dmkbu0oab2n0hyVxEJ4ogkJ1MkqXaC0oru+/?=
 =?us-ascii?Q?nTW/uhx8K3l6npuFsqhXC4zh0aXnKmDaQjzn4/JD38mBdkiqGhz8BxbNi0C/?=
 =?us-ascii?Q?KL7H8p32T5Wzjm2yNqyOOgLv7jW495pRJ4UfzNSD4uk2/xno2exJ64h057ZL?=
 =?us-ascii?Q?jVkDO81mkZGztYP7xzu1Vg3kod1wYbkyzK2FIWR/3YeiOGaBSmDugpQfhH3K?=
 =?us-ascii?Q?1g6GKVlC+jl8pDDMwya/wiVtgKNkujBrL8BDnH6n?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83325e42-d16f-4cf4-0fd4-08db15980d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 12:18:20.8599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RTXp1ax86nBSXa8ZWqiQyWSbUhO2svxJSteQqun6XF7dWacDepcCE6k0csXB1Md/fsanyD8U4B5ifrBzPujp0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5317
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add HDMI pixel clock
 frequencies 267.30 and 319.89 MHz
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, February 23, 2023 5:43 PM
> To: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add HDMI pixel clock frequ=
encies
> 267.30 and 319.89 MHz
>=20
> On Thu, 23 Feb 2023, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> >> Sent: Thursday, February 23, 2023 10:06 AM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Shankar, Uma
> >> <uma.shankar@intel.com>; Sharma, Swati2 <swati2.sharma@intel.com>
> >> Subject: [PATCH] drm/i915/dg2: Add HDMI pixel clock frequencies
> >> 267.30 and 319.89 MHz
> >>
> >> Add snps phy table values for HDMI pixel clocks 267.30 MHz and
> >> 319.89 MHz. Values are based on the Bspec algorithm for PLL
> >> programming for HDMI.
> >
> > Looks Good to me.
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> Needs Cc: stable for some kernels back, when force probe was removed from=
 DG2.
> Please check and add while applying.

Sure Jani, will do that. Thanks for pointing out.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> >
> >> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8008
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 62
> >> +++++++++++++++++++
> >>  1 file changed, 62 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> index c65c771f5c46..1cfb94b5cedb 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> @@ -1419,6 +1419,36 @@ static const struct intel_mpllb_state
> >> dg2_hdmi_262750 =3D {
> >>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),  };
> >>
> >> +static const struct intel_mpllb_state dg2_hdmi_267300 =3D {
> >> +	.clock =3D 267300,
> >> +	.ref_control =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> >> +	.mpllb_cp =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> >> +	.mpllb_div =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> >> +	.mpllb_div2 =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 74) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> >> +	.mpllb_fracn1 =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> >> +	.mpllb_fracn2 =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 30146) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 36699),
> >> +	.mpllb_sscen =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1), };
> >> +
> >>  static const struct intel_mpllb_state dg2_hdmi_268500 =3D {
> >>  	.clock =3D 268500,
> >>  	.ref_control =3D
> >> @@ -1509,6 +1539,36 @@ static const struct intel_mpllb_state
> >> dg2_hdmi_241500 =3D {
> >>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),  };
> >>
> >> +static const struct intel_mpllb_state dg2_hdmi_319890 =3D {
> >> +	.clock =3D 319890,
> >> +	.ref_control =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> >> +	.mpllb_cp =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> >> +	.mpllb_div =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
> >> +	.mpllb_div2 =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 94) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> >> +	.mpllb_fracn1 =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> >> +	.mpllb_fracn2 =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 64094) |
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13631),
> >> +	.mpllb_sscen =3D
> >> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1), };
> >> +
> >>  static const struct intel_mpllb_state dg2_hdmi_497750 =3D {
> >>  	.clock =3D 497750,
> >>  	.ref_control =3D
> >> @@ -1696,8 +1756,10 @@ static const struct intel_mpllb_state * const
> >> dg2_hdmi_tables[] =3D {
> >>  	&dg2_hdmi_209800,
> >>  	&dg2_hdmi_241500,
> >>  	&dg2_hdmi_262750,
> >> +	&dg2_hdmi_267300,
> >>  	&dg2_hdmi_268500,
> >>  	&dg2_hdmi_296703,
> >> +	&dg2_hdmi_319890,
> >>  	&dg2_hdmi_497750,
> >>  	&dg2_hdmi_592000,
> >>  	&dg2_hdmi_593407,
> >> --
> >> 2.25.1
> >
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
