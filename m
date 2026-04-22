Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NGKFJLh6GkHRQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:56:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF14447976
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1FD10EA74;
	Wed, 22 Apr 2026 14:56:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QGPSEvx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9298210E9FF;
 Wed, 22 Apr 2026 14:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776869774; x=1808405774;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Fksi44Dc1pW78+qIL+pHMh3JkLJWiMZGUOgJ3alr8E=;
 b=QGPSEvx9mPlTWbIokm8ybjPEFumC6AuNwNmsY1jOndwqCR2UDkbFqaOw
 ckWqyhNuMmg4skOmTpw06/fzyOWagjtdcsdmN3glj0uMEinituDJ7H+ow
 DyrAxoJ01DZpdhaXkBNmpRR4RYD8+CUxdcflfGDSwiRnuolOBNAx26HvR
 Y9vZRyZA7Hfo60p2LRvY4tt31nrQPoJDmyF50Xhs73CoFQJmD5VbQrpRM
 O65YfJJrfL9UEnknw0bNqR09Lbc0jBPszRvkMUIX59WtLvbZ/LjB1GEvP
 xDdI92BdeuZ97F+88NR9Ddsi4r8dIqVIL15of2jtZ5xpgKXNq88noRTSX g==;
X-CSE-ConnectionGUID: p/cs3U1mRW6idK10PI29cQ==
X-CSE-MsgGUID: XBZWpAqcSnWqY4FLhM775Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="88434240"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="88434240"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:56:14 -0700
X-CSE-ConnectionGUID: K1EGwZNoQziTavPh2Gvuow==
X-CSE-MsgGUID: hgr2fPDBQGiNZETFtnd4fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="232283896"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:56:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:56:13 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 07:56:13 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:56:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M2fYTERAv3rFmFOMCf9dRCZDQQAp5l3eyCDa6SW/p+3Nvmi4LuFn7/72zwZWVCkxYeiadh5GplGbwtDOtMLu0SzmJWUcRpIC2r+5gAUuiXjF9Fm7FN4xU5ibVNRyBTzNwkVyelA/357OT9z4SXFpkUaE8Ea04guQXXPLUDHreFCO82svReyi3uU8Cay+yGxmNeoA9OgOL2Hw7uxAYUoJHgTFwrR1loTaAyTKNV0uYvqW3SeP3S2lyw7L8+7eP5j3jDUNnT2Mif39IJubXI8Xv0MY5HplXRS7XU8cwZcgstoRtFtYDT6LeS3IlVPUSexYGeM8G8DjaLvwUbdyc8zFFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dYRZT4UGPHWbnh7+K5lzU4Qt92WlvXnr40FwvbYWf5o=;
 b=EQR3NjTVO0Va217zFsvf1bQEVzDOavmrweMIWGhoEd14J/mt3cVq0t7JX2HmmbHR6mt1/Wqn316o+TjehLxuwneUOL75952CYLUvK6XMX76p9DYR+sA678/RbdvhAmjCJjJTiaQAXRp3fOMKd+c/VRflfCw9iBiQIP53cTNAw4sr/MOb/40x4dkOVsljvobvTt8GABiiRB6ChV61dL9lcWQOZMVAx9iR8RTAIYeFc+dJzGOxpidgaMC/v6JB7LLs++UU3hpeeLcbc8JKc3tEbsK3/X49mXtl02AAZCXXcP99efdk6f+FdMkqBE7z7uKoZlYxD2z4/3FdMARxtoxmQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by IA3PR11MB9086.namprd11.prod.outlook.com (2603:10b6:208:57b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Wed, 22 Apr
 2026 14:56:11 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 14:56:11 +0000
Message-ID: <0d4d63ca-f41b-47f0-8142-1964629b6d41@intel.com>
Date: Wed, 22 Apr 2026 20:26:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/19] drm/i915/display: PSR set idle frames while exit
 from DC3CO
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-20-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB63603DF8B4990EF4ACE14333F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB63603DF8B4990EF4ACE14333F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::12) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|IA3PR11MB9086:EE_
X-MS-Office365-Filtering-Correlation-Id: 03fb7bf8-2d7f-419d-8e7a-08dea07f4acb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: CtaJvcEKQoNvcVK8+QJlSUnazH3+O66qYDOu4jl6gGTCrd923icodnBRAY12HhDBiFKKqW8EUFKWBYGmEPEYm+Kj0Nq8iBJSWjIm1KiS0DhsQGM4CgWBglth04f17szfjsa62huZ1bwdGz62tvoT9I0JPNXfQ6CD88DNgAKi9NTLziDR5JAbuIOaVm5bGqWx0pP6ib6VFJLc+zrfl+P4ZQjXxyjA70kzN+qdseVforxsc42aOhWzS0pBhW0szX4MmohUy7s4SSdo1O3NIHS0Pfz+bL1qaaVFqERfItBZPCBE7dB/KEAUC19ICv1htdC4dvxwmaDc6hufa5rIfU5rAqnL3U3DyfxitpiuRi8wV2jNONnuGnu/T2GUqGlgEust4uhJVLt0UeNJw0gyMW6/12Onwye/6rh5CTqOjgwJgMWMpLBTYaJDArV3XO80q0T5yRN0Y4P2WHipFVB6d5+e0Y7LuDAvexA/algVx6ol6Wotiqe/qWvIErl2pjIXt4iLeSuX1Fmv3DJu+cP84OH1OnIpTekw+2zcAxLNoYW+uuWDBr30iKv9TJ6ErAGS3vkZLoM/SoFzO/lXHqX9r18kiskEnNV8WYah7aWSWcmzrbY2z+qVv2HoSMahbYYDgzaEDQIPmSbFU83VOn7VEc67FYAoVVATSQmD9QQBGULaBybu/1SGiDr6BrCEqjo/KUmW3pPD9xHESTsywQV2E+FKX0ixclgkOqaqFlYavqkdM74=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mnp1OVZ2clFhQkYzUlNuVTJISUxQbFhpZW9CL1RFbXdZYXRtUVRDT3pJMmdu?=
 =?utf-8?B?WTcwNzdnaXQ2N2dSYzRYT1B3d0NOcEQ2L3NTb2NFMEkvc1E2MCs1ZmlBOUVm?=
 =?utf-8?B?QjFuQW1YbmJqN3RrNE9rMDdVN1UzZERTaDltNlpHZTVQZXRWNmRQK293Vm1l?=
 =?utf-8?B?SnpBVEZzSGNaTFhpVjFDSFRyNXVKUnJqd0hmQ2NDbVVoaVd2VTJtL1NyUTZo?=
 =?utf-8?B?Zlpiby8raWJ0dXlqbHk1YkYxUnRUWGdNM01McXFia3Niem9QaElwSDJVOXBY?=
 =?utf-8?B?VnhMUmMzZi9IZThzSlRVVW56S2g5NWxLRnBSQWhpNjdDTUlPT2RZQWxZem8w?=
 =?utf-8?B?UHFKaHlLUmRkSmg5aU5PMTlYYnhNZ01JU1k1Uk42dVZkRDRmbEhKL2NFWXI4?=
 =?utf-8?B?MFFEZyttZmtaV2lSRUhpOWJMVVFoaURaRzQ1NzZheHVPYWZwZWJ6WFhvY1Jw?=
 =?utf-8?B?TzI5VmxqUnZlZDQ4ZmdyNitNRVorTC9rMUgzUG9MTlhWMWp1clZMWVVaTXA2?=
 =?utf-8?B?ZVFhNm1MdmRYaFh2NUhocytTaW5adXJyWHFhdVcwd0orMzZwZ3pEa05idTZn?=
 =?utf-8?B?SnZmTTVISGZ2UWFDTHNEeU5KOUF1aU5Rb2JLRmFtOHdLZ1p0eWN1dksyK2FI?=
 =?utf-8?B?VEdFbUJ5dWRGQ3FkMXI1VmlKRWY5UUVMZml0ZlV6dHFjMjJpK204OHpZTjd0?=
 =?utf-8?B?YzBYQ3l5VUpyL1VwajRRYVZIN2wxMHFKNXdya0JibWkzMElJcnR2enY4akJS?=
 =?utf-8?B?YnplVG93aHB3bFpzRXM4TDdRQXRydC9SUTl0d1pJWFZLR2t3WG9WWGJXN2pv?=
 =?utf-8?B?VjA3QXVwMWYwT3E1MU5VWTkzT1JLRTdIWkxubytySm5hLzhWZjcrb3d6THJW?=
 =?utf-8?B?MmVua1NrZDZGQy94dWQ0VFZrd0pIcjZnSXFza0lOeDNIeEd2ZVdzVkF3bTJl?=
 =?utf-8?B?dk9qTTliZnpyemNmYis1QVFuWGYzaEVidytFYXlNT1FCQTA3bm1sNHRzRmxI?=
 =?utf-8?B?bFZuZ2xwNWVxUE1EV3p0WVZnd0ZkKzVJdmdLNFJLSnNxcEU4SzdvZ2psazA0?=
 =?utf-8?B?Nm04M1dML3QweDZQdnlrMERYMzZnUjgydmNieXEyRU5WV3ZHSEd3NXNNSlRT?=
 =?utf-8?B?YUlYVE04bHBFbmNuMzdUUFk3TEx3SXI1L0hQdVBsSnNlUzZmYUZRYVh6WjJX?=
 =?utf-8?B?aGJndTNMMnZFVEE4Ym5tcmpVa2pUQ1I0aVdTODVTMzB2djhaaGVKOTNWSEFF?=
 =?utf-8?B?RlMzVDNrSlVaV1FsMENaaWhRMkN2dEVnQVJXSVlvNFZQNUROUHcrU3cyNFNG?=
 =?utf-8?B?bmhidkpoRXdVSXQvektoSHhOMmx0SWhpZ2d2UkZpWFRBL1dXZmowdnJDRXNT?=
 =?utf-8?B?dGFWZ3Bsd3hyVEpkUVNycWtVOW5mS2UxRm00OUVVWnpUdi9MR0IzdFUwclFw?=
 =?utf-8?B?RjZLdGc0YUdDaTNoV1dGSkRVbHMzbGFrOE9HTFUwQ2RuL3ptNjh0ZnNRRTJK?=
 =?utf-8?B?ZnRZNW1lcWFFZ01iTjEramhKcFVwWklvUktsQ3dFdUtJamZ6RmtCLytVWUJv?=
 =?utf-8?B?SVcxU3paaTFDM1lNZ1BJRS9PV3hWRElCcVlINTY4ZytXNXFPNW1MSVBZREk0?=
 =?utf-8?B?MjBHSStvRDVJQ3JQd3h0MEI2ekJ3SkFYRWF3MWI4d0NTRnBxenhnbTJmU1R2?=
 =?utf-8?B?ZzdhVmJwN2M0bjVEK0lTMndOc1BRcFFsQUQxSm92ZWJQbUE2Z1R6dkpybUNt?=
 =?utf-8?B?ZGo0cm9HUTlEYWRub01zWkhEOG9Eb0NBNk0rY1RXSy9JTUFLMnBpYTk1bGs2?=
 =?utf-8?B?L3F2a1hiY0JxK1pwNHBRRTlKWUNGaWRDWWJOS05BZDFCVjE2c3lOSWVXY3FF?=
 =?utf-8?B?N1h6emxBRTZ4YVZiem03Sys1U2gxUytJMTdDem5iRkNjeDhKdjZkMzNuZldP?=
 =?utf-8?B?VVdkdWJBMW9wOFZHZ25xaXZXUW15cldqeWFwRmVleng5N2FSNHlWVFQ1enBl?=
 =?utf-8?B?aWY3WG5qUTB2MUh0c3ljemdZZmJyQXkzcTcyOEd5U0czN0diOTZ1NVE5L0pM?=
 =?utf-8?B?OUtlTVlRSExYTEFYRXNleG9VTi9FN243bEU0ODB4bFkwa1lmK0g0dllselFj?=
 =?utf-8?B?aHMwYTlXbUdyUy9LcUh2ZXpaRys3SU9VcUhhUHRORVE0VFJIWkZDWW1Na1pW?=
 =?utf-8?B?MmpWSkpidVVXVTJyeGwwU3lZRjBVeE1OdGRnbmE1bk1lZTFKSzlCN3NscVlS?=
 =?utf-8?B?d0ZVUWt1OVRGSUVYdnp1TlNBQWdNYzFkcERKSVJ0amRWWTBvOXRpdjdpM1B0?=
 =?utf-8?B?M0hBZlNnZFphM0JhQ1kybU5PNjZUR2NTZ2F2ajNFMnBiaTJRR2xTSmZzQTZl?=
 =?utf-8?Q?AiWADrWIpsPWVpzXoVL/lOrF8qAzLAcoBg+pxE87jmyVx?=
X-MS-Exchange-AntiSpam-MessageData-1: YYVuyJl8mDwPog==
X-Exchange-RoutingPolicyChecked: LGyxQP4n+bkc2CZtzmNdS65k5alA9mEoP/TpHSOrCKlr4RaILm2f5+OZcT0vpOgID2KaM8NvH0DGWwzURW2Tmz5jLnNt8vzowjcepAknC98ifOU3ElhdmJiT8wZSluDYobYXO6K0riGC7xXxHhvtRyI/I55ZFUR6fLqjzEe4875V2SdbZ8V1t4kOPoNRUWuWp87mqrEWcWvIIHzP8ODXpSxJV8pdNSfUpj5QMvDuIIMsrLAoisacA/fD3NVlFQ9QNWO7vi4LXgu/wPL6lBMWvJm9ms8yK49mZ0Bfh92VErqxiYRbRhtf0epYBvKbyqs/CRApUjsGLI8yFL0XGL/ygw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 03fb7bf8-2d7f-419d-8e7a-08dea07f4acb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 14:56:11.1216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2BjqkJfwYzQjUGVzvGKO+jNGBtzTW8oaHd/rqP6qdpFSx4MsLJrOlHBL8Tu9LxDwafRg93DLNJuOgLVwPWTVa95dBPL+RThIs5fZkJv3IelfCsnHZUq1D9k7I7dUuRAA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9086
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AFF14447976
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 03:51, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 19/19] drm/i915/display: PSR set idle frames while exit from
>> DC3CO
>>
>> After 6 idle frames, DC3CO is exited and DC6 is enabled.
>> Reprogram idle frames so that the deeper states can be entered.
> Change Looks good but should be squashed with earlier patches adding PSR2 idle frames.

I will squash this into patch 15.

>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index f3476118b8d0..dcf33359dc9c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1708,6 +1708,7 @@ static void psr2_dc3co_disable_locked(struct intel_dp
>> *intel_dp)
>>   	if (intel_dp->psr.dc3co_eligible) {
>>   		intel_dp->psr.dc3co_eligible = false;
>>   		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC6);
>> +		psr2_program_idle_frames(intel_dp,
>> psr_compute_idle_frames(intel_dp));
>>   	}
>>   }
>>
>> --
>> 2.43.0
