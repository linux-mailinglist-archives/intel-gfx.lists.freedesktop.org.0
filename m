Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C807EA1B623
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9025810E95C;
	Fri, 24 Jan 2025 12:35:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iFFwwXIN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C66B10E95C;
 Fri, 24 Jan 2025 12:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737722120; x=1769258120;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Sorzcc/XzwynbcakY23kYV+88dA5JqqjYXm0tftJEEg=;
 b=iFFwwXINdZ7jsZ1BsqmHYhNkmJRgyWhydDG+wSvGSVIebKrTYinFYdZ8
 Gla2ue733Ijdu7BQAab7PCuYh3nzxEZySsQflwGNPGCe9a/MiR0JpZJa4
 gg+xa7Di3y8N8Rk3SXxmQTq8ePTITOuAftPu8E1zqavnuM8AToEXY5KXb
 2BK0qE/lPY0s4EhtqiCDy5b+uTrYP7NULnaHdqHwnR2cAl1JfeYB3i/Zt
 NAq8E2P40zX5A6PDYG4Ecgpllve8Pm0GATE6e5f2etppCBkgP50P7a4UU
 6AlsE6S9vZGNVbTlVzfuMTbvgT0sDGw0vjPgfH/7X7/5GbDeVE5xWOalw g==;
X-CSE-ConnectionGUID: 9qI6oG3PTEed4RZfWrY0zA==
X-CSE-MsgGUID: DrxhBe+zRhmTg2CGK5jjMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38419322"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38419322"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 04:35:20 -0800
X-CSE-ConnectionGUID: lv/kJ8StSuaeP5N7Rj68WQ==
X-CSE-MsgGUID: dCRyp9sBR1W7WM8AVTt1Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108657836"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 04:35:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 04:35:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 04:35:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 04:35:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bRDQvSty4gf1xjfcgtYk4kt7VgOOjc1zuGfVWUxqpka5QUae/PEHvSNXzkNGRJ7PtN2sANgy+I4bVLi9Jb5fHp5hifaDyRHSaMe34rurHlnI1yOoclo7q1fS37pRk6wY9jqPfPg27gQTR0xFZpGTh8H417pq1rKhLVe9MNcuUACLJDEs+4rB2fQ9nTKX8I0ef1kqEKcxpY+vix8VUe2KLFKnOJQje5ET6srpj88O64vJBM73aNFwjUdGfkXCGu4nkwQcEoDH7mQw3gA8BBmJaBvfjG7WbVCJ2vmiNpEa03SmwYDHp9nuRANVmxUFbDeJwnUikBRCjEfj9IkYm4tNjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sorzcc/XzwynbcakY23kYV+88dA5JqqjYXm0tftJEEg=;
 b=DodkZl/vuva4el6SZslWydQzZonehov6igphNTuHq7bS8JOanS+0ZjOzmcshXVwucAdo0pLd9PZo3NLUv5bieAhTdSgUciInIByZvHd2Tap0oL9Hn0+uQBBznL8YQ4NFGMTyMZTsbUGdKAt5iQEW0j5ahpRN6C/eW0YjDcFSvHjo+j21a2O4xzC0u1Ztgf6TxClXfsGUU/L3hXFZiGmgxY3Imgo0Pqf+zAAdujizij31Kd9a/e+pViOo/unQ/vfQNvrkEsKDZS0vnUwtUIfSPR42P76l4iFRmeoTDeM3IIZyvwpI5bPXSz3n89oCt8BCeBxFcdOoyqvNFmluPbpizw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.19; Fri, 24 Jan 2025 12:35:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 12:35:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Topic: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Index: AQHbbk632Su34OdA6UueN9SkZTlGELMl0JwAgAAEdACAAAIJgIAABFYAgAAAygA=
Date: Fri, 24 Jan 2025 12:35:17 +0000
Message-ID: <3d7bc1acd99ed0dc7373dc2d9bab1ccc20a7dca3.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-10-jouni.hogander@intel.com>
 <Z5N_RgaVKLgHAeh2@intel.com>
 <f11a7d44d79533b0f1469277b2225b3bf1878825.camel@intel.com>
 <fc528489a1e37dd9f853aa63bb93fd3fdfee0be2.camel@intel.com>
 <Z5OIWlp_KyxOJu6H@intel.com>
In-Reply-To: <Z5OIWlp_KyxOJu6H@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4746:EE_
x-ms-office365-filtering-correlation-id: 00cee783-a72c-4bd6-429c-08dd3c738f2a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZEZYdTR0MENkOXdVNlBaNHVacE44WTN2Vndqckxzb0tVN3pBRGJGZmV6K3FO?=
 =?utf-8?B?Y2h6Ri9jT3RoQWdETUpra1hoUkVOalQ2b094QU9wSkZtSjh1NGh0L0d1dnNl?=
 =?utf-8?B?VnpGaE5MZk05RUlkejJVMUFtYWJYS1piaTJweEFuN1FCZjBLcWJvM2o5UUlp?=
 =?utf-8?B?eHR2b1MrbkFrRG1mWGpXK2swUG93WktIZnlLWk1PZ0JKZU81R1pwNml6TUpB?=
 =?utf-8?B?T3VOQTF4NmVybHluWUlVdzQ4L1NhQTVqdmRheUswbk9nMjRNaUduWEZtRlJj?=
 =?utf-8?B?MjRNOTgzQXJlek9CbTd3QUFJZ3R5TTI4YS9UYm5DUmgxemlPNS8rNDhVOE8v?=
 =?utf-8?B?SEZNRDczS2FRV20wYU80ZzhpdUZjZWM0NFQxdHdBZGJ1aUd1aC9vUFhSdi9X?=
 =?utf-8?B?ZktzMjhoU1pLUjQvM2FBY1N2R28vNEVhbndQeHl3M1BBLzV0RmtEeTZTVmF5?=
 =?utf-8?B?YnpjQjZ3SzFyenRNSEovVElGUlVuL3BWVE5TZGlPY21QOTNUVmZzNGgwcEZI?=
 =?utf-8?B?Q3liVmQ1TWUwV3E5YXR0YlpPNUlxOEVXNXdVbXVJRHlhNDVxY1Y5d3Bka011?=
 =?utf-8?B?RkY3OXFGWkFxVEdxb3h6N1Ixb3g1cVZrYjg5ckZ3aTJKcmdFemM4RncrZVFQ?=
 =?utf-8?B?TUNETkgxZjlJK1d4UEpUeW1WQkJiRXo2T2h0dnZwUHF1Y3NRZGpTbk9jeSsw?=
 =?utf-8?B?dUdZK2s4RUpFWkl3V3ZjUGdqSTdDUzNwNHVZSXpjRG9WTHhoQWlISm41N0tB?=
 =?utf-8?B?Z2pYbUhQd1o1UXNTektVR0tpbi9DL0Rtd0FKYWJPdUNHdGF5QlZ0QkhkQUl2?=
 =?utf-8?B?b0VDMW5FMWxrUXFxZll3ZnBRNEx6dVpQNVlxeVI5Mm5lTHRDUjFDSVVGUmVJ?=
 =?utf-8?B?SG9GTjVMQytmcGhOSERMYlhLcms5QllYaXRweEllZE41VHdHTkd0UzY3MlVI?=
 =?utf-8?B?ZjNyYjlIMVI4QVpYRGdoYnZkZXA0ZjFyYkZqdUc2VDhOT2hHd3ZZU2tpT2ly?=
 =?utf-8?B?QWRJRVlmRzMrdi9uT1gzVnVOM0ZxQVByaDltS0VWRHhEOW44SVFQNHVrNmFF?=
 =?utf-8?B?NjZ0NkY4aFkyb1EycWV3M3BSTU5ZbFBMelZGeXBwZUo0MWMxVEZaQncxQ29F?=
 =?utf-8?B?ZGlCeDVneHdqR0xUZVBUTDErZDZzVWk2eE9RcGc1MURCN0hnOVlkU0FvL0ps?=
 =?utf-8?B?WDBMaHVQSklGdEhtTVJ6RmpiL04zVkt6R1Z5dHk3b0s1SW52Y1hubmFIQkVG?=
 =?utf-8?B?RTFFM2JEaUZ2dEYxSFYwTFhoSnlIa0JZTGJVbG9oMnFxVHo2NXNNU21UeDln?=
 =?utf-8?B?WEx0TVI3QVRwSUhGcGwxZC9SWDRNV1VmcWpjUVVBSEVuMGdUZDJib1ZaakRT?=
 =?utf-8?B?Y1FUcmlUVXBFa3l3alF4eXpRSUxJSCszdnVHRmZ1MklSTVRVU09leXpMSmVW?=
 =?utf-8?B?dUcrOU9QdFdZS0FuaHlpMTc0aW1YVDl3cnNUR0w4THlFMVI0QXkwQ0c2S2JO?=
 =?utf-8?B?L3c0bEsxaWpIVXNDTTl2VDFEdU1nZElPdkY1RnBWM2hYdzU4eUFVbHVqL3pW?=
 =?utf-8?B?Q1IwcE1Oc0Qyckw1bzdVMk1yNlJaNmt3Qlo1Q20wY1Y2WTF5b0k3cHI2Ylpm?=
 =?utf-8?B?dE9JN1YwWThvK2txemZIcnEzeWg1UWp1YTc5bmw1dnM2L2JvT1dWd1oydWps?=
 =?utf-8?B?TmYra1dpK3hZL2srNlB0V0VHMURDMzFzRVR6SUJadUo0dG9QWWtVemU4Ujk2?=
 =?utf-8?B?V2h3TzBSN24rRFVkam55WTNmaHBhRldLd1RSTXR3NExYR01XY2xHTzRnd0gz?=
 =?utf-8?B?cGRTRTExcXVLb0pCR2w3bVB3TllueG1WWGF2QzdaSENMVXpsUFEyOXBsMXFz?=
 =?utf-8?B?MDRQeVd5QXg1ZVk4bDJXcDFMUENLWTZ1ZU1iTC83aGpQbklhWVh5OURrd2pi?=
 =?utf-8?Q?59ywi9pHHlW+I6hJZEvePkz4N7ftgZyT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXkxSG1kM1hBU0JjekNPNzJMZUx4SEdZeDVQd21XcWV6OHpnU3R3NDcvVVRZ?=
 =?utf-8?B?Sm5XdWxFYVd4MS9HeWNEZGJhN0FKY0tFRkVpa1RkTVlxTDZwSTVzNVlHZ2FF?=
 =?utf-8?B?VldHM2M1YnhweWczQS9CUytkd1ZDYUIvWnFsV2FCVWRVZTZPVTNKTCtJV0pP?=
 =?utf-8?B?RUxDTEQxdkRDZG9xalFscENEQzljeHRtWUdqUzByT3VxVmdsUk8xTkJ1OGlh?=
 =?utf-8?B?TDhyRm5hWDhNRFJpL0lqcmc4ZTd6SVUyRlF1SGtYdkk0Ri91UTFUSnM0MFFV?=
 =?utf-8?B?c1M4Q1RpbVlxK1BLZmhhRi8vZmNSUUN2Ymo0N2VlaG5lZGpqZm1HQ1ZrVzdR?=
 =?utf-8?B?VkNERlFOdmJONjNESjZSVnNDWHhza0hzbHliNWRUdXNJblh6RGxueEgvTTNU?=
 =?utf-8?B?Nm9VSGJKT2VQbHlROVJpR205clFMeHkrL0IvTDEzM1VXc0hNWHJjU2tCRnFL?=
 =?utf-8?B?blAxRlFUWFZ3WlBYYTZvUnZIUitnMFpDNEMybEpJUm5EZ1dXTWNvSmxIY2RU?=
 =?utf-8?B?QUZ2WVEyUTc1QjR1Y0RoYVh0OUdUME0vY2hDMkNZVHVuZlBUOTBublRkdnJj?=
 =?utf-8?B?L08zcEVlZERqaHBWME1RdnNYZWpISTl4a3hUY0pPWjBiUWZCcnQwYmFWOWdM?=
 =?utf-8?B?cmhBV3pOUGRWY0hNRlE4QXdxeGlhQjdta1IzRmpvQjFON3AxYWNaTEJXZkRU?=
 =?utf-8?B?bHZYNDVuTE1Zb3ZkeFU2S0FSUkdjVDcyd0FyLzB6TWg5OHVTSGZXV0JJUTFI?=
 =?utf-8?B?dHlaeTlraFIvRGt4QUdBMU1iQnFVMGVlempNOHg3MkVJZ3diaGRUNG1OU2Ju?=
 =?utf-8?B?a2J2Tk8rV0lEam84UVluUk5iS1NLdGg3eUJ0Q0J0UTNycGwyYkZ2dTVMZEN3?=
 =?utf-8?B?UU5taWVFKzU4WjNXMXV1VGFGd3l0VnExdkY3RGFqeDlHYzMvWXkrYnBFamFM?=
 =?utf-8?B?bUxzSklsbHF6WFRxMGJaNmhFY2hveFVOeDJ3amZGYitxclA5MEk3RW1TNjRs?=
 =?utf-8?B?aW1ibk84YktqQ3lRUnRoR3FxM0YvMU9HekgvdXRqVENTeGZ4UzQ1aW16NExh?=
 =?utf-8?B?djE2b3RZalVTeTEva2ljeDBTUDhFMG1IK01wTDcwRFJDblhnRjVBQVVnSVFy?=
 =?utf-8?B?VE82K0xjT3hkY0FWaEdxVlJ0N2tPZ1dLSnM5OUFzeW5TNG41aU5aU3I5Mk53?=
 =?utf-8?B?TDBkcWZjOVJ4ajF1SC9JbDY1MWQzSmNLUngzT0ROcUN3M29QM0JlR01ndXJT?=
 =?utf-8?B?akNFNlRkUFdUeDFzemkzaVo4M09tdnNyMFFNMkZrNzl3NlZ3QWtHOTRJeEJY?=
 =?utf-8?B?akwraU9vY09vVmcrdlpaaGZXSlZtazFnTThjVXh1VUVENldNQURoZlkwM0hT?=
 =?utf-8?B?NVhReFNyY0lYcFFnMHp2dkQyMDUyWElaVGNERk0vWDdUUUtWQ01iY2VySUJB?=
 =?utf-8?B?OVRLR1dGV2xiMTV6Uk13M2tXUEZoa081Z2h2cWFRNUVLcE1IQ3MzT1pZWEFy?=
 =?utf-8?B?WWxGY0lmMS9vK29kSTZxQU5xcHk0L1E1OWdYZUJNdW9QazFRVWFScTJEK1Jq?=
 =?utf-8?B?MXdKd05JRXpPcXBxejl6T0NFVkh2ck5TRC9UdjRLZUVRbVZEREx2N1RsTkE1?=
 =?utf-8?B?dVNBSnhlbmdQcVpVNW5sYUo0Z2x6Ky9IaHNVcGhIMFhXemtEUlcxRUZPU1BK?=
 =?utf-8?B?dFBSbVVscUR5RXBWMVNjeEl0Z2c3VWpyRy9GUUhvaHhocTBOVytiWlhOZ1h0?=
 =?utf-8?B?aHRUWEpwSnhzRElTSGZOSVMvd0wvYnplSkZPdlVYaXg0cmdPQ3VjcytUaktG?=
 =?utf-8?B?MXJZcUdtQzdmUndyZ2Rwekt2NTVyQjBjU0hCb01Pcml3dU41dzBRbVdPR1JW?=
 =?utf-8?B?clFLRTkzaXorbytZUDFkUlg4RHBVY1V2SWlxS1FVQyt3ckpscnFlRlB1NFZM?=
 =?utf-8?B?d21CSUVmdG96LytkdTcvdTRHREk0SFlka2hvWXdESGVGVW5wa2tJMnZ2SzFV?=
 =?utf-8?B?Z29YMnRydGFVK1d2UUorU2xNaWg5SlQ3MEJlOHgzWFYxWm9RTUdYb0pQdUc2?=
 =?utf-8?B?WEk2ZVBGK0xxQmM3UGwxS2xEMEJOTFh0cjZDMDJOZ1k4MTgrcWZCYURUQzhv?=
 =?utf-8?B?bFJYeXJhajBlMDVQdTd5LzB6bmdQQ1EzSG0xTWQ0UTlxQ0NEUU1qalJnWktE?=
 =?utf-8?B?VCtJaEVHcXkyR3VLUDRHeVY5ZnpuczFGZUxSNk5yWVBWZldPMzhRdzdqUkp1?=
 =?utf-8?B?TmwvY2xsOVhSWXNnaVZDRWxwckpBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B606C39B957AFB428F9861A1BF53D1F3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00cee783-a72c-4bd6-429c-08dd3c738f2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 12:35:17.6827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TtPDOQaOPZcIHmd6Of1Cr2oJ4kbWTu73oDV+Jy+oCnSeOBAGcwzCin3XxrH5BGBGsI+Gbfq5LERKCCyaSD2EZD0II+WUfR1JzgAdquBSdIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDE0OjMyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjE2OjU2UE0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBGcmksIDIwMjUtMDEtMjQgYXQgMTQ6MDkgKzAyMDAsIEhvZ2Fu
ZGVyLCBKb3VuaSB3cm90ZToNCj4gPiA+IE9uIEZyaSwgMjAyNS0wMS0yNCBhdCAxMzo1MyArMDIw
MCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiBPbiBGcmksIEphbiAyNCwgMjAyNSBh
dCAxMjo1NjoyMFBNICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+ID4gPiA+ID4gQ2hh
bmdpbmcgUFNSIG1vZGUgdXNpbmcgRFNCIGlzIG5vdCBpbXBsZW1lbnRlZC4gRG8gbm90IHVzZQ0K
PiA+ID4gPiA+IERTQg0KPiA+ID4gPiA+IHdoZW4NCj4gPiA+ID4gPiBQU1INCj4gPiA+ID4gPiBt
b2RlIGlzIGNoYW5naW5nLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IFJldmll
d2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiA+ID4g
PiAtLS0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgMyArKy0NCj4gPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gaW5k
ZXggM2FjMWNjOWFjMDhhOC4uYTE4OWFhNDM3ZDk3MiAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+
ID4gQEAgLTc2ODIsNyArNzY4Miw4IEBAIHN0YXRpYyB2b2lkDQo+ID4gPiA+ID4gaW50ZWxfYXRv
bWljX2RzYl9maW5pc2goc3RydWN0DQo+ID4gPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gPiA+ID4gPiDCoAkJIW5ld19jcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX3Vz
ZXJzDQo+ID4gPiA+ID4gJiYNCj4gPiA+ID4gPiDCoAkJIW9sZF9jcnRjX3N0YXRlLT5zY2FsZXJf
c3RhdGUuc2NhbGVyX3VzZXJzDQo+ID4gPiA+ID4gJiYNCj4gPiA+ID4gPiDCoAkJIWludGVsX2Ny
dGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgJiYNCj4gPiA+ID4gPiAtCQkhaW50ZWxf
Y3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKTsNCj4gPiA+ID4gPiArCQkhaW50ZWxf
Y3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRlKSAmJg0KPiA+ID4gPiA+ICsJCSFpbnRl
bF9wc3JfaXNfcHNyX21vZGVfY2hhbmdpbmcob2xkX2NydGNfc3RhDQo+ID4gPiA+ID4gdGUsDQo+
ID4gPiA+ID4gbmV3X2NydGNfc3RhdGUpOw0KPiA+ID4gPiANCj4gPiA+ID4gSG1tLiBEb2Vzbid0
IGFsbCB0aGF0IGltcGx5IGEgZmFzdHNldCBhbnl3YXkNCj4gPiA+IA0KPiA+ID4gUFNSL1BSIGRv
ZXNuJ3QgaW1wbHkgZmFzdHNldC4NCj4gDQo+IFlvdSBzZWVtIHRvIGJlIGNoZWNraW5nIGhhc19w
c3IsIGhhc19zZWxfdXBkYXRlLCBoYXNfcGFuZWxfcmVwbGF5LA0KPiBhbmQgZW5hYmxlX3BzcjJf
c3VfcmVnaW9uX2V0LCBhbmQgYWxsIG9mIHRob3NlIHNlZW0gdG8gY29tZSBmcm9tIA0KPiBmcm9t
IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZygpIHdoaWNoIGlzIG9ubHkgY2FsbGVkIGZyb20gdGhl
DQo+IG1vZGVzZXQgcGF0aC4gV2hpY2ggbWVhbnMgaXQncyBlaXRoZXIgZ29pbmcgdG8gZW5kIHVw
IGFzIGEgZnVsbA0KPiBtb2Rlc2V0IG9yIGZhc3RzZXQuDQoNCk9rLCBiYXNlZCBvbiB0aGlzIEkg
d2lsbCBkcm9wIHBhdGNoZXMgOCBhbmQgOS4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
IA0KPiA+ID4gDQo+ID4gPiBBdCB0aGUgdGltZSBvZiBlbmFibGluZyBQU1IvUFIgY3J0Y19zdGF0
ZS0+aGFzX3BzciBpcyB0cnVlIGF0DQo+ID4gPiB0aGlzDQo+ID4gPiBwb2ludCwgYnV0IFBTUiBp
cyBub3QgeWV0IGVuYWJsZWQuIEl0IGdldHMgZW5hYmxlZCBvbmx5IGluIA0KPiA+ID4gcHJlX3Bs
YW5lX3VwZGF0ZS4gQWxzbyBpbiBoc3dfYWN0aXZhdGVfcHNyMiBhbmQNCj4gPiA+IGRnMl9wYW5l
bF9yZXBsYXlfYWN0aXZhdGUgd2UgYXJlIHdyaXRpbmcgUFNSMl9NQU5fVFJLX0NUTC4NCj4gPiAN
Cj4gPiBJIHNhaWQgaXQgd3JvbmcgaGVyZTogcG9zdF9wbGFuZV91cGRhdGUgSSBtZWFuIG9mIGNv
dXJzZS4NCj4gDQo+IFdlIGRvbid0IHJlYWxseSBjYXJlIHdoZXRoZXIgUFNSIGlzIGFjdHVhbGx5
IGFjdGl2ZSBvciBub3QuDQo+IEFsbCB3ZSBjYXJlIGFib3V0IGlzIHdoZXRoZXIgaXQgbWlnaHQg
YmUgYWN0aXZlLiBPciBJIHN1cHBvc2UNCj4gdGVjaG5pY2FsbHkgd2Ugd291bGRuJ3QgZXZlbiBo
YXZlIHRvIGNhcmUgYWJvdXQgdGhhdCBpZiB3ZSBqdXN0DQo+IGFsd2F5cyBibGFzdGVkIGluIHRo
ZSBleHRyYSBEU0IgY29tbWFuZHMsIGJ1dCBzaW5jZSBpdCdzIGVhc3kgdG8NCj4gYXZvaWQgdGhl
IGV4dHJhIG92ZXJoZWFkIHdoZW4gUFNSIGlzIG5vdCBldmVuIHBvc3NpYmxlIHRoZW4gSQ0KPiBz
dXBwb3NlIGl0IG1pZ2h0IGJlIHdvcnRod2lsZSB0byBjaGVjayBmb3IgdGhhdC4NCj4gDQoNCg==
