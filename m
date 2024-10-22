Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B271C9A9C45
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0830E10E1CE;
	Tue, 22 Oct 2024 08:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n6zbzJ/8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454F810E1CE;
 Tue, 22 Oct 2024 08:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585335; x=1761121335;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zT0cw188heQhKSHmSOZ35SDdyeUm76wyok70wK3lXFI=;
 b=n6zbzJ/8trG1InNXJaOSNIzMupi0yiRkAUlXWbZuhi16AR4cw5RBDmN5
 Fbwcqb5doB4mTPmJlzsUmsQTF0PCbgfnEeNOGi83VDytW5CXYAvoVo0Fo
 6C8FTid3BsvNzqHIoGpD4Yq/D2ODDF2Ang/Bn3DBtBMLLlFneZiRfOCVU
 flszRx65a+3gVmnZ/48DDjg5wFLnuSGmfEEvbbbTxg3M8xl+1eACHi/3o
 Eys8h/AXJb4kGVDx35wkQuU5326/jx/OmVEMd1vL3STDYBCOOiyfhyvs4
 KYmddu3B1rrF7O/l6tk0rS6KPzDJ1TNLvkWNs0U4mNNPUnvbW5mJPgbBf A==;
X-CSE-ConnectionGUID: jV1rp6LQQ4e493QW6g4TPA==
X-CSE-MsgGUID: E7qp370TTs+os1DO5cpyag==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="32914510"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="32914510"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:22:15 -0700
X-CSE-ConnectionGUID: GhMTkDMPSA+cZaOiItCKKw==
X-CSE-MsgGUID: paiFpOzwROGsncCjy880Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84604595"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 01:22:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 01:22:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 01:22:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 01:22:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NrUIRv6dH/By2KIwM5iJgMYBoZcHZqfCP1t0rvTKOO7ZUfKAGxghgCaFn2Yqay2gb+N2uZrfeJoe6fdxX7ilxBx4MBLTjgREOInmBEVOOfiJaoAp/wlY+O5Qrun/HgLzGMmhihVfXtl1CVSs0ajUl6VXvMKHydmyFO3ji5Sx1xb5VKqlTXBUS4y7SrBA8O756KpjE+yKlAbu142tIKjaIEm7ukndpBQQ9fqxNkqg0vCvTvSEs/r3lMrAU8i1251hiHGnD8Xeb6HRIgUt80n4/bKqhGCRvHCys/ukALgA5qLboaKmnybW4aqESnC0QYrHMwyqsfd4r1fAdlbXGG1yjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1rBGMrQjwcylC+TUQvII8NYCK0nG7DleXXlYPW/Dce8=;
 b=w9lwamHG5NGeLIX6hQ57Q2iBuJG2cTFcnKDyNhV/F50l8vIyglf23672pxhgIg/U3UuhpG6ybCdjlQDu6/kF0mjmgFI5qbs2UYWRA/kdMy5IfjNyHgTOHpjS7QA75VHJhFyVd5IjduwUBj4HXRbqYHphu6DbvBh1gUK6Udv6zJb+8hgpLPQJ3COzGRp3WWJA++lDQENc+z8uy2y0v5Q1lYuZMihezyA0HvQgug0WAfHyN9SmrHy/S8dJgWSCz6MDHyWkvEzyD9WdcVRPzfo10pS6JxO95CnKKWprKPlopRzA+P9S2GID8/rGT/3R4V4ksGS4neqiOxy1vUE0O+EikQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7056.namprd11.prod.outlook.com (2603:10b6:303:21a::12)
 by CY8PR11MB6915.namprd11.prod.outlook.com (2603:10b6:930:59::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 08:22:06 +0000
Received: from MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5]) by MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5%4]) with mapi id 15.20.8069.024; Tue, 22 Oct 2024
 08:22:06 +0000
Message-ID: <403c51f6-e8b1-423e-aaa5-60ba95db6139@intel.com>
Date: Tue, 22 Oct 2024 13:52:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
In-Reply-To: <20241022072920.102033-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0148.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::18) To MW4PR11MB7056.namprd11.prod.outlook.com
 (2603:10b6:303:21a::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7056:EE_|CY8PR11MB6915:EE_
X-MS-Office365-Filtering-Correlation-Id: c0bcc5d1-7d02-44f1-7089-08dcf2729d64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUVOZmZaTnY4MThBNkE5OVlkWjJPT291Rk1HWVFDVjBIU25PSEZvU3BxeDl4?=
 =?utf-8?B?QlJVS1J0Nml2OHRIUUdhSTZ0OGNwRHpLOGJ4ekFPbUVKSkdJSWRDS1hTZGRm?=
 =?utf-8?B?R2gvTEZNbkpDUjkxaG4zWUV2VjRjN2duczZNT01OYWR6YXJSOGprVEc2QmNy?=
 =?utf-8?B?THp1dGFxWjJoSmIvbXNYQjNLMUp4NjIxSGdsVEVXVWJkeXVXVm1nbVZxYnBQ?=
 =?utf-8?B?dDk0UktZQ0FXUHlUdjQyaUZTR3B3Q0swLy96TzgyU2VnVlh4czFUcUhqNjhh?=
 =?utf-8?B?eDMrSHNSWVpXOGlzSnFSNmFhSWZsK0JqM1MwK3lLNjJRT2VlQ1BKam16SDRU?=
 =?utf-8?B?bnE3VFkyNmVmNjNNWjRUako3eDR1dll5RHF1dDdEYXUra3ZSSmxxZlNjRXNs?=
 =?utf-8?B?bFZWN2srSCtmL0k5QWpUcXpkZmZKU0VqUmZ1ZFp1MVgyRHY1S1ZUYVFQalNq?=
 =?utf-8?B?WUxlbkI4akxEUnBoS0pkZkdHYUpreWljVVRZTXNWQ1d0cVdPUmVWaXNqbGxK?=
 =?utf-8?B?eXVWcjRWWXBnWGZ2Rlh5UldYSGZ6YUNZZGFlM25VT1RjU3dRbzdQMHdEdG9a?=
 =?utf-8?B?dTB6UlRhMmhaZklvRFRSOEZLbWJCQnpPTEYxNWNuVXNaUGI5eGFUM2JhVWt6?=
 =?utf-8?B?TTdxc3gra3JkelM0T3NoaXl6bmxJbzhISDdsQ3lrcDIwbEt2d1BoenE1MVhS?=
 =?utf-8?B?aFVQSnpiUXh0K1l2cmgzVlNMbmZyMmFtRVI0NVRyMGFER3o2UFJCYWptVWN5?=
 =?utf-8?B?aXZ0aVFCd3hqS0Rqa3NXcERrRDk3cnN3M3lDNDJsNHdxYnF5Wk5UaC9iWE1z?=
 =?utf-8?B?V1pzN3RadDZqSTJCVFh5cDIvTFcwakZaQWVJazZHZlRnWFpLT25HRGplc3ll?=
 =?utf-8?B?L2IwaG1rWUhMZVZTTGF4OXEvT205WSsxVXQvY3FWWmkwZVRTU3NldW1HQThs?=
 =?utf-8?B?UEg1QmZhdjBadEdwT29oeTdWRmljcjBqZElhc3dTbUR6NHd0d0JqSENRcW9x?=
 =?utf-8?B?TFpERlcxYzNoS3VuQkVVdWhPc01KSFdYOC9sTEdVSnVEajRKSGVKdW1FeTBP?=
 =?utf-8?B?Y3Niek50UnlvbFJyRmtLcm1FOVFYZHVRNlpJQ0d5WlN6OUhscms0NDJJNFBM?=
 =?utf-8?B?Nk9UYnhFNUlwcDNVZ3duQmNHdHZqbUIrSTFrWmVBNHdpWGtiSXV1MmFkTHJ1?=
 =?utf-8?B?MVlYU3RCcmlHcklQbFAvdjVTb1B6MVYycWdZUkFDeVRQd3JQU3NKNUg4K0lQ?=
 =?utf-8?B?NEdCWC9La3A4dnZ3T2ovWHFMM3J4OFlRTmNKY3M1WktOTmF0cXNXelk5bjJK?=
 =?utf-8?B?aEFycURVSUZHbkVDaFFFaG1DWFdua3NCbVNjc2hzY0h1L01VV0JOVkxFb01F?=
 =?utf-8?B?UzBCZmc0bGRtNndyYitVT3hWRmtjeGpmVVNKUkR0dHdWZmNIekdQVjk3ZHMr?=
 =?utf-8?B?VFFkTERlbDdPT3p2blJUUHhNVFhZMGZ0dEF3SkJRcUhEMlByN25kWkJLSUdV?=
 =?utf-8?B?a1RlWWQ3dC9HZitFb3VVUmE5ajRsOHBMZ1U0S1BQS2xucVl0V3haZHd2ajF3?=
 =?utf-8?B?WDc2TXdIbjdvQTlVdDBkalJGc1NETG92bnQwYXBXWTZjVkFUOGEwdHcrSXdY?=
 =?utf-8?B?U0lZWmIvaDU0YXJFVERRVjRZVEpWeTZMTmJabVFmYUNxbk02Y1JNdVhmaXNX?=
 =?utf-8?B?N0VOOTRzN3A1NklMYWx6T0Yvdi9qSGJDUHV4eFVkRUtsaUkrcUM4d1c3NXVQ?=
 =?utf-8?Q?sK9sFymbzIucWEIcko=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1hHc1hyTTRNV3Z0VFdSNEUxMmo1NlkrZHdYOXFsVCtHcEdzaytnMCt4cGxr?=
 =?utf-8?B?WWlSVTdBYU9jeldub0Fadi9qS1JidlRLSWI2dHFkNnlIMWY4TUZ2Rm85bExj?=
 =?utf-8?B?cjlHd2o3MGt3V0hsL3BwWThsMnJFZ2ZKamdwQjVyUWtQS3l5MWg4Q1FKU1Z1?=
 =?utf-8?B?OGRyNlpvWVVWQkFrNkVHai9HcDhiQmlNanM2dG0zZDhMU05IRkdXa2pZaU5k?=
 =?utf-8?B?VTNIaGU3cWJ4U2xnWDFrd0pMMGMrQm42TTF5NU5sV0JjMlRHTUVEM1ZXWURN?=
 =?utf-8?B?SWlvN3ROazl6Tkk1RDhQWllzUVRwc2lkYjY5ckJsRU1Id1E4NTZMVW5DSTRs?=
 =?utf-8?B?OGRDeXRlZXZtaGF6SUk3T2paZXcvNHVBbERlYVEydDhpdURqL1d6Z3Byck0r?=
 =?utf-8?B?bm5JYUhEK3lYUWZJTUpGb2ZmMWxRZE40VEVCTkN6eGxvcmNiWnR6cTE3Vy9a?=
 =?utf-8?B?WExOTHltcnU5c1FFTXJkalpUVEZ6RXgzVU1SdkJFdmxLbzlkRlRaeDdBb2Nl?=
 =?utf-8?B?Mk9CeFFwamF0V1BxZ1pqVnEvR0JvZTF0U21QY0dxckZlYkdSbENwM3ZLem92?=
 =?utf-8?B?eUNIYnM5bExqcUF5aXR4aEJjaG9Gd0dvMjIreFBka214U0NOeHR0ajIzVmpC?=
 =?utf-8?B?YVlOQ2FtZzNabWpWcXNkamgvamR2bVd4eXQ5aWFXbnNvam5VUXhnUjFOa2pa?=
 =?utf-8?B?c3FrZzhQVWsySW5QWmM2UzJPQkp4bUlTSVFGTTJxSkhUZEh2bWVsSndVOGRO?=
 =?utf-8?B?LzRkUjFCRkJCQmtkVWxyMExOVHBBU1c4dVBnQTNvckw5ZU1LL0svY1BkbllD?=
 =?utf-8?B?UThSVS9NaTFUVTNrZFlJRURJbGh1UE9ORFJPdUFOdVZsdEFpZ05QeUw2L2R2?=
 =?utf-8?B?YnBvZUdWSk1hQmJEM0RjU1Qzam5nNmlQVDRMSE5aWUhzSVovUFBuQWNyRnl4?=
 =?utf-8?B?VmN1UHk0a2FnQXJPb1o3enVLMElIc3NIdHBYODZ4ME1QRytyR3h3V05mMkF5?=
 =?utf-8?B?c3hnZmlkUUs3MmJDM25wcWNrS24wNG1XUThCSDJQNjNOVEdwYWhIdWwrRzVW?=
 =?utf-8?B?WHpTN05YQlF4elZxSVJNNEsyVU12U0p3UVlJYk1CZE5DeGFQUnhnKys4cEVj?=
 =?utf-8?B?bnhEWXBYY0VYYlluTiswaEQ2TXJzL3RWQkJhbzFmRHFiSExodnF4TWNmNERm?=
 =?utf-8?B?Ymt1YUlZTy84WURERzRLU3QvUm51WEVtZkQzWjBKT1pKWmpaOEZjeFA5M0JN?=
 =?utf-8?B?SHpqa1d6ZEJRRXV3ZjNMWWsyM3VRRlB6Vk82dHpWeFFCQXo3d1l6bW1FMTdR?=
 =?utf-8?B?TkZIc0Z3RVJTSnpqTCtNUVJtN3NWVnFheFFucDhMYzFKQnhoRVFDLzlldm9L?=
 =?utf-8?B?V3FwdjlMRTFJK1BERGVtc2NTd3Q4NE55YnlnaFhKRGQ4NFQyNzNsRXB6aUt3?=
 =?utf-8?B?ME9pT0hkNDJ2a2h2NVBGb3NURkR0THNrOTJ1TFlWL3I1cnQxOE1RN1FIVEdE?=
 =?utf-8?B?ZHBTNHprTE1ielprWnhEWHo0UnFTcWlrK3BjNm1mY0lQZjNVa29GTW1yc1oz?=
 =?utf-8?B?TjQ5bHF4eHRyTCsrakVCSmVZZUhrQ3A1ZlRIUVRoUzFEZnFPSTVaUFVjbFJY?=
 =?utf-8?B?RHNGNGUzNmRuUHozZkFLSkRVbzdJRlBLTUhaL2lldENjc2poaGxjMlFQdHlJ?=
 =?utf-8?B?MGZBL3VOT0xOUnJlaGRVTnR1a1d5YitlTktiSGlleno0TnJhWWNMcEgvV1Ns?=
 =?utf-8?B?MGQyNi8rRmI4cjBzYm9LOUJqb3pMb1RBTjlnVWZJRkZVamdSQ0tyeWFVL24z?=
 =?utf-8?B?MllVRGZERkI2ZllhQkNjREgyWnp3bUNqcDZFTnE1TlBmTkV3WWNJZmppTWNu?=
 =?utf-8?B?dlRLYVBTdUlkbEJRakVSY29aU2gyc1BsQ1pIOVJtaVZ5bzhpZzZydDd5dGY2?=
 =?utf-8?B?d25VMjErOWlBamRhSU1wVmllamFHaHJiMWl4bFYrMnF1eE5VVVp2VTJMWGRt?=
 =?utf-8?B?NloyVVhjcmVFR2JtOHIzdFhEOVZWeERsUmx1SlpkQVBFTTRxUEZMZ0VhZ1ND?=
 =?utf-8?B?bFNXUmFDcGRBRnZOTlpoSUhGK0RZd05iaDg2cWpwalgyOVl3ZEU2ZzBxS21s?=
 =?utf-8?B?OS92bzhDakh0SE1CV1p2VWNGbFk3OVl6WFRKdW9NanAvL3ZER2oyS0dsUlJZ?=
 =?utf-8?Q?j2prV00hS7XlUFmtKQkKJDY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bcc5d1-7d02-44f1-7089-08dcf2729d64
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 08:22:06.3726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ig40gTf1N6pEihaNf8T/u8DGe66OzMi0wghenOfOb/Fko1CK+vd4uWgMDwsd8lYtj3izZ0686Nl/rLEamQAmWipnT5DKtNrFWJw1GB7wTNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6915
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



On 22-10-2024 12:59, Suraj Kandpal wrote:
> Add check to remove HDCP2 compatibility from BMG as it does not
> have GSC which ends up causing warning when we try to get reference
> of GSC FW.
> 
> Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requirement")
> Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
>   2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..2c1d0ee8cec2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>   }
>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 231677129a35..efa3441c249c 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -8,6 +8,7 @@
>   #include <linux/delay.h>
>   
>   #include "abi/gsc_command_header_abi.h"
> +#include "i915_drv.h"

i915 header ?


>   #include "intel_hdcp_gsc.h"
>   #include "intel_hdcp_gsc_message.h"
>   #include "xe_bo.h"
> @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>   }
>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)

