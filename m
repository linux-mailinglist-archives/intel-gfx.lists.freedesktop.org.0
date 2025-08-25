Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9E2B34FCC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 01:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559D810E0A1;
	Mon, 25 Aug 2025 23:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RvRckxbs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB71610E0A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Aug 2025 23:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756165907; x=1787701907;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l4d23LEwcybe6dDgwWSchF6bOrjsTrV1gGY96NbLlBA=;
 b=RvRckxbsk/NRS6PyMTOBBlqLGBbH0Fn7Fmn2Pe2AsX+K/9LzeCCj4Y6H
 5Sh2U9kt5osgS7XKBDYCC3Ah4YqdKzX7Bo7YOEJ7rLzY3L6MCsDOCtFFd
 TIpUUAWE6kyP6nZUIK+Kx5/YMtC46PwgjXpnsAaRld76wSrblhAtmvN9T
 VBErV3w+DLlb4bCv7L3hn85668sOllPFDzLS7moxkX5t+DGeojhArhsH1
 po2W5DAjTzgg/DLSbRqD1+L3lY107IJVNnRgZKrYyn5nrWpu/EYdNckjq
 RXahQAyUp5X/DT9lj7tI9Gq70fmI2XQqeF7snEB+DNqZGOsmIn2IQdEXY Q==;
X-CSE-ConnectionGUID: jm321seZRSyhRIqv67WQBQ==
X-CSE-MsgGUID: +rBI8gjhRjCfMR9by6qRfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62217823"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62217823"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:51:46 -0700
X-CSE-ConnectionGUID: iJxzjHjLS1yErr3bWOiOBw==
X-CSE-MsgGUID: 31lfumapTti6yknSIWpoYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="168927757"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:51:45 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 16:51:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 25 Aug 2025 16:51:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 16:51:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BCfOjqXOuw5kFAMU1aHK9bec2I4nIy+6Wjsdbza3F0Mi9/HgaGeqFXnRWVWm3RhG9sLuVO5asY/Z0ZddNSFf2uCBS9i+Wpa250W+SwAa87FVhbRVl+lRhLJb76MrB18LdxIOv4XnL/1PCINjLhf49VQHaR35Vph3l/AusbPdQ4kwLF9RZm46biNxFwEKsyS6oouoIQ5jar/NXyqKJIO/JuVvp4n/kuyYmCQZT24wdcyemH5O9C85RCROB4eHkTattDZFsQnTONS38QjRK6MDNnTiTjbMvWSMMqlMiCjFXGfVL1dqE/5Ct/mRU004p05aZf4hNIgs/n38PNZYt+Ggcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TlFTn5MbbbGoLWs01bTCXmxCbgivFvN6IG1UHgFOHsQ=;
 b=aEZH56+Wrp4efjwBI69kjHKBKXQiPuhnll6dUIiMJZbHhX0OesAnnq/sr+ekD1Q0sF9FOPnPaDpJ2HnQ1mgbNj+qeXn5/apyYa/tTQnyzMNQQyPwfEC+AeWK1T27JqsFkwq3rv3fET3vR7vSznDNhG7GD9GeKyniol1aFBFrkH8SvVwgO9vkJYlnqiPL2sHXQ6qvR5/y3rsRUgtfVddWv8XyAygTbUnllGbK4ZqxDOHDvS+vPX0v/B/18Sy8TDQtESx6y5MQ25DYZnNLdbK+9J125rb6JgiD/8UGz87a+5sjMeoUlQxADeRzUKGsCruKeZAZ5pcXQrsPJS7cmj0ViQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB8200.namprd11.prod.outlook.com (2603:10b6:208:454::6)
 by SA2PR11MB4987.namprd11.prod.outlook.com (2603:10b6:806:113::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Mon, 25 Aug
 2025 23:51:42 +0000
Received: from IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e]) by IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e%4]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 23:51:42 +0000
Message-ID: <4d5075f7-d0cf-4529-96f3-e07193d65b86@intel.com>
Date: Mon, 25 Aug 2025 19:51:39 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/guc: Add synchronization on interrupt enable
 flag
To: <intel-gfx@lists.freedesktop.org>
References: <20250825211924.300253-1-zhanjun.dong@intel.com>
 <0309a6e9-e664-4130-bfc9-4e28e68cc74a@intel.com>
Content-Language: en-US
From: "Dong, Zhanjun" <zhanjun.dong@intel.com>
In-Reply-To: <0309a6e9-e664-4130-bfc9-4e28e68cc74a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P221CA0018.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::23) To IA1PR11MB8200.namprd11.prod.outlook.com
 (2603:10b6:208:454::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB8200:EE_|SA2PR11MB4987:EE_
X-MS-Office365-Filtering-Correlation-Id: 770972ca-ad2a-4163-4fe7-08dde4325767
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmlkT2xPaS93TzVzU0JJaFJjVm02NXdKb3hUVUVTRWlkcURMUjlVdWNWN2Iv?=
 =?utf-8?B?WUhJRmNCd0gxNlVXNVFsVzRwa1p2TGJCYWZnZnRYZ2VPS3UvdjdPdWN1dEhW?=
 =?utf-8?B?QmhUNFlJa3NndVlHK1ozemxKcElXQU9xdUIzZHc4VEJqYldVY2tuNmJ5TmFr?=
 =?utf-8?B?cERoSEpEY05aSkVKWnZTalpxbnZNeEcwUUNaajJ2bGYwZ0R6M3lscE9DQ1oz?=
 =?utf-8?B?aEVwMnBtakYxVitIM2ppS3Vjd0FIelhxSzEyNTZsTjRJTVFrVitDd1RnL1hV?=
 =?utf-8?B?dzVhV2JGV0ovd3grMUxwazNIT0w0ekVnNnhPUTMrUUZhNG1GUkQ2ZmFONDBa?=
 =?utf-8?B?bDRzek5wRXU4QU9Oa0hPWFVXamJRNFJ0T016NjYxeDlSclFNY09lUVpNbHdL?=
 =?utf-8?B?dUUxTVZQeHdVeUdWYldONUt1NENISHYvbWhzZHByNitXK2d0aXYvdnM4TU9G?=
 =?utf-8?B?dnEyaHVhSFErbTQwRGh5aHN2S2pqTjFjN2s1UzFDeHcybFdjWTBlWEJHTjJL?=
 =?utf-8?B?V0JEb0JsbXNnVzJPc0Y0RkEzRVBOTS9GU25lVWNDRHZJMW5EVzMyMUJLbEg2?=
 =?utf-8?B?T01pdFQxRnpOSng2SklvUld3S01MN2RHZSsvOGxPNGFUS2FNa1o2cWZKdHgy?=
 =?utf-8?B?ZlFFRHl6SmxsWldtVjZTdEQyNTIzTjBBV3Vub1ozcEd3UGFDazB4cS9qWno1?=
 =?utf-8?B?RmRVUTg5a0dRZXJMaENZV2Z6bnVWekI2WWJRQitGWmh5aGJOeERvKys5S1hG?=
 =?utf-8?B?d1hrVjA2MDFZUml1YWVnTmtpQXlxc0l4dUQvSGtLYkY4TG5hNFpCV3g5NFFF?=
 =?utf-8?B?eXNlNVYvcTF1UWhDUmJRdEd6T0JhcUlESVFlWkRXTnhQdlF1NGpSUTBtajND?=
 =?utf-8?B?S2thNXIwc1J3SkZvVDFtWVJPUHZzQlBpYjNJWWJJVVl1RTdFbnYySGtoM1Q5?=
 =?utf-8?B?bUVMdGNvNmdLaVJVb25GQVlkZllnZWp0QW02WjBubHZIaEU5K2xSN3RFL3ZV?=
 =?utf-8?B?bzRsWU9ObmdiYzlUd3dNV1laSU1PRkV1TFZLQm00R1JiZUpZQWNlaGZKTVVW?=
 =?utf-8?B?MEtySVhJQnRZMU5sTTNiVm5JYVFWYmxsMXlxMjY4eEFUcTBMaFZpdTJ0OG41?=
 =?utf-8?B?OG16c2h4U3lwUUVrdFltZE5iNTV6TWdobnczQVptSDVoL1MwdDlHRmVzQUVW?=
 =?utf-8?B?V1Ztajh5L05kaGM3R3hvTHFUVUZhSFJmYVVtOVYxNjJ0bUxmNUdUb1JoamUy?=
 =?utf-8?B?bFZVSE0xQXZGdkUyeEJ6akFVQ2VYQ3Q3cEw0TUZHeHFiNCtBcGRRVHpxV3ln?=
 =?utf-8?B?TSttZE1qSXRUSDJYSFc4MEhCVnFML0Y5ZURBT08zNHFNcVdoSmt6NktLZnA1?=
 =?utf-8?B?Y0VOS2s5OXpGZW9ac1JsMDhxOTdzaklLT29WVW5pWnBLbURuZ1BEM1ZEV3lz?=
 =?utf-8?B?V25NU3V2c09RV0hyVDdSekJRZjFjU0wycjBqR3R3Z1JoSFpTN3NFLzYybHk4?=
 =?utf-8?B?VHpXZ2I4d3ROWCtDVGw4SWhCMHF1YzM4WUIxSVhpdkhKcFEwRjZsN3Zxc2Er?=
 =?utf-8?B?NlYwMVpta0hMVHB6bVVXTWU5WGZBM2VLOTlDbkNzdS9PNEpROHY1M0Z6dFM4?=
 =?utf-8?B?VTFBQm9md2tWOFFXbG0veGJyRnE4cVNnY1B3MXRVcUQ4N1ozSlpFZk9xdjc3?=
 =?utf-8?B?cExjU1Z0Yjh1OXUzNGFqYkRjQXBQUGhmZkQ5YjVFTTVVQ2U5N1ZmZ21IVmVY?=
 =?utf-8?B?TlhVcnZ5Mm83UzFWbytndk0xZzJhcHRjUmgya2s0cytMbFdIR0QvM2VxbG1B?=
 =?utf-8?Q?KeRZs/DclbDUf36lggLC5j5hgIAYVdizcjtV8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB8200.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0ZBZUhETEZFOFNDa3plL2lzSE0wZTI3WVduUUkvUWhMVExnblVWaFhjaHpt?=
 =?utf-8?B?VVlBeHMwamxTQXdkdW0vY1F2L1pFcGdFNVVkWmNnUTRneFcvVzlKY3pWVkpH?=
 =?utf-8?B?RzhCVmRkODZBVkxSRkFpSm00b0cwaFJEenRka0FEa2g0TXk3ZWZ0b2FtTVNG?=
 =?utf-8?B?b2RUUUwvWkdIYWtPSlA1TG9yeGlKUElIRW5DMDZMcEgxYmRTdXRITlVKVmtO?=
 =?utf-8?B?dm9EQTdhWDNxcG9uMWhCWVoxeW1UKzJZZGpSemlNZzVyd0dxcThrRUkvTExE?=
 =?utf-8?B?ZmVBajN4VVNaMWJ1ZEovK1NvZ2s4TG9MeUw3ODJZektUQUxCNVRKamNhNlRD?=
 =?utf-8?B?YlRvM1ZSV1BIY2ovREJRR1lielU4QVNNMEU3amI3Z3lRSlZCLzNnNG5wdFBC?=
 =?utf-8?B?YkVHZ05rbDd6Vm9aa240TVptYStuQ2JnYlhUMmxPQTYzL29RU0tpcU9tYW43?=
 =?utf-8?B?V3R1cWVjdUF4Q0RJL2djbzUwb3pYUG9Ob3VYaldQK1VQQk1CNUw2ck1UZFhq?=
 =?utf-8?B?RnBsR0JUYmZLN1lSaWtOVnplMUV1T3JYZTNPVDJPbEV0RFo0UWZYbHNxTktm?=
 =?utf-8?B?QmZ4cmE4VnJ4ZHU1d1RUdFFuYU92SXRBbDQ4R0wvY2NJUmJLbEhpcGVmak9z?=
 =?utf-8?B?NkFSM0tkMzVKQ2RsZWlUeEtZRzRsRmVtbkJZaXpxTE1NZ21vdlJGbFd5V214?=
 =?utf-8?B?SzAzdGEzZFFGREhFamZyVnZ2cjJQTERrWmUzZkdDaTU4ejY2Nk1ONjlrOXNL?=
 =?utf-8?B?elE3UFhITnRsN0hTT0xIYnZaMEY0Yy92a2tmdUxpaUJERVNKcUpDSUtrWVhX?=
 =?utf-8?B?blNWdHhtU01EaEUzWkdFMVAxYmpRQWFPbmdvc0dDV2JhZU9QVE1NTXZFVXNC?=
 =?utf-8?B?RFdLNWU1Uzg1R1hFVVZaUnlVc0w1bWFrTU82dXZDcDRublcydzVuTHRESXpi?=
 =?utf-8?B?NC9tZ1ArMTVtQXNyOVRvaE9KVkVLc0VaTWxvdi9EaytrTEp6M20vWjNENm10?=
 =?utf-8?B?WCt4azE0TzU5T2J4Q2JwRFJEZ3JFOWlUcUVYejlCd2dDWFNjdjZFQVF5NE1h?=
 =?utf-8?B?YmJiZFVaZm1TK2tGb0NxU3huWjBucUk0dEFLc005WjUvaVpURC9MWEMyTGZr?=
 =?utf-8?B?Y2RscmRIdzZVOEdiZlVaVWZEQUJ3QmErT0RuVEl2TVd0R2o0OFpSREFuS240?=
 =?utf-8?B?TFAwUWlGY2VLZktkd0NiVkpRSlliLy9OSWdWcE5heDJMTW55dXdTM1hTaWlD?=
 =?utf-8?B?NXBGSGgxSlJ4ZUJSRTdWQXVGUjgvNEJmUDdwT0NldUZaTTZSWkFHbUNUaTJs?=
 =?utf-8?B?QlVuV2NWWWNTdGY1UC96dnlUNjVrajY2Y2pHbk1PalMwRk44bFpCV04zSlZJ?=
 =?utf-8?B?YmFhVklEZ3NMbkRFZ2x3ZThTaUpVUnpLUlFBMFRsYWNkZHdoa2tnYXRweWMz?=
 =?utf-8?B?bHlVa0VrOEl3NHAxNDFQblJ2aTdhSXg3RCtVV1oxaDdEOGd0YXkrS3UwQ0JS?=
 =?utf-8?B?dTVmbTBnbUI4eDJhZHdVM1lKYzVrV1Vaek5WOEhaYkt6S1YvQWVTSk4zSGNi?=
 =?utf-8?B?bDBwUjBxYit1WVRQamk4bERsVFZqUTYxNGlicHZJQmdoeFBxa3AweVJVcDY0?=
 =?utf-8?B?N05NMDlwTzAyTkdQU2UxNnNyU0RGdXBpK1lPOXUxNU1mTFRjTkdNa1gyT0d4?=
 =?utf-8?B?c0ZBbGxiN0JMN0krYmtQazVxM0lDT0lPa2k5SFFMSEdqYk03a2dwTEVRWHRa?=
 =?utf-8?B?VDdRODNpRTJpRTBFVlUrb0lncHpXZXpuMy9ORmxjN2RpdGVRNktXRUtVMmZw?=
 =?utf-8?B?NjB2QnVBTWY1cGVBK1NzdHZSQThjMzlQQmYvcmp2Ujl0U0lFVTZZb29ETktt?=
 =?utf-8?B?YkJ4VEw3a2ZWKzh0SWV3Znk5d3ROREFFc0U2VGlKbnhhWHVURFltbkFxRllx?=
 =?utf-8?B?ZE0zWjhBK0NJb0pjZTdtMHV1Qy9yV3IrdTc4Y2IwL1lrWnRNSDZvTUVWcUg0?=
 =?utf-8?B?bjdsVDNUR1NudnFNdjJQOFljNW5SMHJqT0E0a2k0VUw3UG9qOFpFNmdBL0lL?=
 =?utf-8?B?Qnh1VmlMM1pwZ1A0Umw3Qkg3MWpJZmpLazJoN3R0T2ZEc1ZEOXZENHB4VGlx?=
 =?utf-8?B?VnliRllJOVVtWng5T0FHakUrSm5MbDc2dWJkNEc3Q1p0a1ZuUHFjSlNkSnRs?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 770972ca-ad2a-4163-4fe7-08dde4325767
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8200.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2025 23:51:42.3438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CwXXc/dXH5EmU6vQm3617Yihq2efevruIhr+f0jSl/L46p2u6cl1ST/WO+C2Y41jVEJHlhPRLYXyqAtSTOnpVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4987
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

For ct_try_receive_message, issue happens on tasklet path, not the
caller intel_guc_to_host_event_handler, so sounds like need to add it back.
Due to the low reproduce rate, I Will test it for few days before send 
next rev.

Regards,
Zhanjun Dong

On 2025-08-25 5:33 p.m., Dong, Zhanjun wrote:
> The skip on disabled case for tasklet add in v2, effected part:
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/ 
> drm/i915/gt/uc/intel_guc_ct.c
> index 380a11c92d63..f0ee3f1235d4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1326,6 +1326,9 @@  static void ct_try_receive_message(struct 
> intel_guc_ct *ct)
>   {
>       int ret;
> 
> +    if (!atomic_read(&ct_to_guc(ct)->interrupts.enabled))
> +        return;
> +
>       if (GEM_WARN_ON(!ct->enabled))
>           return;
> 
> This part was dropped, caller intel_guc_to_host_event_handler already 
> did that check.
> 
> Regards,
> Zhanjun Dong
> 
> On 2025-08-25 5:19 p.m., Zhanjun Dong wrote:
>> Boolean flag access from interrupt context might have synchronous issueis
>> on multiple processor platform, flags modified by one core might be read
>> as an old value by another core. This issue on interrupt enable flag 
>> might
>> causes interrupt misses or leakage.
>> Change the interrupts.enable type to atomic to ensure memory
>> synchronization.
>>
>> Fixes: a187f13d51fa0 ("drm/i915/guc: handle interrupts from media GuC")
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14834
>> Signed-off-by: Zhanjun Dong <zhanjun.dong@intel.com>
>> Cc: Andi Shyti <andi.shyti@kernel.org>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>
>> ---
>> Change history:
>> v3: Drop skip on disabled case for tasklet
>>      Drop memory barrier
>> v2: Add skip on disabled case for tasklet
>>      Add memory barrier after flag changed
>>      Add Closes tag and typo fix
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_irq.c |  2 +-
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.c | 11 +++++++----
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h |  4 ++--
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c  |  5 +++--
>>   4 files changed, 13 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/ 
>> i915/gt/intel_gt_irq.c
>> index 75e802e10be2..21804eec8320 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> @@ -20,7 +20,7 @@
>>   static void guc_irq_handler(struct intel_guc *guc, u16 iir)
>>   {
>> -    if (unlikely(!guc->interrupts.enabled))
>> +    if (unlikely(!atomic_read(&guc->interrupts.enabled)))
>>           return;
>>       if (iir & GUC_INTR_GUC2HOST)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/ 
>> i915/gt/uc/intel_guc.c
>> index f360f020d8f1..1b8d3bbfa16d 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -100,8 +100,8 @@ static void gen9_enable_guc_interrupts(struct 
>> intel_guc *guc)
>>                gt->pm_guc_events);
>>       gen6_gt_pm_enable_irq(gt, gt->pm_guc_events);
>>       spin_unlock_irq(gt->irq_lock);
>> +    atomic_set(&guc->interrupts.enabled, true);
>> -    guc->interrupts.enabled = true;
>>   }
>>   static void gen9_disable_guc_interrupts(struct intel_guc *guc)
>> @@ -109,7 +109,8 @@ static void gen9_disable_guc_interrupts(struct 
>> intel_guc *guc)
>>       struct intel_gt *gt = guc_to_gt(guc);
>>       assert_rpm_wakelock_held(&gt->i915->runtime_pm);
>> -    guc->interrupts.enabled = false;
>> +    atomic_set(&guc->interrupts.enabled, false);
>> +
>>       spin_lock_irq(gt->irq_lock);
>> @@ -146,14 +147,16 @@ static void gen11_enable_guc_interrupts(struct 
>> intel_guc *guc)
>>       __gen11_reset_guc_interrupts(gt);
>>       spin_unlock_irq(gt->irq_lock);
>> -    guc->interrupts.enabled = true;
>> +    atomic_set(&guc->interrupts.enabled, true);
>> +
>>   }
>>   static void gen11_disable_guc_interrupts(struct intel_guc *guc)
>>   {
>>       struct intel_gt *gt = guc_to_gt(guc);
>> -    guc->interrupts.enabled = false;
>> +    atomic_set(&guc->interrupts.enabled, false);
>> +
>>       intel_synchronize_irq(gt->i915);
>>       gen11_reset_guc_interrupts(guc);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/ 
>> i915/gt/uc/intel_guc.h
>> index 053780f562c1..40242bbb166e 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -93,7 +93,7 @@ struct intel_guc {
>>       /** @interrupts: pointers to GuC interrupt-managing functions. */
>>       struct {
>> -        bool enabled;
>> +        atomic_t enabled;
>>           void (*reset)(struct intel_guc *guc);
>>           void (*enable)(struct intel_guc *guc);
>>           void (*disable)(struct intel_guc *guc);
>> @@ -393,7 +393,7 @@ static inline int intel_guc_send_busy_loop(struct 
>> intel_guc *guc,
>>   /* Only call this from the interrupt handler code */
>>   static inline void intel_guc_to_host_event_handler(struct intel_guc 
>> *guc)
>>   {
>> -    if (guc->interrupts.enabled)
>> +    if (atomic_read(&guc->interrupts.enabled))
>>           intel_guc_ct_event_handler(&guc->ct);
>>   }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/ 
>> i915/gt/uc/intel_uc.c
>> index 4a3493e8d433..9d01c3c3d504 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -659,7 +659,8 @@ void intel_uc_runtime_suspend(struct intel_uc *uc)
>>       struct intel_guc *guc = &uc->guc;
>>       if (!intel_guc_is_ready(guc)) {
>> -        guc->interrupts.enabled = false;
>> +        atomic_set(&guc->interrupts.enabled, false);
>> +
>>           return;
>>       }
>> @@ -687,7 +688,7 @@ void intel_uc_suspend(struct intel_uc *uc)
>>       wake_up_all_tlb_invalidate(guc);
>>       if (!intel_guc_is_ready(guc)) {
>> -        guc->interrupts.enabled = false;
>> +        atomic_set(&guc->interrupts.enabled, false);
>>           return;
>>       }
> 

