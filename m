Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE56A5BC5A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:33:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CB710E548;
	Tue, 11 Mar 2025 09:33:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYd/Ahk2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110F710E540
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 09:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741685608; x=1773221608;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=zbSZuDOlzIGdWt5hZyVHGWf9t0VRnYZxzt2tFL2qRkA=;
 b=hYd/Ahk249osen0LhuH0OWKUe4Bxf5UFEcYiWF8iryQIKNFZPVHIFY3Y
 y5cTbsrBpO1RlSOgR+51cBEP5QgkthbcXqEcEyXmnBr33Y6h1eX8cd+mO
 bJWtBb/FO+7z3+2g2LtciJX2d9e+5eUYEsVnosCjqbMzB1tQSMZCiPqgH
 flgyEdDk+dHJMGdqjUzjEILsURkQpvx74GynrHlLt9WEwfJp/fciY/P5m
 VnQeZORtDHJj7R5M0MMS38pN3uhwi1nuwLa39bT3G74ZYEMZvOXYXzgGp
 3aqvZb9qcnLXllJ16b0outDKsPnZ71fpHOFuvq4YFvrMLtKWFg4JxY89U A==;
X-CSE-ConnectionGUID: s8n6QwDuSb+uw/jCl1XyqQ==
X-CSE-MsgGUID: Ksge3CGbSLK8UM3+3b6mEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="68075618"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="68075618"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:33:28 -0700
X-CSE-ConnectionGUID: KGrtGjc9TWaBdwCQI8IhBw==
X-CSE-MsgGUID: CxjvIlrKQ0WHzcVK+95//A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125297692"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 02:33:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 02:33:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 02:33:27 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 02:33:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eTCgyJ9StR0koGqO9v6Yr1y1vjpAUgW5EH4vCFX6I3Ndd2JJfpBzZZkIpIcRYjUualJlkhiIvCg+CqSl9qEXgSlA7dj/TY0o+CaN20B9TnXR2rB7XLDoxi4NlExL8Gg4tE2N2vAmIZ/tzEUbohB9VWs599tFxhUmKZ88mA1YrwGF/lw4pqCUv4yKeT4vFMzExD9NxN7xTMnFO5tg5za7rYldlCiFNyXX022S3MwtNSU+KkOfEjnr4XUoV7TgowkSqVpOzk30E0EpYrPlZZUhaOwwk1SBoy+au4ANKXfCeYA9cLVrgEfIpkqIhzxApq4ao16qtj/uykfPpbDia6qWEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVROyN70+p8qPNEsyj0ktzj/7po/sEE4KMYzHZc9zPw=;
 b=sKanUeluIyZBI5AF00T6d4Fp2Rz/YXEO4Wvy+qnTw7MVw7dRCT+nK+2C7nNbt16LxoCDO0aWR+9Qmc5ZaWFy0eGo2yXy99hExoqfBXg1OUFylf9BgRLKberCP2PMb3OH+ZYWGLNp1vipnHh5NNWuu5RUqZ27JOXRQvOH40DGrXMTiAEpeExVYUz8qu/Yfonvmvi2sXVzfcjcB43exyCMw7Wv/8bsPEYRMrBU5ceNKMebK4cyizq+FoMEIstKroG5en5eAVu7e6iQ4pKiI82qI8ppe6qlt19VuMGIuU5wYKdeLnMJHLSjeL7RiHDlfiumM716bsFv9Wc1/+kUN/1dMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by IA0PR11MB7743.namprd11.prod.outlook.com (2603:10b6:208:401::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 09:33:23 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 09:33:23 +0000
Date: Tue, 11 Mar 2025 10:33:14 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Krzysztof Karas <krzysztof.karas@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Andi Shyti <andi.shyti@intel.com>,
 <chris.p.wilson@linux.intel.com>
Subject: [PATCH v3] i915/gt/selftests: Disable lrc_timestamp test
Message-ID: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR0902CA0028.eurprd09.prod.outlook.com
 (2603:10a6:802:1::17) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|IA0PR11MB7743:EE_
X-MS-Office365-Filtering-Correlation-Id: f7410a9d-744f-449c-d0ba-08dd607fc4b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YldrUU53YkNGaTE5b3dPZE9STXo4VmEwUkFUZmxzK0ltaWl6VTNFN3EzQTZI?=
 =?utf-8?B?c2NRN2I4TEpUdFIyc3pRK1FxS3FiRmxmSk9wMVg5bE1OSUtLNkoyWEtQWUVl?=
 =?utf-8?B?ZVZSazdDUkV0RnFmNlZaYWVEVU5qancvUFVJZE9JZVlpVm1iTUNwTE9JRHg5?=
 =?utf-8?B?b2Y5SmY4RU5KVEVSS3M0SmhMeVUrY0RKWXpPTldSbDU4WUlncitDWkpreGdv?=
 =?utf-8?B?VDhmeVJWamFQTlBSNnFGM2d3eXp2cFYrTUtRaU1VdHk3K3k0NitkR0xQUEtZ?=
 =?utf-8?B?NDl3YXAvWTFOYmtRclR2WGIzdGxjRythRUczWmZpT1p6Z3lacmZ4Zitacmt4?=
 =?utf-8?B?c0pXL3NRTHE0empRb24ycmtkREhYQjFZSktTekhaOWUwYTJsRW9uZnpkWkI5?=
 =?utf-8?B?WDA3T0dzaEErMWZQejNLUk80b3RSY2ROWEJwZHhHK1h3bUdxQldOdmhINW9x?=
 =?utf-8?B?c1hCNUlveHgxeTRmNXRxblhyYjJtYUxqMytQNlduaUdKeURSVEpmd3NJRWVO?=
 =?utf-8?B?ZDFrRkpoOXNSdjN2WUlZQ1kzQVJmbUJseThidmpCNTlpOElEbk5ZSzI0VTBT?=
 =?utf-8?B?Sndxdy9NcE1vYTBXcTdpU0Zjd3RPZzNUSXM0VHNSUGlEdTJzMHhhNkdVSGxC?=
 =?utf-8?B?eG5tR2N2aC80RVMxZFRTMTdxdjErbklzTmhJYTdaU3pIbXBSNm1VWlVybmpm?=
 =?utf-8?B?Q2ROUUtxM3A2VGMxN0ZTRUQrNzBrdmNnZm4yVkxFMlhWRnhxeVRlWUdkdjhm?=
 =?utf-8?B?eVM4d1V5ZTd5cWZ5OEJUZ0NvQnFkTUxuS3hodVNTQ2RvN0RhazRpdHJkS2lM?=
 =?utf-8?B?REVPQUJqMHBFc2FsOUJiTmpoYVFIT21lREIwVnJDdktqcnZqbXdwTitLcXh4?=
 =?utf-8?B?c3NCQTJybWNpTVI3bWxFQk41V0NvSlkyZFE4UGM0NmdocTREazZJeTliRlJl?=
 =?utf-8?B?VEFXdC9jS0ZsQkdLUTVadFFLNWpINjE3Z1ZTYUFaUzFGWWkyTHdRNXQxeTR1?=
 =?utf-8?B?eUdwNm1tODgxS1hieWpoT0l4ZGYvdHhkNWRDellkMUpWbUQrMG9CRGhQRjlF?=
 =?utf-8?B?S1RoRnZvR2t0c2hMdERkRkZvWWtLN3cxUHRaUXE0UXNEMG9HN3EzSVY4QUlh?=
 =?utf-8?B?MG55aWt3RGZQRUo2a28wMGRMalpkOWhNSi9vZGsxMU5jbFltejBMc2lpZTdl?=
 =?utf-8?B?NFJPajhWcDc3N0RUNUR3WXYvMFR1WDM0emNVYno2eWJNa0w2MWNBcW1EOUlK?=
 =?utf-8?B?dWxTK3k3a3o2RFVZMlVuZndJcTM0ZUFYWUpuMXAwcVRRa2h2OUJUZ0xCbElR?=
 =?utf-8?B?Tm9YZ0RySmRRMUxPWndJekxYNVUzZ1E0aVJESi85Yld0cFZpclA3SEJZbG9l?=
 =?utf-8?B?YnB4cDk2WTM1YlR6MW1FN3U4RVdYaGttaUlLSzFKUmhBMkZ1ZGJYUlRRS0RK?=
 =?utf-8?B?UTBIZHBqNXY3VDBqR2JLSmUzM0JoT2xpQlg4eUswaGx2S3R6UFF5QllZRFln?=
 =?utf-8?B?RGtUZUd6VTJWU2ZJUTJZL3ZPSGkwZEVHeVdEK2QrT0FGNnJ2d3NZTzl5Q0ls?=
 =?utf-8?B?eEowdGdBd0ZrT3lSNExBcVJQeXNxVERNbkQyUHFMOGI0cHkxc1Fiblh0QUJa?=
 =?utf-8?B?M0x6RzJSM2NlS0duUHN4eS96d2U1TndNNldaUCs1bXdkSnFabFkwQVNhdG1B?=
 =?utf-8?B?T2lmOUxnb1QrZENhVzduN2xZbHpOWkpEaVlGbm5KenQzcXlRdTNSUjhkMlhk?=
 =?utf-8?B?NS8xajk4NytCT3BndWFzYVlTdUlrRENJM3V0QXBlUEpYV1VSdlNOTWNSVm10?=
 =?utf-8?B?MXNuRmdKQU52dWRnMjAxdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWc0eHRaVUZwblVkZjhFR2tuZnZTU2pobHRLek45UjFCR1hsaUwrc3NaMmRh?=
 =?utf-8?B?dm5Wb0tucXQxK2d3M1F5Q2tVTVp6WWhobzlmUWxaOTlaWGhhbGt4R0wyYTBq?=
 =?utf-8?B?bWZIVUFSRUs0M01ybW5JTFpPZWgrYjNwU0VmRnI4U21zY1pZeFJGWGp3T0E1?=
 =?utf-8?B?V05ITzFHS1RGcGtJYWtwUlhhbEttaFBhR2o5ZUw3VnZaZm0waVg1Y29sSjFv?=
 =?utf-8?B?UkloTjF2SDBrTzlCRXdKU3kxOWJOUlZxNE5FbldrNzIwMzdxQWxleGc5STgv?=
 =?utf-8?B?REl0Mm1aK09yUVpRaGhKTFFkdlJPbStuUG1LaTNQUG5CY2g0ZktCWXE2T0hB?=
 =?utf-8?B?dWpERjdpd2c1RDBZd0FndkZUZ1c3TFNQS2tCZmtXTkl5bjhjdGRQRVJXNGdO?=
 =?utf-8?B?azhGUlJkQ0xaeEdzOTUvcjhhVGllbnJzUmV1b2lrcHM1NmQ2SWRxS3EzTDNJ?=
 =?utf-8?B?am9OUENUZ3dQc0wrVkpua0xDa1o0VDRpYzJOK2ZYbzcvNjVvS0ErNkJ2eEF3?=
 =?utf-8?B?ZGFBM3FmcW9zRC9sMTlFMkI0YjV0WVQ2Wkl0MEsrZ3RkZTBSMnZjVEEzUmg0?=
 =?utf-8?B?OXhWY1M5OUR3OU85bXdyWjRMZEpCdDAveHJNMEJKU0dEUURNOWg0Y2JTTEZN?=
 =?utf-8?B?TE9JZndZTmx1U04wNXpPUTNZQkFZSmtvZ1IzNUwxcjArOVZrWHZVZ3Ntc0xG?=
 =?utf-8?B?M1FheUJGRU14WG14Z1FqNWQ0RFEwUVdjWk9QWDJic3BScmVnQUx6L1Nybmh0?=
 =?utf-8?B?WEZwLzI1RnBrVmxyV0dJTWtNL2J6eHZpVzgrRXBBcFdCUVFDSjFNMVk5dzJQ?=
 =?utf-8?B?WE5zbWdpQ0t3dGpYSTllemlTSThicnY4SXVTNmpVcTIxdm5GdXJJbVRMNWNa?=
 =?utf-8?B?eGs3NTZEejFmN3VrUEJEMjRrRHAvWFhrczFOUzlpeWx1a1NnbUh5eUY5QkRT?=
 =?utf-8?B?U2ZkTzZFQ0xwU3pZREpFOHlXWURXMm1UMUQrZEIwUUxFdVIxSG5tK09OWGs3?=
 =?utf-8?B?RkZVcXQyY3NXcUhPVndmYjFDUzExcGRUSFJwL3NYSEkzT1Y4eStiOG42aGFI?=
 =?utf-8?B?Q0VILzR0c0JibXNoVFUreVJEYnV0ZzkxeWVyeGJCbUxUWjA5R0d5NE1SNUZj?=
 =?utf-8?B?bjRIL0IzN2lZRXhYcElna1Q1bEJWWVR4b25ZZDlVTEIyQlRXcStUYWRNQ3VC?=
 =?utf-8?B?VzZQYlE0NVFXa1hPOEszUm82TW8wNjVKZitCTWpCWkxyNXVicXMrVTBBMko2?=
 =?utf-8?B?dDBma1pXdE5JYlA4TTlPOXd4ODVGYlRVcU5jd215YVptMU1qdVVtU2h6Y1cw?=
 =?utf-8?B?SnhJMVdMY2pvUWxVRnJ2ckJBQnpIbDZuZXVZaHo4dDlIdDlYOU1PNU8xR3ky?=
 =?utf-8?B?S3Y4aGoxMCswSTFNQU1nRW4zcXgwbDdTaWM3aXB4Q2E4Q0REMXV1RkNxQmlZ?=
 =?utf-8?B?WlFGYkx5NFpNODloVmcxcXc1c05jVkx0SDQrakFLNjlremc3dFZoZDNJYi9X?=
 =?utf-8?B?dWErV0NFa0ZQOE9NZVZkUk5tTnFTSWVWTWllNGVnVlFzWTJPWDZnVDRMNVM0?=
 =?utf-8?B?RVNPdkpUbzZ2OFBGdEhTaHFycnh1UWVnaHpTS3NFUW4wTzhtdnd3VlNSdEpE?=
 =?utf-8?B?RytNZVRvVkc4MzN0dkNoWEh6RU1RNVEyMWNGaDd1S1NwVTNnUTJ4OWpTTXNS?=
 =?utf-8?B?bHg0Rng1K1UwbWlTV3FuU0JiNHdUQmhRVlNSTGdvRUFXVzllM0RUcGJwam4v?=
 =?utf-8?B?YVFXNEJBYTZ4T1dpZkE2N3d4ODI2REhSWnJnMDN1Q2tXYmxuTjNSOXZyeVdv?=
 =?utf-8?B?a2k1cnNLQXhCeTAyVHFwR1dtV3pwNkQrTFViY00rd3JHY0hyWGd3U3BzbE9V?=
 =?utf-8?B?alluNTBJOGxsUkxNUGloTnVVcFFHdiswNkxGU25BUTBnZ3p4MWdwVTFzK29N?=
 =?utf-8?B?M1EwTGh4R3pmak4zbnErT1UyY0pSdWNGeWpoellWbDJNWTRqbkNJbEZtK0JP?=
 =?utf-8?B?YmRFWDdYazMrVHExbTduODRZanVkMkd0VU45eVBEeS8xWmVUclFhUXYyWUhJ?=
 =?utf-8?B?NW9VSzBRY3JUQ1JQVFc2ZWdTb1Z4ZnNSOE41cHhKck9WblRvaWNmaUt4bkxD?=
 =?utf-8?B?OEk3ZUhvR1NMWUp0M2hqQjhweWtENFhucmR4dmJzWXRyTm14bW5CSUhMdy90?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7410a9d-744f-449c-d0ba-08dd607fc4b0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 09:33:23.4588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FCN4wPU3v8GBUIUq1ere/HJCr5x6ebkf1vK7qPwZbum5AAOk+6m0XKwyrR4966Zpw3bEvQaW5WH2oA+6iXjs6QpdRfHU2AJR7Q5rccfN7hQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7743
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

This test was designed to isolate a bug in tigerlake and dg2 hardware.
The bug was found and fixed in newer generations.
Since we won't support any new hardware with this driver, the test
should now be turned off in the CI to not pollute it with random failures
on previous hardware.

Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Reviewed-by: Chris Wilson <chris.p.wilson@linux.intel.com>
---
v1 -> v2:
- Disabled the test instead of removing it,
- Changed name from 'remove' to 'disable'

v2 -> v3:
- Fix vocabulary
- Disable this test only on related hardware

 drivers/gpu/drm/i915/gt/selftest_lrc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 22e750108c5f..c928b4723c38 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -7,6 +7,7 @@
 
 #include "gem/i915_gem_internal.h"
 
+#include "i915_drv.h"
 #include "i915_selftest.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
@@ -858,6 +859,16 @@ static int live_lrc_timestamp(void *arg)
 		U32_MAX,
 	};
 
+	/*
+	 * This test was designed to isolate a hardware bug.
+	 * The bug was found and fixed in future generations but 
+	 * now the test pollutes our CI on previous generation.
+	 *
+	 * https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
+	 */
+	if (GRAPHICS_VER(gt->i915) == 12)
+		return 0;
+
 	/*
 	 * We want to verify that the timestamp is saved and restore across
 	 * context switches and is monotonic.
-- 
2.48.1

