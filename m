Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E952DB8FF8E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677F310E189;
	Mon, 22 Sep 2025 10:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7anmQC3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6511110E189;
 Mon, 22 Sep 2025 10:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758536426; x=1790072426;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RwgARkcpnSnaqJ26ZFYvTcylDgANxvO6lcjwG44Gk6E=;
 b=n7anmQC3IegIZMG2NLuH1sBt7qnHoba4f4ugTT2tscJ4SvX7RqooL3G1
 QWHSIHVUpuN/oeTdVCZYz//6zIljIX9QS/aBoGOiDLC6WFSukcIuMU0KH
 75KSXu9JRBzAmVmelIZ3YKUzxWUqJuXXmZFFVk6j/tm/CCUkRXd/qIHpr
 w6KKX8f8rrE7G/E+A0AcOxFT1RH6CzCCIBcod2S1Kh20opuSQHmH/sHTq
 oMh684P/eLE2e/nBuxqCo3QDWpKDOw0WRHsq2eNaAasnbzfxGmc/G6sNc
 ek8Ql5WDu1ZBmCoW3hQqa6suhCDJaooDea/QZJFKNBL8AiAD+pts6nXl/ g==;
X-CSE-ConnectionGUID: YhiSBVQwRPahEeXm9w0oNw==
X-CSE-MsgGUID: e5m3iFq5Sx6ueN6TNqd0mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="63423993"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="63423993"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:20:26 -0700
X-CSE-ConnectionGUID: kOinjaO5QhKPgQ/4P05zAg==
X-CSE-MsgGUID: JiI+A0n9QmWoqWWrtjEVOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="180700224"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:20:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 03:20:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 22 Sep 2025 03:20:25 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 03:20:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jh0+nYwxtttlYrMhTAD/OgdFUXupuhv5bzUM8D3oLNfFwUjyxc14II7WHFRhS9zBZtdBGntlAfVZZJBdzZBiO0h1jQhMm39dcbJFdWWSGADkMpc14v/UrKf4ZQxPos8yeoyWPaIdSoP7RVcvs8LrfmlK/qW80h2kXpDHfmIswISOLAR99MW+/k3nR4odCg8luCEOvrAsAS9E3O6ACTvfSyFAsVsQF22tJH+iaJDzeebAN41BgsahoPKgpjADI89ISKJ25tyIuewC3KY3Ekm8y6msuB8hYfCW+BkkvrAH5+BPKoSjNnPwF/8URBngys/xw7wQzwmiemwRwF+eq2CUSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UwqEMrdyDUJGJoobabZY/4phr+6RZlChZQT6k/t6Oz4=;
 b=hpOeRAHSI137E7wWk2UpjqVWpH8qPxrjJw/IGD0J64nDu9mS4XnFjWYAzFCyEGI6UKpskuHksRyeeP8MgrAFf/9Lj9x9gykVxCNPCPnO0UXApHMptMxOCk2AZlkCK0DJ8mGdCisD99kx6iCVnto+Kvx7q8lNGEve3uAg/ztocguDWq/z25x3Dg2UMGyrlqIsA8TuzBG96yFEdrU0Y0qdvSEZK97iblT095wHYu9MbBgS9clBlJsF9C7MyR5BQBTpHTv1ayRqp0j9f5wpYhdGfvRmG0voJdyD99D76oGoW40fysd3DAUuBxwHJJq4avj8jKaP3fcGsR8qMsv0zn2Gtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8552.namprd11.prod.outlook.com (2603:10b6:510:2fe::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.18; Mon, 22 Sep
 2025 10:20:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Mon, 22 Sep 2025
 10:20:23 +0000
Message-ID: <aa5ae7cc-9e97-44f9-811a-54642f41bd50@intel.com>
Date: Mon, 22 Sep 2025 15:50:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] drm/i915/display: Use VBLANK_START to get the vblank
 delay for TGL
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-4-ankit.k.nautiyal@intel.com>
 <aNEf8XAdjowLeBUk@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNEf8XAdjowLeBUk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0021.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8552:EE_
X-MS-Office365-Filtering-Correlation-Id: f418f58e-b859-4b4f-f1ab-08ddf9c1a3ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1JZVysvMFNYNWd0TTJyNHlxdXg0Y3pPSmR6dlRKWWF4RlNjZmgvZ0Q2Y0Q3?=
 =?utf-8?B?bFZueDRTNGhod0tmTmZiYWhzVjk2UTkrZ3A4OW80VnQrQ3E5RzVaaVQvWk9h?=
 =?utf-8?B?bXozSkJyRzJ6MG1zcXNrQWNsdkg3U0toU3lnNVdnMGVIVUdKZGxLQk1JY1kw?=
 =?utf-8?B?S2hSN1NadmtheVozVjNwTzMxc2Q5ZU9ENzJoM0lJa3B4ZzJWWmExLzIzcC9r?=
 =?utf-8?B?dzhEMTdlNTFmZkN0Wkd5VUFua3NGd3VnQUtnVy9tbWZscVRqaEM3clZLZVhN?=
 =?utf-8?B?RWhERStXdXpEOWZsZnBab1k4N3QwbWJTRlRQWFdoeGNmYjAyOWZWd042NENs?=
 =?utf-8?B?Mkp5OHlGNmFPYkNReWszMFFkRkJWY0E4NG1JMzBEMUpaYW5JM3ErVnBRQWRl?=
 =?utf-8?B?KzlFR0Q4Qm5qbmRUUXdtSEd5bEVrbnlDVFo4aXhZbDNMU2RUdkpoa0pmOERI?=
 =?utf-8?B?VmJSeVdFM2xJR2ZPRGpzdWJTV1Q0a01BQ3BjNXZvc09kR3h1dFNuaHk5aGtG?=
 =?utf-8?B?czRKQjVuWjBuL1MvR1grWGZ1cjRVZFl4Rk5LUFJLUTQ5Q29FZ3pwT1lnbzIv?=
 =?utf-8?B?S3pVc0lya0oyRFBKRk5QMjhTVW5Ldlczclh5MXlEVzJ6Qm1HaCs2eEE0a3BQ?=
 =?utf-8?B?SVEzcmlsbnp6Z1g4TUtHQVI2cVNqcVEwY2RhdlFRR01zZ2l2bThlMHUvdElz?=
 =?utf-8?B?VTNtSEFyeXJuR0hpclJ2UjBxU0MvTzMyN2JVTFV4OWxXNEgrNWc5OGlZVS91?=
 =?utf-8?B?enRVeVpEdzZPV2E1bnhBSVpybHBaUjd5OGk5TWtQZDJOV1VkcmNyOG9pU0xy?=
 =?utf-8?B?Y0Z4UVZXUG1XRDU3ZEI4OEZsc0xKMjNCZmJrNWdEaEJSN2w3M25EaFFBcWpp?=
 =?utf-8?B?UTluMWZkakJxMUlZa0F5VWFvd3NQMGtUSUdmWjZ0QXJQU0hDVlBhbHJ6ZWdi?=
 =?utf-8?B?L0xwQ3d2dGd3UUNBYlc5RnNua3gyejBIeEpvWlo3clN3Y1VhWnVwSHhBTjFm?=
 =?utf-8?B?VUtaRzdDQWtQdjFoYUNaWVZGbEp1S3JDdENobjFNKzVpZmtmeFkxUkc0aGZP?=
 =?utf-8?B?TlY5Q1hUbDhuWXlkdU5KbVV2VlpIQ2FXR1BiMmorNSs3VHI4YnVTNlpsdUVQ?=
 =?utf-8?B?UGt0YS8rZHdHYjNZckkvWWwwNndZT09rdnJ3OVZXTnNmc0xCOEh6MjgwQUxr?=
 =?utf-8?B?YU5PZmZ2QlRBcW56MEZlQUl5WEIrRklRcmp3SmtWdHljMUdBRVNZVlZIMTRv?=
 =?utf-8?B?MG15cnFPUFY3SWJQNzROY0JBNXFxY2FEM0hQdTJNbEVsU1pPTGpHMjZtV0Np?=
 =?utf-8?B?NlpxaVBZbTVKR2lxaWgvSlpubFJPTysrbWhTNU5BMnlOWDZ2YnBnVWt0S2Fu?=
 =?utf-8?B?eWIwSVhxcVNUWmVDbUM5clJpR1Z4WTNZNHd2NGdBbnVWUjBobGROME1SLzhN?=
 =?utf-8?B?OHNpaFJxd3VUZGdOL3BoZEVITGY4OW5GNExpWkZCaFNlRmkwdmpJOWZyYnVl?=
 =?utf-8?B?YmpyMUxGOE5Yb3NuVC9yZC9KNDFyRWNhanp6RmNPb2tTdGd6bnpaSVdPSTJB?=
 =?utf-8?B?UENLSnpsV1NaWVpHZnU3cVFGZDh2L0ZDb0xXbUlJN0hvV2tjSzNNMUw3Mkxp?=
 =?utf-8?B?K3NDSUwreTZjanNwVmg2UG9nRGlvRzFJMTBOY0d6M0Q0dDRWNDRqZmVwTEkz?=
 =?utf-8?B?WlVOUjU2TDlQT2tyV3ZkcGxoUGNyR1RHZlYrdkVVZ0VMRFBucm9LMnY0c0ZI?=
 =?utf-8?B?YzNIUFoxTWlsWTFQbjBtWU5BS3FWNlBtNlFaTTc2c2RVQjFPQ1dGUTF5QXlk?=
 =?utf-8?B?WE1nMDRCMzhuNUFRQU15ZUlRZU5reXRxZ09tMkV4QlZ4cGVIOWR2R2RDS2My?=
 =?utf-8?B?RENxMS9UdXZLZ1hyRUFZRU5RNzlhOWRhbnJ2WkEyM24rdVFycGtXMkltKzZr?=
 =?utf-8?Q?kUjeVSLkYAg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVVvbjhvT1l5VGIyckxpTjNhNUhYaFdsWTJueEJOakdYdmd0RWF4NTlraDYw?=
 =?utf-8?B?NXZaaGs3WXd2L3MrR0JRcFFHZTFSYVcwTm4yaUd6V2lxQVNUOTFyK0xqSEwy?=
 =?utf-8?B?amtva1N5TTRBWTMvMkl4cFk0NkR1RDE2djhwVWtaaDhkR2ZpbzBaMFZzMTA5?=
 =?utf-8?B?enFRMHl4NVU1WHkyUkQxdHZaNFJtYnREL3o5dHI2ZU94Z2R0NnBBdmdxU0lh?=
 =?utf-8?B?emJoMWQ2bVkzZHVsYks4cks5SlQxL1ViRWJraFpCdGpjY1ZPd3U2ai8zb1Zq?=
 =?utf-8?B?T2lhakRFL2lPOVJhY1Z1enZJK1FQOVQzWVpSSk1RLzJHYW9NU3QvelR3WURC?=
 =?utf-8?B?RC9iNnkrMkhKT3RIbWVXTk44NENYb1lydVRkd3N1TGpOMFZMb0pWYTJYUDUz?=
 =?utf-8?B?bWJYaEtOS0hnRWgwbDhTMUJaOWNHRzAwNzl6WnRMYmFHNEdIcTRQOUxtZ2hh?=
 =?utf-8?B?MWdtcElkeWh4a3NKMzdmYW1tTjdyVit1amFKTUx6NDVZNVZKV1BXakgycHky?=
 =?utf-8?B?MmlHREt3dTZKMDRlNVhDSytPM3JRVC92N3Q1bk5XWDZnUHI3OXdSSlYwUDNC?=
 =?utf-8?B?QXdKWlllMWIzdkFyUWdTaEw0bzgzWUFRSVJxT1dtSjdJTHg4RllyMWhpWXpx?=
 =?utf-8?B?TWx6ZnczelFDYWkzaGZ4WVIzcXRxTGxpSmxaejdnYnV1V251azdGY05UeUtX?=
 =?utf-8?B?bGVzdURFV3ora3cyekgzVFFPTE5NOXB0ZzJ2MklsMEFJY2FCcUJQR2d0WWQz?=
 =?utf-8?B?YXpWS2RwTkM2dEZEYTNoWThwWVlVWmFoNHBuLzFRdVhzd2dVbExsZTlzRkdo?=
 =?utf-8?B?UVNwQ3ZkT3dlUnVrai9lUWxseXNtbUpJZTNHRXgvVWxWeG1PcFc1YUwrUzhB?=
 =?utf-8?B?eU9QYUpkMXV5RE1PM21ycVd4ME5UUGU1a015VzFJbm5tNmp0VUorcU1YSnVM?=
 =?utf-8?B?S3dOekEzckY2Z2NONVo1dU1nQm9CNTIrenVxMkFtVlltdmFmb2xuclMvOFpV?=
 =?utf-8?B?UE5aR2RFZ2RjbHYvWEorajBuREc0YUlBdXhnMHpRQzRqL2dENVpyVUlpSmQ1?=
 =?utf-8?B?aGdIN3lvamJ0UWkwUGtkcXE5MFhEcXZDamZQbHljRlA3QTF4ZzZqNXBzMUds?=
 =?utf-8?B?UEVTVGx3cWd0THZJU3c4RUhTNjJGTmgycmJoRmZ3MlE1Tnd1V1pkNGhVRHNv?=
 =?utf-8?B?OENRQjFPeFhONWlBbjUyalB3MndGT0dTdWR0NEhPU3c1amVxWUM4QmtRSVN1?=
 =?utf-8?B?ZVlaZnFmM0h4YVFnN3d4dHUrOVZ1L2NVSUY2SHhKNnYwa1AyZGtBdmhOMlVY?=
 =?utf-8?B?eW9ISVJncWNFS3RLVjA0SGtVdnRpMVFKN3pJcFFsS3BnU2dRS0NsS0o4Z3k2?=
 =?utf-8?B?R3B1MElzUWVJVWlkb2VUbnprUGE0VkM0SW44MFVKVmZXMXlmQzlCdisvY3Mv?=
 =?utf-8?B?VXE0anhrOEdpRWJ3TmZsclJHVHRXNmVmdmoyUVFSL3NZaGtSVVRycG91UUNj?=
 =?utf-8?B?V2hEQ21tRVVjaHNlc3pwdzQ2ZEZhR204YlFLZHB1NVdUYnVoL0RhQTkxL1p3?=
 =?utf-8?B?WnFuRWRaUHl5MTk1QVdwUDNCMzRybFQ1YjdVY3EwR3FhcXNzZlZFeVErcG5j?=
 =?utf-8?B?bjJtMTFCbWZCQTcvVEcxZDlwVEN6a3JxeEUxcHE4bDZuNFpkS0pWNnRiTk9X?=
 =?utf-8?B?YW1DcnpLOEFCSVFyWTBFL3Q2dUNXeTlKS0F3Z0EwT1RDNkxpbUNqdWhWa3pV?=
 =?utf-8?B?MTBHeXNiNWdNUEV2Q2NMQ3hzRVN1RFdKazZlaWllSTcwTmdCWG51d1hsL0NW?=
 =?utf-8?B?UW9oZ3dYVEx4RmU0ZUxreHFDL3hUdDNmczRuNUZ3RmJQTW5QOU5DMENVWCt6?=
 =?utf-8?B?UmViVm9JeUdnSTYzamp2cVBJSXZiTWxaWWlnV2NqUXZ4QkpDSS9xdlhZYnBv?=
 =?utf-8?B?M251NFFzOGtsbFpOS1NqdFlMZ2R4YmliQldIUzdBMjdYbFYvWUc1TzBEblB5?=
 =?utf-8?B?dy9ITHA1bmY1YzdQL0d0bnFmTjB5RGhZMW1iYmZCOEhSMS8wYXhqWDdMaHFa?=
 =?utf-8?B?b0o4UElPY0pQK1ZOR0dRY1M2K3VQR0kwQm52eWU5SUU1QkRyWlZEWUQvbFVo?=
 =?utf-8?B?U0JGQ2NvOVU0U2l4MzZjczZCQmdIUklnckFiWitmd29WZ0o3RDFlZGY1clpu?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f418f58e-b859-4b4f-f1ab-08ddf9c1a3ec
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2025 10:20:23.4199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3W4OggauZTK2yUF5TxBEIl/lRRq00XyHokaq2hkMLG/6mwkQxPP9hlTrEbCClTLK/zmnwN9l7MfPM+SWf/9+tumUumAAywcQ//Qplq7yrh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8552
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


On 9/22/2025 3:37 PM, Ville Syrjälä wrote:
> On Sun, Sep 21, 2025 at 10:05:29AM +0530, Ankit Nautiyal wrote:
>> For TGL the TRANS_SET_CONTEXT_LATENCY doesn't exist to account for SCL.
>> However, the VBLANK_START-VACTIVE diffence plays an identical role here ie.
>> it can be used to create the SCL window ahead of the undelayed vblank.
>>
>> While readback there is no specific register to read out the SCL, so use
>> the same helper intel_crtc_compute_scl() and reduce the vblank_start by
>> this amount.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 5a7794387ea2..455bbebb50a5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2822,6 +2822,16 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>>   		adjusted_mode->crtc_vblank_end += 1;
>>   	}
>>   
>> +	if (DISPLAY_VER(display) == 12) {
>> +		/*
>> +		 * There is no specific register for SCL for TGL.
>> +		 * Derive the value from the helper intel_crtc_set_context_latency().
>> +		 * crtc_vblank_start needs to be reduced with this amount.
>> +		 */
>> +		pipe_config->set_context_latency = intel_crtc_set_context_latency(pipe_config);
> That thing *computes* the SCL, it doesn't teel us what the
> current hw value is.
>
>> +		adjusted_mode->crtc_vblank_start -= pipe_config->set_context_latency;
>> +	}
>> +
>>   	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
>>   		pipe_config->set_context_latency =
>>   			intel_de_read(display,
> I think this whole thing needs to look something like this:
>
> if (DISPLAY_VER >= 13 && !dsi) {
> 	set_context_latency = read(TRANS_SET_CONTEXT_LATENCY);
> 	crtc_vblank_start = crtc_vdisplay + set_set_context_latency;
> } else if (DISPLAY_VER >= 12) {
> 	set_context_latency = crtc_vblank_start - crtc_vdisplay;

I was wondering if we optimize the guardband for TGL, this will be a 
problem. It will make set_context_latency huge for TGL.

Or shall we drop the guardband optimization changes for TGL?


> }
>
> That'll also cover DSI (not that the DSI code itself is actually
> ready for SCL...).
>
> And I think you need to squash this into the set_context_latency
> patch. Otherwise we'll get state checker mismatches on TGL in
> between.

Yes right, I just wanted to get comments specific to this patch :) .

This change does belong to the previous patch.


Regards,

Ankit


>
