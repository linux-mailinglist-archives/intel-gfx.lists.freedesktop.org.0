Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2509D56C5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 01:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A3810EA90;
	Fri, 22 Nov 2024 00:37:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sar/1tmM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02AC10EA90
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2024 00:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732235862; x=1763771862;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JGBR9C5wOwb8kwM/JvxzNPLT8r6GRM9RBwhuXj5PVQI=;
 b=Sar/1tmM+ZAqDGY869k+ZYKKcx2bqN3hVXQT3UhFmwcy3gYVazjSY78/
 swdA4gVp3Nc8MBZGKfJ++0sixyhjXkzGWwUvjJuuoOGklTbdfqNlNcN4d
 QZu19ooeGqHxYaQJaj7Io8nURWXvb5lS8R3uEfUP6MmAhBqfo+l3N/3RR
 FFmVQ5yCWJcYnV2Ev8J5eVvQNiuBIsmPtUzEiB149LJl+wH8itleCukH5
 qweKM+yKOEv8G3G3Wwm9GR74Ih5mUV7sOqBSKZntx0n0jLy9D+FKAoD4x
 OCHcvoSc8fZ9cAFIx8ly9houdaOuj9c88jOOUCNS68YolQTODVbTcPlku g==;
X-CSE-ConnectionGUID: EOc7YdRcQ1axKUD6aksCtw==
X-CSE-MsgGUID: w3Cwf+yRQF+oXKqxtY42gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="43442326"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="43442326"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 16:37:42 -0800
X-CSE-ConnectionGUID: 7MisQ7aXRw63Ja3NIxUCHg==
X-CSE-MsgGUID: BLdCWa7aTaqVTygDT+OZBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="95456432"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2024 16:37:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 21 Nov 2024 16:37:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 21 Nov 2024 16:37:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 21 Nov 2024 16:37:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rM3vVNhlvCo+KZOvVhWsJ9AbBIIO02YvURLmaASV8NeMOGywyw+QUp9thvLNVDPW8ucN2il7a1CsAgKX2GSTSTY/8AAWS+fn2jBW30sF/4JVqBT1/OMulRAvbM7zdeR3ZQuB8NhzmF8ejUirS0ImMIP/02p+fp5ZqO6aPdp8UQ4WMB53a9/SFXrXO26R7Aa1omak6j0ezF0CqjjLnzgkMcwEsSeqcKTGHdKBr4mq6Yowot7TvwwV4/6KgSVOUTOfWstq/u75j9zJaPKpEiOSTfstot5PfgzhAdyLOq7i0jqPZCXDUUtc5I6Yvvm/hfugjGe75QxkOwREWCklMnSMPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Xu3uoh0n/OAmLSMKQCbJm+qV9bIwWBw0VV4TA+bHuo=;
 b=d1L5v8+1y08B35YRrLjHMI+S12kDy19vGFq8RqkCXLaDIki+5C11bEfnvP7m9q+D6LfLVoe+Gc1zHs8QzUmjBiEcWWZ8JDPcwryTPsA2hGshyKCqCW+2Gue/1mZn0E0CYDRFptss8eRhyzAT0SKyA6HtUdlSySQF0ru9cbmy1/Ok4Bq6iFiGL8KTIkcjAx0dc1l4IcpXnq+Jm9fHTvncqxNZVwq2nUjzuIWvS5CS5mvOqNsWhC2vtSpI4MHncpNxc+h4CznOyBHN4M2d94f+PPzyLlX/+QDcAH5nXIWbr/Rqv/TgFsVQbXx/+ha1eQURfA4kSSEtxyutF/jq1fM5LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by SA1PR11MB7013.namprd11.prod.outlook.com (2603:10b6:806:2be::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 22 Nov
 2024 00:37:33 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8158.023; Fri, 22 Nov 2024
 00:37:33 +0000
Message-ID: <f3974eb2-e694-4ed7-a827-dd9dc1c1c55a@intel.com>
Date: Thu, 21 Nov 2024 16:37:31 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] i915/guc: Accumulate active runtime on gt reset
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
 <20241118232223.53639-4-umesh.nerlige.ramappa@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20241118232223.53639-4-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0355.namprd04.prod.outlook.com
 (2603:10b6:303:8a::30) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|SA1PR11MB7013:EE_
X-MS-Office365-Filtering-Correlation-Id: 85536391-8220-495c-3c35-08dd0a8ddae0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXNYdTNDWjZTUkM5dEVUdWhHZm8vNzhkdzZ4eFhHcTNVQXp0NHhPWlVnNFhh?=
 =?utf-8?B?QWEyc015eXJvT0RFYzBuS1JwTW9zMlBrOVdYdUlLT25wd0pXNFk3a2FjR20v?=
 =?utf-8?B?NEVhTkhFTUtIbjdWMDlRNWlYSGE1Rm5iUjBEc3pJZFc0bkFhaFNLUVllMXpX?=
 =?utf-8?B?OGh6L1F6cy9iTklmSHhmbHdCVjgyeDhxZFhpOEVDdW5mVUROL2htd0RBWFh6?=
 =?utf-8?B?Rm1FZEx5RUl4b3pSWHVuNFhxQnNaYlVtT2VZTzhiQUptT2lHaXh3VkgyeFl5?=
 =?utf-8?B?d0xWdUNhQWtyam93Wk9zcmdWYmNIMUpRWGVHVnpKeUlSSXVmNFpIRzFHTWJU?=
 =?utf-8?B?Uk9CYXlXRE1Md1dkcGk1WW15VW15aExvNFQxL2FTL1kvMlNza1M3b0J3Rk1l?=
 =?utf-8?B?dFdDNGxWSkhneTk5OExUYlJ5bkg3d3hWK3RMUHlRRzVUcFBvckJwQytMcTh6?=
 =?utf-8?B?bTd5WDdpRmNpb0thdkZ4c0NGRStJRlNSelZweDFVNFAyWVp2Nmt3WDYwU3Fx?=
 =?utf-8?B?YjNwZ0s1SjBGcGR6SC9yQWc3Kzg0VFlEVTV5ZGVtSEh1YnBvaXN0U3JxYjhC?=
 =?utf-8?B?QmkwVDRtMkJ5bG0zWE00UnNPMkZvbDZlcmhZYkVNZVAraGwvNEVIb2pGZCtQ?=
 =?utf-8?B?KzcyVi9xWGszank3RHFBZC8zeGpWWUtETlR3NWxjQ2lub1JJODJkbUpGcG9K?=
 =?utf-8?B?ZHhXalhPd1VZbit4T0llZXp5dS9RMyt3Y09QRUgvYWUyNUR2T1h1WVN5RmM0?=
 =?utf-8?B?REFjUllhR3hjdFAzN2VwNjFPZnFBMDVwWmljYXRMakdTUDZSdG8yY0VlRStU?=
 =?utf-8?B?VWErZDJVeDVvaXJpYUdhd2NvbkFIR3V1ZWdkVElRdWg1ZU0wZ0I5UmluQTc4?=
 =?utf-8?B?cll1UC9aK2l2VWkzWnVnelMrRlpYVkxGdXlsZ0MwcGU4dmhHb0c3QWVRQ3hj?=
 =?utf-8?B?S3BoSXBMWUdDQkFwZEV2VmIxenc1UU54TWc5L3cra1Via0xkc1h3OSt5N2V2?=
 =?utf-8?B?andsNmdCYmtTV2wzTTF5QTVWMzNPWjFiVHZrZ29xNGJjVUdvcXVxaXVQUXBC?=
 =?utf-8?B?c3UweGRWMjdvK1J3SkZiNWVsN0FmWm03c1U4RTg0Sml1Qks0Rm9SQmdYVi9J?=
 =?utf-8?B?M0R6S2M1VTcvWkNkdGQvSFRoM0U2ZzJ2b2dvM0xzbm96NVNyYU5DZTRjVDBh?=
 =?utf-8?B?M0xMdFpEaGNNS3lNbWEwODJpYjJ3TURjR2FBRThFWS9PRllHL2hicVlIelFa?=
 =?utf-8?B?bEFnQW40NEJqeFh3bC9aNTFCcE9UcG9XbGEwRDNkTmVwbzF3eXBSQ1lHZ0g1?=
 =?utf-8?B?SXBjV20wWlFqNnlzZEczdVV1NWw3ZUsvdHVnU2hUM2NnSkNSRzloQXlkQzNU?=
 =?utf-8?B?a0ZFVzFPaXBIWEswckY0ZmplcEJCeXo4Uk9uNjJ3Qk1TTUJZemZBYlhUZm1r?=
 =?utf-8?B?cG1qVlo3UUlGbnBqSHdwelc0K1JsVDlyZ2EzSFZRM2hTQnhOeWRDRkVTNWF2?=
 =?utf-8?B?RUIxa0ZYTXREaSsvczR0Qi9sU25Vc0hEb0dYTHpmK2hGQXA5OEd0MWxoSU5h?=
 =?utf-8?B?K2hCbEllSCttNXFVNEVVL056S08zL3hKR3YydVcyNEVRSVR6T3BqSTFwZHpj?=
 =?utf-8?B?MmRaM1NyUmxqQitUdm1IZU1kcDBMcXFMN2dvOWVzMjFkM2wvK0VWTngxeDZM?=
 =?utf-8?B?Mzg1OTNGRVV4VkVmQlFiMzBCR29XVUJnOVdXSTcycmFyUExuRE0veFZQN3o3?=
 =?utf-8?Q?80IJ61ias01znB/+uRMLBGGKRMp0nfTTfRFEodr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3VnWmtlQ09PZStEbHhQdUs0cGsvTVhydFNFNzBrZVhmcmpTNUlkVGpiZVhm?=
 =?utf-8?B?Z215eTZIaVRmN0trUHY4OHVqTTFGU1cyMndEOGc0N3dQbmdBbnJLRVBjb2dZ?=
 =?utf-8?B?d2NVZktxT1hGcFB4WFBDdGdVUld6VmhBcDhNRDNNM2xicHJjc3JpYU5DU2pj?=
 =?utf-8?B?czBkTkxONEJpYXhaT1dpbEYvUm43eTV6ck9tVHBaK0RFRTVUd3dWU1lLOXBW?=
 =?utf-8?B?MUJhNEM2MENLZUNNSlp4ZUNvdnVpbUdXWWRXQUdNVENTb2pMMDhWcjM0c0gx?=
 =?utf-8?B?WE5SMHNYNFYxaGhicmRpVW1PaUo0RjEvUWhrR2JMNVVOZnpTNkdyQ2V0dHJG?=
 =?utf-8?B?SmxpQXhwMlNlRFpqeWhLTFpzTFhidzRHNVhYRU5xN3l3a0xaSlB0VTc5Zk1x?=
 =?utf-8?B?ZGVhdUlIbVBTOTE0ZnlOTjBFbDFnN1hLZjExa1ZIYnkxa0lXN1I1TllFdFNN?=
 =?utf-8?B?WCt6OHpSQkwxYnVXcnhuS2dQOXM3SVpmTHpudWUvL0E5aUg2Mk5sbFRVZTg1?=
 =?utf-8?B?RFd6VFJzR0NidklNZXVLZW9iaTBmVWtwR0NaOFJpVWN1aS9IYW8xc08raldL?=
 =?utf-8?B?aEo2bVhWU2RJSVlOc2w3eUZPaXkvZTBScVpsMThVWkMxYzEwSEtMelhuUlJ5?=
 =?utf-8?B?VnZqdENhWE83QlgwLzBiMWw4WXk2NzNwYmxRcU1vTXpka2M3bW1CVEYxUGpj?=
 =?utf-8?B?WFdxa3dBd2ZBeGd5QzllZ0JJbkRWcDQ4ai9aKzJZVU13VWM3YTY2aHEzK01E?=
 =?utf-8?B?R1V6aStrdVh2K1RMUjM3aU52S0NRUGN1dWxQdWJ1N2d0K1hsVWJFd01pZEJU?=
 =?utf-8?B?SmJoNVFWdVNZOWZOZ2tndmtQZWxwUWdvaXZqckRybmVNbktFZUNEOGV2RlBP?=
 =?utf-8?B?N3hlb0NpTnkrbXhHTFlNV0NiSWN1Q2h2SDhIY0E4cXorTEJPVWlMUlRyZnF3?=
 =?utf-8?B?SzU2eHJkQklFRTV1RG1lTXBGUFZWNkczeXNFZGxDKy9iTkdUVXRlUGZ0c0lL?=
 =?utf-8?B?N3dQSC9HNGZDbXNDRUJOVnl4YTBvN2pRNzNmQjRFZHJwYlB1bG5NNjVXd3Fz?=
 =?utf-8?B?UXA4OWZCTWFNQnRYdVlldDlacTVGVlVwUVBwVkdLYXQ2S1U3Y1I3eFhoeG5W?=
 =?utf-8?B?UThMTHNmVlBhODRTQ1dBcFMvU1R2RDRyVFFXVWpDdENJUHR4TXRSYWc0Q0R6?=
 =?utf-8?B?YWFzWFVpQmgzMzg2ZG1iNFRtUThjRm9RNG5HeWE3bFZockJyYXl0TkttTHNN?=
 =?utf-8?B?QWMrT0NtVXBpeHhGaE1HM1J5R0lNT3o4cWgwRkhvTHlCczNrRE1ERWVYNFNa?=
 =?utf-8?B?NUJDNFJKQTZ3RzUrQ0l3SDRtbWd5M1JDcWNyU3Q4b3Zzc1dWRlk3TnJtYkMz?=
 =?utf-8?B?VFFFdlltOGlTOTZWTC9KWmErUGlKbk9NTmh0VXBFbkRTNmpJZVNqMnYxcTJj?=
 =?utf-8?B?dlB2bGxsOXA2S21hZmNldHZYaEhNVUxqZytIejRpRzdaemtuWFVMK0EremRJ?=
 =?utf-8?B?STlWMGFyNjgyendvbHVVcU02WDdKM3hKeUJWMDFTUjFpUUpSSzRQVTlxQjRr?=
 =?utf-8?B?QThmU1VDTFlXUzRpSTRwbG01QkZJbmdJOWZYY2lRRTYzVmNGRFdRbkhEL1Y0?=
 =?utf-8?B?N1pKb0l6TzQ4czAvaUREOW5XNnd4M2E5QllaVTlOYmpwZUYwMGs5eW5wcFBH?=
 =?utf-8?B?T0p6TmxnQmdRcDF4K3g5bGFtWFovdWM1QlNvOUIwNytFLzVDbGRSRE94VHhw?=
 =?utf-8?B?YlVZTTN4WWZxZ1NiWWMwMVRhMjd3VzFpRis2SUxHeDFpd1hUOWgrSkQ1bmFx?=
 =?utf-8?B?TDRQUDE3NzRyR2RRdFN4OUR3d0xKeStQWmcrcjZtd2l2RTJRb3VmeXhUTTNL?=
 =?utf-8?B?ZHZ6Q3hnZW5adnNMdS9ERnIwK2E5MFEyaW9OdkF2TTFQOW5NZjI2QU1mcUFX?=
 =?utf-8?B?VGxQZ0p4ZjltNU42TTNnZW82WDNUQ3ExWDVJZjgycXFpU3N5UTZDOUhNbWVC?=
 =?utf-8?B?ck9BMTA3K2hMWEtjN1RsTXFWYklRTFEzNW1kOFpsREFFdThMTHd2VmpUS3ZU?=
 =?utf-8?B?RnRvYXZXenFIZ1lGcDlsSUJsRUdhVUt0NXJtRHhtcGRsOFQxNFBFWXc5Z2hy?=
 =?utf-8?B?TTNZOWROU2lTcmEwTGMrUGw0UE0zT0E1ZGhOd1RKN3BESDF1NjBSMldMMGZp?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85536391-8220-495c-3c35-08dd0a8ddae0
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2024 00:37:33.6881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JSoQ1jhFTUbUDu//m9qcf4Ob8bEJySSRtyC0opZVk4Vrd+6GTRdx0Udo5zkEq3ruQhisLYOnd0ykz1WKJ1drT6QMWb0wbOSG5DNS5oxeOnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7013
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

On 11/18/2024 15:22, Umesh Nerlige Ramappa wrote:
> On gt reset, if a context is running, then accumulate it's active time
> into the busyness counter since there will be no chance for the context
> to switch out and update it's run time.
>
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 ++++++++++++++-
>   1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 56be9f385270..0c204b7f3b2b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1449,8 +1449,21 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>   
>   	guc_update_pm_timestamp(guc, &unused);
>   	for_each_engine(engine, gt, id) {
> +		struct intel_engine_guc_stats *stats = &engine->stats.guc;
> +
>   		guc_update_engine_gt_clks(engine);
> -		engine->stats.guc.prev_total = 0;
> +

I think the comment should be here given that this is the 'if' that it 
starts with.
> +		if (stats->running) {
> +			u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
> +
> +			/*
> +			 * If resetting a running context, accumulate the active
> +			 * time as well since there will be no context switch.
> +			 */
Having the comment here implies the calculation below has some kind of 
condition, which it doesn't. Plus the comment also refers to the 
calculation above that determines the 'active time' it mentions.

John.

> +			stats->total_gt_clks += clk;
> +		}
> +		stats->prev_total = 0;
> +		stats->running = 0;
>   	}
>   
>   	spin_unlock_irqrestore(&guc->timestamp.lock, flags);

