Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3B3A4F937
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 09:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A3E10E70D;
	Wed,  5 Mar 2025 08:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWrLvmpI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7704210E70D;
 Wed,  5 Mar 2025 08:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741164804; x=1772700804;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M499RTaciKAFBxm9kQy2B1E/aKMfPQE7VI0Q8bZpJAk=;
 b=IWrLvmpIDMVP6bRGX4W0xeUwbcOyDoAqbcepIXs6OMPFVQn6SZeXkfwH
 Kx+4DB6mmiN9xZlFcSwM9AusZVg10OQ8Fn0rMW4QGhUAcQQF7qi4gqBFc
 HpAGP9lEs9qsv8OFMuDnJNK0B+dQPMxjS4VXCm5ByagdUM71rPYiVjb5h
 n8ykmcnv+/6gMRJPHvCEE1ynB+8lIN5sTE9VLNSdsMUmFrjUfLHDqjufl
 3wK7PUXKZQfTBnJt3gZs3L+w6/cGhBB/xP0AELoxPgiMXJkg9/lBMyFNM
 RTAvQ4MrLEsjmmyn12yyqc+AGeGzgTbmJTDOkhFnzvY5ZlQ0MRv9qt/DI g==;
X-CSE-ConnectionGUID: OaBnNQMMR/GSkQ2GBcXHPg==
X-CSE-MsgGUID: l0qp/3ewQcWlTKGECATYjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="29697269"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="29697269"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 00:53:24 -0800
X-CSE-ConnectionGUID: HTzB3p8nTviwqw3Tr/gXyw==
X-CSE-MsgGUID: YNW8Uf7OSlKGkvxQyhJR+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="118634959"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 00:53:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 00:53:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 00:53:23 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 00:53:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=czvt16mTYbHgWw6lrN9pSDgShSlPiF2sV+GOvi7w6qhqk6NpfOMPUPgZ3rsZp8Ag3P0dv4Wn14B8QspeetlyWVvGC6IVV9a7auP23IOS5trNLusA4XtBvPAsWPA7SZPSqakzDIo+pQTRPtnt7CVPMr++zH+vUQFI36TMa8S9bFj9p8UbMSJCzkb/YqJqy3j8IpjNIkRtR/6RY+kJF8gWLV3sm2HWKOG8RPeQRPdK9oTBXtzrvFSD2a0FFdSP+Qt9uapcOmQA8O4iWZUqOWboZc584aY0/h8UiqQ7Va9+S4dRf71nGucjVi7Qtog9LFfOTagvgWstVbacgTVCk9gn8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D4EEF8RYLRZ2dnbiJwtJ8+NFCo1CnuN3DbbsLo0qrvk=;
 b=D/i8PmYrj5IvhmAp0SE+Ihw/fTjBtqBkcoFVMW6SG9dmPiqgSVrhLIScOJVboTXCdnt5u0pntwf/EVNJxLJX2EBCQoRx40oyWBE0O2MweLlx1m5nVBaTXgtyDS1d0SmXLU/m1hUMaOhEBjLUE4IMEVcJBknbBzKsJS117GDr0m8SpsNlOtYVnDGvtK5yinfrP4TaD0xtyxOOSPeMfW2P/tBYaTqG/iI3atWIpfvAruJPSeKRhB24xH+kz5GGjPMjQzE41oy5ev87DXuQROmoY9r9xHX/RAXokltfOY+C48uYMJ6cogc0Rx31h5+moOKpaJ18TXgiP4ytYh2ZS83Cww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Wed, 5 Mar
 2025 08:53:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 08:53:05 +0000
Message-ID: <d2e5cb75-3165-46f3-835b-2a9cd3d9e22c@intel.com>
Date: Wed, 5 Mar 2025 14:22:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/22] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-19-ankit.k.nautiyal@intel.com>
 <Z8dM0XNVzXeHX_ow@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8dM0XNVzXeHX_ow@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0169.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5248:EE_
X-MS-Office365-Filtering-Correlation-Id: 034b3c77-45bb-4fa6-b79f-08dd5bc324f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M25HalgrRlBCRmlleHpJU3I5UzRJaUw0Snh6dDhNZFFMSC9yQTNzTEc5UWNs?=
 =?utf-8?B?WUhmdmZIMThFMjRMbGlkcGZIQTRsYWROejNGY3dNSjg5c0t1WXE2TS9OTU02?=
 =?utf-8?B?OTZGUTFLUHRzNUFoK3pFbnd1eHRHMXZsdU1uUktPTFdjbzdxZ2VFTEpwUlE3?=
 =?utf-8?B?TkxYYktUajl2cjR0YjV1cE9DWUFlYlhEdmgxVXJIblJkOUF2bUlPVXJRaFN4?=
 =?utf-8?B?Y0tGaVBkMHI1eDd2ckxyTE05K2VBelRYVkhsbFBvUDVwalp2OUlNSTlGMzFa?=
 =?utf-8?B?azFwYTR2SDQ0QnNTU1o0UFR4RHd3QWh5VzA0aGQxczMydXkxY1J1c1hGdHdl?=
 =?utf-8?B?bVNhMXFwZzBiNFpVZnVxQ0paRThCRW16SjJYSE9XUU81VkdaM3VwdTBlMmtN?=
 =?utf-8?B?am81b3FHUnJITTMvS3lyWUM5eVFFRmV6eUo0d1JNejJHbVh1czhCQkU2Kzh4?=
 =?utf-8?B?TUIvUjl1bk1lemYyUjRDRk9wMGFpKytUekVSRXAvem1nSFA4QjFUdDNLcm5r?=
 =?utf-8?B?ZjFyZnFGTlBEdlVxSWhmSlAzVXVFN3dTV3JwOE1VQVpaUklpMjUyTVpOTGd4?=
 =?utf-8?B?WGNZb3UxSU1tM1BzeU9Ha3c3UUhTY3NVRDJ5YnU5c1M3ZnpjamFmMTJQU2Jj?=
 =?utf-8?B?R3djSGE2V09uRHl6QSt3bmFlUzU4SFlvcW42WjFNb3RITHB2a2d1bUpLQ0hy?=
 =?utf-8?B?TzFIeFBvdTljc0szZWRyek1UZkVhbHlTRVR1VGhSYTFkS1dkb2tGOU5lb3g1?=
 =?utf-8?B?c2dURXhCakZwb0pSeDh3bjVNK1MzNkg5aFI0YUd5bjdUcXJTTU0vUUM3alcw?=
 =?utf-8?B?V1ZJWmtTSmMwOFZ0VW9CT09HbUtkZzF2WC94QVJVQlpPRG9RMkFJaEx2WURj?=
 =?utf-8?B?czl5bExBaWoxcXNLaVkvWkQrOFJ3MVNTN0w1THF1K1Vja0VpSmsxcGJ0UGZX?=
 =?utf-8?B?OUE4MVhIMzV3WGNUYy9OR0E1VEE2VVhtV1dHSjc1Wk4ySFN3bmw3ZU1LdFdO?=
 =?utf-8?B?NWpyQms2cHdTaTZGUVVrZnc0ZzdNZTQrV0NjbXdCNVFSSGoxZTBHWCtXaWJm?=
 =?utf-8?B?ZmNyWHowRFlRWXF3LzZ4d0Yza2FJT1Q4V1dnN1ZMcVMrdDQ5b0hsRG9aRnAy?=
 =?utf-8?B?Vk5ZTlZTRGFmWWlQUjBoOERwRVc1YVVYYmpEb3RaWnNiL0ZWT2Z5SEV3RXBD?=
 =?utf-8?B?VkptT0RMUGg5M3UzVGhBckN4RnBXaVF3REt2MU5qc3NlYU1JVy9KZTVvWXRL?=
 =?utf-8?B?US9DY0luUHB4RnVNQkp5SGhTQU5TNUJFK01MeHpxMjd0QVZqSkxFZHlOcnVH?=
 =?utf-8?B?b2YvekZtdmg1aENLNGtOU0FnWG9PSy9KLzYxSVRBWnpIakZqR1hXMExZRjh5?=
 =?utf-8?B?NjlFWm43MWNMSmh5WENrZlhRMmthcC9TNEFMODZmSWJTR1llY1RMVUNhcC9T?=
 =?utf-8?B?cmxmOFgzUTZIZE13VFJOOHlaTjFUNGV4Z1cyaHZTVm1sZlJSb3k1Znh1WVli?=
 =?utf-8?B?bllNbHhqMmdSckQ0cU1YQU41QVoyeUN3RzI0bmtZZVZ2ODhPeHZ4NmdreWRw?=
 =?utf-8?B?d2JLY1hzZk9oK2ZzWWVzQkp1WU5GaTFWblBoRzlzYzB2aEpjYVlsQW5LZ24w?=
 =?utf-8?B?aGFvMXpKVW9nTmRHRnU3OXpqcUlTU3V2RFZRWDQ1M3BtZU0zK1BEQUo3MU12?=
 =?utf-8?B?R0I1Nkd6cVU3SStOc3Uva0l1ZTA1QjRqemFFNkZLYlRVdEs5WmFzT1dQUG5s?=
 =?utf-8?B?aUhqSGJIZjE1L1d0SlZyVGlpL2RyN0RjOG1oUkExWENlQml0T3NTL3A4NUF3?=
 =?utf-8?B?MU1TZitaUUhubG5JT3BnOEJHTjNzQzdvcnZLemhiZXl3TURYSzN0U2YwUW1p?=
 =?utf-8?Q?340PvmdsxpAOh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHYzVmc1ZDF3NXZ5UzBaOEN1SG9qUEZhWmNFZ1hWeHBVNm1ZT0JQcTYvTE5X?=
 =?utf-8?B?bERUU2pWSmdNeFd0dDFUTHA4S2pLTzBPTHlYMHR6M3hoam9qZENVSUwrNHZ3?=
 =?utf-8?B?eE5MandhQjEwUVNBSGpGaE11RldQd1RDYkVRY3JwRlpWb2tML0NlQTZXOHhk?=
 =?utf-8?B?SGhnR01UK3F5eTBuNGkvamN6WjhGRDBmdzlEdjVHOHZwb0FzQS9mMm5DYmVX?=
 =?utf-8?B?RVk1WCttUXlYMWQ0MWMyQkxHd0hpSkRvdnRvREw4ODNyUnZJczA5Yjh1dk9M?=
 =?utf-8?B?bzdJRlcrR1dpTFVnZ0s1WGxaRnB5eEMxOFo5bkdEcCtYOGw3QkUwOE5UNUtz?=
 =?utf-8?B?QW4rSFBwZ0grL0JUbkxNdWFQTEd1QW9XNWg5SEtrSW5lUFBJKzJXVnBBdUMr?=
 =?utf-8?B?bGJvdFNEcFlrZy9zTzhsZUlJM0RkNWhZUzExSW8rM1hqS1pVTEtmN3ZoTTlv?=
 =?utf-8?B?RzE0ZW1vSFI2K3U3b1BXV05HZFd4VCtBRkMxenR2VS9rUmRacytGNWpCcjlz?=
 =?utf-8?B?Z216TWh6L2pTMzREWkpJNTZKbFl5T29yV0ptQThaMHZyNTh2Vm9yWTJHejlX?=
 =?utf-8?B?ZmFaUFRqSXhoQlZnd3ROOHB5TVQ0Tk01bTJjQ20yNHpycmVhTFlYaDJEM3lE?=
 =?utf-8?B?Tmk1S1ZnR0wwQUlJc2pjZkRSU1UxQXdJZEVBdk9kZjZ0SkdNbzkwVG14NEw3?=
 =?utf-8?B?ZHFKQlluaUpVMTJ3OXIxYWkrUTlqdkpPYldkcFVEWU43WFJsSGJnV25mdFBk?=
 =?utf-8?B?QklpQUJwb2crbENVOHdYZE5OZlIyVUhZS0tENnBzb0I4eS8yWlpBV3c0dkVt?=
 =?utf-8?B?TFJVSVpjbk5MeGN4M0hZMFFPU0hjaFdOT2tmOEJOaVpmOWtXUXo5VW56WjVN?=
 =?utf-8?B?c00xZnNIZ3RZK1phZU1pWEJjOUN4NE5wWUdBWFNmQU5mSE80NjlTa1hUM3k0?=
 =?utf-8?B?aHJrYlpRUTlDWk9wTXFZUWhNWStmWFYyS3BBVmZ1NXRMOTNsL25WYXZoWDBG?=
 =?utf-8?B?d0tGa3VYWUJqQ0xYTkRvKzFFS1NQNHNXYUdCQURFNUgxOWJNMzExMTNLSXRY?=
 =?utf-8?B?UmJBQ3VhL0w1d05xbjNpM3ZOZWxiRUVncWN5UDRwanY3YVRuRlJLZG1Cc1gv?=
 =?utf-8?B?U2lkdTdtNXlOY3dGRVhNc3c4eWFnWTMvQkw2amt3QThjSWVteXhVdG1Ma0lJ?=
 =?utf-8?B?OWtPOUx4d056bGxzMDBCLzdzY29KM09CUlJKUHVsTWlqeklUUUxSS01iOUJi?=
 =?utf-8?B?MnhLc2k2Nnp2YXJzdGprd21mZjBFcTN0NTk5ampSTGh1TzNFTXB4MG9rMkNu?=
 =?utf-8?B?VWxFbXJxcUFJYTBva1NHS0xxQnFMQTFCYytBeEVVMVBHeVdoZk9hYkl0TDVN?=
 =?utf-8?B?NHIvWkU4SDRSNkcvc1FjWkpUVFF3RmhuZjVVd1BVSjgyMVVUM3IrWXNMaVRZ?=
 =?utf-8?B?bTUyVHMwZXlzYnRlYjdPMFZEcnBWczZFNGg1bDU4TVJ2dm8raWVWOU1FNU1p?=
 =?utf-8?B?N1REZzNzaUd5WWwybTRoNjg5TDh3UVp6NmdUZzI1eExmeVIwbThiQWgya1c4?=
 =?utf-8?B?TnFvOHlwNy80ZGRwU3ZmVEZLWGVORVBPTU56eXpCQlpkcDhxemV1UXpGYnZN?=
 =?utf-8?B?OStXNXU4WEtyWHVHeWNuZ0FjclUxMnA3WXRjNnN5S2JXZGtuY1hRUUlRRWlM?=
 =?utf-8?B?TGhuZm1ScCtELzZjWUZlakVhYkZFMmtybG5YSml2VnBzQVd0ZjdEc1lBSmhB?=
 =?utf-8?B?eUF1YTRYZHJxcDJiTnIxUHo5ZXJBY0VkaFdZUkdLdTkyMUJnbzNxMmpHQllt?=
 =?utf-8?B?NFF6WENKTnN2TEZ3UGFlbFNicTZOOVRWeHdMNU8zTzUyRENXR2phaWZLU0dC?=
 =?utf-8?B?UXJOTUJWZEZFQXd3dEFvbCtRcnVLaHVVVWl5UHdUcGlKeGQ1b1RZSUtRbk14?=
 =?utf-8?B?T3o2VzRvVHB1dVcwVUpvd1BoNXU4UjRKWDdpQnpSTkI2V2lnMlFpeWFwY1RY?=
 =?utf-8?B?MjVNVWd1NG9id1hPWUJ6Rjd0Z3ZwdWxXTnZBTFl0ODVHS2hIMFVLYVU4VUYw?=
 =?utf-8?B?dlkvT0o0ditvZTQ2NUtNNTcxTWtsNmVXK0licnhEZ0M5UTltMTFub0RkbDVx?=
 =?utf-8?B?S1hjQitwTkdrbXlIOENwcm1JRUljeGwyaVdRMWxDOXE0c3BVNERMRHFtSkVm?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 034b3c77-45bb-4fa6-b79f-08dd5bc324f3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 08:53:05.6732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 01u3nqpq9hMbWliYrnBfqoLQMXao6rUjHJaV1jX0p8s1NyX+dHlgOszVGqw+T30/lPWeRGOtlzUtn00CTliJTsUyA/taCaN/AhrljZ7W4XE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5248
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


On 3/5/2025 12:26 AM, Ville Syrjälä wrote:
> On Tue, Mar 04, 2025 at 01:49:44PM +0530, Ankit Nautiyal wrote:
>> To have Guardband/Pipeline_full reconfigured seamlessly, move the
>> guardband and pipeline_full from intel_pipe_config_compare() to fastboot
>> exception.
>> Update the intel_set_transcoder_timings_lrr() function to use
>> fixed refresh rate timings for platforms which always use
>> VRR timing generator.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
>>   drivers/gpu/drm/i915/display/intel_vrr.h     | 1 +
>>   3 files changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 3e8ceafcbbb4..c31a87d8afd3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2768,6 +2768,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>>   	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>>   		       VACTIVE(crtc_vdisplay - 1) |
>>   		       VTOTAL(crtc_vtotal - 1));
>> +
>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>> +	intel_vrr_transcoder_enable(crtc_state);
>>   }
>>   
>>   static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
>> @@ -5418,8 +5421,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>>   	}
>>   
>> -	PIPE_CONF_CHECK_I(vrr.pipeline_full);
>> -	PIPE_CONF_CHECK_I(vrr.guardband);
>> +	if (!fastset && !allow_vblank_delay_fastset(current_config)) {
> Should be ||, but I think this would still break LRR.


Will fix to ||.


Yes this is breaking seamless switch to LRR, as also mentioned in last 
version.

The Bspec: 68917 mentions to disable VRR first for LNL.

For PTL it seems to just mention to set Flipline = Vmax and the fact 
that Vmin/Flipline/Vmax can be set to any refresh rate supported by panel.

Whether its safe to change guardband for PTL, not much sure.

Regards,
Ankit
>
>> +		PIPE_CONF_CHECK_I(vrr.pipeline_full);
>> +		PIPE_CONF_CHECK_I(vrr.guardband);
>> +	}
>>   
>>   #undef PIPE_CONF_CHECK_X
>>   #undef PIPE_CONF_CHECK_I
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 11f23affd13a..0dfe6220ff4a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -284,7 +284,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
>>   	return intel_vrr_fixed_rr_vtotal(crtc_state);
>>   }
>>   
>> -static
>>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index c81f98f83b58..0e1becd7a0c0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -38,5 +38,6 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
