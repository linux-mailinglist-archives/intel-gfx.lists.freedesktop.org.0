Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DF6A56068
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 06:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760B510EADD;
	Fri,  7 Mar 2025 05:52:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUwzZ4An";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE20010EADD
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 05:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741326720; x=1772862720;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jWO7PjJDMrvlzFY6qPw92W+TJ8M2bxgMcBKcPPOQbws=;
 b=kUwzZ4An2c3CAPRy/1363wbUD6JVzqb+JAhymP4+inTjHDQXMGpkfmDU
 BBPwu/XMdTND6AH6aVpTCHEa4AOb6ANCz16I+SqkoUaUMWdvKyzaYvZaN
 AJJYImVfGHqb4a5Rl3W8J3cW0OqDqLtXXYEy7h/T+kqpVIFjqUnUJQJ9I
 4VhgtsryUwbdxLC1w1VZvAcf1+8BuynyZ7mH2yz5kJ7Cl3Efnl639ymu6
 +xr9VwiNdJjnwNaKtmHtv3wGK9SJRwaJ0gko0Yij5BraQRTva+4k4DrFq
 OyWY0Rm6ysT2ZV3SQAM3YXA2ryVkvRimkd9TgteHusNOi22gsVAg2K6v8 g==;
X-CSE-ConnectionGUID: esSM6aa+SEWV3lt20frLIA==
X-CSE-MsgGUID: wK8pS0I5TE24jzrkB7sC1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53353945"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="53353945"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 21:51:59 -0800
X-CSE-ConnectionGUID: rH43iiFiS0KyA6zLaBeTQQ==
X-CSE-MsgGUID: FAWsCCRGRe6cs/SDMcBqjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120151712"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 21:51:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 6 Mar 2025 21:51:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 6 Mar 2025 21:51:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 21:51:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aiLDDVmEDuwEZTW1vVGd6CW9tqbZ5zr2pe1BVb48eST+novFPMzZQTuYAnj6PVDiZPOaUI684R7zbg6jXb4WtuB1Vo7PbgYXoRhPY9uo4Ib+iCuNipYEsB5n6OW+ALQyDc4yS9bALQ734hQ0JiVaugxo5GCDG6+RN1TZhXPJzl7kVnPBJq+aTpF9txXcFUumxWQwes1Gl0H4Y6Y1D0/L097PAtqNG9y9wgygXGH4hBluYg4OXrJVQopkqw1HURTG3DMnHZZ+6G497MqYm5mfwntCPithJ9cwdduYtz8FJWY+5LEfXdTUK7WdHdQdnN9Jp8oSV6b6aUxIFDJzHWUIbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jWO7PjJDMrvlzFY6qPw92W+TJ8M2bxgMcBKcPPOQbws=;
 b=Fw0LwgMDZEne3j0/fMdvIWPHCW0mYDDJRDSHBtp3Rm0rgR0RILnWMpRS6CQp/8slZwsT/6F38geGBR+8pysaQ3RPt1sLz9AHzQxoKse0vdH87vdJQvPAupCMbUPgdkLoDN+PaLiEgK8Xodiu3Wwc2xL9Ai/triA4Bmbd0nDxNvQbsF+63xBUZfPb3i7eXsmsUgMmE9Xho0r9KNjQvAtrPR8achOw6FJ2Lu7AQ2Vv3pcDVSg0/9lSgJkE/ZiNp2Ft9cEs+VufVKDovlaewom9SeJD8ZvpKeJbINgKW2mRAaYfwZVHu2BwdaKHocuhqHP9rJkfr/tudcRQnoOPaJ7RAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB6372.namprd11.prod.outlook.com (2603:10b6:208:3ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 05:51:55 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 05:51:55 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915: Program CURSOR_PROGRAM and COEFF_POLARITY
 for icl+ combo PHYs
Thread-Topic: [PATCH 2/2] drm/i915: Program CURSOR_PROGRAM and COEFF_POLARITY
 for icl+ combo PHYs
Thread-Index: AQHbjDl1yYWLy9QMI0iWNI8Pz5QDELNnMR2A
Date: Fri, 7 Mar 2025 05:51:54 +0000
Message-ID: <SJ1PR11MB6129A4BB937758C856CD3195B9D52@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
 <20250303123952.5669-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250303123952.5669-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB6372:EE_
x-ms-office365-filtering-correlation-id: 9bece6a8-5f51-43ca-844f-08dd5d3c2a8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Q2hEakhVOUJPZHNTaUxmRjZ5cDQ1bmtpbGl6dlRINXBIeTlPRlBIZUMrMEdB?=
 =?utf-8?B?OUluTkZtOUNEdkczajQwOWlUQjV0cGFGNnBNZ3ZGeHF2Z1krdHFKVUtuY1hU?=
 =?utf-8?B?N1VyeTkyWUFGdmxBMnlneUtJSTVFL2RvK3RVbDJUMWQrM0c2N3dYWklKMFhr?=
 =?utf-8?B?M09zSkJZNG9Ob2NMNzNIUzhYdlZsSGwzb1QvMWpqYTF3bERSRG1oU2Y4MmV5?=
 =?utf-8?B?cGlQeThMMG0za2dMcnhvVGc4SVpYZmcvc0RycEQ2N3dzQzFJNXpEK0dwOVY2?=
 =?utf-8?B?TGN0aE93NnF2K0tNVlpWbXJOcFJ5THVoQXlOZVpWZlN1a1BnM1U5c1hXVmFo?=
 =?utf-8?B?NkRLbUtndlBqb3FabXNMVDQvbkhscUxEZ1ZMY1RVbnN1a2pleVF1aEFPMjU5?=
 =?utf-8?B?N0lVRUVJemEwMHBZWU0zMWVBYlF0M2JIZVZneEFLT1NvSHF3WGZUd0tDWE00?=
 =?utf-8?B?NFhtbWpmd1gxa3FMSTV4bnFFbS91cm5kRHZ3R0lvMkFHUUxvNi9neGhvcU9F?=
 =?utf-8?B?eHNMa0tER0hEK1BmYzZUakxjOU9kckFPUzJUVHVUeTJwYnBHQmNNRTNMaFBw?=
 =?utf-8?B?Y0lNb2lGTld6QkYyNE5OSWtyNHJrWHFVbjQzVFpEU0lZOUdKSW5ONXVoR0Rv?=
 =?utf-8?B?UXJCME85ak5sQ0drZGtCT3FhSUhLRlNuL2lXMnI5MHY1S1dnK0ZEY2RKdlhp?=
 =?utf-8?B?Z2QxZ2lyT3lGRG1yOTVvVUx1T1NSQmEwYjVBMndBWTk2aFRIVFRRb3Y2V0ky?=
 =?utf-8?B?M1p5U2xXTWxzWTZBeU9GSW5aRDdIR2ZnbFd4cFViRE0wYWlSK2J0UWMrNG5M?=
 =?utf-8?B?bnJPS3VENE85eVdDejIrZHkrTXNQVnBNaVdLTFVwSHRnZEdMVnBFNTFsRHFL?=
 =?utf-8?B?S2RJc29xd1JGTUVzelFXUWRRRG0yLzFScmhwbVlJUzVCcUgvRUNrV0ErQVRL?=
 =?utf-8?B?cGpKdUtPYmo0c1hqNXZSU3B1OVUrV2trOXIxdTRiQ0orU2hGUmZIblJCeTBq?=
 =?utf-8?B?WEZCR1NsUHJSaVI2OTRzbGVyU2Y0WTloc3RISzdBQmFqYWFqUXRRaTQ5MUV3?=
 =?utf-8?B?anJaZHpDZCtNOVlFbUtOeXdLbythendNMTNaWnErYXVwMysvdEEwTE8xNWdD?=
 =?utf-8?B?bjBPVWRmeEVqSFZTZWNDRUYvRFZGYTV6NGxQSnc1SVllV1lEVWdjdUJTVDBp?=
 =?utf-8?B?cEo2SzU3OGtqSm4reWhIMW5RQnJMQndEU292SnA5cU1LTWRKMWpraUYwL1RB?=
 =?utf-8?B?V2hXa1Q2ZC9TaWNVS3EzdDVnalF6aGF4ZDFpL0w3YzdFUlhYL3FDSmRTRGRu?=
 =?utf-8?B?eE5kMmJ5eGoxTjlqZldvVVdTcjRpNWtISHltMWtrVW5aeXh6cm9EdUpTWlUz?=
 =?utf-8?B?WW5INmFjckU2ZW0remhIaDVKbFlKbFF5WEFmTDRmS3NMWnF6WHZMNXdtdmt4?=
 =?utf-8?B?K0NUbSs4c2FQWkRwVXA1NmljcURFY0hEelNzR2hnSUhmTnpGMkxGYWI3cmU0?=
 =?utf-8?B?c1Q5TDYrMjFyVEtKSlNjRTFuMEJUYmI2cUM0TWluQkp0QThkKzB1Rk5JZ2hI?=
 =?utf-8?B?MGtFYjc4VTVTUVNGeHZGelVYWVRGYzlhcDJTa0lvVU8vY3VZT2RwSG1Qa2Jk?=
 =?utf-8?B?a3Z2aFFuU1duRnVKZEVGVy8yUVNZeFVrV3JiOVZnbDV5bTFhQ2U0ZVRsZjNH?=
 =?utf-8?B?NFlpZTcrRzNaUEV0SUtRRnhqN25LMUx1ZjBZcEErOUdWQ2Zma1IwbGxBaVJ2?=
 =?utf-8?B?NGd3eHF0aDZRWExWL2NMYUF5SU5mMGpVQ2d1YXFZQUx0WmxYc3ZBeWYrUUxz?=
 =?utf-8?B?ejJwUTcvUDhqTm91WUdwSExnKzRKTDF0a2IwUnNEMlNDbElwVXY5dEJhVGFM?=
 =?utf-8?B?aS8wcWowSk5SUStyYnp0U1VNTUp6K05paFhyZWp1ak05RnBqbW9rM3VraVZC?=
 =?utf-8?Q?z3Sn/7LnqsZM7Ycyl20MZhUOMs8avE+w?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ek1LMWtzb3VEOFBtMnJOVys0aDlOYWZGc3psR2hNMFdvUXpkelZBb0tGUC9R?=
 =?utf-8?B?T2c4UTlmL25GMGV4K2s2SjJ0SVZzZkJHUko1OC9aelRJdzlGU1JzNWtscVo2?=
 =?utf-8?B?VlluL0M3b0tUUnpINWVvaFFsdVgxRGFEbHZLQWh6TVo2N2dzNlpVSlVxWUtP?=
 =?utf-8?B?cFc4ZitGaHk0Uk9uQ2pUZzFrbDM5a3dwdUVHWWlmRjB3dVJGdkR6Tyt0dHRi?=
 =?utf-8?B?Rm9OeDJEZTJvSllLNEpaRkJVMitycUgraitNTHJ3eSs1NTJFeS8zbEk0THFH?=
 =?utf-8?B?ZHplTkpKbjNXRVd0d2UxVkRoMVFOQ25vZlA1dGhSNnlRVWQyZG9HTW1UWHNM?=
 =?utf-8?B?Z0h6TUh1bk5lRy82Vm1LSkFiajJzT3J5WElOVGtnMjZiZzdkb3Y5NW9JT1BR?=
 =?utf-8?B?MXA3NzEvejZldGJnM0lLbzNGV2xaS2hXYmxzYlFEL3RRcXlOUjZGZ2d2N1FZ?=
 =?utf-8?B?RS9ZTUIwU2ZWQXVvRkRkNy9hM2FSUElhWHdpT3loTEtLcXFFTkJtWVFWRHQ0?=
 =?utf-8?B?dXdESmdZY2Q5czlSVFgyR3FwMlQ0bEFUeXhWb1FTd0N3N0VDcFhNcS9MTTYz?=
 =?utf-8?B?eEhGdi85VytobnNOYXJKODhhUXBJYzNJRnBGUDJqTUJNeHQrV3RmU01KZWtI?=
 =?utf-8?B?MldLb0hEYWVvRTZxbTdjR1llbUxrZXExWXpOcmhwSHBGNHdYUVJGWEZ0dmZx?=
 =?utf-8?B?clFxYk5nSjZEMXBHTUtRdFM3M2hyL2Jsa3U2aVpGMElYRXdDa0paTnpUdHNs?=
 =?utf-8?B?bjhnRkg2cXBpK01pU1Z3WTVaMkRMNXRBcHM2WDNtTGU3L0NXaGgrRnIvWUFt?=
 =?utf-8?B?WlF6NFFzcy9FeFdnSllBc3VPeHF4Q29VL1hYMTlCazBPSWJuYVNGbUxGUW9P?=
 =?utf-8?B?a3V0bTRZZW0rSSsvcGNOSHl5Ukgza2MrdU9QVzJ4YXQ0Z0NpZjYyVHY1L2U4?=
 =?utf-8?B?L0pvOEh5aDM0a1ZjYlFQcE8xR0NlUU03ZUtnclJGdDFkQ0RCRFRja0owTEVE?=
 =?utf-8?B?K0RRUUUrWUQzd05ZT0VpemFRTXcweTBMYXEzZWU3YWNoSG1ScHVhN0pJMCtG?=
 =?utf-8?B?RGN0YWUyVit5SFNzanNmK2c3MGFxN0c1bmtvSlRTNlV4dzZITlA0RmZSWWph?=
 =?utf-8?B?MGROZUhSQkxwRmI0QVpwOWxlcUV3TDZ5cnNhajdPcEpUbllCRmZkN1VtTmhT?=
 =?utf-8?B?RDA3VGt0UjBCRUxYUTVOczZWbHFrRXpBVjgwaXpPUTB0V3lZZUNheXpWaGFs?=
 =?utf-8?B?b3phSHF3Q2w5NElod1B3UkZtbGZQcHkxNXFjcThZVmU0T1BMRjVhdk9TSFFk?=
 =?utf-8?B?UnpjaUI0NC8yM3ZXSFF2L2UranYwNGRMYUo1bFBJcDNONHVFckZ1d015Y0Yy?=
 =?utf-8?B?RStXaTR0RmxZb0VFK0RDQjZ4T3pKNzRaRUErMnNLSll5RG0zbStCV1paU1lJ?=
 =?utf-8?B?WFZnYkRDUXAxbWl3c1hrYUNZdzNXeWlsSG9IRWV0UGFWbVZ6cDRYUUYvQ0dv?=
 =?utf-8?B?WFRybXZuVXdidktBcU4weklzc3VGS2hWNTZkUi9rL2NyL3lOdkpOZU9mZW92?=
 =?utf-8?B?cHRpaURMYjNRM2c4Z2UrMGlpRld4ZUhzWUJZNStFalNweWhIODZUUkJyanVB?=
 =?utf-8?B?eE9OSDliUWhyaG1QTzFVcHBIbFpZajdXY3FhODFzWXU1Q2VnTGRPbHJaUTM3?=
 =?utf-8?B?azhVUi9WaUxpWWZpM1VFd1E4RXRaZVpFd3RsbjE5WnVCT2MxSTZmTjNWcXYy?=
 =?utf-8?B?TUxuVFpmNUYvQ3JWRUlqaUJKT0U2Qm1FNXlnUkJxTEdad3ZZdDhFeS95aWFH?=
 =?utf-8?B?TnZUcVZSSUlZRXRqdjg0TTNVRGJqT2hHTlNZRXNnSHpFVGtiR0pEUVQzRGJL?=
 =?utf-8?B?Y1dmWDlwTHNPQWd2ZmtMRlk3cW1nUzZqMzBVUkowK0dsbUpDNnQ2WktKZ0JE?=
 =?utf-8?B?Q0hmNGYzN09CemJReThXQzQvclJqR24zWkFTSjNmamprbDJaTlBCYjJpUDcr?=
 =?utf-8?B?ZGp2OVVCY2pSQng3TDdRS1VmTnFzL2xpeHluUGNKTWRMSWQxbkpYaTFNcENY?=
 =?utf-8?B?eGhWaG5FUFFMOGQ5SzRsdWtoUjRUSVBCU0tTa0NPRFpDZzY5K3NhQnd5WG41?=
 =?utf-8?B?VjQ3VkxtZjZ3c1BsM2RUNHNpbDNYc2dNWU82bEdQOWJtbG9BSWxPTkVDYm03?=
 =?utf-8?B?Rnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bece6a8-5f51-43ca-844f-08dd5d3c2a8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 05:51:54.9084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7mT43ScIdD8GfHTiMmN5odNG0OBMEvC1qR74o362yOBeUWocXxiReX4WsSM50LyqxZ0p9ZdtPaEcAC/6UILC/vKvJ4jocpu+srezw+y0RN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6372
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMywgMjAyNSA2OjEwIFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAyLzJdIGRy
bS9pOTE1OiBQcm9ncmFtIENVUlNPUl9QUk9HUkFNIGFuZA0KPiBDT0VGRl9QT0xBUklUWSBmb3Ig
aWNsKyBjb21ibyBQSFlzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQnNwZWMgYXNrcyB1cyB0byBjbGVhciB0aGUgQ1VS
U09SX1BST0dSQU0gYW5kIENPRUZGX1BPTEFSSVRZIGJpdHMgaW4NCj4gUE9SVF9UWF9EVzUgb24g
aWNsKyBjb21ibyBQSFlzLiBNYWtlIGl0IHNvLg0KPiANCg0KTWF5IGJlIGFkZCB0aGUgQnNwZWMg
aWRzIC0gMjEyNTcsICA0OTI5MSBidXQgb3RoZXJ3aXNlIExHVE0uDQoNCg0KUmV2aWV3ZWQtYnk6
IENoYWl0YW55YSBLdW1hciBCb3JhaCA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29tYm9fcGh5X3JlZ3MuaCB8IDIgKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgICAgICAgICAgICB8IDMgKystDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5X3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5X3JlZ3MuaA0KPiBpbmRleCAwOTY0ZTM5
MmQwMmMuLmVlNDFhY2RjY2Y0ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb21ib19waHlfcmVncy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5X3JlZ3MuaA0KPiBAQCAtMTMzLDYgKzEzMyw4IEBA
DQo+ICAjZGVmaW5lICAgVFhfVFJBSU5JTkdfRU4JCQlSRUdfQklUKDMxKQ0KPiAgI2RlZmluZSAg
IFRBUDJfRElTQUJMRQkJCQlSRUdfQklUKDMwKQ0KPiAgI2RlZmluZSAgIFRBUDNfRElTQUJMRQkJ
CQlSRUdfQklUKDI5KQ0KPiArI2RlZmluZSAgIENVUlNPUl9QUk9HUkFNCQkJUkVHX0JJVCgyNikN
Cj4gKyNkZWZpbmUgICBDT0VGRl9QT0xBUklUWQkJCVJFR19CSVQoMjUpDQo+ICAjZGVmaW5lICAg
U0NBTElOR19NT0RFX1NFTF9NQVNLCQkJUkVHX0dFTk1BU0soMjAsDQo+IDE4KQ0KPiAgI2RlZmlu
ZSAgIFNDQUxJTkdfTU9ERV9TRUwoeCkNCj4gCVJFR19GSUVMRF9QUkVQKFNDQUxJTkdfTU9ERV9T
RUxfTUFTSywgKHgpKQ0KPiAgI2RlZmluZSAgIFJURVJNX1NFTEVDVF9NQVNLCQkJUkVHX0dFTk1B
U0soNSwgMykNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IGluZGV4IDIwZmMyNThhNGQ2ZC4uMzA3NTU5ZDRlNDkyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTExOTMsNyArMTE5Myw4IEBAIHN0YXRp
YyB2b2lkIGljbF9kZGlfY29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0DQo+IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ICAJLyogU2V0IFBPUlRfVFhfRFc1ICovDQo+ICAJdmFsID0gaW50ZWxf
ZGVfcmVhZChkZXZfcHJpdiwgSUNMX1BPUlRfVFhfRFc1X0xOKDAsIHBoeSkpOw0KPiAgCXZhbCAm
PSB+KFNDQUxJTkdfTU9ERV9TRUxfTUFTSyB8IFJURVJNX1NFTEVDVF9NQVNLIHwNCj4gLQkJICBU
QVAyX0RJU0FCTEUgfCBUQVAzX0RJU0FCTEUpOw0KPiArCQkgQ09FRkZfUE9MQVJJVFkgfCBDVVJT
T1JfUFJPR1JBTSB8DQo+ICsJCSBUQVAyX0RJU0FCTEUgfCBUQVAzX0RJU0FCTEUpOw0KPiAgCXZh
bCB8PSBTQ0FMSU5HX01PREVfU0VMKDB4Mik7DQo+ICAJdmFsIHw9IFJURVJNX1NFTEVDVCgweDYp
Ow0KPiAgCXZhbCB8PSBUQVAzX0RJU0FCTEU7DQo+IC0tDQo+IDIuNDUuMw0KDQo=
