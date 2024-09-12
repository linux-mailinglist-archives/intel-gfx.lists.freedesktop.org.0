Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A54E976691
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE4B10EB46;
	Thu, 12 Sep 2024 10:15:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VfZk1YHv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0279B10EB41
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 10:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726136119; x=1757672119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AC2zdlnjcL5q3/VAZvKtMiHBRhcs76m4iWa+UmiVh8Y=;
 b=VfZk1YHvh6ZZtwhZ/a6dLsLEazitUKfXBD8CD5/qRSR/hXhoM7566rzh
 d+HlhjRScMKC+pXFfqGCWOw9S/BUL1KrxB6CNV81wTi2p+kpbuvZAzOfy
 831qV044p7Pg4EdItsU7MZlgiQS0U8/sZSDHDJ/96VcwfjT5TowFexvIj
 vz30z64t6CTGWB7NXEPWIuNyNTKmYj4aBDzM1GKClIqFWXSMtaZK2789d
 I6edlZELrboaEghf5kZGichtGEufks9wUga6uVdL/Lcfhm05+fFasoNZ+
 lOQpqO+8yOSWVz2EOfyzl1jggFLz0p3MP4ImQKV4TbRBg5ZCC9ZsqKTdZ Q==;
X-CSE-ConnectionGUID: uQZmpFlhRQuPVtGS4zUY0g==
X-CSE-MsgGUID: 0ZF/Zda1TDSfRbE3tEORqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="28713632"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="28713632"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:15:18 -0700
X-CSE-ConnectionGUID: pqXfftlaSvesWPbtZFflSQ==
X-CSE-MsgGUID: HU/UREZxT1SMba7jQ3H0ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="71772591"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:15:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:15:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:15:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:15:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C4SflbwRsK5u0hJfr5t49wVp0f5DjpecOcRih+VYxFCMRy38Qctr/sf7UAW/Tf9my+5wCs3YS2NC9MThG3nR9up5ZNOVFqF2kvnWyttVbTAjnaD4xFEjGyzOvucYFQJmQ/euvATrquCCsg6FiV2VYpAHLQhmofl0R4aFiW8aSXKBpg/YYmwe0EwTzPfXRWgSOxJWfP+Qnf0TOlc7JOe0e5QJxZGnmyFn3yUZGGZAb1TLQlsu9D2sCei9DkchOefaOm+smEpIIicjaX5VCJ6XReFVVm0H49c9HVMbFqr2rqAK2dj6kaqQUKHgm2zfCxPHrpsN7ZRfnm/0EDbTsViPpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hhFUkNgLsYWkvSASHto1wWnqHTbxdnOq86in7wKOhnE=;
 b=bigvp8PYXcUYvT4sAbdsAOrvrkFXey5Bl/oRHaJTDApT/N+ZaUrxZTvKOTL0KgWk5F2jj0sr0q+PN02DVnsNRSBKhMfl3JxbXTvmC58XOEWeYEF1xcTfvLkTLGveAkY9HEu7xsFbE+eDwVQ+l9d5AHfdAb7DjKgAJBDZwDTv+D8k2G3eWjPKFRycCzEJPd0kim9OLrW3YsMA2XYz3i5FiYxng2hxK+VzlHSMw7jQtupGsiZdPF2lhWIlKbvwd5dYrft2H/lQ0M/6WhhI17CFxmbb4wcsJ7SWMb2q+EWZCtMowYFHopOfTg/vxn8ncPgQ5G9+/JOCDAZTpd3fxRaoDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6927.namprd11.prod.outlook.com (2603:10b6:510:225::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27; Thu, 12 Sep
 2024 10:15:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 10:15:09 +0000
Message-ID: <dc40ae78-fd96-453f-b41f-67dac1e21cf8@intel.com>
Date: Thu, 12 Sep 2024 15:45:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/19] drm/i915/display: Simplify intel_joiner_num_pipes
 and its usage
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <jani.saarinen@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-7-ankit.k.nautiyal@intel.com>
 <ZuH6JJf0K7tyKUzm@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZuH6JJf0K7tyKUzm@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0019.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6927:EE_
X-MS-Office365-Filtering-Correlation-Id: 47567ba5-c275-44dc-42b8-08dcd313c7d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWw2b0tBUVp2S1BveFdpZzlLclpCUnBhOTJnTWtPNTBDZnBKa2pBMHNPaUFj?=
 =?utf-8?B?NTNXblo2N2tRMzRTbGdpbHB6Rm1XaTlVcXhNN2YwdXZUMHRjTG95bTQ4MGFU?=
 =?utf-8?B?ekhsNjA0SFh5V3RITElYdFZtd3ErVkJhendlUmFUcjlPV1J3RjlVbU1XN1NR?=
 =?utf-8?B?cURGa0ZJT1g1dkNBRHYzeXkwc1BPaWlUdDM1dGZTMTcxNitCdXNSZ2JpYWRR?=
 =?utf-8?B?MWV3bThJNmxMRCtKZjdjcHFwcGdEbG1veWh6a29yQUg1NWtqOUp3dDV1cWRT?=
 =?utf-8?B?eTlMUUVuY0VMQm5QUDdQMU5wM2FaY3ZzbVVXZDA2YWtGNy94YStEQ1BYVHVt?=
 =?utf-8?B?ZjBmYzQvTytFK1liV2JydTZDNm9lUUFrYmNjOWNLWGNnRnpsVG8wNG9TR3lq?=
 =?utf-8?B?ZUdvL2pEejNvL20zNkU2Tm14VEwraExrcE5TUFFOM3dPeEFWYlduYjlyQUZW?=
 =?utf-8?B?R0VBTzZ6TTFtY0NJUnVVODk3N3A2MENuNFhIZmYrT3FlUmVzZnBlUXk2RlVP?=
 =?utf-8?B?dUdNOSs1NGdaYTRPQkVwTjcyRkhxQkNpSDBicmQxa1pZQWV0QiszaktLK1lm?=
 =?utf-8?B?ODgyUHd5a0FLQnV4cCtzVkVvbkljUExsd2tlQzRZNVhXVUorNmxuMXZldTVB?=
 =?utf-8?B?dFFUQnBFS0g0ZjVUaEF2azlGN3hjS3hBc3FHdGUzS29mZVFNTFhuNmZDWGpl?=
 =?utf-8?B?NGNtTHFwTTJUU1VrcDNXaFMzckYvakFlUUp6TjByd3NLR3F2OVdUb1Q5SkNr?=
 =?utf-8?B?UUxRU05oSWl4SEp0MC9UZHFHYkQ0ZnVrR1ROSHJjM2lBQnU0R1hpaVh4eitt?=
 =?utf-8?B?Q0ViMXZ5OS93UHJWK2pQYkFOS25zcU5xalFyZVQ2S1hhL3hvWm9kSTVUVXVE?=
 =?utf-8?B?T3NrbDhscEkzejcxTmZzL04zRG1UM085Mkh4eU0vQjg2ME1lL3NwOWFJcng0?=
 =?utf-8?B?TTI2TXMvNFBnWlBBUlNmaTJ0cEhSelBtekNHN0ZPZWdtWG1FZG8raDhDbjFX?=
 =?utf-8?B?MEcxUWM1Q1c2VDNhOGx3MEdKMGg0b204TXYvRHZwY3lJZCtBbkEvcVVMamt4?=
 =?utf-8?B?T0ZBeVBUM1lGMkdMMkRkTVphTkN0Nmw1TVZvUXI4ZXhsaGtBNWorUEd6RDEz?=
 =?utf-8?B?VnE5S3dFczVxdzhqRVFtSzlESElmSVFnMHJPcENmd3pDenpBVlN0d0psWjN0?=
 =?utf-8?B?bS9rVkgrRTJMYm9qVVFGbDdTQWZnWFAzelp1WE1vMiswb1RjR2ZwTDNQbi80?=
 =?utf-8?B?aWxrYmllTTBzejFpWUZMVFdTT1EzZXZuL25OTWpJbWErWmxVWVArUys0Q25u?=
 =?utf-8?B?enBGd1NIaVBHYi8yRkNDZkpvcVFyWkc3RkJkdCttV1AxQ3BFV2d0ZmEvL2xm?=
 =?utf-8?B?VitiZ055cTdBZ1VRK3JGNkVSTEZLWmoxZysrVjBLVERJMGlnakJLWExueGpt?=
 =?utf-8?B?b25ONGJUZlRlUjNjb0ZtVEYzQTVncXhpREZ4WHg0THVYT0tOWWtvMXpUUnMy?=
 =?utf-8?B?UjFaYUVodUhxWmhUKytaNE9iNXFDTDdJbm5WTDJpSStXS0NJRHA5N1lROHVZ?=
 =?utf-8?B?OWNyRmVkVTdPaHA1WHJPQmkyVERTcE1SUGl4Mk5hZllhaUZQc2pOVEE2YXh2?=
 =?utf-8?B?enR6a1JmbHRLM3AyWExqUjM2WjJ1ZnJZUy93N01ESlNGblI2SkFEdC9TbVpn?=
 =?utf-8?B?N25mNy9mNUFXdWFoR05jZTVxa3V5aXQyYXl4Q0JRQzhiSkpBTmp2Nlg5dXNy?=
 =?utf-8?B?NFU0dDNhcVRlYzFCZGQzQXhxVzh3VUFleFBWV3g1aUZ6YmpmNWVrVkVIdUZQ?=
 =?utf-8?B?TXNyOHFSeDFKa0dFZXpjQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amRieW9EMldFL04yYVpPYy9STnhhR2lSd2I4Y0FSanBDRU1JZi9SaytmUEQr?=
 =?utf-8?B?N3E2dHpPYmZuVDJiZEtjb2ZoL0VhWUpleXErcE5rbHdUS0h6RmRLRG8ydFh2?=
 =?utf-8?B?LzVEVUhyV2ZibEMyUmtMbEN6L1RRZXpqYkoyU0tGdVZ6WkFVamJoNDVvV1lo?=
 =?utf-8?B?eUEzZE1DNjNJaVN6bjMvSExWRmIyWmZCekFjWHhhaDZTa3A4NGczNUNyZGRq?=
 =?utf-8?B?Sy9QTGxQUFpUSjB5Mm0rMGEyTkJiSXNXNzhYbHFod1NqTzVpUU82THQ5VTJG?=
 =?utf-8?B?N2RxQ0ZJNEkvOWt1OGZKNTFwdlZkdGtVajZTSVpwZVZna3FpUXBpdEcvUnpv?=
 =?utf-8?B?QTl1Z1dBNDdyYzh1eDdLbVFiOWJtRUx0d3ZjdXdtK2d6OFpUV1hZQjRLU0xq?=
 =?utf-8?B?RjRSNUZkaXdKaVA3dE8vUG1mZUluU3locTNxK2REemV4U1JEWXdHUzBvTkFH?=
 =?utf-8?B?WlU5OWRTb082dlZNaHdoVjlMamdhY25pT1pYazd3NUhRV2syR0dSQmdObFhF?=
 =?utf-8?B?K1Q5WGVzcXFzQkZLc1U1TlJRSy9aSlpPYXRiUTFQNEZ6VlJTY1RYWTlUYzZr?=
 =?utf-8?B?K0ZFMnJ1ODc1b0toeEZ1TElxblNDL1QzZDcxQ1FnVEJwYkNwVHc5OFh1U043?=
 =?utf-8?B?L2pGbGpuN1pyOUlsRDJucmh4ck1TdE85c3Ard1JDcVBQL3JrRFF0d3FrRmwy?=
 =?utf-8?B?RTI3eDJtaDR0d1ZrZWVBYzZDLzhlVWluQmh3K2VKczhSbisvZ1RzbzlZRDR1?=
 =?utf-8?B?N1B1NHQ0OWJnSjdSRnRsM241eGgzR3EweXlyS2JacWkyS3NHVFk0RkNIM2pn?=
 =?utf-8?B?M0w5eVpBNVlRdWVqVkpueWVnc2tDeFdUMTErM2lNdUUrbnZ0Q1UwbDJkVlZE?=
 =?utf-8?B?UW9MVGxxWVlFMzdQOWJ6aGFiMVl5RVA2bHNMK1NJbFZzakZkY1lCWG5CY2Vq?=
 =?utf-8?B?U2xYK3VhdE9zSzFlZjNNaUpyN09abXNheWFVZXZ0LzNzenJrdnpGSVoxbGFu?=
 =?utf-8?B?c3gyS2xtTExOeFFCdDhiMlFWQXIvT01GTVJNcXIxL3JLaU5PS005bktkOGFI?=
 =?utf-8?B?bGpQVncxMHpPUG9PQkJ4MDFxUEpRZ2dwejRsR3A0T0JINFZFengrUVVjZjRI?=
 =?utf-8?B?ME9wMEFHeEd5cm9BNytvbHhRdWpoTnVvOXkvR1JZN1oyb3JQQmxsbUxLNFdk?=
 =?utf-8?B?ZGwxZmpYc2VkL1FRSHppanFtbTJaY2RLaTZVbUpHcWl2NFVlM2g1a2ZyRFhj?=
 =?utf-8?B?ckVzYmZ4MUV0clM1aUYzTG5KOGtGcmRQRFZ5SHFMYXZBb2xWODVxK3FrMzNV?=
 =?utf-8?B?TDcvREtwQURjM01XVkhKNnBjL0ZvZGdHQ0lPWkphVkRka1hDcVJiZEozc0Yr?=
 =?utf-8?B?WEtBZTFwMVpEc01KNTJKNXRMakdtTkFsZ2NLTTJpY0lOMk13Qm1Uc0NuV0R0?=
 =?utf-8?B?ZDlRVElyYlJHYkRlUkhoUGFacTIwOFh6VmtWTGhJbjhzSXRpYzhVcENHTFhF?=
 =?utf-8?B?Wm93c2M5d0dwOG5rTDB2cUFnTWlwUjAxSno3b000djlBT3pEYzQxdE9ybmNN?=
 =?utf-8?B?RytBZENvbXlBMVZxY1ZxeUJjYzNYOEF0NTVSWTFxUHpId3FMVTgwUk5WZTVl?=
 =?utf-8?B?N1BiRDVpNGtQV2RNV2FwbG1Ec09COExOWWliVXFoVXJLek9aK3dLNjBwRFd6?=
 =?utf-8?B?eTh4c2RGT2xqWkxhU0hFTWJPOHltaGp6aUVDVmhmTEthRTZwR1JGV2crNkhR?=
 =?utf-8?B?b3lZQzJMOGt6RHF2SnVmSUJoaGR1T0pvMXhyWTJxSWNEVHJRM1pSWm4yRnBG?=
 =?utf-8?B?aHFJallZR2pwbkE5d1hLUFZEVFo5SnFReHV0c1h1ZGZnNzAxdW9vY0FXTGd0?=
 =?utf-8?B?QXdKMjFFbmE3VlpyZzVjL2ZMUXg3TXBQSjJZb2hSbWxFUytFd3FrbStPSzE4?=
 =?utf-8?B?N2pSUFV2TWZuMVVaUXZBdVZObVFhWHYxRnIzOXQ2Y0hRRzNudG16M1BqbUZn?=
 =?utf-8?B?Y1hqVHdNblJQUTRwTm80ZVhPakMwZzFmNVZSUE9wZ1p3NkZYRW52V2EvU1NL?=
 =?utf-8?B?a2I1clQwM2F5WTRBaGhNbkpDeDJOUzc2YU43SG1Oem9XV3N1QnlkUjE4OWtS?=
 =?utf-8?B?K1FhL1EzUldYb1hwTzJiYytuZ29uZU1samNRckE5V2g2OEI1aGZSMGtjZHpJ?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47567ba5-c275-44dc-42b8-08dcd313c7d2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 10:15:09.3712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r6EiYVWabPrtFwZv3IbcOLXGc6BRYDz2jeKlmtCFn97LyxTl4HdPUntS953iEsqzGYys8krPGW7kGC9gnF8nk7vzEihkm2f5g949KA53ibw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6927
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


On 9/12/2024 1:44 AM, Ville Syrjälä wrote:
> On Wed, Sep 11, 2024 at 06:43:36PM +0530, Ankit Nautiyal wrote:
>> Currently intel_joiner_num_pipes is used to get num of pipes wrt num of
>> pipes joined. Simplify this by returning 1 when no joiner is used and
>> update the checks for no joiner case.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 486bade9e927..4751ee20216d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -280,7 +280,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
>>   
>>   static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
>>   {
>> -	return hweight8(crtc_state->joiner_pipes);
>> +	return hweight8(crtc_state->joiner_pipes) ?: 1;
> If we want to deal with this here, then the function probably needs
> to be renamed to something like intel_crtc_num_joined_pipes().
>
> In fact we could implement it using the already exising
> intel_crtc_joined_pipe_mask() and avoid the ?:1 stuff.

Alright I will rename the function as suggested and use:

int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state)
{
         return hweight8(intel_crtc_joined_pipe_mask(crtc_state));
}

Regards,

Ankit

>
>>   }
>>   
>>   u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
>> @@ -2347,7 +2347,7 @@ static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_stat
>>   {
>>   	int num_pipes = intel_joiner_num_pipes(crtc_state);
>>   
>> -	if (num_pipes < 2)
>> +	if (num_pipes == 1)
>>   		return;
>>   
>>   	mode->crtc_clock /= num_pipes;
>> @@ -2409,7 +2409,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
>>   	drm_mode_copy(mode, pipe_mode);
>>   	intel_mode_from_crtc_timings(mode, mode);
>>   	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
>> -		(intel_joiner_num_pipes(crtc_state) ?: 1);
>> +		intel_joiner_num_pipes(crtc_state);
>>   	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
>>   
>>   	/* Derive per-pipe timings in case joiner is used */
>> @@ -2432,7 +2432,7 @@ static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
>>   	int num_pipes = intel_joiner_num_pipes(crtc_state);
>>   	int width, height;
>>   
>> -	if (num_pipes < 2)
>> +	if (num_pipes == 1)
>>   		return;
>>   
>>   	width = drm_rect_width(&crtc_state->pipe_src);
>> @@ -2893,7 +2893,7 @@ static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
>>   	enum pipe primary_pipe, pipe = crtc->pipe;
>>   	int width;
>>   
>> -	if (num_pipes < 2)
>> +	if (num_pipes == 1)
>>   		return;
>>   
>>   	primary_pipe = joiner_primary_pipe(crtc_state);
>> -- 
>> 2.45.2
