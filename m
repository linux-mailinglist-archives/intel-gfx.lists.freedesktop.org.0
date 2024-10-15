Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE51699EFFD
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 16:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B94810E093;
	Tue, 15 Oct 2024 14:47:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+hWKZ2N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA10910E093
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 14:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729003670; x=1760539670;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gFAkrU2KQqLD2AbDynn6bbKtOETEFwNjQv8CsM7sp+Q=;
 b=e+hWKZ2NZcwl3g/OXcua3+hZcpiaJbwyjmF4C/Z2/TuCkf3aB9UhVdRU
 WXI78T+9G9fFhXNngnIXXetMGBga+z1AETasIHolIGZr7armnp2X7/lRY
 2R+p50V6FOGnr9os01+kOfJNdoceIVYpKTmPtvwZX8i6gVwQS19+MFq3S
 lBM5YKH+3GDIpzh6BTLeRHS7gofdjhV0I9yF/ocjGiKR67YwqvDFHJ2xj
 HxxcnFqz09HsA9OtSOxBSbs67xFkIhsqd/H01WGyeE3NZFCpxkGvDqyLy
 dBbPIRJqeYWa6NdU1gO+PjrM1ciLJG6OJgG4PzV7PlHI9M4XT7FloW92G g==;
X-CSE-ConnectionGUID: H8e5+QTXQPi8DHdWOrvHnw==
X-CSE-MsgGUID: IcR8NdKBTP2/ynHLsDHXhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="32204204"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="32204204"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 07:47:50 -0700
X-CSE-ConnectionGUID: JpyAmsYjQXmLPHXwvsj2Xg==
X-CSE-MsgGUID: 7MxNc1KyRJaAnnEjJLpdUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="82571091"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 07:47:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 07:47:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 07:47:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 07:47:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NpmIeuZj7DeRk8N8OhvP8J5o3xsUlIrOjGQEGbW1sFhtAgspxm8bL+fzk5MIGUuA+2hbkjcoYXzqwNyRXGUmDr699zhZaDnCEXMykhnaRHLCdAaM14HuUYSHCQAlY6lSneEZ++DbHwX2Fpd8ciNvApMnYwSeJ+WtlzTnGkMgphB79bnLWIEvFZiwFcYpaPnWdafxOzPeUEweB0YqHdL5r1/BzaC918U4lJILkP62JrGpoJQi1/vx6jswYNPtQTl8ESTMmAVKobpm0xFjvqvUf2h2+oaRLTdRlGIcZIoWUet3JyjP6tuzgZmZzGxt6zNOowbXYpnC5VTgAQdSDbVlyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NpMVDE6TeaBZUVGPFXSpj5zeKVFts4Q7+pWQuWOBymA=;
 b=RSU64ZDAX7mP2Su4G3SCGLrmUIQRMV9WIjBsclDqeVYNZ3RRvv/bk7uXJcNxkxmLEd4zUMgo5bCTimbzUKGwMDEeDW28CeW2rScAYYoUVpiwnT5lbcpD20TOwBWCQw1eae5vqOyecc1fZOEBVdp3m0mV9yGeElcpzSKkqTbAqc5MmtWTSjTHCb7ddT3Fitbf4w6a4lD5HiasCV7NerRsenPbeUuasVq8rrJhXVurs7DTF040V/gNLG04fkAWBYDPnPe3eUl1NjUrsbW92UozkyTYRYzRARPxfKxkvMxFoaSUHnGaG5zpKgzlJyl6nIZe2NZ9z9tGqzeFpKI30bGWAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Tue, 15 Oct
 2024 14:47:45 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 14:47:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEyss5I8hhBCHpEq+5+sR31waxLKHnp8wgABF6ICAABcr8A==
Date: Tue, 15 Oct 2024 14:47:45 +0000
Message-ID: <SN7PR11MB67501341321E9654F7A637EAE3452@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
 <SN7PR11MB67500EDC1756999D257653D7E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB646720CEC002D00530490C52E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB646720CEC002D00530490C52E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB8740:EE_
x-ms-office365-filtering-correlation-id: 65b69abd-f3bb-4729-b98a-08dced28547e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/H08qdQXBn0X41+vPDOL/mZgr0fvMEbJv7wUk2Bfw37mTSCxcimHyzmG68pc?=
 =?us-ascii?Q?y6rosHkoFB7/V1zSWzOIZxNLIV/NuCT3wo6au8yXHKBiKlc83E2OMQXRWwDm?=
 =?us-ascii?Q?Z8FlR8j9LLEqMO+rJb2YnVe74MPZlJfnnhdwj6mBgORNtDZ40RjBQ2m0IZPA?=
 =?us-ascii?Q?Yy1pxgo0RTsG8Yal3CPnKOokTkybsgnmVdatBJKhSkxGnR5KTS1wh8PpzPui?=
 =?us-ascii?Q?d9xlwdbY9LYOqFtx7+bXsElU7Aac061mgm9XRkJgurWL4RrtmR/dpjOB4+qT?=
 =?us-ascii?Q?ENkq3wdO+CKHL+HxRFiBhNv4qtqk1UqsukPfMxvwbwgSdG5iscx8/fN2QpIe?=
 =?us-ascii?Q?QF2SWQN/Fa6jzpWTHE65oh11wYUUjnkqzyOEyyMK+EOz8Wq5EoVbO0jlwl1y?=
 =?us-ascii?Q?xxk6mv36pYw7K7V31m2XZpbWUgqNqqcS1VPJ0CQWy+OnazxXzmGanO90OQjz?=
 =?us-ascii?Q?lnYuQJrmtshJxqKyTM49X9zHXx6KCI0D7Zt7bRh1XvXqv2yV9QpdtYMlUGeZ?=
 =?us-ascii?Q?1o6Cva1qg0CCHeDqljTjdpeoVgmCty4pObeL2YcJK3VOfn7PxWh482YJSGAh?=
 =?us-ascii?Q?hqIdNycAZZwt+Hy6W3y6W7D87GQZbmSlf43D/blMkuwj98U/ae6HHM7ZkRHe?=
 =?us-ascii?Q?CXBxtvWIxo1AfNpZFdlMozSkD48EqR185G3wadRxsEPKYnSfTgzhTu5jFg5J?=
 =?us-ascii?Q?3Awf4Tfw673MdM3RtM0Kc97uQDxYIlnyN6kQgtI/ilhM+6aPsGutO1p7GgVv?=
 =?us-ascii?Q?Mewxfy6kvgJJgm208vFzmFdNFQQohtVZYwaMe4INMYOkBMNjzZ8xEikMxLHA?=
 =?us-ascii?Q?aaUddYjVSVwZORwph09zgVRrkdUt4NgKekv+rbVtaAe47vG6HdtKZ0GTB3Ju?=
 =?us-ascii?Q?t2uR5DaQEGUvRik55eEPKqRBOaCXLYSMZg0GbkEhuEfhYc5z0dQAITPJrGwe?=
 =?us-ascii?Q?9wnHjKmLOiXzkCWD2uO5JKWtKKQnWPeyxUZ3NpiTeOH99zyITY5sXfa1QC1J?=
 =?us-ascii?Q?BRDKEf8N3pDoohL2q+iaohVjXQYCWMQmpeL/SOuTo9hQ2DgY5KbiKTmO7MHM?=
 =?us-ascii?Q?9UXNLLmzgG5jgEgR3mDx7379JbjqdHZbZV+Dmhoc7wCkY+0PM4Qyv6t/0fES?=
 =?us-ascii?Q?5Qrm8/au4+nt0gnP9jfAM4gp/oNHrsUUjPSqgGMWBjT+OpbVxRSGT065yc8K?=
 =?us-ascii?Q?kjr2oede+hpvcWT0/T2pV4wDn26PpbpsiHEKLpuepc6+hjUoxZFPBlN5mxTX?=
 =?us-ascii?Q?rQ2Tq3uVo19BkhRY3BRveN7C2sDhRxBgBc27Ys68qSMGyULYR7Ph6F+b+5zL?=
 =?us-ascii?Q?unPkhekvw3JV8RDKfZ3JxP6Xoov9g2XT9R5qxB5kGPrtpg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zjAONFxuvikbuBWkWLpKhLHK/bvzI85aLd2pN8Cj6jxpjRL+3Q7xSEYIctTA?=
 =?us-ascii?Q?MP/dc6TjjjszdlzEywMPFRobFuZzwvE6kdThenDIU9j9ag4oaYlJPTRr2Ujf?=
 =?us-ascii?Q?BTiuNqeazNimqVL9euOZJRLzGuQv6H7HmcdrJZ9hA3lRSeE0/hOo5heiI7Ro?=
 =?us-ascii?Q?XGSy8og4evia+N/b8ra7eEIKA1n/bmjNHmb4RUfoACt73JGXmCzBHSYNBAsX?=
 =?us-ascii?Q?+0zNWL/00qUxLDuv98iqtdj3DU6LxoksH/8BTBva7b1bWBWNPLhzpPt5N850?=
 =?us-ascii?Q?qG+VZaFpJt9eZOhqjajwl3ZPR8rRnSQP5rneOuTl1I3/G+KN/s/qtdSq9TsG?=
 =?us-ascii?Q?EU6btMIpuEq6zF1YZIMb5DtrbRONMhsBzETbDi+b/xc6CDCwX9LOcaTeVVg6?=
 =?us-ascii?Q?KNmbKDPFoRDPdNsPtXRLinPpiQwhDTejTYQMb3FypPxnnRgATUNJEQe6ItTq?=
 =?us-ascii?Q?8OMtDCeFZwpVHfq4oBQH7OK5etaiEjtXazve74IgTbRLI3jlMYZXMjMv6PFz?=
 =?us-ascii?Q?CpfpJ1henFHzAIwTIhJGWKBQYvrVYtUQamFbJqDbICsABBJsMWRAlj7yzH0M?=
 =?us-ascii?Q?cLOySmzDie78jS2qJLHfiyIjcoAbCuwRZTPHDrH3WWDebBvORhZ0lBa6dg3J?=
 =?us-ascii?Q?QISIBTmbC/TIDDf45wMSbrbwnVOokWfjFXW6nlgM1cR+zFj8pui6/MGFtQFL?=
 =?us-ascii?Q?9Gpiv7BWzS0Lv981QPOWq8PLuLWcbisQw4mT3YNez4jSU8W4NSea2qPwpSEM?=
 =?us-ascii?Q?G1njawE2Y3PUXgsyMERr5IDXRl48IlgzaVR5Qs1nAbEGVVDS8cXcSijMKc9F?=
 =?us-ascii?Q?A3cxSlqAv/0b3fNm9Gm5SJvYrrQyLFRC+iVXNU7+m5Khx/QVpGY8sA/Fuzy4?=
 =?us-ascii?Q?Dq1JD1brSBb+RltZ5Iy7QA7MSt0o/Lsn9ZTTUjvKNlWBX4kebl9dNlXbbwGS?=
 =?us-ascii?Q?KwkiMqSNfu1GZtyeK3i87YOCUS7eo145HiE/oZakjE+Pj/vzgBgKwOv8n3t6?=
 =?us-ascii?Q?Rr3BxBQbA60s6irr5/lLREQJkhCBk103x/G8cQXxIArmg0+HInUI3OxrtFM/?=
 =?us-ascii?Q?HpyA6GCMq76K5qijC3pGeo41HvS1Fp0KaQW9G+sKzpRUYVmklIwbHotcjVPv?=
 =?us-ascii?Q?qDfwiy8tLrh/5QWfkpfTo9HZYkv3SThhz6t8nU4jEAD5IdYvc2SMwRRDHJvU?=
 =?us-ascii?Q?TOiSwP+K5wh25N216D2nypKNOgvn8WAJORpyXrpswn+wwkmMsHuokCDtCD8T?=
 =?us-ascii?Q?uAo621NtFTM1TIaebNk7+YN+azWjrGMsnprV5DhdEe8f+9kExcKeyBnJvnon?=
 =?us-ascii?Q?o5IAp5dBjgX3zea0QmPk7K340i44Oz5qEmOv139IIJ7Wjr24dnR+W35zq1R6?=
 =?us-ascii?Q?HmPXJQweye+BKEYXmRNKuIYr6WStwGYnE++J9g+z7TZwxQAFeiFYEkvgQF6K?=
 =?us-ascii?Q?qUyLvMV+GDh+et4p9sAhRK589u1KEyg6O7ArkkKUN2qv25vc0UUQ6Jhf40jX?=
 =?us-ascii?Q?MB3X9Sd2pKKxj9eb+czdthVOtBPbWvrdooP9Ik1b4Dpuzj80ttAG3ayiLvwU?=
 =?us-ascii?Q?3CKAWxenJB/RolNpfuUD3l1JQIfa28JLn9O5PiWp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65b69abd-f3bb-4729-b98a-08dced28547e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 14:47:45.1676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZcBi5XEkJAiy/CJt2GJd/gJP7n7hycgia3ECWoWOEkN/LP2F1wPs58InSgqS2F4thYjSNc6AS07qvuTS6PhU4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8740
X-OriginatorOrg: intel.com
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
> From: Garg, Nemesa <nemesa.garg@intel.com>
> Sent: Tuesday, October 15, 2024 6:54 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> planar yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Tuesday, October 15, 2024 2:55 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Nemesa Garg
> > > Sent: Monday, September 30, 2024 4:54 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > Subject: [PATCH] drm/i915/display: Workaround for odd panning for
> > > planar yuv
> > >
> > > Disable the support for odd x pan for even xsize for NV12 format as
> > > underrun issue is seen.
> > >
> > > WA: 16024459452
> > >
> > > v2: Replace HSD with WA in commit message [Suraj]
> > >     Modified the condition for handling odd panning
> > >
> > > v3: Simplified the condition for checking hsub
> > >     Using older framework for wa as rev1[Jani]
> > >
> > > v4: Modify the condition for hsub [Sai Teja]
> > >     Initialize hsub in else path [Dan]
> > >
> > > v5: Replace IS_LUNARLAKE with display version.
> > >     Resolve nitpicks[Jani]
> > >
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index e979786aa5cf..e3401a4f7992 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> > > intel_plane_state *plane_state)
> > >  		 * This allows NV12 and P0xx formats to have odd size
> and/or
> > odd
> > >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> > >  		 */
> > > +		/*
> > > +		 *  Wa_16023981245 for display version 20.
> > > +		 *  Do not support odd x-panning for even xsize for NV12.
> > > +		 */
> > > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> > > DRM_FORMAT_NV12 &&
> > > +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
> >
> > Also one more issue here according to HSD " Odd Pan position  + Even
> > plane size for YVU420 ..... SW decision is to not allow Odd Pan X posit=
ion"
> > Which would mean you need to check src_w and src_h instead of src_x to
> > check even plane.
> >
> As we need to disable odd panning in x direction so I think src_w will
> suffice, no need to check src_h as we are not changing anything in y -
> direction.

No it asks us to implement the WA for an even plane size which would mean c=
hecking for
Both src_w and src_h

Regards,
Suraj Kandpal

>=20
> Regards,
> Nemesa
>=20
> > Regards,
> > Suraj Kandpal
> > > +			return -EINVAL;
> > > +
> > >  		hsub =3D 1;
> > >  		vsub =3D 1;
> > >  	} else {
> > > --
> > > 2.25.1

