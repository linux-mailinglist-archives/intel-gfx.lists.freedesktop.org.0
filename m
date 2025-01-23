Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10457A19DFF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 06:27:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A2A10E34E;
	Thu, 23 Jan 2025 05:27:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XWA4lXf4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADEB10E333;
 Thu, 23 Jan 2025 05:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737610055; x=1769146055;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DehaZZiU5DwXXAdpIFog3SNwlAuL1yrLQM2rCIKCNwM=;
 b=XWA4lXf43belNv6PlIdOy3aVhNTT6ZqxykijPCV39/A39NSNCNr9IqcC
 zQJ8j5X+QbyTuj/rvLlxRa30uQoB9aiSS4asTYkpFRiwHQ52g0lfr7KTF
 XfMpIXpzh8cl4swvcbBXh5dn3VcGqZqJ0RxzFqEbq0JIQMVz1vOMCtWOY
 SedIrcmUjcmlW9M8FP7y+ivTLXlW3xkJ+Jr5S2MVAky7gBRzRJOBxjoSx
 bf/v9gZqzfGDYZSg5jVTCpuFzlXjuUS+Mw1qgzDQ3IOR8xaG0IGkR6KBV
 oyt0ntSvJ6gnXsqOGDSfBHXlYnvKfL+ERTUZJ3Fbj1sescZwhlmH+82qt w==;
X-CSE-ConnectionGUID: d6Cr9qz7QN2E0NTMOijXvg==
X-CSE-MsgGUID: yjitf//3S6CI5RqvF+6/aQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="38010745"
X-IronPort-AV: E=Sophos;i="6.13,227,1732608000"; d="scan'208";a="38010745"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 21:27:34 -0800
X-CSE-ConnectionGUID: dRXE8ksOQaKoUq1vdpTkZA==
X-CSE-MsgGUID: qV4BeQbVTBSw/dm8rim6sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,227,1732608000"; d="scan'208";a="107900688"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 21:27:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 21:27:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 21:27:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 21:27:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zBd2L9DfiUXy96xFelVI85VlkRvxeUuswNi69e4jLqkbUzgz0dsM/PD5BumWwJaSYDNKl5jzT1pwPaRk8EFvgKBTEwH+CvTncEBvka4hfNiHaCS+5wybSFdpXxCrTq+OgJeh1LgLUqAJHLaxQKNw4Mx1Siy4l9z0h+S6RbwPRpXScygrZ7vn9A2BF8Gjta4zRU3UQQYOzjuf6+L3sNX67LqXqqgxJr6Q9AxY3CRUa6pD2OJoc/UvkTb8FGwLzMKDZ0PoH1nAzIrt7HDVFLTVK9s/iNZ9hBaecfLPWf5pO4gogJRItEewybeJbTz5MftU/B0rhbZutiOpr2q/9K888Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AKvZ+xGDpk1VwE1zXbCdYMpMvIcbC0eUacGARAvUYQc=;
 b=PsLJXNbRZJL9o7ts6QZ4hv3tBM5CqyhFqEG0z3uOmdGv+75np4FX8r8a2OMfE30WRdtDNjLUKHm7DgtJyonuzmwhHX0ziCunofea7ibdIwXEZHS3MInoAtFCLJZk7DZU37UFtR3Hdk0XHSqynMCldiN/8il3JOm+qObto83sJHEJ0poSsQYNenKQk6w8JQRRnuoL6NlFkdv04vxXaVP0LDWMuSbS8MGsIEa+jRxR62Q+tHiWdEx47bDi42TY/Erb1ekp7ogCXaAXXT9DkoCCvYk40p7O1G+PcxWpTZF9CwBS/l2V2I24gGbpjRZhhsqBSpbOrNNxPSqLLuZLieeUaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8583.namprd11.prod.outlook.com (2603:10b6:408:1ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 05:27:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 05:27:04 +0000
Message-ID: <b4ad581a-3bff-46b9-9189-2bf6258ce7ad@intel.com>
Date: Thu, 23 Jan 2025 10:56:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
To: Jani Nikula <jani.nikula@linux.intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "ddavenport@google.com"
 <ddavenport@google.com>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
 <444eadb3d664c4624c70d8205770b28e75b2061d.camel@intel.com>
 <5848e8d3-8b0f-4d98-bc19-ba21b13444e5@intel.com> <87a5biokos.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87a5biokos.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PEPF00000180.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::50) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8583:EE_
X-MS-Office365-Filtering-Correlation-Id: a2c944d0-4d06-426b-9c13-08dd3b6e9203
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkhyanVoNVlOcHZrNDJ2blFFVGRERjhzcDl2c0llWXRESk9nMWFnQlZtQnEy?=
 =?utf-8?B?TjdFbEwrQU9hK2Z0UDAxQmZMS2tuMStYU2JnUExJbldpZ1g2K29kYjZNSWg4?=
 =?utf-8?B?dVNOdEVEamZObld1dzZOSy9zYUdSVXVVdXZBTEkyYVZlQk1mY0NmdnRJUmgr?=
 =?utf-8?B?cmNKdTBkdkczbXJ0dWV2aVZnTnZFYllGTVdYUlh3aXpxZnN3Nk9HeG9tR0Vk?=
 =?utf-8?B?OGZSTHp2aFNKWUFUeHpJa0xBUnp6MzVpNmFtQXFsUHl4K1JKVlpiU09TMjEx?=
 =?utf-8?B?SWFGRjUxVzU4dWR3T095ZHRFRVFlV3BBNjFtdDlHYW9DSE9hMlRNeE1lbHps?=
 =?utf-8?B?REpudmNORkF2N2ZWSU1RWjJ3VFVpbW5zalFFNDNIQWpYZjBremRtNkxLZ1R2?=
 =?utf-8?B?eHpXMG1IdSs1bWtscERXK3pnMUIvRDlpQ1haUS9RSTErNmMrUFI4VjFTRGx4?=
 =?utf-8?B?MmVsUGJuZ1pWS2ZFV21PNU0rV2dUT0dzOGhBYjZDVVhSaHFMZyt5WU82UUdU?=
 =?utf-8?B?Q0prWWtKVko0Q1pGNCtrSGtDWWZrNTFIWExwQ3BLL3BLOHNqa2tCSm1NMXhS?=
 =?utf-8?B?VXdzUGtnVTFYdlEyQmtram5EN1IrZTllZWJCWmpxZkVTTjBGVXZ0SklzUWN0?=
 =?utf-8?B?QTJzY3ZUQWZEMkdBN0gvb2sxdWFmRHM2eWdYSUxPU0Y4dlVFTTNjU1JnMWo0?=
 =?utf-8?B?OUlaVUJQTFlPWUVVZ2M0dDE3VXJXTG1FWG5DS0hIb3V0QWhoZ0dOWi8vMjd4?=
 =?utf-8?B?S01MdmJYZ0ozV0RsVDFQVGJScEF2dTN4NFBUMTJSMkV4T3BtS3ZJMXBYaEhF?=
 =?utf-8?B?N2lCU3grbDdhWExQNDhodTZkd3hUTmU5YlRxeFp2a3RXSDF3NlpMZ3hWTlhq?=
 =?utf-8?B?R2FWUmNURlhwd3Jnc09rQlIrc3hDTmY1MDdMK0dCWmQySURsQmxwQ0xsOFNN?=
 =?utf-8?B?WUtxZFYvaExJOWY5ejVGZ1ltcFBsa21DdFV2K0hENGk2SjRjdG9KcU51R1dx?=
 =?utf-8?B?REliOXREV3daOEV1bEJRSCtEdkp0NU04c2FBMXBURW5BNU9aVWR6Sk5rYnpK?=
 =?utf-8?B?TWFqaDJBbTdtUUREb0ZIdnJRR25pRVdXdGRMTUlSMVZoS0dtUlZRVDdNZlVs?=
 =?utf-8?B?UGRNTlJUQm5mRHRhT1RQd2svVmdvUjVINzRqZ1ZndlZBY3RrUWxKSDlPWnd6?=
 =?utf-8?B?SHdXTVRrTTNLSU9TT1N5OExzbUI1dWljWjZKOG5uLy83bG1rOTdjb0NrSmxp?=
 =?utf-8?B?QTVUQnp0MU9GTVNCZHZ6ejhoOHhlSjB2QjZxNmVtUmlhM2J2M1dSRCtmUTRQ?=
 =?utf-8?B?ZWJhN2ZtR1BsRW00SGM3S3hTUWdnVHoyeXBIbU5SWFduM2xCUEhHc0hUMzFL?=
 =?utf-8?B?UWROZmdxMWVXa3Z2ZW9oT0M0N2doRG1WMjJXcEcvK0tnR0RwdzMzUk9JVGo5?=
 =?utf-8?B?VTlUbkw1M0MvQzF2SVVWdFNMV1ZUSXhvbVBOOFBKNG5xNy9vTUUrbUFXQTl1?=
 =?utf-8?B?bkxUZUhOMjJ1Y242TzE5UjFxZHF5K2dhR1RLZmM5Tk8vdTFDcmliQmV4VHo4?=
 =?utf-8?B?QThsRnZDYm5ObWRxdjBXam9rYmJpSnREQzh6S0N3ZkRaYU9tN2t4dm1Yajd0?=
 =?utf-8?B?WEQzNVA3NGhJTHdvQkRJMVMyamo3RnFVRFBzSVkwdWFza3pPaE83Sm1jK1Yy?=
 =?utf-8?B?V0VmVTVNZU1Vd1lIc3hsZVE5NnM4b3hZc2wrVzNoclJJOHRzNCtNVy9NOWtp?=
 =?utf-8?B?OE5vZ09ieWxBOGVqWnI4VjN6eWVzakxYSjJlem9uWUlGVXllMDRzY3AvT2xr?=
 =?utf-8?B?SkJzazFSdkJBMUhZNXU4Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bW4rN2lTcmhac29CSGNWTE5hcHJJQStGNTZqdDloTVp4M0ZydjRlNnpTY3NM?=
 =?utf-8?B?UkJDaVZNM2hJM2FMeXo5czNVUTE5NU1xcGR2UGxCaHJWUWpvRUdaZWVsZ2lp?=
 =?utf-8?B?VDNqK20xcjYwTGFmelU5MXV5cHVoT0FtNHZUM0lRUlBsQmcvaTdXSmFuK1J2?=
 =?utf-8?B?SFJvM2tlZmcveHcwRWdBY1RPNk1iczNTMEg5UEZnMy9RWExNWTlGQ3k0QzdU?=
 =?utf-8?B?QmNONlZFUTZiRjJNMS9BUU9XVDYyQUY0NjRKR0dRN1BQV1FQNTh5NUxBVkhF?=
 =?utf-8?B?UTBHdkk1eFRwUmU5MlJKTmkzWlZxdy9GbzNDZk8rTFhpQWJGYjJoS0sxb1hI?=
 =?utf-8?B?eC9sT2NtL2xGckp0TE1wUWpraVNlNWtEQytpbTByWHpjZFBUQnRlc0N1T0dp?=
 =?utf-8?B?OStUeWU4QWVqY1ljZVE1NllxNUFWYjlsTGorcVhiL2MxSE5DL0ladWhUL2dl?=
 =?utf-8?B?TmQ2RmZMRFdMVTBQb1lLSlBOY2hLM0cvQmpWRzRLVmNZOE9IdzVzdEFkVGRs?=
 =?utf-8?B?OWRxZGxSaGZXemdGNmhETUNrL1BadkJNS3c4SGVickMrWVdmT0MyTTJ2T2JV?=
 =?utf-8?B?ckw4dWppZG4vZWNIT2ZMUHEyeXljVWQ0OEcxcmYyVmtFQUczSEFPSjI1ZzhK?=
 =?utf-8?B?QnBjUzZ2Tk5nZC90MjFPV0N2VjBySGd5M1Y1TktmMzZJbDc4bmVpekJGdWJU?=
 =?utf-8?B?SE52QXhra0xMQ2dselR5c2tzTnhBR0hqUVM3SFFJU1JZSUJXeHYrdTNDUmdQ?=
 =?utf-8?B?eGZVSEtVZlZIb0RvTDZNTGdBSnNKalZpaXZaQm9ZNkxpYkNRV2tVSk1WU21n?=
 =?utf-8?B?bEVOUEQ2S0V6ZDZaTVVLekRHTFhVZ2RPaUxEVjNsdTVBeThqRjFIQ25nUGdG?=
 =?utf-8?B?WngydFM3d2dkRCtjVDFqM0w4bHRvdUxPaWpjT00xY2ErNHJ3VWJQZVNHeHdJ?=
 =?utf-8?B?UERsdDJCV2pNUm9XekZlWEd0VlZmVVBveUVXNGhTUWY5RlRIa1REQllkYlo3?=
 =?utf-8?B?RjlMQURuaFNaSGNGUnhuQXhGZ2xvWUFvNkRMWnN6RWd4RWw2NDRBTTFZRGdI?=
 =?utf-8?B?N0oybjZBWU56eGFHT0RlZi9USVkyeGJITTJhSVVRZEM5S3ZVdVd0dDRxM0p5?=
 =?utf-8?B?R1BjampPMlVBR3dVb1ZMSmZsd2M4NTdOQmdwazhBSWw3T0lLRVluOWFGZXJW?=
 =?utf-8?B?WDFUeGpSbWpRQVh1NDIwdnV5MjFtcCtGczVkSXVHS3VmK1BwNjAyZjlyeGtz?=
 =?utf-8?B?S3JoK1c3bW9nb290RnFtSVE3YUVHTmoxTnNGR2VlcHU0cXdzcDhsRXh3SnQz?=
 =?utf-8?B?b2lXQ1R1NjM4b21YcHR6ZW9QVFBpbVRUM3ZZeU5VNW9GWGpQWUdiUmxkWCt5?=
 =?utf-8?B?a1RkM0VTS2NtT2NTQi9MZmFnSjNlR0kwV1RQTFJMa094Z3NRMEtDbFZPNGZu?=
 =?utf-8?B?N0c1OGhNeGdMTnZjSmc5ZkhVWkEvUmVLNTlPdE1VTjdHMWJhZmJiVUZwU2pT?=
 =?utf-8?B?cVJMcjlEZkpZK1U3bFFpdmxvcm1JMUVCS0dmYjZsVTZZcC9nMnMrK2V6bG41?=
 =?utf-8?B?SXBwbUFON0NNQnNNRVpXQjBIZXVEMHJYdnI4NUwvdzlBMVNPVWJGSEFoSkJh?=
 =?utf-8?B?Y3pyaDEvTEJmV0dJZmp3ejA4aWJNbGttK2xCaHRpeFlyY2F4bXVoK1A1eE5S?=
 =?utf-8?B?RjFmZmZaSVZGTUdWVjhIdFhNbU1XTUN3NitaaytvQ1Y3Z25FUklVa0NPSUdT?=
 =?utf-8?B?azJWNXcrMWRvTTQrRzdFemNaSTBYVnZPbWozYWhaOExCVlZidmNqVlBnQlRl?=
 =?utf-8?B?M25ESExYdXZUYnQ0WVluVUY5N2kzSkVaVHc4ZlJpVm1nMkJNN0JIYUt4Tzhr?=
 =?utf-8?B?WjA1WlN0YlVMVWNWTXlvNlVWTklMdGpXT3RyZGNyV0FmQUJMZnZRV1ZGN1dy?=
 =?utf-8?B?eG9qRUxwNk9KdEc3c3RkY29kQWpGYWJuQnplS0VsZ3ZBOWlGZGxCcTVyalpC?=
 =?utf-8?B?dTAzWVY4YUt3N2ZWN0ZWK3dvSXc4ODhFNDBRdUtFbGQ5aHNDZGZxREdrSk9T?=
 =?utf-8?B?NHk5aFgxalF0RGRxZ1Z1alZtS3J0M3ZqdlIyNG93M1B0NzllR2xEN2x6em9D?=
 =?utf-8?B?TGZnWHN4dVI1b1JROHBGdXFKWnViaHlScVY0MmlzOGdKRlFRQzdpYWg3Zml2?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2c944d0-4d06-426b-9c13-08dd3b6e9203
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 05:27:04.1830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h8WIxezBH6SJ+5mx47z+JGUPrnTPSWs1uDf1jg9yGuXgy3lBXkMPQwhC25eavoLTTiCLvoOvSl5H90SFDrXSlzvURGwLz/Ek5CQLuhHS+lI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8583
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


On 1/22/2025 10:22 PM, Jani Nikula wrote:
> On Wed, 22 Jan 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 1/22/2025 4:15 AM, Almahallawy, Khaled wrote:
>>> Thank You for the series.
>>> Tested a modeline that is not pre-computed and able to see pixel clock
>>> calculation done correctly and the analyzer turns on:
>>>
>>> adjusted mode: "3440x1440": 50 265250 3440 3488 3520 3600 1440 1443
>>> 1453 1474 0x48 0x9
>>> crtc timings: clock=265250, hd=3440 hb=3440-3600 hs=3488-3520 ht=3600,
>>> vd=1440 vb=1440-1474 vs=1443-1453 vt=1474, flags=0x9
>>>
>>> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> Thanks Khaled for the testing.
>>
>> Jani, does the series looks alright to merge?
> Acked-by: Jani Nikula <jani.nikula@intel.com>


Thanks Jani, Suraj and Khaled. This is now pushed to drm-intel-next.

Regards,

Ankit

>
>
>>
>> Regards,
>>
>> Ankit
>>
>>> On Mon, 2025-01-20 at 09:51 +0530, Ankit Nautiyal wrote:
>>>> The HDMI PLL programming involves pre-calculated values for specific
>>>> frequencies and an algorithm to compute values for other frequencies.
>>>> While the algorithm itself wasn't part of the driver, tables were
>>>> added based on it for known modes.
>>>>
>>>> Some HDMI modes were pruned due to lack of support (for example
>>>> issues
>>>> [1],[2], and [3]).
>>>> This series adds the algorithm for computing HDMI PLLs for
>>>> SNPS/C10PHY
>>>> to work with all modes supported by the hardware.
>>>>
>>>> The original algorithm uses floating-point math, which has been
>>>> converted to integers while preserving precision. As a result,
>>>> the values in the existing computable tables are very close but not
>>>> exact. Testing with DG2 and MTL on various panels revealed no issues.
>>>>
>>>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9722
>>>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10654
>>>> [3] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10956
>>>>
>>>> Rev2:
>>>> -Change the name of the new file for HDMI PLL algorithm.
>>>> -Fix styling issues and bit refactoring for readbility.
>>>> -Fix issues reported by kernel test bot.
>>>>
>>>> Rev3:
>>>> -Modify the names of helper functions to align with filename.
>>>>
>>>> Rev4:
>>>> -Rebase, added Bspec references, and address review comments.
>>>>
>>>> Ankit Nautiyal (5):
>>>>     drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for
>>>> DG2
>>>>     drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
>>>>     drm/i915/cx0_phy_regs: Add C10 registers bits
>>>>     drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with algorithm
>>>>     drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
>>>>
>>>>    drivers/gpu/drm/i915/Makefile                 |   1 +
>>>>    drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  49 +--
>>>>    drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 -
>>>>    .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  24 ++
>>>>    drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 -
>>>>    .../drm/i915/display/intel_snps_hdmi_pll.c    | 364
>>>> ++++++++++++++++++
>>>>    .../drm/i915/display/intel_snps_hdmi_pll.h    |  17 +
>>>>    drivers/gpu/drm/i915/display/intel_snps_phy.c |  37 +-
>>>>    drivers/gpu/drm/i915/display/intel_snps_phy.h |   1 -
>>>>    drivers/gpu/drm/xe/Makefile                   |   1 +
>>>>    10 files changed, 427 insertions(+), 80 deletions(-)
>>>>    create mode 100644
>>>> drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>>>>    create mode 100644
>>>> drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>>>>
