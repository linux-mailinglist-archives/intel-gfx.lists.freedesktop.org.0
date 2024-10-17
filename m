Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBB19A1DDD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 11:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBEC710E7C6;
	Thu, 17 Oct 2024 09:10:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOD4uGyt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AAC610E7C6;
 Thu, 17 Oct 2024 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729156231; x=1760692231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xqwTfbR4mSPVvsRNOODCyGd5X6KvctF1HmxjGjXJ900=;
 b=dOD4uGytK8brQvPGVP35YjDsPSuxR1F5lLOKOUD+INtCnegLumpj9PYM
 gM0hJ+yPFrupQqBFiAXVr7g7wqBNibif1SxzsN0DJUq/QhNWk66OIp66D
 O0UixmXRLUEKhVjEdLIUGZXgXvZ2rThI5k1w580zERGdGaD1g4VDZ8Sre
 Aaz9cNKwph8VoIhd77RWI0KKxuBZy1R+Wjl8nOAE4hLSxiBawWghiX5X0
 uGMHqd27NbpjB5wTMElwe220vICMhbQBHME2uOuTHop5+AMAX3iszN7+v
 8XYp11z3dHSS/GeWT77QYoeljE3N/kGgADWfLUdHkwNRRt4pe+6jNbduG w==;
X-CSE-ConnectionGUID: 8d6/aEkwTWyzmfy7CMl8oQ==
X-CSE-MsgGUID: vEjfSQvMRsScrA/UEWpMGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="28103809"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="28103809"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 02:10:30 -0700
X-CSE-ConnectionGUID: 7m4ZouK+QyGbzc5wUniWog==
X-CSE-MsgGUID: BIr20PdKQxemHZH+kj8ezQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="115923078"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 02:10:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:10:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:10:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 02:10:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 02:10:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l+J+OB95RQ8LQQnIhl6LKselhr1QwkmJeDluvPjfuLjcaC5R2y3LUhGYZvXLBbLsw/AMszHLfJ0bFHCSUaz03ELx0xbiqtlvpeCl79WH4Nhsb43JAjskYzaFLqu1LY9FRtyTgg/YmauR9ViPw14HHAkqaSgJsBAmgRpNuvTBIu86AW/RbMp630yloQq/8h8cNBtiofl+qfl/dom52HsIl2YLtOPouQeXhK44yZF41krOiSGfoCX6LkpKPdgn09VuImoutOqm6Lu/q0oLdUvnvMHezwQb3dk+trF6bzAIjof/TDAntbJwUWVXcOM3ekr7DPGBUyAcFSsi8FIan7UzGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UNkdLgSS8/Y1mqurHSImrOtedrIcwb/sZZlxdlwKGc0=;
 b=fRDmKRr+fJD882O4L/F3vgnlRieL94T0wk13EmTtk869uVcoPGpwPQjbG463L+QLu0BfoHxtaPTsvbrgBGLLnM6sFO9x2BGKr/sgBAQCeXH6OCowYKe5Bq0mNJvylWEhHM3QXV4or64HrSjnDwZhPYVQ5q6afKF7/Dxcab7Lej/kbChl88RbD/NWkI2pIyfgnb2ivrg4cEsln6F6GuF8Vzm5hkpS50FfpSQAQAF+KJRA7iLYC1gVrOrc9ECW4cfKGsLcxmpdaDYRHfdwxZYTgjLlOFneuyj4Ctm3UbnHPySFpfWD07qdEYMwWDd2s69V6W4ri970CJ3l+GaJBMfyMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB7700.namprd11.prod.outlook.com (2603:10b6:806:330::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Thu, 17 Oct
 2024 09:10:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 09:10:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 03/10] drm/i915/vdsc: Add register bits for VDSC2 engine
Thread-Topic: [PATCH 03/10] drm/i915/vdsc: Add register bits for VDSC2 engine
Thread-Index: AQHbIG2o/Inx0VDS90eYiT73XqzaSbKKpygw
Date: Thu, 17 Oct 2024 09:10:26 +0000
Message-ID: <SN7PR11MB675012F6BC358DE6531383CDE3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241017082348.3413727-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB7700:EE_
x-ms-office365-filtering-correlation-id: a9305e92-009e-4f2a-f2c6-08dcee8b8a43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4Jrh0xtPQS/PhPFHNh4QkAENM/lTZiUTNMvBbWzbG0DnWQR7gqu93TEdU3Hz?=
 =?us-ascii?Q?NH/NAz8KA/Le3b/CkrMsHqL2SBD7wsBIQlCWprfJi164AG0K5UZgjKXjfdwD?=
 =?us-ascii?Q?YShLfvjKiJocxou+DRSJc7AZaZJb02T+xU2CMl2xaUxDJUBkndXdXLuiyN+/?=
 =?us-ascii?Q?BpxG8pzrzHqESEL3gwHy5uhHC5R5aWhcy47ujXz39fpqIeDExqVWUnK3Xy0V?=
 =?us-ascii?Q?ZFEG6TfQrWM3WO2Wh9kEK0KXx2CgefbviJK48zqyI1D4kW87rTunGlyriZly?=
 =?us-ascii?Q?jebQ8MYK98x4ZRBu9bmDx1VQEEjO+PFfQ/VGyg5PfHfOxsHseKk2QDkw/Sqt?=
 =?us-ascii?Q?WAJcse7J/6LYmVkcjdn3vD8CLnq16qgr6eG9kkL0WDvZlPTY39/U0YS6YvWT?=
 =?us-ascii?Q?bDRxhJ6N6QVT+7/3DAtk5kGqrEiCSda5UTsm898bAAKGpoZDDHcWKAqSy2ET?=
 =?us-ascii?Q?i9KyisEv6LuLNoMXxRuzcDvKVjsBfUODial1eOKP6zZRVPYSrgajTxty5iFK?=
 =?us-ascii?Q?bhKfXJ3b2P4N4icitnqmR9FF0aDD3eiQa21THGUldzG7oO8XXjQb+fSyJ9TK?=
 =?us-ascii?Q?KiGCeEMpvoK6mrvZESKf3TP5Ehn8CF19bcbNuJjDPtKvX4NUVcSFGeCvDr0/?=
 =?us-ascii?Q?SGN0/3P2Jh1u5ZQ/MjnWiHTccPKqjamk1ByX3+IeGin/cWdSm5QU7hM9QPqh?=
 =?us-ascii?Q?F89+bQlfrLe+NU0fPmM5rgPqG4AlsjmOYdCMNw7UYWHdBsGTHUzeEmG7lx/C?=
 =?us-ascii?Q?8kYOsh5lJlusoG16G3d2jinZ2/mU1+S63S1nnF0ybxfDbkbClro+OUFDrw+d?=
 =?us-ascii?Q?T9ivDpDGeFcX8IZrJ+UAswUslZC0343Cqz7NcLHV21wE9yFixxWBg1A3+d1o?=
 =?us-ascii?Q?lhx1e1HULN3ovsOhx1CKMikg/uK8Px3V12svYCUcz7JlAvz+gzOyQICI/7+v?=
 =?us-ascii?Q?Xkxw/94yfUYquFUYmvCxpwSMloJmTYOBs0Dneycw1Jtd3GBaq6uXN1CatZa7?=
 =?us-ascii?Q?ZvewFGx3ktS6JiMYa/K93r9vgNBg/SLUJOw6ZkhhM7UUPx8Ar/Ac62+L/zS8?=
 =?us-ascii?Q?Y9tpVOvoJpFN4zB19gosFy99u9IFkYRKW94253oH2wfycg+s7PvKCDq2cGgP?=
 =?us-ascii?Q?vdoXDrvaH64WlZZ+1LibShOYsjyD9GEMYICgFWyfpm8Y1TppoM1LCTysDujn?=
 =?us-ascii?Q?Sxxz8g9B8Gi81iWRD891LUQxwa3F+VCrjSZGVdhyxOjrXUugADoflzcMGly+?=
 =?us-ascii?Q?zxfjuTcwtGZwH7DObJT8uP3airSpleX5YK5XPy/LxA+KfU5F+45aW8ZBof2c?=
 =?us-ascii?Q?YHx/DVDKuqEDm/G54cNUU5zuV1MCTMOABztxB4AvMEttuW7gvIio25ehvyeT?=
 =?us-ascii?Q?Xzpn7Q8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MisKQIxED/Yo8ks+XZ5eMlyQJMRMurnzco2hCTUKv2I3q89iJ9AXg+KWg4pL?=
 =?us-ascii?Q?a6Y567k51G8zcnX7VIVmjojfZKqkL2MJKAexq6m3dfnZsrg8r8LzEYS5zzp7?=
 =?us-ascii?Q?F7tQAb/tpFW0DnOBh8s/z2B5ZnpLx0nV2ojCgC7x0yU0XmVKAnPccxif/rZu?=
 =?us-ascii?Q?mYU3Jyock6On44y6zRCLTIsBGle+uiR56YE3uROvJnvVexPtVA/jYYYorCdN?=
 =?us-ascii?Q?UR5OLVCkOK0hVMxIITvWmeLKd9GgMbVOajpRAfT85qitFcNDoMWaeMwkT+JN?=
 =?us-ascii?Q?KuWo0zoqVg/RUWSrWpFX4/RrLJ0oUi3GSLuMfGNPM0q0L1HTL8oNLUkrOfxF?=
 =?us-ascii?Q?zjw6z/+K3JCKLMulUkrFl192vheEIEIQXclej5aGBj5bA9Z3FJPLm1iZPBCb?=
 =?us-ascii?Q?ylmid45zh2hEFYGhEh/TmThKQoqkPEGE/Dbvqy9DVpiLp4ZpQDNT0ItCCAAa?=
 =?us-ascii?Q?cuan5avAomPYlAWhndNzBE2ayI5EzoJlxJJNpzGfJ19ewNwoe/Ms6r8VQ2Dq?=
 =?us-ascii?Q?QpKXVLt+giFcqgOnwUl6FmACOZkBOd9/ENQcjmxIpDtMlAdYgSn+aNCYr9Mz?=
 =?us-ascii?Q?9NGR9V4jTGUVyL5kdlqNU6OHduIqEH7KkRG1C5n9g88N2Nx0bmiGXT2A7ju6?=
 =?us-ascii?Q?8s/3dm5jbpB2Ms+sSph7Pk1p0L9Dq4LktE0XUw/8yL9Bw7nFqxBrnvOQbj61?=
 =?us-ascii?Q?2ZtTRJ7Hu5HQRmrV7LCRjuk0sGRASzAg/D1FAJv+W6bHa+C4zXEjOLfxe30S?=
 =?us-ascii?Q?WDYXv1NzcqNQCV2TGvtsBseEPeRhy5V26skW2H1f3jM911ZX8LuZrNzAxzAY?=
 =?us-ascii?Q?9NcWTy9Y58oL3yxPT0AEJr01n2aNlmDjKod8ehUaIzOcQpz/77YZfMpw03PB?=
 =?us-ascii?Q?E9EkrYu3kVE/IwMAmmgFx0VLeZ+Wk/2FDf4hlQ75KG/1qG5N2tYgwKoQBbWu?=
 =?us-ascii?Q?NEWCx5jjOlWyEXF2FZViuE64i6lv6dxW9Gl5mHJGq9rS4FTYFI95gD9suhHm?=
 =?us-ascii?Q?4kvWrQ7g602p5U9NodH4BgnUZ/to96rPSBNxa6woExvF/QD3ZbU8Sw6TW8bF?=
 =?us-ascii?Q?EyK1AwCq9BKc9/RTmbtH/Yq8gdD+SXC7C+D8sn1w+droyoRchX1+nytSFLsY?=
 =?us-ascii?Q?Q/73n1gkpX8V2abU7Bt+T/He9Lz8tBv8FYLjo9HxPFUFpT7vbuds6NcTzQoM?=
 =?us-ascii?Q?F7DH1sh/liR9qN2pD8WrnFk+eip6yBw43+HfPDW7g3O2lePoF1ixRlZ6WirM?=
 =?us-ascii?Q?NXpPkxIEZIa5lyV0CgyMEKv62cfmoX/ytR5caBSYt6krg7y6lgBWBoZPWsOQ?=
 =?us-ascii?Q?kG4O0Fthf4QJelafTSDw0rr0mopH1xzf/Y+UG38OkhXuqkfbHz2NkPD/4ySZ?=
 =?us-ascii?Q?7IBo0biMaPn4ehKTAbTmbeCoDCy6+wKmIXjtdx00yDxFZovgfmFHOTsZ/J20?=
 =?us-ascii?Q?RnwElHTAqB6h5oZyDQN9ce0sZkb9XTxyqFtsilz7gOjr6IsaOD/momwiVmjl?=
 =?us-ascii?Q?W7qjaFc1BgfMzhv0xkHhww3854HddrHwVr66qKN/KenszoOhZnaMnUsChKj8?=
 =?us-ascii?Q?Cz2d4UL2/SgVOUw+1opKUZGMf9H/+l42X1KglRhX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9305e92-009e-4f2a-f2c6-08dcee8b8a43
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 09:10:26.7300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9wZlD3ZZouh97G/Dr1qcDGrsrc45NQRl3GjpAv26pbqxHYs8SVPjt7BbP9a6tCEar/qjtc6T3roaJlwhBgWIfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7700
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 17, 2024 1:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 03/10] drm/i915/vdsc: Add register bits for VDSC2 engine
>=20
> Add bits to enable third VDSC engine VDSC2.

The subject and commit message dont entirely do justice to what is being do=
ne in the patch.
You are also adding definitions, and adding prospect for get_config and ena=
bling dsc with 3 engines


>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 21 +++++++++++++++----
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  4 ++++
>  3 files changed, 22 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8bd63da8516c..e6d37d28c5c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -912,6 +912,7 @@ struct intel_csc_matrix {  enum intel_dsc_split_state=
 {
>  	INTEL_DSC_SPLIT_DISABLED,
>  	INTEL_DSC_SPLIT_2_STREAMS,
> +	INTEL_DSC_SPLIT_3_STREAMS,
>  };

This and the below name changes can be avoided if we make dsc_split a int n=
o_dsc_spilt_streams

Regards,
Suraj Kandpal
>=20
>  void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val); diff --=
git
> a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bc5f8c5cb1d4..e34483d5be36 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -380,6 +380,8 @@ intel_dsc_power_domain(struct intel_crtc *crtc,
> enum transcoder cpu_transcoder)  static int
> intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)  {
>  	switch (crtc_state->dsc.dsc_split) {
> +	case INTEL_DSC_SPLIT_3_STREAMS:
> +		return 3;
>  	case INTEL_DSC_SPLIT_2_STREAMS:
>  		return 2;
>  	case INTEL_DSC_SPLIT_DISABLED:
> @@ -782,6 +784,12 @@ void intel_dsc_enable(const struct intel_crtc_state
> *crtc_state)
>  		dss_ctl2_val |=3D VDSC1_ENABLE;
>  		dss_ctl1_val |=3D JOINER_ENABLE;
>  	}
> +
> +	if (vdsc_instances_per_pipe > 2) {
> +		dss_ctl2_val |=3D VDSC2_ENABLE;
> +		dss_ctl2_val |=3D SMALL_JOINER_CONFIG_3_ENGINES;
> +	}
> +
>  	if (crtc_state->joiner_pipes) {
>  		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
>  			dss_ctl1_val |=3D ULTRA_JOINER_ENABLE; @@ -983,11
> +991,15 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->dsc.compression_enable)
>  		goto out;
>=20
> -	if ((dss_ctl1 & JOINER_ENABLE) &&
> -	    (dss_ctl2 & VDSC1_ENABLE))
> -		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_2_STREAMS;
> -	else
> +	if (dss_ctl1 & JOINER_ENABLE) {
> +		if (dss_ctl2 & (VDSC2_ENABLE |
> SMALL_JOINER_CONFIG_3_ENGINES))
> +			crtc_state->dsc.dsc_split =3D
> INTEL_DSC_SPLIT_3_STREAMS;
> +
> +		else if (dss_ctl2 & VDSC1_ENABLE)
> +			crtc_state->dsc.dsc_split =3D
> INTEL_DSC_SPLIT_2_STREAMS;
> +	} else {
>  		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_DISABLED;
> +	}
>=20
>  	intel_dsc_get_pps_config(crtc_state);
>  out:
> @@ -997,6 +1009,7 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)  static const char * const dsc_split_str[] =3D {
>  	[INTEL_DSC_SPLIT_DISABLED] =3D "DISABLED",
>  	[INTEL_DSC_SPLIT_2_STREAMS] =3D "2 STREAMS",
> +	[INTEL_DSC_SPLIT_3_STREAMS] =3D "3 STREAMS",
>  };
>=20
>  static const char *dsc_split_name(enum intel_dsc_split_state dsc_split) =
diff
> --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index d7a72b95ee7e..941f4ff6b940 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -22,6 +22,10 @@
>=20
>  #define DSS_CTL2				_MMIO(0x67404)
>  #define  VDSC0_ENABLE				REG_BIT(31)
> +#define  VDSC2_ENABLE				REG_BIT(30)
> +#define  SMALL_JOINER_CONFIG_3_ENGINES		REG_BIT(23)
> +#define  ODD_PIXEL_REMOVAL			REG_BIT(18)
> +#define  ODD_PIXEL_REMOVAL_CONFIG_EOL		REG_BIT(17)
>  #define  VDSC1_ENABLE				REG_BIT(15)
>  #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
>  #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> --
> 2.45.2

