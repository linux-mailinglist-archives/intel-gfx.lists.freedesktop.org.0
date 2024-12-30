Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9BF9FE59D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 12:25:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867DF10E4A4;
	Mon, 30 Dec 2024 11:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NEXni89O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E5010E4A4;
 Mon, 30 Dec 2024 11:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735557948; x=1767093948;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZklqTcq+DU/9xQZx0KTUdUyZhMcBTFzuP+r6ZcoS9Lo=;
 b=NEXni89O7VUjYT1ygxePHxN1BU/b0Zx1W1HDUt3TN7JVyPpuJMCF4EKJ
 jinSATbDgsyhsUBQbmedEFrJzVy3FHX90rs9iTbGSqEsX96y7igUlqPWc
 UyqRD1W+MiOw67kL3fjuy+/nuiZQ12S++mopeY2nZEx+FDRKQr4xbqHcN
 UNHuGXuqgrcXo4RZx8ASNGLf9dj4CKUWa6n6BNAxL5MG7jiSM29HqiEDH
 0KyKcDqnIT9pAo2Pm9NdHDqIzbF21k7VntYD+fPxhLQCvqWbv4eW5ebb0
 T6aeNoKsiazh1SPOGdgOSaxy2FX3czKFxs5CZ4IOTgUxoQCi3E36Kvq4o w==;
X-CSE-ConnectionGUID: KfVLT1leSNG69e7lrbgnwg==
X-CSE-MsgGUID: 5Hli99kPSFaa3ypNmsi+yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39774562"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39774562"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 03:25:47 -0800
X-CSE-ConnectionGUID: eDpe9ABxQrmC5mZh7DhgnQ==
X-CSE-MsgGUID: /rNq1f9dSMuft1RNlT3Iag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="131721543"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 03:25:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 03:25:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RXuPorhZ3DYuylXulrGa4+VR+Ex7iF9mAKaVdLjX1pHdthJBxNRrAFGqgNplhshaGQUpSxZwgdipIZf1LARG3n3XLtF7VVyMfTfET2xOGUO0smvHhuMS0Z23VUYT40Jqm0IuivfuFoLlo6KhCdXbL34rt9VZknlnp3rP2SRFg45nynxKIvBTApVJp2dX5dS/m1ruUZxLMNLeKkHi4H+Kiq9+xzV+glTjuI9b1Yx/BFXemMfXgnNASZJ74tKLf6lBB0nlyrEwDtT4NUJmu0+inCfSyXaJ8fhc0+ZJWYrXR0XY98F83OoynEQPH2mIjoUjbpQw5ygy1GlST4kz1esKpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HgSH1wJw5QzTRBy8ESoCjKO/tDB2XveXGLURD3ESMuM=;
 b=E/+MkLwN7Zb+LO4dVh1lzEI9mudgU1lbYxpvf1Q+AiU8tczGAsbmhZZv+jy3iGNGIu4JioI08Cru0ezfn8lwqKOixEYWnbtZhp6EmCkeveouoVhIKvwsorW6erQ2Mt8khSSChyFIntfFcHgARQ0wtVEMMpu14h7Uzn6jhs5mr0altPLvTs+qHHPmPNgTA2bOUcjDdIA/d8EJRv5YQ4K7cgTSCXAnx1KXc+OVpzOycRQKosRz2lbbLItp2UMB573X2GiPF2ty81gQw+s9L+zK9pH12Nh5jNIdo07K2Wh9B7rmA4U7tyUn7jLPIYQCdBanUJyHzREJ4BMaxSiqWdjvEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Mon, 30 Dec
 2024 11:25:39 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8293.020; Mon, 30 Dec 2024
 11:25:39 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/4] drm/i915/dmc_wl: Allow enable_dmc_wl=3 to mean
 "always locked"
Thread-Topic: [PATCH 4/4] drm/i915/dmc_wl: Allow enable_dmc_wl=3 to mean
 "always locked"
Thread-Index: AQHbUmOLL4vVGPgO3kaIrW4Kc4KmS7L+sLYg
Date: Mon, 30 Dec 2024 11:25:39 +0000
Message-ID: <IA1PR11MB626693990C96B2E139F0847FE2092@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
 <20241219221429.109668-5-gustavo.sousa@intel.com>
In-Reply-To: <20241219221429.109668-5-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH7PR11MB6836:EE_
x-ms-office365-filtering-correlation-id: a1039953-c682-4ee6-ece1-08dd28c4b09d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lq43pdUwG1ZvuzTwHnJDxhHj4CJpfhihEakzmsUkLuuWvK5JyueeOfg0Y/7z?=
 =?us-ascii?Q?yT36kFEtVlbpEqLhhPzSPxaSYIsL09+ws3scp8OPFyXR5tT9ns8qenMbXEEH?=
 =?us-ascii?Q?GjorcZYRUkysMcNPa4NwM8b3wC5B8rsCV9CJEgeRjoEC5HTVy6aFEoj3sPsR?=
 =?us-ascii?Q?mXI/uhidyItqBSHCgDBMfxJbir32/4y0oJ56bApioDv8cgecCyE4kGO6fVOj?=
 =?us-ascii?Q?df48Y29mTg2PHofTo3USV2Hq4pgbdHxeJEywLYJgViErxwHJFk+DhzlOI5bo?=
 =?us-ascii?Q?gwjcxl6TJ4sn0r2RHdIZOmqYFKT2yDJ8wznwtZ6dH7MmLhtpkRAjgvpx3YpF?=
 =?us-ascii?Q?rRpDXmrHXhMEwwEDnXT/5z7gc0U74AcyHGljDApeWS//1NZLaiBJJskLTpGQ?=
 =?us-ascii?Q?j+aAxz32VoDkw2drqV5MqkpXLeFLvwQZkLW3qnnPqjoa7sdhKizx1cgOb2ol?=
 =?us-ascii?Q?YA3jqQg8TtcTRfsEJX9VQFalpCC95JHcSqGp9PSJ3XI8IUdCHMHmyej+etje?=
 =?us-ascii?Q?9nhY1/1eoTl8Zlm4+fclQidv7y/UFxXRo6zLQ2EiWT4vUOoWj+e3ISwmuyYg?=
 =?us-ascii?Q?ceLf/MQbsAZKAf6RV5Eo72aL8G/NbVxdSPnoarnbYQTyGHtS0V56GCYP+2xK?=
 =?us-ascii?Q?G6VNQ/8xitxhf8WvYTFQUEPScKXz6TWUJ/2sxSqsxVhgHYw3wQtgl/CNaOiT?=
 =?us-ascii?Q?Gdyq5OH/xXgkm84u20AnasRjhhKF79qWGRgFUNRhGxsBQ8D/jwPeNrzVleK6?=
 =?us-ascii?Q?VdhjL6Evw1wlEvFhbeCSf73mjJK90G2TVLTlN859QGzWVxmJDIX43WCXOZ1N?=
 =?us-ascii?Q?Kx4lZculqExII/qCyPFvaeuJ6BlFMEZKcrywVmJt3C9EK9982OW1S/rvuO+v?=
 =?us-ascii?Q?s1WcxyBvicrRY0f+7LpfQ3Q7MaoqLnS/BMDQjyPmZ/J5U0hUHxJFi3ZamMsf?=
 =?us-ascii?Q?Mba+qcuOfSPKoucmw0YSJG6eT7TUjve6BYe5pD7/ebLSzXHgByHaLHAZnPul?=
 =?us-ascii?Q?XK97nHjl9pF3rcN1Z9fYWD40Jn9dvfYOVDUsbqucArF3q03wQuUQoWjpmba2?=
 =?us-ascii?Q?AsQPHWyZVoC1s5nz6tmRgcx5qJKy6a59TUVKmWSAdUUAml6ZWlOETmAs2tLJ?=
 =?us-ascii?Q?sja+tBPhGhcGbDAY9aH3kuyOn7PHAHtGO/P11CvxhOmi42XkdoY98YUUbyKl?=
 =?us-ascii?Q?puXBPC60mNdf+iwZPr3WMTiX+/Rotvbe0GVOaX1oZM3Pohhc+OgPTSPuJddX?=
 =?us-ascii?Q?DmA6oj7HNI+SG1BrvCr27y98zBsRZb74heg1kaQ78nigylLXDlthb0M+1Og3?=
 =?us-ascii?Q?90VqiZx1dcZo+fR4doIXrNm/HqHLngVJ4OmLxqh+/l9jm8fobEYidlGy08G8?=
 =?us-ascii?Q?ZZzfqii/dBsNo+t/p0JPzcGyWkJsJDXf85GB7zqZ87qQJMRbBaRYn1UU0Z7H?=
 =?us-ascii?Q?JBNGJw0wUKmXNvw0xsgpJoOubTNYINNk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NVDJacS0TN7r3Uk1cfflox2p7g4qIahLDMzAcP/61HO1Od4KtRwHOZ91Ns/6?=
 =?us-ascii?Q?BcVJ+RjEgdFtZTNtUTwd20bxDfiuOrvFD6Y3tkzyxc2AxpeBJfAfs5wbHP5r?=
 =?us-ascii?Q?O6iLiMrie/ZyDaffbvSPmFVCBD8SwoKuBGnRUZvHmv38m6nSaAD8J7eZgCNc?=
 =?us-ascii?Q?JXuq1+wdiWDhTkf9RmoxBjSxZhmAlB4fyMoxpcVxTFB6XD4tcoFBhaoJd/V8?=
 =?us-ascii?Q?61B4ZqPD1T6n2RSeGjvgIZ0tpn1OIuY70oS7gRkUPcPJ0CKs1KsXQHa2rnNv?=
 =?us-ascii?Q?MrMEc9p6gSTT/5fHexsdoOjb0dGCSgTKmCUy4G+7TwpzEiFJYFo6du7fZz8j?=
 =?us-ascii?Q?JxWV5/aP+8OFRNa6UVQy0M+fJFYYj33PfZxA3zMagruTVS42EUByM4EzlStp?=
 =?us-ascii?Q?iPf5TKX5Rwt5lDLmwH4NAzkc6M2XsXQx8TfbSQpd/fosngSwrjSUvxVS78Ef?=
 =?us-ascii?Q?Cu4YFMuJyA0QNRHRCoS2QflOTR4Ra4Uxj/JsICl+lBri71VNl47hXncbgSvq?=
 =?us-ascii?Q?TtRT9OcvChx84cA3ayDnlURjwWZnTIDGqCNjBzxf772A9ygoTFheVR8yRLcZ?=
 =?us-ascii?Q?bnKt2B9FZEPQMOqa3sfipZeyWW0fM+KJHpTVW5hCOs53N0uWh07JCIrdmGug?=
 =?us-ascii?Q?tyToIvOrg49mGw57mc5riac5zcuqW/vuLzFXRrsmME7QeOFY2PMePlCq6gQZ?=
 =?us-ascii?Q?IOUE41Qyvby7w4TMpbcM4DoDWMpFtF+bNKTAIXFuInSwyf4PbeJ34HkAwT6n?=
 =?us-ascii?Q?rDS86ABlIfH8jAnEQphVLVMfScrRBH1MSF44pI+IqCk4WBKlf2mj5C4tPsfX?=
 =?us-ascii?Q?JrTZNz/PIuNTcpkOqxzUfIAF/Qyks12u5gnsgNtI2o0BJ7nXdrEd8VfzOPSo?=
 =?us-ascii?Q?gLj9b3VFhv+I/OuRuqEQMQ8X+F1Uq4lGUGVBlJJ2eqJl48EmDijOswV63XiU?=
 =?us-ascii?Q?1MzFdtzYRBxJQFGSllzh6R8CtWPQg29KiHLWpeL0fw7YSjuC/IDY6WlpZ1nT?=
 =?us-ascii?Q?8QwK464iWujLvUi+y5VMQhcefS92NdLMhOfrJh+mGS4pHJiBMP7kpZPOza+3?=
 =?us-ascii?Q?oKFxZKX2t6BeZFJQFI1UJ4u7aORaX1k3TiUH4eFMAnbBTFZw8tkAF2135kGy?=
 =?us-ascii?Q?K3kXGUztzwwnbkmq5DzOebgW1xZT/rrp1mBU4ju53BF0GaepYOdPDTkj6bAG?=
 =?us-ascii?Q?qes47xvtPB1kKZrbE8fh+gycDxWtJPvG98+4gHSg80uOzcaGoD3Bf9MwJiKh?=
 =?us-ascii?Q?+KXzSmZCAoGXTxXq977TTU63PzNZhDkucZ3JnmNiMtCcPPW7fG0Fn0eec3FE?=
 =?us-ascii?Q?pi8MhQD7P5Qp48HFvLdwt0HUJQvGV1BbE+7wMbAi4k8kYlY6B4x/Plnru6dr?=
 =?us-ascii?Q?1vPQ8vjGgcXkVNMW/Ccc5f217zO/eWlHcAZs6HOk0oDDM5oVoMBYrg+/KTqw?=
 =?us-ascii?Q?Oh2iN1hUkF9+jDEDyYz4ft0b+5u1ceA3mnzsSp7sMtrJ+h+XVXh31FDMouIZ?=
 =?us-ascii?Q?U8DRCbk0A94fhlAySa5YiS7ylDHolk1dml+aM+Xg/bYDyvKaCRmS1VcLcpv5?=
 =?us-ascii?Q?IiPE/rvGkzmgPID0rlBpmDt9Da+UcHRQIdBHi3zYKE9SvsiF3FS5XkstRYxJ?=
 =?us-ascii?Q?eA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1039953-c682-4ee6-ece1-08dd28c4b09d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2024 11:25:39.8083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iF4TDIeUYJrd1XJ8mWBu/l+6M2QMU0+Yb3T3v7nPre+EccEli2B8Cb+vTcBFcWs2dmtLRgeKRQB3RnUKI73+Pm/piDjQwU4D50IHUogGnfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Gust=
avo
> Sousa
> Sent: Friday, December 20, 2024 3:44 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: [PATCH 4/4] drm/i915/dmc_wl: Allow enable_dmc_wl=3D3 to mean
> "always locked"
>=20
> When debugging issues that might be related to the DMC wakelock code, it =
might
> be useful to compare runs with the lock acquired while DC states are enab=
led vs
> the regular case. If issues disappear with the former, it might be a symp=
tom of
> something wrong in our code. Support having this "always locked" behavior=
 with
> enable_dmc_wl=3D3.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Dnyaneshwar
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 7 ++++++-
>  2 files changed, 7 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> b/drivers/gpu/drm/i915/display/intel_display_params.c
> index f0f388f38fa7..c4f1ab43fc0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -130,7 +130,7 @@
> intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>=20
>  intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>  	"Enable DMC wakelock "
> -	"(-1=3Duse per-chip default, 0=3Ddisabled, 1=3Denabled, 2=3Dmatch any r=
egister) "
> +	"(-1=3Duse per-chip default, 0=3Ddisabled, 1=3Denabled, 2=3Dmatch any r=
egister,
> 3=3Dalways locked) "
>  	"Default: -1");
>=20
>  __maybe_unused
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 22e963da65c6..a277c5025f8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -57,6 +57,7 @@ enum {
>  	ENABLE_DMC_WL_DISABLED,
>  	ENABLE_DMC_WL_ENABLED,
>  	ENABLE_DMC_WL_ANY_REGISTER,
> +	ENABLE_DMC_WL_ALWAYS_LOCKED,
>  	ENABLE_DMC_WL_MAX,
>  };
>=20
> @@ -312,6 +313,9 @@ static void intel_dmc_wl_sanitize_param(struct
> intel_display *display)
>  	case ENABLE_DMC_WL_ANY_REGISTER:
>  		desc =3D "match any register";
>  		break;
> +	case ENABLE_DMC_WL_ALWAYS_LOCKED:
> +		desc =3D "always locked";
> +		break;
>  	default:
>  		desc =3D "unknown";
>  		break;
> @@ -332,7 +336,8 @@ void intel_dmc_wl_init(struct intel_display *display)
>=20
>  	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
>  	spin_lock_init(&wl->lock);
> -	refcount_set(&wl->refcount, 0);
> +	refcount_set(&wl->refcount,
> +		     display->params.enable_dmc_wl =3D=3D
> ENABLE_DMC_WL_ALWAYS_LOCKED ? 1
> +: 0);
>  }
>=20
>  /* Must only be called as part of enabling dynamic DC states. */
> --
> 2.47.1

