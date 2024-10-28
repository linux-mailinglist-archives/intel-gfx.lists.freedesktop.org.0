Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EA09B367C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 17:30:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E4310E36D;
	Mon, 28 Oct 2024 16:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQ8SbWpy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CAAA10E36D;
 Mon, 28 Oct 2024 16:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730133045; x=1761669045;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=/GwrEFsTWypzBJcEX5kAswfKqt5JYDZlXf9eLA1jzmU=;
 b=JQ8SbWpyuYw7vpsQQPCflkJDE7CgU7V3MvyfzBzVycMS6RG+OK0n8q84
 M5MNHAUwBlA498XxCUjY+ShCEwFrlgKtnDaT7QexX+qqBuvjD3GW8kG0Z
 H99SBbLlmH8aEMI6LfwnPSld7Ra+BO9+bOvkhHagoBhycHJGQXiHM2i4A
 5nzG9CApMCbhtvlLkcuErHiajKJ3PLYPYvg2/oNto81i7ssKNnFpiTViS
 hU8dKPkMK19Q/QEZyl8FTdQztEUL5rYpX9Hy3I2r2ImMPQBVq08Vk+tQU
 +khzQeIKgQ+9EI0hPKiAOiz4v4SfQrgxhaiTC779y8U/RidVo87VL5vNC w==;
X-CSE-ConnectionGUID: 3yPWHW3sSHaso3gg0wUX6Q==
X-CSE-MsgGUID: p+1JR6cHSDeIZpgh5HearA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="17371758"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="17371758"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 09:30:45 -0700
X-CSE-ConnectionGUID: 078vGQ0zSxOivjzZf75UAQ==
X-CSE-MsgGUID: rZIOyotrRVCTUQ++Ezcv4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="104987819"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 09:30:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 09:30:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 09:30:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 09:30:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S2SP1O6mxWImtgZZl4dZjpu4194c19D6K+ss5vw6CGgQlbyskNwU0sh77TphlTn0l8mNOS6GDGjRV4gPJDvxAb9IlyC+hhZ6hqmn5jF33PQUIEKCIznORhw7Mf40bIRsk1S/mMLCIDsEaMhRbb52K6UwF5CToFoERchYEDAVJr8rc8u0xtAdWZqel/DZ2UhoIhBE9IYxR11wSkwkhDhSvGsGqqMRcaKTMLuTM7vBI9ee/9cfMzaVRRf8yqQxj7335DCYQLS5eqOFVPkuqtXsN8nTLlGO4RJp4E0owFwWaPVv7v9kTtArPsnEiYHtvEhpUigxdRTt3ywEqKsf37quJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8WZE0SFrbUALPv1OlXQwkap1bm+SiGw7sNEbZlCHOwI=;
 b=icWDVZz0gPwvF5ntl6n/dxe8pSEBw6maUiNO7EimtMtviMWaESWJAyThN+25gMDpkLPot3XejR/29i4M3DfIvo9yxUY48pzmcB4656GFKCEvj3tNR82jxni4r3gLmpEuGluWmldmsFCo/OuFKVozn835MfRZNnAthhnbhoHogTaSVchVZP1+xnePwmnrqqfKnIR11YhLGr9E//Xuk5c/AROAZaV3rw6afrnGvdbXaJ9RXUnQlIjxqn9VoDQaSslTynBBhvNbOd2WWuoznI2W6T2bJ5fMVY/Ck10Eus5/AVYEHtIvaTB4yGnqul9R2ek2KIdNvf5fZHZbiL1FyBwXig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Mon, 28 Oct
 2024 16:30:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 16:30:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241025204743.211510-7-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
 <20241025204743.211510-7-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v5 06/11] drm/i915/cx0: Remove bus reset after every c10
 transaction
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 28 Oct 2024 13:30:37 -0300
Message-ID: <173013303703.3514.5957030414255599670@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0102.namprd03.prod.outlook.com
 (2603:10b6:303:b7::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7636:EE_
X-MS-Office365-Filtering-Correlation-Id: 48fe9c32-7343-4c03-6c54-08dcf76ddd1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SlJvZzNkd2tqZU8rbkRHU0Nzcy95RkVvaFNiUnN6UlJOTWw4TENVeU95Rzha?=
 =?utf-8?B?dGZUN21COEZGSEdTRnVIWUdERXZ0U0FrbGRUYTE1MEZwOHMyYzhQaHdXb2Rm?=
 =?utf-8?B?UHRCY2srUlYzZjJnY2UrNHpNRjFZajdNTGhhaURiWm1qVGg5WXlhbGRFV2pU?=
 =?utf-8?B?OG54TzZXV3RDN25ueFhWWm9lb05NZERkdytkamRkSmM4UkF5QVgwemtZRDRs?=
 =?utf-8?B?bE1PN01NMExxaDVnNFQvSXBlM0E3VDdrVXZNTzVKaFAxNlJqcklSY1Y4SFFy?=
 =?utf-8?B?MUt6QkhHMDRuandSWmtDejB1QlRpdWw1Sk1SZzNNNWwwbDd6VCtyUlRWckE1?=
 =?utf-8?B?KysyUi95NjZVRDBaZXRoY1BwdDJVaE9pRStpd0wzSzlVcm5maU94b1VoMXhZ?=
 =?utf-8?B?ZkM2Qmw2aGFrNHp6NHVlQjh1K0pjbElpUFAyUkd6Wm5TUVZJZHhEaldZa2pK?=
 =?utf-8?B?cFowYVVuclkzNjBsR3BXOFNndi9pTGFEekpoMFVSVDBOWDJtc2RQSko4SWdD?=
 =?utf-8?B?eTRUQkkzR0MvYk1VY1NmamN5SW1IbDVPOE5yMC8zejdNVEFpUldhNHZ3eEJh?=
 =?utf-8?B?T0dHSmd6d1VhQ2p3N3hYd0MwZ3pwTTBxSnBXVnVCRUE0YVZUMVJaV1lvU3Mz?=
 =?utf-8?B?Tm01ekk1cm5YK2RKQTFMcFp2cDJPR01nOVNpWENEaTVadTczc01CNFBJZnBH?=
 =?utf-8?B?NVB3aHlWdkhtdExxcktkQ2diYVMxMzIxaitGS0xKaWZuemlzRElsNHBwTlFk?=
 =?utf-8?B?UmZGaXdPUjNBVFFKMVFldlo2RG5VbDRtcFliUWV5WUdyclpablRtaGFzRzFK?=
 =?utf-8?B?RjFlaFlKQkhLVDQrYlFVdnp2RmVoUzBxODFrWEU0WjRaeUFqdHNVRkR2WCtk?=
 =?utf-8?B?RXpwRXpTQlhTclhQZmRRSW5DL1U5bklaL2FHZUJneWEwQjE2ODVDN3RmMlNj?=
 =?utf-8?B?WHFGVFU1NENXSDhXckZhZGFVaEhBblJkaGg1Wktqd2k1cUZCeWhkUDlvZ3lX?=
 =?utf-8?B?ZHlOVlBzWWhjYTZYMFY0d1NROUMwNHEyQjcxMVJUWlFzSUJaMVRGZDUyR29l?=
 =?utf-8?B?SWhoZ01LQjRkbDdIb0ZFNEQvbnZZa2pONGYrUTllTkZxbUxBbCtuN0JPeWRW?=
 =?utf-8?B?V3JDT1pJNXVxeGd6VzNMOUJBazVBVkcySzNPZmxYTzgyNlNLVmRPN1hkQk55?=
 =?utf-8?B?TjNUNk53cE9NemswNkZKYnFoN0xYeVZHWGM1OWg5T2JjajM4UE5PUEg2a0tC?=
 =?utf-8?B?YXgxbWZXdXIrMkUzSmJzTXdSMnlLWnYvaHRlNW0wZitWV0pCZHYzeWFXNmdD?=
 =?utf-8?B?SXRjUlFYTmxyS1NqZUxMOUxhWFRIaGN4OUFKSmE0WnZoL05xSWVBUkErMjVP?=
 =?utf-8?B?amE3Mm5UOVJDR2NXazZMZkVUcVRzQ21wRG1VT1AyVUdYN3ZPTjcwRXN5bDZz?=
 =?utf-8?B?TDZnYUdFbis1aldnSzBTeDNOWXYyY250alZmT2FjaUxWNllxMVprK2FtakJ0?=
 =?utf-8?B?YkZ2R3VreWVwUWNjbUlPUGdvNHJ1SklLb0ZqYnNib0xBUXpoNU1CS3RIQ2hY?=
 =?utf-8?B?SUR0aTNsTzhPWUpWUXFiQjM4RW91eFJPNmROaUxGTm1BUUZiWWlSV3V1Y0JT?=
 =?utf-8?B?RU02eXppWG53cFAxRHR2VEwvYnd5dkd0VlFGenpWZTZrZVJaeE5iV2tES05H?=
 =?utf-8?B?Y254WEYwTW12TTFqVlYybE9FMTRweW1jS05vejJxeHRRRVlTS3FFOTN1VWJr?=
 =?utf-8?Q?+cMaZfU7EVejSq4VSntJ+PB0/o2p1X1WKHQuvsT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STRyeUhJVUFBSVhoaWtjWVFxajhYSHVZQ0xLL1kwc2orUmpidFc0UWt2dDc5?=
 =?utf-8?B?bGpDdmxLTVJlbngra2x3amsvdytabTBEVmo5eUlsK3BLMHRwRDByR1RBNE1n?=
 =?utf-8?B?cjBBUytETE9lUVBQRkxiTGY0R21UdnRNekdCL0ozUG9FN0xMckhLUW44NWVv?=
 =?utf-8?B?aFFMVEI5aDFuN1RFSmc5RTJEV3hxNUdKREFnZzMzMjBFN1hHcng5aDVjZ0I4?=
 =?utf-8?B?amFrQ0lpL2Y3Z0NGUm5oUFJGYjFFamUzcWxNLzNXay9Rbi9zK1FwQU5QZGtZ?=
 =?utf-8?B?K013Z2xwUTN4SDZUcmdzZGd6dG9ObjYwdzJNK2E5bU80RnpWTUFLbVpQK1Bp?=
 =?utf-8?B?YnlsRFpsekt1VjlmN0cwek0vcWpneDRTbmJyaGsxUmxnSWlrcy9xa1QrQ0NW?=
 =?utf-8?B?bkZzQjJMQ0s3VHlrcXdPdGhJK3RCSDMrQmp3ME1HR0xYQjBEQUp4UkduOUFJ?=
 =?utf-8?B?UWw3OGNiV3QxTCt6elVwN3ZtL2t4V2pqSCtKQjRWS2JLWHBtOUhwOVp1TTJr?=
 =?utf-8?B?aG13cEpBSlFsV1dkalhGS3NCM2lNUWQyWFp1NloxNXBjUlZsOVRFdXRhK3c2?=
 =?utf-8?B?blU3d0U1cjBVUTFwcVY4RHorMmdKM015ek03VGk0ejB1WHU4MXZpdTBOa28z?=
 =?utf-8?B?WTFPZXl3dFJtZEppU3ZyWlZxMDgySGlPSGhpd2RLZWpXVWJoTFB4T2xWSkNu?=
 =?utf-8?B?OEV4WmFyRFEvY2pWNi8zMVd3Z2dtK1h5MEluR0pLeWgwamRXOFhua2J0M3BX?=
 =?utf-8?B?UStjSTlyYVZ0OHJEWjB5eW5wRzZ5ZG9zTHNHN0puZkIvZUJteldROWtGRFdB?=
 =?utf-8?B?R3pPNDNhZHBjb0NHMHZ3NlVHd0tNeVFBM0c1NVdmOHJGdUNhRUU2SE5oMU1U?=
 =?utf-8?B?M1daL05wWWRGQ3VNNTlOY3Q0RjdWNDFFN3VPTnhoN3dKZ212TTE0ei9sdVdF?=
 =?utf-8?B?WmRPazh0MTlGSHV6RUN1N0ZGWDFDUkdFTHpCU0xTelJ3bW5QNW5QdjFMR2lr?=
 =?utf-8?B?Rnh1R2F3dDUxUytDVUR3UjJpRkwvakYrMmtVYndUVy9hcXNCanR3N1d2TmRj?=
 =?utf-8?B?NC9PakMwUHc0ZjYrdS9RTGZIU0lkSWlUQW9oK291SnUzMVA5N2kyN3V0OE5W?=
 =?utf-8?B?WFZxeUJRZUdXRUJJWGI5Y3F3VXg5YWdJY0VjbTBTZUNlMVJIUTZDdDIxNDZU?=
 =?utf-8?B?clpVdTB3aU16ZlVwZ0FuL01wQ1NwNFFYam1UREtsNW9HRTZNLzN3K2lMeFdi?=
 =?utf-8?B?VmFPdU5LUXNrUzJGeGxDNVBNaGt2TkpvOHdlMHlrRDYrU2hoZisrU0hiUGhj?=
 =?utf-8?B?T201V1hVbDJDd29USzh1ZTk3djFwa3BtbXZZSytlcVN0RWNCQWQ3c0Myc2RR?=
 =?utf-8?B?aWl5dzl3NnVUVW1Ib2diVjU5OVowYUFQN2h5NFZodXp1L3lxUkU3aXJLdkdH?=
 =?utf-8?B?UFVuY0pIMlRWRmg4MktxbHZ1MG9MMFJ2dm9pLy9oM05GSjZiTzloV0g4N1NV?=
 =?utf-8?B?ZVAyN0pSWXJhdElmckJ1bW9QbzZKYUxnOFhDV2ZXNGtsMU1KUGJqVllhbDBE?=
 =?utf-8?B?YnRKS2NDdGlKcXJxbWpwQXZ3ZXoyZ3h5NlN6REJMRVN4N0NmcjBHeWR5bm1I?=
 =?utf-8?B?TXhzZVZQUXZVV3pETngrOXZoQ3kwMWkvSEdUZ05DaXMyWDFOYVBsU2dEcmZQ?=
 =?utf-8?B?b0o1L25Ed1dKemlsYk56N2QrOGRZRmF5VlBvZEdCZ0dhQWRCR3daNCtzbnpJ?=
 =?utf-8?B?L1M0VDg4cmlmTHFtY2ZZNXlnaGlNTnN4SmJNY2lLdmRsNWZZTTVEZVY3Tk1H?=
 =?utf-8?B?c0FQc3Azek4wVmRaeUtXZEdVUDZnYXlqOVdZZDdETG5YN1MzNGVEUVZyQ2NS?=
 =?utf-8?B?YXU3VWpLZFRNUmVROGgydkxQeWM1NkhTQTc2cEZ6bC8vTkIzSHhwamZJdnVG?=
 =?utf-8?B?SDBBTUthZzB2MHROVURLLzVqVjN4V1JscitVT2pJZC82RmxXVHByMUp2S1ph?=
 =?utf-8?B?VVRjU1lOU2pMWk8zdWhBMHV0MGpzdkZwMGJmcHVXaXZ1YzNkQVhGcmxrUDlX?=
 =?utf-8?B?L2xVWXBFNnk4Nk93eXhHUmRFd2FQc0NYenBnSDRHZkpRWjVRaDJXb0lWeERT?=
 =?utf-8?B?dkYrQ0Z6TG10M1lCUmkzVHltWFRZcWRWMTV5a2gyQlYyVG1BNXM2eHBSNlAz?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48fe9c32-7343-4c03-6c54-08dcf76ddd1e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 16:30:41.4602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fxg8PBUdgGsa3Qx0g6uMhD+9Y18KSfhGzU0+KqqWmx2qqUUiM0wziMJa4aSjlQF1e8RW7ZnPpBqeRQJpY54Gvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7636
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

Quoting Clint Taylor (2024-10-25 17:47:38-03:00)
>C10 phy timeouts occur on xe3lpd if the c10 bus is reset every
>transaction. Starting with xe3lpd this is bus reset not necessary

I provided a r-b with minor suggestions to this patch in the v4 series:

https://lore.kernel.org/intel-xe/172986437914.1548.2518455286416273948@gjso=
usa-mobl2/

--
Gustavo Sousa

>
>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
> 1 file changed, 4 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 4d6e1c135bdc..c6e0cbff5201 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder =
*encoder,
>          * down and let the message bus to end up
>          * in a known state
>          */
>-        intel_cx0_bus_reset(encoder, lane);
>+        if (DISPLAY_VER(i915) < 30)
>+                intel_cx0_bus_reset(encoder, lane);
>=20
>         return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
> }
>@@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder=
 *encoder,
>          * down and let the message bus to end up
>          * in a known state
>          */
>-        intel_cx0_bus_reset(encoder, lane);
>+        if (DISPLAY_VER(i915) < 30)
>+                intel_cx0_bus_reset(encoder, lane);
>=20
>         return 0;
> }
>--=20
>2.25.1
>
