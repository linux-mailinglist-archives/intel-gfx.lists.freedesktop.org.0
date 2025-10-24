Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEDAC068ED
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE7C10EA98;
	Fri, 24 Oct 2025 13:45:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gdOQ87yn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD2A10EA98;
 Fri, 24 Oct 2025 13:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761313519; x=1792849519;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=abl26IgX7sY/ueUW9d5dI6bSgX7bj6ESRwoNZYR3sj4=;
 b=gdOQ87ynIrZEdp3yvVrAfTfywsysNDFazPd/EQeUXUy14JOLwDwle9Nd
 fWaHtJg7uVPHoCQBOfbI1++ST0Xt7D6Ew6XSEs+Pzhgl3UY41fb2UOzL6
 eKqeZcYyCU8VAjYM7Oo9c7r5DRguZyWumld3nutYBz/VsmYarX7UV6PB8
 76uEvgSVkpuYNXAY/oT+qK9MWUehHJLCPToknMoAjGflbiKoT1FNuH4Nr
 Z0btYhXWsWItGOe3QARFS76xjGw6Uuaj9mpitOlR5cptDrOprXkycqYrY
 trDLUC6zw5cqllEF+I0eKH8q8ZcgyeoRitgJGnGD8gFHU5CH9D7QwI2w7 Q==;
X-CSE-ConnectionGUID: vBSFj/yhQkCsZUMH60W+gQ==
X-CSE-MsgGUID: ww7VLCqFTIGMHIRvA/gf2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62703461"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="62703461"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:45:18 -0700
X-CSE-ConnectionGUID: v9FdjC1NRvyOikgBdF5V2g==
X-CSE-MsgGUID: 2zvJUwd4Tju/O1c1zcyU/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="183657997"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:45:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:45:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:45:17 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.10) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:45:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VE9281XVWrgNg3YzsKwdDFlG7jMYACXocCX6RTRAGD0jHgEUZWzIaN+EEeD7sgBwMwvLFXJm/C1SMU8vDyJTDDR1A2ZLLvb/WqIPR11qgdTSy9vH1egGqPELNiVclNHCxAKldL4t55CXxWR1hRmXlEUTYCApKQY5QfU0DHV3l0iDb3eM0UwzL9jKqvuS7R0EsEzfBwrvxUqNFUHv7ek/ul0OqcBgXVjeYPRvuHbikMIltMIB4hEzXOPupOXr9fQEbW8XiiN8H1lhTKj7TnBKZUX/U+l0E01MMwq/TKgH5ge0KpubTW+y24th58mOr5Z4/NpSAr8xBM8fzK19mgvvEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xdMhiZPhqvjjKZB7tkTgdIRvypkVEoG55GS0kMazqfY=;
 b=EKM0Ezi/6p3e4O0o93UGk6Kw2QaQ+tWIaOPMnTIgCKG38aQZ6cL0cMJAOhjYTaETsvAjiMXIeBcuZ3pwcFnt9WPydgZT0z9H0Xqbf06ebqPL3IYO3BAx12zCQPkvMTQ6cMXZNzZYvl3iPEzFeunO86DzPSauqc6MH8YMorqrKCPuUGFH2TOopEYmcuXWNK4a0fdKdRcuCwy5asS7WeWmMABNKxngfFX3HUZKJhBJFVyNK7vM4VxZKhmnBUKr2e7ZWihoNwOg3gffkyEliIatfLonV8TXMxFWZe4LOWPSFT6MpJYN5CQ+oaFfI6F5hLYiN1b3okIoGFFcZ6p+aCEUeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:45:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:45:07 +0000
Message-ID: <d2da7040-4355-4e7b-aa7e-e74085263b4a@intel.com>
Date: Fri, 24 Oct 2025 19:15:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/22] drm/i915/vrr: Use trans_vrr_ctl() in
 intel_vrr_transcoder_disable()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-12-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6314:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c49c2c0-e9d7-4b80-ad91-08de13038af3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVlFOWdsNlpXdER0TW1iajlJcXB5MXR2OVREcnh6cldOMlA5a3k5SDdXcTVS?=
 =?utf-8?B?bFJLeThCMno0dnNxcmJBWEZ0SUxiZlJ2VFR2eUR6eGdtemVJSEZudjhwMnRq?=
 =?utf-8?B?RzRjdGpIS05NQUhndzJlMVVXOHc2TUM0eElEQk9jSFYrNEpmcXVDaHpZYmo2?=
 =?utf-8?B?eVZWbG9Jc1o1UVZ1ckg2aWY5TUlQN3NKTlBxVU9kU1FMN254a2xETEt5VkFh?=
 =?utf-8?B?eXVKazlTS3hnU0VKL09TekVOV2hQdm56MVMyVGJUMlpwdVRiOVBTQU9oNGZ1?=
 =?utf-8?B?bGpVZFZOcjVTWVI5UUdSS083eVk0NUYvWGVPZnIzRHlUUk5GRExHcGNQREdG?=
 =?utf-8?B?elpyc3htZUZjWkpQY1gxcHBpR2tCT2hxcDlFbmYwQVNFSXZZMXlFbWdaTFNN?=
 =?utf-8?B?V0RkM29qdkl6bTl2SHlBd2JmZENXbzBsclBIbEtRRVl5c1htY1lMTXFWWldL?=
 =?utf-8?B?bm1McGxyL0t4RlNVRVJVLzU3MEtDR2NVSG5zMHoyeVg1dWVsQStkRjE0Mm9v?=
 =?utf-8?B?UVJmQnl5dlpUcHBrais3Q0hWQUNRQ0k5a3loTW9kYW5MbnVsZDBHc3BGRm54?=
 =?utf-8?B?aVUyVHVDeWVpNTJvQmhyb1BXOFMzL2NtcUNvbktINXN1UVcvR1F4UkZiby81?=
 =?utf-8?B?bnl3TWl5U1djQmtLdTQzQ3lGWFVmNGRFOHgzNkx2aFI3UWRLREFnL0NocnQw?=
 =?utf-8?B?eWhPdEZOblpUS0Z2KzU0ZVo5U21WOFQrVytHMmhvdXc2azR3LzR5aGdvaHFV?=
 =?utf-8?B?V1dkOC8zZHJxODIwWFlnK2hwVFU5R3pTYkY2YkgvZk1uNGRBamRkRi9DbitT?=
 =?utf-8?B?UnBKdnZOSDQrTEtlT2hQRUpNOFNVTndRSklRbXh1cEZvU3VaNzlla3JENHNB?=
 =?utf-8?B?UnpHVEhyUGc3M2NCbEVORUlkaDNmb0Z1OGhEMGh2MUF6bnJpQ1MrRWM3cHhl?=
 =?utf-8?B?dGNrMEZDOHRScTZMeFI0bnphQzRCK0YrRko5dHZYZ29zQnlQMCtDOTExQTNn?=
 =?utf-8?B?UHVtQXRibXBZWUVmdEN1YlJ1TC9XeXNiV1BsWDUwbVdKZHFOZmFyN2Z5T0FR?=
 =?utf-8?B?emJ4NTJqeXRPTnBTb3YvZG1wVldobVVHUmJUVWc0S1A0RTRmd3g0dTFIV0k3?=
 =?utf-8?B?RTVQeTF5SExzU09nbDJ5OFRFZVdYUU56bjRPdGF3d2lmdVFqejZZLzdHS2pz?=
 =?utf-8?B?eGR6b0dyT1hHWS9sWjNVWWNpb2VuazdXRFZFbVBLenNDU0hPaE10VklSYkdJ?=
 =?utf-8?B?NjRFRDNuS2tKUHo1OERObEhGNkpWem5haDROTG5FNnZta210YUluUVdSN2Iy?=
 =?utf-8?B?MnJ1VXQ0M3BxZTgvR0JRUEpoYjlGenNLUjZXRytERnp4NnFEbHdhNFNzaUZ0?=
 =?utf-8?B?WVhJOHBtbGlzT3JUSExFVTM3dkxGL0VsSnN5QnI0N0ErOU1yR2xub0FDZll2?=
 =?utf-8?B?MktEaWpHazdMbEF2RDhqdjhJQ1JlakhKNFdGMUdTSjlydnpPczAreDRuQ3pV?=
 =?utf-8?B?V01wVGRMTmlNbkNFRUJwS1pSSDlTMWZQSE80UmlQZURUMEZwSUlNaXZ3MGwy?=
 =?utf-8?B?NFRSZnN1OVN4WU9sN2dzMXdoenJzajdIdjBZaVJVYnlQVDdWYllKOVRmTFN6?=
 =?utf-8?B?UWs2WEc3Z0NGRnJMZ0FLZFU4QVNWRnZJWC9VVWQvTFhJdm1pMy9Kd1Q5TWFE?=
 =?utf-8?B?N055M1R2dkpZblRHSjlWNWJ4ZEVzNWV5VzljMjY3Q3JmcFh1aHhWdW9yOG9u?=
 =?utf-8?B?eDhhSEVLekszKzdlTTl0RjcyOEZURzFCcGdobENWd1h1YkhIM3FoYWdtM1JS?=
 =?utf-8?B?czJpTXBsS0wvaUUxQWJhaVA0OGNoRXZCL0Zkd0gyN01zU1dEZWVSTWorVnJK?=
 =?utf-8?B?bW5uTm1NR1hZcVF6dGNmYzhCYytmblhmVExQdzVmc3RRcWNpZklwbkVYZXJy?=
 =?utf-8?Q?1YUTWt/Ofn9kEkqMgJ5b3WeEOIDsZ9O7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3N3Q05sYmJ6QURXRFdkKzFMZ1lDSURod3RqYWxvYlEvUngzN29pNU44aEMr?=
 =?utf-8?B?S3BlZGhqdlRiM2htSHBZaXdvM3VkeDNRZVpZc2p4NnExWFJQY245NFM0aGdZ?=
 =?utf-8?B?RzBacnJtdDZRK3JVQnVVaTVUKy9kekFiQU5VcWh2Z2xiWjJZVy9oTHQ4T0Na?=
 =?utf-8?B?V292QU14clBWUUxudWhvWTBtTDNnaFNlWHd1MUhKM3JjNmFXSFVQeUw1V3E0?=
 =?utf-8?B?U2VNeFhLSWdqQjA0dWZ5ZHhJL2hYTUV1SFlTUGxkMnlyNm8rYUJLNEQ1TWND?=
 =?utf-8?B?cFBrN3BnRkdlbUEwN1RCdkdTeTlUVDJsNit0aEhRdFdlWUMrcGZzL0pjelFt?=
 =?utf-8?B?S05PNVdUNXdzbFIzQkdpWXJIL1R2UG42aWN0MWtNbTh1OHNWVldWTGw0S2F6?=
 =?utf-8?B?enRyN3V4MFl4bEJXblFEQ0MrakNOeldPM0lBaGhwL2hpcGdUa1JQL09aY3JS?=
 =?utf-8?B?VXhOcXBIajUzelZXV0xTSjBlSEt0d1RFd1E5ZGxTSHZKYlMyak9OeG44MFlv?=
 =?utf-8?B?T2U2ejNlOFBCWk92QncwRWwrcWVuT0dxYSt4ODVpVnZKOFpOdkM2a1IvNUFY?=
 =?utf-8?B?NFNaZUhBSVVrT3FMRFg1clJLclFYSU0yQWNBU294WDJ6Sk5KV2ZXVVhaZUJo?=
 =?utf-8?B?U0VCWVJBM3NtZkgzeDdLSDRQbzNRbzQvZjFDUEFVTFBKRUsycGQ1eFdMN0ls?=
 =?utf-8?B?dFdmSDlYUEtKcUlmaFNQdXZOSy91VGdqeVZ1b1orNGRjQjFNdFBBVGw3cDVY?=
 =?utf-8?B?OW11MDNZOVVUYTVkRDJxSFNKTWJKTDErYkUyMGVYUlhmdFV3aGdmbFlpVFBI?=
 =?utf-8?B?L1UxWHI4OFpSU1pHd3RERDJpN2FWMmk4V0U4QnMvelpTbEVTZW50dXBYSDBT?=
 =?utf-8?B?aUlyTFZKSHptdmowdlorRk1GRXNROTBiNnQxalZ0YmxrcWFUdVdiQkQ3eGhR?=
 =?utf-8?B?UFYrcDlaRUtPMXBBQndlUTUwdHZWR1piUk1IQlp6ak1maFhzbU13VGg5bWxs?=
 =?utf-8?B?TEN6d2hnS1BnM3pNbE0rRkp0eVNpYU5qclZ6dUdkUWZJZkZxS0xGejZndlJv?=
 =?utf-8?B?MXQrY0ZJVGhpa1NHTVJyZDNUTHZJcFhST1FRNkpxUkE2MlJkTzJQUTRJN2Rn?=
 =?utf-8?B?WWYrT2UwNVNWckxMYnVNS0lJS25iT1NjKzdhN1NaZGRJT3hPd2x6ODRUV1Ry?=
 =?utf-8?B?Zm04WVRNbTRYTDFzZUZPMWsxb245Q2tDVGM5Nk03WkdrblJ5T2l5UUR1ck1a?=
 =?utf-8?B?QUt1NUh1Ni92cGVVTVVFb3ZHL0JuMkFoTXVSdHhUd1JJV0s2M0FEYmJnRW9L?=
 =?utf-8?B?MTZ3Z1ZYam1GWDNFeWVGTGRoa2NCQzJLemFEOTk4NkdRSDNaanhaVGtqUGhU?=
 =?utf-8?B?MGRmVWtyNVFyVlU1cmkvMjBDQnhEZ1pLb1dlbEtEM2xlYUZWUExIYkF5dmNa?=
 =?utf-8?B?bHFqZklscGs2UDN0SVlNbDNCeXZFU1B6cXNRZjV0UXdQZ1ZJa0hMczErVUlC?=
 =?utf-8?B?UEo4R0RzamtjRS8rdGRmQXZSOCtLenI0QUZkb0VGb1U3T1ZJL3MvMVR6UUtV?=
 =?utf-8?B?YWJ5NkJoa29IbmdCUDdjZ2JPNnpqNEVXM3FzL1VCWS9UekowbUpnQkllYUxF?=
 =?utf-8?B?UzVuaEw3RktOQ0IwN2Rub0pvVEg1RnRpbWpNSEhoWWRJZmNSVWduUXZES0Vo?=
 =?utf-8?B?bzZ3UHJSZDFhd2p5c1hHNmlJUHVMVEhjdlZsa1dQa053dkNBSW50M2JZTFE1?=
 =?utf-8?B?NFdnWjU4K1JkckNqazI4QnU3Wkl0eG5BZ1o2dFVud1NYSVQyUis3b2RPK0lm?=
 =?utf-8?B?STRwMHJoaUp0WjQvRmVScEg1YVkrUk9uM0ZVMFNEb2ZGaXIwRE5MRUNlOERD?=
 =?utf-8?B?NVo2Y1gvQ3JudTF6Mnc2UWJEVHloMkdSeEptcEU1Mkp6Q0x6aHViV1I1UFAw?=
 =?utf-8?B?NVBHZjdocy9HN25POHlRVDFxa0h4TXRvK0FmQ3FIZVpPMDg2bEFaSHJ1clJw?=
 =?utf-8?B?S1U4UVdFc2pDc0VORDRCUEpJMm1MTmNSS3Y0ZisvbHZFN2kxV0JxTDROdGti?=
 =?utf-8?B?UDRNOEZZVzdkTzBOc0lMUTRHWnFMTlI0SHJiWWYvKzZTaTRaV1FwbEhiQUNG?=
 =?utf-8?B?aDlUL25MdXkwMDFXMUY2YkgyeTR5S2VhN2dYQWVPVDRCQWlSNXg5N2g4Q1Zs?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c49c2c0-e9d7-4b80-ad91-08de13038af3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:45:07.3743 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1+E+xsbiVATzQ0l2ZgZ9J6K3GtgzmAcyjHTdyJPIAmjOJBStLwXOItDyc7iOKezUFVvKnx+wNo8lpAKqSev0+r6Jhf7McQ/NX5QRMirmyQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently intel_vrr_disable() writes TRANS_VRR_CTL() with
> trans_vrr_ctl(), whereas intel_vrr_transcoder_disable() always
> writes just a plain 0. Write trans_vrr_ctl() in both places to
> unify the code, allowing for more shared code in the future.
>
> Since the VRR timing generator will be disabled by the
> TRANS_VRR_CTL write it doesn't really matter what we write to
> the register (other than VRR_CTL_VRR_ENABLE that is).
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 562a5feadaab..19b38ad77189 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -779,7 +779,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +		       trans_vrr_ctl(crtc_state));
>   
>   	intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
>   
