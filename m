Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 013A3477113
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 12:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2B810F6C0;
	Thu, 16 Dec 2021 11:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF3C10F6C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 11:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639655385; x=1671191385;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=glMwDYgAIQ34vaqiNmC3+FfTLdMBJrl8AtL54J2QorQ=;
 b=JyyTT4yAOwhUqPCli3K3/jw5ja7+FkZkkRO3QGf6pbBroGQTgEO17iz5
 iaiSjKQXfeHA7BOShVczh9q+WtdzxiI5ZcmJRizRKQmAK6wloo+hJz0kv
 MB1/7luSthBx7AWD0nGrt98XN7DV7/G8PHdm+3+eEzolvbiVXmQ4uz4Dz
 0t4buC/DfExP/UsIIzUeSF/nem/+sqfMIZy+JMpY7skT+mZizyKHfrfuL
 hxbsH8VdGmMQwTleqfvVdARTrVyk4Inegj8THmp8G06JpODY34+TfOHIm
 7YE4Jn9AMrKtgHd+gG5cteq7IaOJhQ2vdIP4BWkGnX+CJkwKGJXkhxwxh g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="263630496"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="263630496"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 03:49:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="482795099"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2021 03:49:44 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 03:49:44 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 03:49:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 16 Dec 2021 03:49:44 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 16 Dec 2021 03:49:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fXmAGY1VFURd7KHqAK6msr6WJ4B9mHh7d1RZl9doNdLZhdOBy/B19qhae44yOU/KpWHEmXrdhUHf4xtz7KDL9MAFxW1jQYOmc1mzjQArSD8K1037mrl06u8wkyLHbB7/Keb98MJ5OD83Pe3TTwy9ylGF+KnlppubcrsR3TEJXhhJ6LNMHd92pqFTPf7RebUOh8QMydOweVphDeWyWaurpqiNr2SgHzYBS0a+uzr8+XycIBa4Lt2wVRskzKA5pIPGOWwWvZF+bi8JdAIZqZqykll/3dlFis6DhyWfKVaVSB4QvCD07eZFV7yhwt6kC9STV7jYgEO/V2Wcf5OFFuFtyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FPv0IaGRWzFLJipA8tqRHLkTq5iSyDcX9dzbqJYpygw=;
 b=Zu7rQjKfU7axhzJME5q0bwi25FuRj5DJl845G3/40ZhcgBKbRIL3fJzgGMmjSKW34csZKM45gKMgPon5nqXqegrnVYFyCIlKM8hq/G8EV7PGnGTaOLjqqjcDz8rXsL8Tg6DXBlP8fx6SRnOlLzgqtNePYUWLM8BGTxzK5zkPlpqigFTl9M9jsgSN6jaVTzzdmxiTQ4td6d2tQ2xZQi+G0tTCF16F4UsOxarPzNwREbnZMhqeB99LpMhxnXNe0FdhTZjbC4cMbIaJfKXWEe/KxwQyiEEZVYrJwE3nYee8ZC7+ysWnPEQlj7/vCcqPipkj6ANoOiZwbUhP2tBgkyJmmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by PH0PR11MB4792.namprd11.prod.outlook.com (2603:10b6:510:32::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Thu, 16 Dec
 2021 11:49:42 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::3508:ff4c:362d:579c]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::3508:ff4c:362d:579c%5]) with mapi id 15.20.4669.016; Thu, 16 Dec 2021
 11:49:42 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
Thread-Index: AQHX7YYhrOOTKiq5DEe+BSsBx1UfbKwri98AgAAAXgCACX5yoA==
Date: Thu, 16 Dec 2021 11:49:42 +0000
Message-ID: <PH7PR11MB58198ADADA9696C530EED98BDF779@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87zgp820sl.fsf@intel.com>
 <PH7PR11MB5819F79DC3340A5357D850D4DF719@PH7PR11MB5819.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5819F79DC3340A5357D850D4DF719@PH7PR11MB5819.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25ffbc13-42a6-430f-468d-08d9c08a2636
x-ms-traffictypediagnostic: PH0PR11MB4792:EE_
x-microsoft-antispam-prvs: <PH0PR11MB4792E2050B45467E8C36412CDF779@PH0PR11MB4792.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:54;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CFeOlzLbjzJMcTsE3qby9WUzn89vFfFhPJZMFAk1u86YyGCrSkFTr0gXS8NQV2zsAgXQ5o1x/IH7K3Uq61NPyrFSm8SOlzfzJfU/+OfAxzepXbUDzu9p35IKDyhWxOsiZ26tvRuMyo+4E98/cUiCttOCJTFtrdjh3Qgv7v0LoOUFJ78iPlJihsRkcZHBIVJfiUZJA6TaIDOW3zyjZTy2m+lf5RBroOaAuDa+5+GVyh+W0GOqj+aeWkceK5b99EDpeW9hsiCB1nPDDOQwhFoiJk8bezKzcNvstmlLXYDqZFzz7T/bb4IxXaH4EYP2iK/6y6hgjKgqQoQnhO1Xif9Tdx1X3o1ADD+4krJ1QEohHJw6RRjikWoLyFrM42NvfL0AiIEUHS/6mTTC+y55dezfGUVZHc85xQx6wcNfWKMKLQLdL8xJ5KFmke2FSwwlQtYKmARHMjN/zKlntRkaq0QtJPS77oNrzjrJ6wN+HPB2rtau9qnGbfAzBrsdR2MkKVkU7ZfUfZXhG4x7QniF/TCQH5wxhb+l2uCA1eUJ91YGid5hMECDYC3qduDPrpHW+OBggKTVZmshMlskhlWu+kjL01qWGSq7PchaD4jIJTFcFFthRnmbCyNpjDcWB6efKvXeuxqcXsfgwduDZ/hP6+jh+xXIW9vUvUFT/pY/aS/maHzEc2p8kumVTlsvDVGrLGutgf6bEOgviC/NtHTijqhnoQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(82960400001)(66946007)(66556008)(66476007)(66446008)(64756008)(76116006)(8936002)(6506007)(8676002)(52536014)(71200400001)(38100700002)(5660300002)(83380400001)(86362001)(38070700005)(316002)(9686003)(33656002)(2906002)(7696005)(55016003)(110136005)(53546011)(186003)(26005)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uDKsrsiL/xHDnQg8MBTZ/7w4sqmKv2HFPVHuXlad0ByIiOa1DDred+QmTzv/?=
 =?us-ascii?Q?h34NpKoqlbfc8BMjcT6Df4U4uVIG2z1/tZ4jJCoNc+CXC5I5bAwbxiVqlDwj?=
 =?us-ascii?Q?IBcNWy2MLHolIHIZ00PEfJbhWeJgn6o5BkQiqAoPa8nHjCgEBbvqsJ8Sg5jr?=
 =?us-ascii?Q?LdyTHtwCGNSvll9D2nF07ZGZowLYSgUzquh8TYUfWmcXNKB2pebT7fSfrnWk?=
 =?us-ascii?Q?gbfOwQh6hpkl8bD9Ne11oTVAE6Lctm8ejHu4pdmks4cFcVgcpQOi3r2H8mqZ?=
 =?us-ascii?Q?GYOs5DNAEtNBNTIp72Aspa9mAxkInJ4f6bzTaElVKdVHlXXIr9vQtr+z7KMm?=
 =?us-ascii?Q?DL1GBheBehH6GTDA8Zbd2CSen+2cKEick/0uQCzp8mCdQzUU+dbJPhCGnQCC?=
 =?us-ascii?Q?c6TScqohNE5F5xoC4bKGFOQtbOVBJopk/O1QJjWmUUxOiqrVYlTF2QvZrdoZ?=
 =?us-ascii?Q?8FW0+XVmGzbZTtEGAHLgmV8rkWrKjHW0l9OurYhd/v9YwQf6c4kjD67PoVh/?=
 =?us-ascii?Q?btsI5zVSiApMHW+O2j36ocJ8UP5IKun5EG/EsND5McncwtLQU2c6Yi2i68Ew?=
 =?us-ascii?Q?FTkD7ZPp6vpmv/rkZxIL0KIDZ+NLbHPxXMjmM53b73GFUlR8t5Zi/xJXTEMt?=
 =?us-ascii?Q?T0z5lUFcsqGP8FU1njL4IJsoU3wQ8JDl2++vCpIZQOVPZ6Wc6aQzofuv8NjX?=
 =?us-ascii?Q?ogLdk5Z9bTgym7sdalRmHzSlswb8aCZL487aqUZxtXZzdz5drs4qyFYPTg/r?=
 =?us-ascii?Q?DYbMDhlIeWUPLvsKDt7YXzSjD7JXnikdQUW91WqH3hCiMjEQ+kd1ulJCdxry?=
 =?us-ascii?Q?rPyHtuTOYzqga5gtMVTU0BwkC1NeuAkuwllCcwwHpIQ5aZ06b/3oRXl+KJ2u?=
 =?us-ascii?Q?UShBBikWJRaCCNfLSP8DDRlTsimyFjR07LB51nV6Yh9g+H6ZMaT0AdE92n8r?=
 =?us-ascii?Q?F5oujjdnZYDMO/NJbSWQKfWA3crcJlavv26zj8vm5jhrBc63kqEJEkwRvMc0?=
 =?us-ascii?Q?HTJ2+NvA5KFV83baCZTNl3aCnC6Ny8Y0+XiUFCvd1wTyX4dK8uVkq6JdV7PS?=
 =?us-ascii?Q?s5w67IR1atF2KrlrMo5iII2+dvJSlR0eVxf0GgtHqf/esMdqfAjINHH1pkL4?=
 =?us-ascii?Q?R0orI2AwmGLN6FN3YglLkuAcVL3368pPBXvhM0fJt/9RXI19ku7XqvrNjQq6?=
 =?us-ascii?Q?NJfS9jIAkRQr9csy1nCC/rehlBCjLUWaBCEcDwEJI3PB0uxDrINQqEChxOxp?=
 =?us-ascii?Q?vr/13xYJEWBS/ru5Wpj0P2yU0ILL7Q3WnNaihoBFNmhBmwxNvb79FNxKrUpf?=
 =?us-ascii?Q?5lNVvBNL+2CDkDrpJEoZ7nXOa39pUevp6E8RCbYyJCO7EvGswWMQL8DToqpd?=
 =?us-ascii?Q?eqcxhlvDdDUjXJjrA76LxmrVTG81ZYK2+LBXF/OQpGwIIdsbd00uZZdJrnZX?=
 =?us-ascii?Q?tyFqpE/mvMDvFlEhuYuYUBb61GnA4gpPniExX0jHT8qwBmx1hEpMdDyvujY9?=
 =?us-ascii?Q?r2ydNe1Uwbe9vN8PcHuFkvSE7oBDbU40iaYqVdK2yT9ish+NJwb/LLQIVeo2?=
 =?us-ascii?Q?1ppT3Rs2fSWrwNDifUt06kasR9x5kp1i8uUS7y4UbQX9lDJes6G6+Pj9+5Va?=
 =?us-ascii?Q?GlXkkPS2cycDz9oB6rExo8ybcC5Y+IBAPXIHELLaidPZPH2YeitsLzyWxJIA?=
 =?us-ascii?Q?bEbpdylyCOC0PMP4lWLah5Qe2KdSe1auTMI2lPS88VFbb1n91ApzgNg1Sxwz?=
 =?us-ascii?Q?+EbXcKbgxTGWVz+4yBRn2CvDGJYSvzc6a9rB4xVLAfVVvjio58nSCJfCW+Oi?=
x-ms-exchange-antispam-messagedata-1: MsMGCrCRj+S8NA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25ffbc13-42a6-430f-468d-08d9c08a2636
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2021 11:49:42.7751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1uuhFYKouiwz5rlHX2aybmPfKhg68pQ/qWnpKzS+n3aIkl1vxLfKvFbiC74PMaus7NDMmRHne+gr6Kk+a4I0bmGC67X5eQ8Q+12vTrBEl9+CM72bHwrxRaatsJjGv+Cs2H6zi5vHO/0o2iaeGaSrkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4792
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
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
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 10 December 2021 16:21
> To: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org
> Subject: RE: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
>=20
>=20
>=20
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: 10 December 2021 16:18
> > To: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N
> > platform
> >
> > On Fri, 10 Dec 2021, Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> > > Adding PCI device ids and enabling ADL-N platform.
> > > ADL-N from i915 point of view is subplatform of ADL-P.
> > >
> > > BSpec: 68397
> > >
> > > Changes since V2:
> > > 	- Added version log history
> > > Changes since V1:
> > > 	- replace IS_ALDERLAKE_N with IS_ADLP_N - Jani Nikula
> > >
> > > Signed-off-by: Tejas Upadhyay
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > ---
> > >  arch/x86/kernel/early-quirks.c           | 1 +
> > >  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
> > >  drivers/gpu/drm/i915/i915_pci.c          | 1 +
> > >  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
> > > drivers/gpu/drm/i915/intel_device_info.h | 3 +++
> > >  include/drm/i915_pciids.h                | 6 ++++++
> > >  6 files changed, 20 insertions(+)
> > >
> > > diff --git a/arch/x86/kernel/early-quirks.c
> > > b/arch/x86/kernel/early-quirks.c index fd2d3ab38ebb..1ca3a56fdc2d
> > > 100644
> > > --- a/arch/x86/kernel/early-quirks.c
> > > +++ b/arch/x86/kernel/early-quirks.c
> > > @@ -554,6 +554,7 @@ static const struct pci_device_id
> > > intel_early_ids[]
> > __initconst =3D {
> > >  	INTEL_RKL_IDS(&gen11_early_ops),
> > >  	INTEL_ADLS_IDS(&gen11_early_ops),
> > >  	INTEL_ADLP_IDS(&gen11_early_ops),
> > > +	INTEL_ADLN_IDS(&gen11_early_ops),
> > >  	INTEL_RPLS_IDS(&gen11_early_ops),
> > >  };
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index a0f54a69b11d..b2ec85a3e40a
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1283,6 +1283,8 @@ IS_SUBPLATFORM(const struct
> drm_i915_private
> > *i915,
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> > #define
> > > IS_ADLS_RPLS(dev_priv) \
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S,
> > INTEL_SUBPLATFORM_RPL_S)
> > > +#define IS_ADLP_N(dev_priv) \
> > > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > INTEL_SUBPLATFORM_N)
> >
> > Oh, what do you need to use this for?
> >
>=20
> Tejas : This is readiness for ADL-N specific workarounds.
>=20
> > BR,
> > Jani.
> >

Hi Jani, you want any changes for this patch? Or we can go ahead and ack/me=
rge?

Thanks,
Tejas
> >
> > >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> > >  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D
> > 0x0C00)  #define
> > > IS_BDW_ULT(dev_priv) \ diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > > b/drivers/gpu/drm/i915/i915_pci.c index 708a23415e9c..6a19e9da53cc
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -1132,6 +1132,7 @@ static const struct pci_device_id pciidlist[] =
=3D {
> > >  	INTEL_RKL_IDS(&rkl_info),
> > >  	INTEL_ADLS_IDS(&adl_s_info),
> > >  	INTEL_ADLP_IDS(&adl_p_info),
> > > +	INTEL_ADLN_IDS(&adl_p_info),
> > >  	INTEL_DG1_IDS(&dg1_info),
> > >  	INTEL_RPLS_IDS(&adl_s_info),
> > >  	{0, 0, 0}
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > > b/drivers/gpu/drm/i915/intel_device_info.c
> > > index a3446a2abcb2..54944d87cd3c 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > @@ -170,6 +170,10 @@ static const u16 subplatform_portf_ids[] =3D {
> > >  	INTEL_ICL_PORT_F_IDS(0),
> > >  };
> > >
> > > +static const u16 subplatform_n_ids[] =3D {
> > > +	INTEL_ADLN_IDS(0),
> > > +};
> > > +
> > >  static const u16 subplatform_rpls_ids[] =3D {
> > >  	INTEL_RPLS_IDS(0),
> > >  };
> > > @@ -210,6 +214,9 @@ void intel_device_info_subplatform_init(struct
> > drm_i915_private *i915)
> > >  	} else if (find_devid(devid, subplatform_portf_ids,
> > >  			      ARRAY_SIZE(subplatform_portf_ids))) {
> > >  		mask =3D BIT(INTEL_SUBPLATFORM_PORTF);
> > > +	} else if (find_devid(devid, subplatform_n_ids,
> > > +				ARRAY_SIZE(subplatform_n_ids))) {
> > > +		mask =3D BIT(INTEL_SUBPLATFORM_N);
> > >  	} else if (find_devid(devid, subplatform_rpls_ids,
> > >  			      ARRAY_SIZE(subplatform_rpls_ids))) {
> > >  		mask =3D BIT(INTEL_SUBPLATFORM_RPL_S); diff --git
> > > a/drivers/gpu/drm/i915/intel_device_info.h
> > > b/drivers/gpu/drm/i915/intel_device_info.h
> > > index 213ae2c07126..e341d90f28a2 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > @@ -113,6 +113,9 @@ enum intel_platform {
> > >  /* ADL-S */
> > >  #define INTEL_SUBPLATFORM_RPL_S	0
> > >
> > > +/* ADL-P */
> > > +#define INTEL_SUBPLATFORM_N    0
> > > +
> > >  enum intel_ppgtt_type {
> > >  	INTEL_PPGTT_NONE =3D I915_GEM_PPGTT_NONE,
> > >  	INTEL_PPGTT_ALIASING =3D I915_GEM_PPGTT_ALIASING, diff --git
> > > a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > > baf3d1d3d566..533890dc9da1 100644
> > > --- a/include/drm/i915_pciids.h
> > > +++ b/include/drm/i915_pciids.h
> > > @@ -666,6 +666,12 @@
> > >  	INTEL_VGA_DEVICE(0x46C2, info), \
> > >  	INTEL_VGA_DEVICE(0x46C3, info)
> > >
> > > +/* ADL-N */
> > > +#define INTEL_ADLN_IDS(info) \
> > > +	INTEL_VGA_DEVICE(0x46D0, info), \
> > > +	INTEL_VGA_DEVICE(0x46D1, info), \
> > > +	INTEL_VGA_DEVICE(0x46D2, info)
> > > +
> > >  /* RPL-S */
> > >  #define INTEL_RPLS_IDS(info) \
> > >  	INTEL_VGA_DEVICE(0xA780, info), \
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
