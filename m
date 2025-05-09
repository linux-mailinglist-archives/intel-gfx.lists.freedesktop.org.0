Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261FDAB0C70
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 09:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C6610E9CD;
	Fri,  9 May 2025 07:58:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S9T4O3yb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB6510E9CD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 May 2025 07:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746777498; x=1778313498;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=4/QHK4A/0yfBYxA3N2aBC5ctPCMpNjTp0iaIbW61mtI=;
 b=S9T4O3ybi1dv9kZAZ22AdBl0Yh28m5HlhTAq6HP14ucmGZpVynC5x/8P
 5EKUUJWlY2+K92oJ/+zUnZUtHdimr2lHo7DRvh7muQIxnS70uUYX69TMA
 fJgfW1VKaxAkIxx0rdGperFy1/1NnC1/ZBqeGuAfPenMkvpQff3czJznW
 e2LuV3riK92x3Ejdg/FD/kfLF1nBuUoNVBb6zYHOVbGpDqQ8cHp+saqIk
 LkY5X6b9FewkmO1dcGU+7FMeGtzwrh9GSEw9dlYiP0tt+CqxFhbEbjX8c
 LxmmEMD4xNFNQkWqyrxXssrdJ78VS2gMLAaomox0yNxj0G9EfAeE/xrPW A==;
X-CSE-ConnectionGUID: NgjYDQQLQBKh5llfeQedyA==
X-CSE-MsgGUID: nanPrrCmQFWtAaUQhpY2Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="66129590"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="66129590"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 00:58:17 -0700
X-CSE-ConnectionGUID: yJLn9DaWQVyoNSXXMb4CuA==
X-CSE-MsgGUID: l8I203FyTFiBNYgQNaOVEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="159847130"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 00:58:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 00:58:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 00:58:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 00:58:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AqDqSiZhrn3E4F/rGKUnidtG0+WKRF25BQ8rVHzrCJKt3eB45FRd9dP2/FfxEB7uFtWV6jDi/RyXIdY8cmLIefZASAPAMJBOFQvR6B5AUm33M/dmUJtSzPCWzybAzKu5UioJ4m4K7HibrL8eUc/cUKN0J0lJ1VnbA6yHsdMUqM51JGj3OktdgwXn+vaOjeSs21UyuAaaC18E8T43cixcdLYq5+ZDcoXgIZNNerEq7sm+bJOZ9YPUxN5u5Lk85EsDsEt4QG61bqKKYPpX+o9bYQPepF3RqqDfziUyQDpxgbH7P6u9VWdGZC5UgabQ1RhaSwxlq3ds7fWCL6TaY5+p+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cyYtQx3zTUKt5y9HfYpcexfoy52BQ/akrnsq2R4pU2E=;
 b=hnpCAR0N16Q4Y8y+Mzb/WkhHnL1YZZJaKrgBhnvnoPyN3MMJ0MqaQGDM0xsDrwZFJWpxFL74SO6MfxzehrR6P3ZMjlK6m2FNiODGXNRMEEMELJYoKIGeqhEHwdkqIygeI8aGOA0WiptjvrGe5lGDBdqJIoO14tJeDtKelrd8Pvpg6F4J2OMqAZ++9TbCK2xgKYMWK1egC0YaJxetDZx1hM/ewoJByE7LBPbMANGB4MUgAxcXlRyvFxseKKLzuVQZ9b6duJy58mUxI3Vl4S+NPpol+7W4CNTjGLEUtF8bUYdCaryJYr2pzmzwnGbS0wFh+Qq60MoWyac9XamWF9xHpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by CY8PR11MB6962.namprd11.prod.outlook.com (2603:10b6:930:59::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Fri, 9 May
 2025 07:57:29 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8722.024; Fri, 9 May 2025
 07:57:28 +0000
Date: Fri, 9 May 2025 09:57:18 +0200
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3] drm/i915/selftest: allow larger memory allocation
Message-ID: <fptevdfbclvg2lbfuys5ibffbl2baouywkutnr7vdsy5tzcqfk@mpflwlh6jxfd>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VE1PR03CA0056.eurprd03.prod.outlook.com
 (2603:10a6:803:118::45) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|CY8PR11MB6962:EE_
X-MS-Office365-Filtering-Correlation-Id: 143e6893-e8c4-4d0c-f609-08dd8ecf2500
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yi9SdG5oakMxbGV2bW1jY0l2OS80VU8yRkFyMGx6TkRBcGlNN253dTBhTUtu?=
 =?utf-8?B?a0d2N0hDYmJIcjdZcWpHRjU4Um02TGJvYTg4SlpmTHRLWDZvdXFoYlZsUXBR?=
 =?utf-8?B?c3kyNmtwL1NBV1VOZ0NiaFp5WTZtRkJxU3NUWlFRcmxEbGNBdjJEMGxtVCt6?=
 =?utf-8?B?cXlqUzhqcGxmOUJyZXdUYnA0SzdPcHpyUE84VG40Vll1SGZGbUIzRDl3bktU?=
 =?utf-8?B?dk1wSUh5bCs2RERjQXBkV1BmeFlaSnVOYnhMVVA3TTFsUGE1QmNEUlJtY2JQ?=
 =?utf-8?B?aFBRb2JUY2xuYmRMVm1QRlZQZDhEZXUvTVpwamVyUDk3UjFQRm0zR2t1VDhK?=
 =?utf-8?B?dzJvQ1ZxVkttcEpoL3BJNHR6MHk1cGVPOGN0MCt4SVhuMUprejhMcHhRS2FE?=
 =?utf-8?B?YWVQbXoxaVVkcGdncll3YmVIczZMMUlPZURLVUE2enphMW9tZGVGREYyclJZ?=
 =?utf-8?B?Q3dEbHVmVmt1T0plb0RyWXFGa1d2eGl1WmxPY1Y4RmlnRW9pRUN3cjhDV2Fo?=
 =?utf-8?B?Sm5ES3BEcFdWVGY3QkRkMzNuS3RZNGdIakFIeTQ2Rkx2V1BQeW05azlOMzdj?=
 =?utf-8?B?Y1UyVUljbGZVVVBHNlVjRWQwWnUvS2V3TkxTRExWdDFBZTJIeFR4amNRRUZ6?=
 =?utf-8?B?TjR5VHI1Q3pabnpkWGhQaDJJVmROY3laaDY2MHlwRWc3TWJFa1RqNkE1U3J1?=
 =?utf-8?B?b0o2SC9FQjAxQ0Jnc0hUYXVMdis2eXZMWHZPampLUDNSOWUvVytkZFZmT1Jx?=
 =?utf-8?B?YVhRT0VrLzUrT2pvaVY1YkhMQmxXWHRQdnV2UGJwV0ZTZXVZZ2JZaThxY3FQ?=
 =?utf-8?B?R0Ezci9pOVI2YmV4bW42Q1IwejJEOXFxTFNYTHJpeC9ISUdEb2R6OW9Kdm44?=
 =?utf-8?B?dVppMDJSeUxQNmVwdkErRW9rYzU4ek92d1V2R2tMTWJXZ0NsYzBPOUxtRzVy?=
 =?utf-8?B?V1NhZ2Zsa1g5Q25wL2o2L01QdGkxTm1mZDZOaHlpeGg5ZjMvM2Vqc2ZpaTJS?=
 =?utf-8?B?MGdWUG1mVE5zeVdoTzRRM2E4aUVVTEV0WFJpS0Z5VE83VXNKQ0diSTFsZllv?=
 =?utf-8?B?RGhUTldiWG0rZFRUQit5Nzd6U1lQaVJ1N2pWaDBBeGo4WkVqazZhTE9TMWto?=
 =?utf-8?B?ZmZhMVQwUGpNWGZYM0lVa2t2LytieG1LU3FNSGRhYndJK3VsVENjQndGRExy?=
 =?utf-8?B?WXJERE1vWU5yZ0tmcFpGRmtpRURrZTBuUXJialFGYzMwVDhSMENzeEVlNHUr?=
 =?utf-8?B?UG1uSzdNU0ZPOTlhQVZEWWJEcm1tY3E3Y0tGTHVTWkwrWFB1N3kwd2VRek1F?=
 =?utf-8?B?dDBHR1NqdWhVS2hBNnBwMTNxZW5sVm5wY0N4VDNvSGVJNGUvNXdnK0FxTWJk?=
 =?utf-8?B?ek9IYlJxQXhPenUxTnk1ZTVmclNxMVlmQ3JvMkRDRFI4amM4Y3FhQUtYQTYw?=
 =?utf-8?B?cnZHak1KVEtlaEF3RzhWT2dCWlJPVk91MjRNcGFFQjZCSzNaUDR4V1FOY3h5?=
 =?utf-8?B?NnUwWnR1Zlh0bHFGMjNGV2NzQzFIeS9hQWJBNDZacGFEdVk4a2hWbm1YMnVa?=
 =?utf-8?B?VDNmNnBmamJiTE1ud2FFeWw2RlZIa0JkS2ZJbnhLMlBzTzhLNlp6WnFIZGNn?=
 =?utf-8?B?bWNyMDZpTUI5RDVMSENmMmNnbldlSDgyTzdDUXQ2TWNHMU0za3MvdXhsdEda?=
 =?utf-8?B?VEtHUHpGTUpPZFlFY0hqZlZLcmZTNndiRVRuaTlxb3RCK1ZwSXQ2UE9BZUdq?=
 =?utf-8?B?aURiRmFPN2pBLy8vcXlNaHlSTmFHKzdzWVEzaDBIb0tSOE4rbEhoRkhHekQ0?=
 =?utf-8?B?OFpXRDQ2cUllUGFhQ2dyTnBwaEh4MXZsTFdMS1FNNHBEdkZ6bmNlajBtQXVG?=
 =?utf-8?B?NXJnenpuWXdJWTV0Q3ZUcGk2OVBKcE1FZTI2MTExc21RaHlKN3BwS0N6UEU5?=
 =?utf-8?Q?EW6zNNGZpmQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmZPU3ZqMVJZQ1dwMnp5aDR6VkhxOXRvODBYUHU3TUdIWXBoZVdHVkR2SmpF?=
 =?utf-8?B?OTRUdlpiU3pOWGlFU2tkZnloQVIyL0lYK2p2WjhVSlZDbURQb0JRWGlGUUFL?=
 =?utf-8?B?UHdnTzU2djFDTTArbHViK1lkbW82VVdPNWZPWE1HaHdiTmpiSGk2cDlJYmNS?=
 =?utf-8?B?TVZNWjlEMUl4a2JSeVpFRko1bXRTMkpVMCtRZ3hIM1IxK2svYXRSYjdtUTR0?=
 =?utf-8?B?VWN1UHlmc3IxeDNiZk9tRFJ2NyttQ24rWVAweVdQS3RPRklYUysrd3hzbUt2?=
 =?utf-8?B?UTBMZUk2eFpqdWxRays3a294a1BwT00vSitSc2dmZVVCaU05K3hadEFVZ0FG?=
 =?utf-8?B?NFN3RGNBSkI2dGR0a3JlaFU5dDEyTEFPSUl1R3NOSGc0ajhxdlRJZG84SU9j?=
 =?utf-8?B?QlM4TkNCMWQxalpKRXhBMmZvZFI3Y1lTeXNkMEN0YlMxa20rWjhZRitlQ1ZW?=
 =?utf-8?B?cmlZSDRKSWRKb01zUEVOUnR2T1BBNnB6Zmc1QW9WMTEvWitON0NTTXB2UEhG?=
 =?utf-8?B?dzcxa0twN3puRE9hUnVGdVR1T3hyQ3FIOHVTTWYxZUx5dkxsVXg5dCtRSEhK?=
 =?utf-8?B?c3ZUV2tFbGRwMHF4M3FQeFkxMk9wWlJEbjU3eGVkczFUK3V2ZnY3T00rMFU5?=
 =?utf-8?B?dkEwNmZydjEwa0ZqZllRZllNNlhkM1JWQXZiYm9BWDlqOHVIdC8raG8weWFR?=
 =?utf-8?B?TmpYMTZLQklobHB0eHdPN3BPTkw3c0FUMGNWWWRYelA5dmNSQWl5RkFLb1Zv?=
 =?utf-8?B?a05UdmN0cUFHYnM1S2kzalgzTHhKbGFqZFl2RXJDWmRmcWJZRW9YcVVUWEJQ?=
 =?utf-8?B?ZDhiOFdlRGV3MHZ4aHRwblhLT1NuNHV2MG10eWFZbVBKOG9ZS1ZQT2hMNVNL?=
 =?utf-8?B?QkpaYkhtRWpueWMremtVcUJDZlR4blJhRk4zai9SMklPY0tLQmdmNDJ4VzFu?=
 =?utf-8?B?L2pVMWZCY21HUEdadys4NHpxRktkN09PcStwNG44ZVBsMmxSVEpOeWdBUysw?=
 =?utf-8?B?TGJrcXlWV2xjZFZYR0lLNDc2OEdhb2dvblh3STNVV05Cek5GeHloNUVBQ0Mx?=
 =?utf-8?B?YnZVLzZpbXlaSjcyQ243NVVrendsZmhqZW52UDBiKzJCeGNRK0RnY1RWTHN0?=
 =?utf-8?B?aFFkbkJPR0JlU0xycDBVczA3NXpNK012bXd5bHNuSGlxWUx5emgwTURJMEZP?=
 =?utf-8?B?YVBvYnlRaWRIRTlldzJhbHFIVW81OFc3aHNBWFNpTDlhUE9NbS9weFM5QlFD?=
 =?utf-8?B?QWpkYkk2STFibHplTVNGY1htVnRSRExnVzJWY1NrMzFlRUZ3T1REQmNyNlFH?=
 =?utf-8?B?cWZyTnh2Ritid1J5NmQwb0VGNk5RMXNMck0zMVlSdUo4d3V6YnhWeWZNYzZO?=
 =?utf-8?B?SnZGeEV5VHZ6clFyc1dENjJCMmUzS3VxZ04zMjJkcmxBTFE2Uk5TNVNlZUNz?=
 =?utf-8?B?R1d3RHdZaGt0RUlHQzMvZ2lNNDN0YzgxaVR2S09KSlJHQXU5b3dVQlkzNHpI?=
 =?utf-8?B?T3VpR2hiVFZycUVuNHo0di8xU3AwblVCMnZUQWlYb0lvUjJTVDB0OW5MaSs4?=
 =?utf-8?B?SlhQOWg3RDlBY3BvRjZXSUpId2NDWStrTThDTERpd29pYStxQXJLNkRaTzJh?=
 =?utf-8?B?S0VGWEpiZ00vQUxiN2x3QzlkZk1zdmVTdWk1UlVQQWpXam1wM3JOUU85c1gz?=
 =?utf-8?B?QWl2WkdhYzZ2NjVYSHE4WWEwME9TdjFrMEV4SXB2Y0tuUUZkRUVxTHNGd1pu?=
 =?utf-8?B?MjM2YUIzSlBoL3NEaDVpY3BkM2dBcnA4YVVvYWQrd1lxTlR2L01IUmR4N3g5?=
 =?utf-8?B?eElxL3VKbDlIRjJSdE9lRm1wNForck5SNFBaa1FxRlU0M1R1NEFXaS9zeWN2?=
 =?utf-8?B?RnRySkIxU28rbnhvNHZhYlNjUXRNMzJUeEs1clp5N0xITkh0YUNWRS9Db1Rr?=
 =?utf-8?B?YkNiMlA3TVMvQkM1V05seitNSnViOHE3UUxvQkpRMDBlSitzVTJuVkpXbi9y?=
 =?utf-8?B?d2FMR3BFaHJudW1wZjVjeDYrU1BlYndsNERLak9IdTQvWW5KYVRwUS9QYUhG?=
 =?utf-8?B?OUF0V3BNQnVKMWp2Y2xZNnNZbXdPN2JHTURYcVlTK1dGRlFwNXpmdDlVekQz?=
 =?utf-8?B?c29HWmdpT3pxd2FCYk5wSWx5TTVNWUN4enAzWTlUeGo4ZXRobHBwRFk4eFNr?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 143e6893-e8c4-4d0c-f609-08dd8ecf2500
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 07:57:28.8672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVwc/R7v51qd7lcqOQdTs3B66c+dlVAZz4i6/IjHMd87zsdls7VO3IQ3ne4lq2me0DQI+2j2mx7WEfqGLxSaaA/Xd2H7xQsYpUnI24mmjNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6962
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

Due to changes in allocator, the size of the allocation for
contiguous region is not rounded up to a power-of-two and
instead allocated as is. Thus, change the part of test that
expected the allocation to fail.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
---
v1 -> v2:
- Added negative test for too large allocation
v2 -> v3:
- Removed test case that was covered by other tests

 .../gpu/drm/i915/selftests/intel_memory_region.c   | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index f08f6674911e..7b856b5090f9 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -413,15 +413,8 @@ static int igt_mock_splintered_region(void *arg)
 
 	close_objects(mem, &objects);
 
-	/*
-	 * While we should be able allocate everything without any flag
-	 * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
-	 * actually limited to the largest power-of-two for the region size i.e
-	 * max_order, due to the inner workings of the buddy allocator. So make
-	 * sure that does indeed hold true.
-	 */
-
-	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
+	obj = igt_object_create(mem, &objects, roundup_pow_of_two(size),
+				I915_BO_ALLOC_CONTIGUOUS);
 	if (!IS_ERR(obj)) {
 		pr_err("%s too large contiguous allocation was not rejected\n",
 		       __func__);
@@ -429,8 +422,7 @@ static int igt_mock_splintered_region(void *arg)
 		goto out_close;
 	}
 
-	obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
-				I915_BO_ALLOC_CONTIGUOUS);
+	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
 	if (IS_ERR(obj)) {
 		pr_err("%s largest possible contiguous allocation failed\n",
 		       __func__);
-- 
2.49.0

