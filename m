Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8997E99F29C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 18:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D6110E0D3;
	Tue, 15 Oct 2024 16:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aSnhHL6k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2410610E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 16:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729009397; x=1760545397;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GYkhntY8/GhwRC1LbmU1qGL77su8Au6VUAC03+IkSsU=;
 b=aSnhHL6kusxc8NHMsqScepISUI0NjsXCoxAQ0Vej0m5EGcaYI4IJjG/p
 VBi80qTTtP481eaA7AsB2E1Aos/22mEq3BOop1PdIHnSwOZTZSudC3s+j
 FU0ctEopEKLToh38fZH4OdKrkzOPYII0dw24y0r9vtulPWiXAGWT2v9rl
 fmxJ6kP7YRu+mVT6Y3GrlIwktlwlXgM0gDatJyCUs9UVaK87TD6n7XJcd
 Sm3MKKyLUH19zCBn/dtAnjxzhl4cihMTK9I1aUs5LUqS5fWNwHe+dvOf/
 ia41m7RcQOhZVz5neVVGWeczSlCAOEmeUB91tV7QQZmAXoWG0Nc+1yTHT w==;
X-CSE-ConnectionGUID: 2kuVUJcETZiJUcb/2P+gPg==
X-CSE-MsgGUID: HDGTjtz7R6qJ5XrzirA2iA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39537794"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39537794"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 09:23:17 -0700
X-CSE-ConnectionGUID: gjkI2bfWTP+ppL8dvS+bBA==
X-CSE-MsgGUID: dOBtnZm2SfatxigXJ1N3vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="78293874"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 09:23:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 09:23:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 09:23:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 09:23:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yHSdHmgjbdOhsxbjy3tKGAjQE6WsBb2BOuBTQ362wjWs5uRLS/FuKPiyR662mGoYlvk7q8NcZI3pWqhjtCp4hJuLJj8Jz9ZHmIofJRAPKh+qgJKwsePsH3QCWO7JoqemgTRUycgqwb7LlVQW7Gi72KIk4QmXVbYIdGO7CJFP2J+lHhDQwXcr5sgsKcz/NyjGLycgI36pPd2sc03VHxqgy+SewwKobyiyxqmVPULFHmItQmK1mvGJnJoDRguauSzWKFbjU7WgPuyEnpnqSrtinvOBDDWnm7jjuRGfYGF9c1uQLpcy6oSmdaHL3xQn79QJJTNz7tR14w5ApjFW5NR/6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pvvnGJKIXmX9xHu6T2tUWu7QKdEp09o7Uxpz5TGA6gY=;
 b=sUxh230FplVocWd3Hv0pJoSONSY5QgqqZZHDClb0n6Jh2+Qs+Dzsb1kZ3zK2GqQytv4LOairk2Syr4H4LEkibfcn/pw2VVzET5ZhPgV1L9lkJItC8j+XEdsM5fS0tZLr+y6iEZsbma7Ng2iJguLFneVCnXVtl0p5VdfA+YQR6cQCnhh+BD7DXagPc4+o1kH/J0j2QvcTglEs3wqlbFqlB6393bUDp9wtBt2FGmxobSTz8vWLHdJRcsHtkQsPn+DNrLH8B8ft8RCC6TqUA8r3kbgz4YM+6Te6Y/qRExgkNqtesSQx/ni2KegNF0U9VJatGQ3tS/8N2wkGXHfsRNE5vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by BN9PR11MB5307.namprd11.prod.outlook.com (2603:10b6:408:118::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 16:23:13 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 16:23:12 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEysofg4QnnlQeUm14i8grYYPOrKHm7WAgABGfXCAABuSgIAAF2VQ
Date: Tue, 15 Oct 2024 16:23:12 +0000
Message-ID: <IA1PR11MB64674DCCF019544450B26825E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
 <SN7PR11MB67509E290DB4807E294502B8E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB64678E621767064D910F53F8E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
 <SN7PR11MB6750AADC23292F7E8F1C3D58E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750AADC23292F7E8F1C3D58E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|BN9PR11MB5307:EE_
x-ms-office365-filtering-correlation-id: 9fe82de0-9b24-4ac2-e3d0-08dced35aa7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NBCHrj/VaV6r3OM6HPDejRKrV2rGD5mP1/Ey7NKmz0a0RvXbn8xQmurDge7E?=
 =?us-ascii?Q?I7QBGAN3kSeSYq8qw8QzdcjXMAZohqtZzHZqz3qV4agwRP7L55wbNwcQ68nT?=
 =?us-ascii?Q?0EOMHd5bEPdc9knLQWcY7DtAQzycsPF9xb5eDeuRW3ITFR8I8qj1Rx6uNvwV?=
 =?us-ascii?Q?eEsTf0X18jIh/e8bVAVHtSBWQh/CQmZHah9Lyz4adeCt/fY8Nr/CetB0HwRa?=
 =?us-ascii?Q?U1eHwKFS1sWUoUpAlOxGONqyaGK1pjLcstP6MUxKjx26weuMaKO0ODVl3ruZ?=
 =?us-ascii?Q?dVGgU7wO2jA7eezrQhSTjF5tffHt86vnoiPp9K6TmKZoDtiDh6pgcn91loZX?=
 =?us-ascii?Q?uPj+Bei/ON9opu8qmiJXIwneCS//tFFtKFtHhJZTAu1zoGSQdXaxASjVIOrV?=
 =?us-ascii?Q?TrqofgJD1Xp9MbZxIljiBgzh/YLHQ2LxbY4YamP/BOAxsy77Ox2ZmuR2XISx?=
 =?us-ascii?Q?7GNVrjjK+h/ybPgxfTf5EN0BsC3jP4CEMPA2EnVz4dXxX6/Sra1jq+qKqUhY?=
 =?us-ascii?Q?r7J9y1+a+gb6JbLF8s/p5Skr4Nk3xIBk/2Fm4jbB2ZCfbog3vtrlSsEPTFsQ?=
 =?us-ascii?Q?qmRbVzZ+9fcF0kk9yei8qjBBDGoPGlu2qniCyP3quXXabKQ4shuoT3shBDOz?=
 =?us-ascii?Q?SpHSUP8Kc0ihJERMyRqI6cvy0VrC6PCngl9+fKSJPyDybVWQ0ZC1vcM1Y/ie?=
 =?us-ascii?Q?GEUGuu0tZ8Qm5cZXDya+PVFar0U4uXAoj63QsgFCoa8XdV8JWwYwkLTeH/kn?=
 =?us-ascii?Q?lyQ5DHa/rk8M+Qzh76D0opjC79fD8wJg3GEMBJ/VnuNBKdS+H2D2WhHjqG90?=
 =?us-ascii?Q?P/cGYByZBjeZhVa7cXXiBFbI3R/WVMNH+kq5glAoUX/ep0dGfsQmGN1KkeAQ?=
 =?us-ascii?Q?AaTJ7vXX6ac6iey8fhmtUkD5ia8ff5VQcIptCrfb5To7eyKnb5rNBjJuXCUd?=
 =?us-ascii?Q?eC2C9dLYe/2SSoIbmEsCN22GwWKTAurLiFNgutj4cZMgo78S4Xr560vR2Qan?=
 =?us-ascii?Q?bUqFt+joYZBvo/rEZUgsI+aTQ2M2iIQAo3zYAoEadozpTdxrq0I4YXjS6nO4?=
 =?us-ascii?Q?qSZJysFS1PvHerMnT56+Ior9pU7CT7RJ1A7xyuhqVTy/HzhnwNw4heVwlLbM?=
 =?us-ascii?Q?texm+o2oyq9GTL1Fq4fZ/HombFKckcXIJDPaPcAvDvv6qbCSpgtG3ZQU0dzj?=
 =?us-ascii?Q?KHDS/9gMBPS4QiP3oD4nvQI5IZAljjxi8qRb+Lx0dSWH2axt/iuRx+8eO00T?=
 =?us-ascii?Q?hNpCFalp7VI7/TImK2Yak54SPwglruuu3a5fNotBUim79CQR/G/eqt/MXwQJ?=
 =?us-ascii?Q?kWZuYD8LAyiEw2UpwZ01KQEOJ4vGG7UKWEQTD1ek8tfG7w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pcjIrUae+pl3TJmb3Ztr3DaBj8ckcHr/DAJC3svhzCA+huw8nNU+GQjcTGtd?=
 =?us-ascii?Q?CjLihuLsJUV0x2GHW5Bwmyw9tDSMY06DMX39XlLMVGwoc0pV/a/vqXX6ZUQH?=
 =?us-ascii?Q?OhnLnxPWsj/xwMYl4oLbzGaQmrWvG5waA9o2bEM7cXR8+ujIbjAwtBqT1+Pd?=
 =?us-ascii?Q?8SAMJ0X0RZ7qVUK/+eI/sIUQAH7Gce2u/s7d5i78r7l2Fpv5LsSyR+MFzbop?=
 =?us-ascii?Q?mhLkA83UWL3lML2gQ8+fIub/heDoTKe4QfraqriH+Xe44je0ie7dK1d9n9o4?=
 =?us-ascii?Q?Yi92evdRso9F7/1dL3J1eICZ9k5CUpZk4ma4plHJGqNLGOSmM/2ck5jiCILi?=
 =?us-ascii?Q?qyx13hBbsUEEk75irV5+w3Mi7pOuXdRJ+pQH1cbCJU0aie5aHxJug0Dv7hR0?=
 =?us-ascii?Q?ZZXZso1zeE5Q1Q8FcS+0yEaM5GBQZXWJ16GjKxQulehbtZICYesIki9HL70Y?=
 =?us-ascii?Q?J3d50fyEI3pwICcUoNOmPkQ52R8mEhshAl2ncAhoPunJGcnEfnAy+YnRjz5u?=
 =?us-ascii?Q?jDGXUg8X4xyYvDBtT+ANgXm9LChGg+ttL2K+JSc03vMinXX7ufjnMYQbvdDe?=
 =?us-ascii?Q?MRHdu4vZ8y5QzSt0E5A2de5oP7oZe4WXhIxWgUHDglmXwPSpLlZszLDLtcAl?=
 =?us-ascii?Q?S7S4NrHFXpbYuc7TWKRVJPiAc+l6LSQ63ysFI3HtzBNWp594jb/eysubetsC?=
 =?us-ascii?Q?0scqvjGaJyhlRN8WHyWIMSnodSJLxXnf81eYGdWPeXiNfuBaVBSws9ztWVYZ?=
 =?us-ascii?Q?OqMdX5jaHact+tNoEBb3/IpSM5TEDFJ2Gs8D2IMKvnK5Ah39Zx3gSENxG6Nm?=
 =?us-ascii?Q?VO92Hkj8f1ji5GRIXQwsWAOL/xH0YZOW1Qqkq+Uxx3KmTM0AX9c3YMeXEzdi?=
 =?us-ascii?Q?B/BS8FCJ99wEmd0q08ykyk3AxCY5CHEdPZVXd8xyPPtSuo4mk7ds4gz+IN1H?=
 =?us-ascii?Q?rh+wTuC5FVqN3+is/Fl9ru27Nd2OO5ZCObStcvpfT7OhfBHhJIkv770JH5yt?=
 =?us-ascii?Q?/ZcLDqYUtC1krkv87ihT+ziELcOeoYxK9Zj4kAWtsdJ1uTMfX1hjc14hnEed?=
 =?us-ascii?Q?6MzR56Po257xyCsGfGO0hPVdv5ZznaJ3hnADaDBu8SQlBgT3LmOxdKyZEm8G?=
 =?us-ascii?Q?WNhhMRFN9vonQrUm/QC0LpLBQktTm5ru9iIBfxX+AJrlzMZT4unHLBdSb71C?=
 =?us-ascii?Q?Bcp21ObdYr9c7xTel3MV3yCxgwsfKOJBT871x9dbV/egngJPQ8bg15QgvBTa?=
 =?us-ascii?Q?FZY41IjRwAVx8Qv2Y0aTOVUZtG8xFq44KCVsBHRV2H88s4+NnIaSVp+pxjA9?=
 =?us-ascii?Q?wRNVnGJdTrQFi0NWhpECLM6gJJKHpoHIn+mOeScplPwlj3Ee3ohv5MYGcHRC?=
 =?us-ascii?Q?oGxio8ljDd8A4WvgekhMym5Tg/QHwwPqsfOouhjA/0QdjZ8Lpm+cYpSn7Z+v?=
 =?us-ascii?Q?qxuFAiU0N3j7BUbL9WD7Il5poJ00KduUJXq/yZQ61d2MzUrP48fiYJnxm/h5?=
 =?us-ascii?Q?De7XzETh6Y7R0dDVRM8jN3j1oXcO5DSwRwI76VPzvjehb/pBsZk7Gt24imqA?=
 =?us-ascii?Q?XWgZl6bfbVzdk3dLxPVb8IgoB8hdOQTWnLHVq9Xq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fe82de0-9b24-4ac2-e3d0-08dced35aa7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 16:23:12.8653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m+wE1mtXQZ7FmfzVsp/+jO4pqnPqIx9bPZvQjL6vIgLhA5JZokBXmDYNuFTdGnNcXhSWMpdsFcvYgCyEJIbQqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5307
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, October 15, 2024 8:24 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for pla=
nar
> yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Garg, Nemesa <nemesa.garg@intel.com>
> > Sent: Tuesday, October 15, 2024 6:52 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> >
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Tuesday, October 15, 2024 2:33 PM
> > > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning
> > > for planar yuv
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > Behalf Of Nemesa Garg
> > > > Sent: Monday, September 30, 2024 4:54 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > > Subject: [PATCH] drm/i915/display: Workaround for odd panning for
> > > > planar yuv
> > > >
> > > > Disable the support for odd x pan for even xsize for NV12 format
> > > > as underrun issue is seen.
> > > >
> > > > WA: 16024459452
> > > >
> > > > v2: Replace HSD with WA in commit message [Suraj]
> > > >     Modified the condition for handling odd panning
> > > >
> > > > v3: Simplified the condition for checking hsub
> > > >     Using older framework for wa as rev1[Jani]
> > > >
> > > > v4: Modify the condition for hsub [Sai Teja]
> > > >     Initialize hsub in else path [Dan]
> > > >
> > > > v5: Replace IS_LUNARLAKE with display version.
> > > >     Resolve nitpicks[Jani]
> > > >
> > > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> > > >  1 file changed, 8 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > index e979786aa5cf..e3401a4f7992 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > @@ -1029,6 +1029,14 @@ int
> > > > intel_plane_check_src_coordinates(struct
> > > > intel_plane_state *plane_state)
> > > >  		 * This allows NV12 and P0xx formats to have odd size
> > and/or
> > > odd
> > > >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> > > >  		 */
> > > > +		/*
> > > > +		 *  Wa_16023981245 for display version 20.
> > > > +		 *  Do not support odd x-panning for even xsize for NV12.
> > >
> > > Only mention WA no here the rest anyone can refer to by going and
> > > checking the HSD
> > Sure..will do.
> > >
> > > > +		 */
> > > > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> > > > DRM_FORMAT_NV12 &&
> > > > +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
> > > > +			return -EINVAL;
> > >
> > > Also rather than return -EINVAL here we set hsub =3D2 and vsub =3D1 t=
his
> > > should make sure odd panning is disabled When we have even size
> > > since we only need to disable odd panning according to hsd not even
> > > panning this return may end stop panning for even sizes all together.
> > >
> > Even if I do hsub=3D2 then also it will return -EINVAL as src_x will be
> > odd and src_x % hsub will be 1 which will return -EINVAL.
> > Even panning doesn't get disable that's why I have added the check
> > src_x %
> > 2 !=3D 0 to make sure that position in not even and src_w % 2 to check
> > for even size.
>=20
>=20
> That will be fine let the code later that already exists take care of tha=
t since we
> don't Want to abruptly send an -EINVAL in a code block where we were assi=
gning
> variables.
> When it fails later as you said it will with a clean debug message too.
> Secondly when you do return -EINVAL for src_x % 2 !=3D 0 it ends up stopp=
ing
> panning in y direction If the current src_x is odd but panning is being d=
one only in
> y direction it will return -EINVAL Hence assigning hsub and vsub here mak=
e a lot
> more sense.
> We can remove the src_x check and keep src_w and add src_h check
>=20
But if I remove  src_x % 2 !=3D 0 then above condition will get true for ev=
en positions as well in both x and y direction.=20

Regards,
Nemesa

> Regards,
> Suraj Kandpal
>=20
> >
> > Regards,
> > Nemesa
> >
> > > Regards,
> > > Suraj Kandpal
> > > > +
> > > >  		hsub =3D 1;
> > > >  		vsub =3D 1;
> > > >  	} else {
> > > > --
> > > > 2.25.1

