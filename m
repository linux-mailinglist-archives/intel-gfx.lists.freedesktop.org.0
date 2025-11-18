Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D9DC673CD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 634B810E1DD;
	Tue, 18 Nov 2025 04:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TgbfpYsS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7640410E1DD;
 Tue, 18 Nov 2025 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763439686; x=1794975686;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Cy3FuNhgSB/+orwh6MtilZrabIBRz2sniHs05B/jZh4=;
 b=TgbfpYsSI8QETKhDk870nsgq5LKpDPDTpELy4/iZJyHj3o2pAA+gRjom
 wvAu/wJR3byyArAZ+V/1oN3ey6ysZ78sEOENYUnO/Xw2YUoRIPV12zpxE
 Y7j7n/i/QQl3ztHcxEzZwJFxkiSA2i8WyE+WIyx+AfwZ6nN9mVQWAo7RC
 GsNsUoXaZL9UYXMicFj79kXvnct2CvaqQf9OxwzajPS1lgOGHorGulbkG
 0IcbhGLLVefrYUU+gLwLn3183P5QF3HPpoKEsD46v+P/iiIEUXcj/+z5r
 sohgsuP3+rGtmBeEisn2wR4575NoEFkk4lhygkIY5d6ghAXO1DN0KqEOu A==;
X-CSE-ConnectionGUID: vUWsiW5JTSCHCFyq53RJTA==
X-CSE-MsgGUID: 6DIycbXQQ36sMQvKSVBjzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65386327"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="65386327"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:21:21 -0800
X-CSE-ConnectionGUID: 0wHssOmDTtuCjn1q+XrZ4g==
X-CSE-MsgGUID: o7tSGY5gTminUb+7S3cBpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="190312647"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:21:19 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:21:18 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:21:18 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.47) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:21:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uKXQwr3/KkdXLi+0ugeaYFAZZS+cmUR/9AwUc4AWn7gT48n7YvS4k+5+2fZXagQ8SAPEySKs0SP33xNF33Fmuv86/XQPYNlim1TN+RayK0z/Ek6bOAyBsukITPvlVxL4j1WWTWyGuX90MgIge9Hh81PrOB3eEnS8cR3FovXPfKjpMmeJyETrOi46r5JRAe9BiuRer0R0waU3qfSaYsppCnO6Y7VeW/ddKOo3sncOmjLVIrrf2LgGaFTrNRX9pV2pJihVRpUAz3txfb52Af9Bpu0d3jTGhgfVE1MJwgwZ/acVEUI3DY2uGi+BvuPDbP3eyG8emT2tQF4nH0jiRi1zXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SINJyvU51JzWuyqpKpG+nMSZbJgtJA2bonHHCh8x3ns=;
 b=DmUPROZ23gAJEzpJdfjkvZ30FpIsK5TLG7n2xrZdtyXrN57XFnBJZLwAjebi2mlpEQURlzISnMeswAlelVkVnkroQHCNEO9jF+RWElq+gH3GomkDxY+OWyiBwbPrlaJimNWa2Isyb4XK2h1Gm5zgPZLjypfrliVsqTrrfx6yAp1ghrJgOtjuGAcsYuvUdzGfLNiFu+NuVckdYlIWyP9xDxI3L0hy8O3OguDC2a6IEJ5k0JyH/Qma0PFKq7Ok5ihz3095GBckaqzdxVxfGS5MnJhlkQkfCR2rbbI4MYJw9QNegCWxL/bOMF14APPIApRed60pGjVLjGKTQqexQxXRkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB5247.namprd11.prod.outlook.com
 (2603:10b6:5:38a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.23; Tue, 18 Nov
 2025 04:21:16 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:21:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Topic: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Index: AQHcV7FFJqiKvDQqK02f+q3tNUakHLT31Smw
Date: Tue, 18 Nov 2025 04:21:16 +0000
Message-ID: <DM3PPF208195D8DBE4AE64DE33D9372C5BBE3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-22-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-22-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB5247:EE_
x-ms-office365-filtering-correlation-id: a1390005-2eb2-44e8-6d52-08de2659ea96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?1FaVAcV5+SKLQCMkNhbuJ40EyiMo41BCFBGzazRJE/KlSY0sY+87c+5b5wuQ?=
 =?us-ascii?Q?E9VgbPSx7xmX95ktQTfhcZCy78fJEzkTkMGO82nkzOoHwZ68zJInoTeHs6YI?=
 =?us-ascii?Q?3vGsDz86OYTqdLXeZWBdAR4qfP6AlGFbF8sMhxt0NHPKDXPwX2ekiPwJOa7f?=
 =?us-ascii?Q?b1PQVTg+vOnZ0AGYXNPPBYpitVb5bXj/WLbv7+7Ug0U/bmYBcWGySQ2V/ycW?=
 =?us-ascii?Q?AZtbplIlyyYIY8zJ0Q1UOJ4YZrVjhbohYbhs98vFSWZxSzw2giRL9nsqTgFs?=
 =?us-ascii?Q?tqHnIkKy1UUJMYrqsdDLsO5iCZ6zJPBypYFV5ET46Wodq1jffFp/awhHcp93?=
 =?us-ascii?Q?GrzwBDoz1kC4mJUPWZCta0OSaQtjjYTVFk48o2fAY8ynWMZGt6Gy+zqdpDf8?=
 =?us-ascii?Q?0QgIRN2l3wLsZvHqs3T7395ecSsYHoW20UiYB0Z7ngYDkcj8QkXOw2+kuurO?=
 =?us-ascii?Q?FUuxP+54alNUfN3AGVQ87pjfcfgwJt6dASqXQHnzy/6Gl3wNX6WrvH13lZpr?=
 =?us-ascii?Q?sSm50E4a8yhTRwj+ZdhPGDF/7IS6BMr6Cbv99N94nWDLORTUfjw64u82yKIy?=
 =?us-ascii?Q?8weQ4Iq8Vw70jyOjaw2dZP4xE++dOg7jlrKf30RKHEQZaZ1Gtr/4+B17lNCS?=
 =?us-ascii?Q?8GdxZl9Y8UcdkQ9R6GjWSwyPxEqzXVaEuA9UliepYzNkxEnID7ovB13m61Mn?=
 =?us-ascii?Q?0WjiVljDmuwhc7MQE3iUgAJ7iBwfZ6ZZ61e8WSzwBBYTwRWXopdIyRRUextw?=
 =?us-ascii?Q?j5mdq3LvJdaU5dQggIWO4JeeEaM9RqqXc1xpd1HOFW84dFtcdmCieWj74LjO?=
 =?us-ascii?Q?HFQzSlb307+E0O5/K6PCjwjIalNNg9OMDkDmGa6M/q6w1RKk1ecfrufUMJiY?=
 =?us-ascii?Q?aLARgYucQorFUDCvyYkaTVvphhnb4Q65MWkWusAdsXrzAAW7/aTGp8DGpLvA?=
 =?us-ascii?Q?O2DTaRVRN8YbIyFkiZig8QlCvm9HxNEZzocmd4ljGDEItFsl+iHwhSHOKIjS?=
 =?us-ascii?Q?iUMlFimppkLBt36ABqy4jGZTk1VDXQ7wyqd/mRlu90k+Vuug6gFdkQInw8ka?=
 =?us-ascii?Q?9nZKYICoRyg/WKeq7uRQeTUVc4r0wi7KHAg9CutTuDOfPhFIfhshgKgHmmRw?=
 =?us-ascii?Q?kwRfKUcLUC1wJc1uhOaus6dFU/v7+2T+05wDZfL1hJmavXldxLn5GubOR+PF?=
 =?us-ascii?Q?G77S27DaCbKVUCobb92WvdmFtAfNziWVxF+1nni2DJOmZaPnyhCmBKeYRJzw?=
 =?us-ascii?Q?DlAUt4z7K2yUJgjJzLX9g0IFptCZDIeckMg6vSOdYEUlCKG++6jjKTY5WvBQ?=
 =?us-ascii?Q?SaUxBb1KAwPHKWW4jznu/wfFbGtB1ebnm8qkE3iPXe/TiRa27cv7zfF2H0ss?=
 =?us-ascii?Q?8NswFY1vQRy+u5m3+TrPWhq4ZGE+UvmGNHkWW6V39udmWfL74J52QO9aBrF+?=
 =?us-ascii?Q?z1ln3DLiyNtKpXQSXTWTx27/5DlFXJGLQ8sDZMJTnKfnxFvX0Hvd4sBN/g4R?=
 =?us-ascii?Q?M2h5FlhxsB12fQDNRn03aycWlzPVjWpDZnXV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pEb/zWNcA0/MdUiZd7OojsGGkWCagZj2dJn/CaJbf3BmqIxWJZ/0YlTA+GSf?=
 =?us-ascii?Q?srcPoyrwo6NM2p1oLEKvS78752AP2f4C03j2uYQEvduUl3Xg+kumAM+fp07i?=
 =?us-ascii?Q?nmEYuCDQs0+UWWL0eecDMjf3xG9jjZ11uoMyH2+VswUvfbwHR3RwoOErvJaM?=
 =?us-ascii?Q?fBOyNrOuynnWyoNET7uWP+nrVkiyJxF+SSGru7fUEVH4bzOOVi0dwcFlmm2C?=
 =?us-ascii?Q?3QcnGNMrWV7EznL+98brk/yv6KCZavn+pvp8BEXF0zvOKqxy3kGCF25S6MVo?=
 =?us-ascii?Q?4cDJ8I60IGGAS1/7NJSe505KOKgNDmxMF89bW42PWdqDl9eeHB04UpW/uo34?=
 =?us-ascii?Q?qQ49ml9VxYt40oWRlSqnUCsCHrEMmgyoSABNg/53S/4E7TpW8Axsz4yBeo5G?=
 =?us-ascii?Q?RNAiT7lzr7sW22pNDeVvlclS7aNG3TVhnq2ReP16Bsv28CfouBKGXdbSEnYg?=
 =?us-ascii?Q?5Iee23SjlqO9r1ezm+EgCtfd+FTnaxnyISRufyHDBFpkQYqHA/vm3EqAZ5gm?=
 =?us-ascii?Q?J099l8Gw9087vbFFuW06Tlmttyt4qnO1a5LU/KsmwZT1FVN6ndPCpTxDT1xe?=
 =?us-ascii?Q?Q4o/dRSX6dVDdcA95y4kuSk9+ZK2Dy1BLiljtJqCoqFL9IOPdB4KBnUkrfpl?=
 =?us-ascii?Q?8B1SArv51oXLgcOrgphgjNC+ER/oGk8ld0YYagYl2zzwptfUPfKhbHGs0xmS?=
 =?us-ascii?Q?vOBEg1xpbolcZFdfCwIFLXve2PTa/4O/4+B2LpBDp1kb65LrlL0FUkb1KjyC?=
 =?us-ascii?Q?PV2oIRxtwXIQpX8FujvY7VULFOOpVTOOXGUsNMdaTS2DFIW8i/g8fHhyCAVK?=
 =?us-ascii?Q?GttKQPo9t1HOZq9EHJ0OQIBsjJH2r/9Eu1nSMAjJAtk+tANVKxdfR7kpGVr/?=
 =?us-ascii?Q?jQuHZAs6Kts5GDYuCGqkP6B1WfG+x1ruZFpVbhXl87TADtmTwsxOhEaI6rmF?=
 =?us-ascii?Q?7X/hKxGMrMV2Y0BGXFlnqpCc19qXohigoFzRf8NcDS4fuCcX0VD+hPdKj/zZ?=
 =?us-ascii?Q?omTp8Yjvt6Zs3HZ1qYqTK00vPME37whsjV758f8u+I9TorhHe1TSHygrKyQQ?=
 =?us-ascii?Q?bV22pNfpZWGQkb8YU5s8yDPKJiHy6SUWTgqYMmyBDOL+KXYArPXow1t6fY/z?=
 =?us-ascii?Q?7CQDSYD/hw0QaOpFms1w06hOCIcKNIOYmidb2gdrDlxAscY9WwVmnP0rWqhR?=
 =?us-ascii?Q?tXy7nN/H494orbJFdjt3baGW7KgohMQVFUt8WnJH3Ete00YK5UxPuT6wKwHw?=
 =?us-ascii?Q?QDsVCyHPpm7mEWKVSTrjAvwk0FbJWfBSHfihKo8KR7p3ipJZ3GpfrHK0fCKY?=
 =?us-ascii?Q?CostyD/mhehzu2tOXAWh5uuDn4x4RXeLPUZO5OJi8LZMi5wh3cg0krNTKjO7?=
 =?us-ascii?Q?cgt/QxU2HmOOKkepcmeQzsLVGDu3cwgCkx9uPkMZhI0vVrRWjVtE/52Qma45?=
 =?us-ascii?Q?KSK+HV0j/lHbu8oEerrJwbGrIdqh40KeDR7ekzqEk0YsTwnMi7gwuqA9o9Jx?=
 =?us-ascii?Q?HPbKUxVS4j9yq/jt1F7QT4PfAlEsG/loy2cphQnISl2qa5Qt2vULLYMr8O1G?=
 =?us-ascii?Q?3Uz1QjEik6llAxYRJV855GDoExJpMqJuRfI8kofk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1390005-2eb2-44e8-6d52-08de2659ea96
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:21:16.2712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W2sbCuVfBx8ZSLD/+OeWEjVwdpPX4Pxd/RU5BNI7IqkvLco+vt61O9bnq5ezbkEM0CNJGATXANqbmWArEu1TNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5247
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

> Subject: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
>=20
> Add .update_active_dpll function pointer to support dpll framework. Reuse=
 ICL
> function pointer.
>=20
> v2: Add check for !HAS_LT_PHY (Suraj)

I did not comment asking for this change also brings some questions in my m=
ind here

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 3 +++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  2 files changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 002ccd47856d..6b43d326e50c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3671,6 +3671,9 @@ void intel_ddi_update_active_dpll(struct
> intel_atomic_state *state,
>  	if (DISPLAY_VER(display) >=3D 14 || !intel_encoder_is_tc(encoder))

So this check here will never let you call dpll_mgr->update_active_dpll hoo=
k
So do you not what to remove it.
If the answer is you want to keep this check then you do not need (!HAS_LT_=
PHY)
If the answer is you need to get this removed only then does it make sense =
to have this check
And the check should be return if (HAS_LT_PHY())

Regards,
Suraj Kandpal

>  		return;
>=20
> +	if (!HAS_LT_PHY(display))
> +		return;
> +
>  	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
>=20
> intel_crtc_joined_pipe_mask(crtc_state))
>  		intel_dpll_update_active(state, pipe_crtc, encoder); diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index c45f18201ee8..e6dd6f1123d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4449,6 +4449,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D =
{
>  	.compute_dplls =3D mtl_compute_dplls,
>  	.get_dplls =3D mtl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
> +	.update_active_dpll =3D icl_update_active_dpll,
>  };
>=20
>  /**
> --
> 2.34.1

