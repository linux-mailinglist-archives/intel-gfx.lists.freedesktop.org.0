Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 912C6A3269F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 14:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F40310E345;
	Wed, 12 Feb 2025 13:10:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SdxHtPoQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B40810E345;
 Wed, 12 Feb 2025 13:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739365840; x=1770901840;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cf/mVl5Ve3k434maLmOntHcgPLTLPk3dx9txttgR3jg=;
 b=SdxHtPoQjOHRBJimg4KK+jJobnvmO3fIy3xeTbXlyt66JceQIEPovG/R
 vEgmBzdc4IuE8zDtp86oWrSlunnbIpGFTmz2D6G5ajR2Oj+ajJ3og146Y
 tOin1h3rSxTou1EFjE4mEaqK2VU1C1vrsHg4bUWnVAuP5FZK1TXdhLX3V
 XQcnNPeE222S9QY0kQSXy1qf7jd67Ci6s+U/tGuN7362kiEk2MrQkHAW1
 pddAVIU23uBt3TUOL2OXFFN5IyWoJYhjy8G954rlcJBglcazYoi46ybaz
 HPuO5OtUc+AdT3kkOccb/hUzWAgBt1uSmFrAhGOKFe9+Ujpa2CBApfjME A==;
X-CSE-ConnectionGUID: EttQKQL1QuyWtJy8FPtI+w==
X-CSE-MsgGUID: Jvfpgp6BRDOXjqGdPP4Acw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39943114"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39943114"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:10:33 -0800
X-CSE-ConnectionGUID: 4H9g2mipT4CVIORUPHFKMg==
X-CSE-MsgGUID: O+KQ4OedSoqC5P3qA9s/qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="143738659"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 05:10:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 05:10:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 05:10:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 05:10:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wu4C2bcVfSHvpRzGJ7MDbhGMatrJygtHfZc3+oZVo9KZSGXCxscHoDJtdX6JZbyM13BzFDW1oJgGIDExpzWh9qgjIEPM8chjObizGHhRgrpRcNus/CTK2cfZ7q1dOgNsL5upisqB6nv9AhWy+n5TRtt99VJQVNM/Z7QXTYTTbsOo8EvKdiKKUARaQ5a3+Giv/EH8TipUk6ttIzjteHfAXwnma0tLltXftmAnL1aNlkqGdHc4dg0ncoutY7hk3PawM3x8ZNXKPrAAoXIii6qK3l9RNdJIDRv/AG8G7OOpyixRUwlLf6W6eu0lhV5buyufYGnZMU8+e/fdnXsBhyHyFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cpYxSkkrHpbJE8Elw3bnO2HxCR3YdP/9g9s5db7Fzto=;
 b=ZwtZ04LwOEltvJI61RGurC2AaLC6BczXIRTXXzNzB+OdXbdWKBrEdbZJdR7JRUM4UP98yrv3eNf744mc7PqEcsG/y2ZCeQqiP9ilDWU348p3Hl2OwWYBO5bFEkLjDq0A3J0ZILFvB4V6RdpZHdZOJmQA/Z5M2j5ikOJJABDXrkNDzlFCfkhDGUpavTFB5OuJKjAL/1T03pRX77m+f69H0b2Xbd0ceoHHZHgtSZb/GP+BhtTU9m8gakSCFya2Q4Dd5iCP/ZmkpKzUk02Higaxghky+ZW8R0IM+HQEr4g5Of+jp33ZHpYs3tv67I3qhj5w588/cM9fXTCPka2CpYlZ+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6144.namprd11.prod.outlook.com (2603:10b6:8:af::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 13:10:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 13:10:02 +0000
Message-ID: <ab7a1152-7b5d-42d3-88f3-f61efab2757b@intel.com>
Date: Wed, 12 Feb 2025 18:39:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] drm/i915/vrr: Check that the push send bit is
 clear after delayed vblank
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-8-ville.syrjala@linux.intel.com>
 <20250210160711.24010-1-ville.syrjala@linux.intel.com>
 <6e7cb456-7866-4063-8ad0-e7e1c2bcd72d@intel.com> <Z6uLA_ZsQS-EIZt_@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z6uLA_ZsQS-EIZt_@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6144:EE_
X-MS-Office365-Filtering-Correlation-Id: f8920990-153f-4bb7-e652-08dd4b668f72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnhHc1dTR2RUQnBvOE9EZEp2U1RXUjhBY1RiV05xTXpBeDl3VTlVTFBwekVa?=
 =?utf-8?B?UEpnRXpGVGs0dWxsOUwxbnFyS2liSWMyK1Z1MTRLWkYxSmdoSVk5Y0pWL2tq?=
 =?utf-8?B?OXB3UjBWMjhtMGxKYzhUcE9XckpHa1FQd1FGT3VqUy9zdXFqTC9GazFDOHow?=
 =?utf-8?B?SlV5Unl5dFFjbU1Gcm85T1Q3b21GbThHeWNLZlh2ano2UXllWlR1cFR6c0JO?=
 =?utf-8?B?QkZRWm9HUWkvemJKMWVJMllmdWZ4cjdtY2xQMEVLc3hIODkvMjhaU1ErTVRU?=
 =?utf-8?B?cktMMkRzY3QvL3psRUJrQjdmTkFxVURER0h3aGNQOHBON3RPcWdtcUVnN3pW?=
 =?utf-8?B?OTQ1YkRzQUVKdVJGdHlGTGYyQ1hteHgzRE1jbm1vTTFkNzNTSnRQamVOVXQ5?=
 =?utf-8?B?OURwWk1wd2xlMmhJa01xTDRTeHIrYlFvbnFDWUN3a1NYYmhlNGFWVEE1enVx?=
 =?utf-8?B?QnlRRGxsd2xGM01XZTFMMzV4ZmpVU1NYUE5Tbi9Sak1LVjdqOTBJenM3aXVO?=
 =?utf-8?B?L2VreEYxQVNCakoxTDd6REpLaXNaVjNWWDh6NzJ2Q2Y2VEFhaDh3ajdiS0xl?=
 =?utf-8?B?NkdRZ0x4MkZ4SVpwN05YQ1hFYXJrQjVsb0hMdGQ4SURXVS82V3IrcXpCNXdE?=
 =?utf-8?B?QkN0czVOYlREQmRkWXFYR2hmckVYcVFjbUNCNnFDMkxHeDRzZ1dCVDJtRnhY?=
 =?utf-8?B?a2pvSkI4SEg5TFlTbFNVZ3pBNlRsc1ZVWmZsbGNES24rUDJ2MUxQMG9IZm9z?=
 =?utf-8?B?RS9BdDVnbFBXZm9FNFRyQ1d6b0VzbGtvajdQaktiVkpDZzY4NXRmRjRzZDFR?=
 =?utf-8?B?Z1NnTElhd3F0YW5KRUtzallaSXYxeVRLbXF2aDZBUFp3T2QrTFBkckF5TWNa?=
 =?utf-8?B?RHp4YlcxdkdrMDlQd3BQd3dpVGd6RCtUck9TVkZzdzNIaHFBcFlxUE9QUGds?=
 =?utf-8?B?aDFXaW5EaC9YeVBGMGM4MFdwcUp4b1RwQVFwWVpuUTdFdjNYNEw0Tm9mRmVM?=
 =?utf-8?B?YWppUVlXdXF6dFJDVG1QVVFIcHlQVVg4Q2lwdFJqUzBVWElBQ1VBSHpKMy9z?=
 =?utf-8?B?dVRCRnVzZDQzWGE5dUhxRG5EdmtIUG92N2xQc3k3ZDdUTnR4M2JFdDVkNVN5?=
 =?utf-8?B?OHlOQkFDRWdRTmdob1FEZ1dadk5JRUhhYlQxU3A5aTRkZ3dTZTQ5Z01SV0RC?=
 =?utf-8?B?akFoZkpRcG9vUzQ5ZUhwYUx3R1RoaThCajZtc3cxOUx2RENQeVFWWFZTdTds?=
 =?utf-8?B?T3VUdmdLd2VQdisyZWI1ZHdJQ3pqRGRRQjhHN0lwRWtBV3BzMkxBa1pVQmNh?=
 =?utf-8?B?VjZKbDB2MzJzblc1czJCWUs2MjBOeXRNVVB5ODQrTTB4b25oR0NuQld0OTQw?=
 =?utf-8?B?aDFLMkMwaVNMRVBTRmFhWWR5UDdTNFNNOWVkeWxFN002Y3ZlNlEzdG83WDhZ?=
 =?utf-8?B?a0wxS2VTSGxtczZLTEpKUG9mU0FiRmxFN2s0RzZ1Rk9KaHlCekNzY3o4ZVZN?=
 =?utf-8?B?OG14T3dwN0YvMSsyRld3K2NMQVR0RWl5bFJUdjgyUDc1azcvOGdlTmErVUhF?=
 =?utf-8?B?Vis3bUVYQ2Y1K0xwR3hJbDhhQ2E3THJDTVVlb3MrN1RNUjlDeHFyd240bGth?=
 =?utf-8?B?QVdsNVQ2eEhPeGRGM1J0cUVjekJ1QmpwYWpIS3hNOEltQzUvakhza255SWxr?=
 =?utf-8?B?QVFsRzMvWUdEblF4Zk5wOGk3UXMyYnNiWnpZTkJzRDNHa3NQODRycWZRSk1o?=
 =?utf-8?B?MWJLY1hMM2RWcVYxaE95YzFENm5qaTQ4SnpLVUFYOVZpU3NKbGNJMDNxQ2V1?=
 =?utf-8?B?a3NieTA2MTNreTNxRyttSitPKzBnaE0xTVh4cEgxcm11Z2FVLzlEaUwwdzg1?=
 =?utf-8?Q?Aj6G4ZcVpgHXx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eU1SU3dUSFA5ZFBRc1h3SGc0RWRMTmdoU3ZPdE5PNmRSQkJ5aEkwcGF6U04r?=
 =?utf-8?B?Rng3cHZnREQzc1JHbStSZFJoRlFRTHZtZWdqcHovallQekZsRHJ4b0F1d0tn?=
 =?utf-8?B?T1RaQUttMzN3Y2xvUW1GNFVxVHNuL2tvZVRxOWRVY2NUZUVFcW9ZNUtmV2dn?=
 =?utf-8?B?b1lpd1diS1hqR1V2SDVuNm1FcWVOOVlyc01DOFNiS2puRmJYaVplaUhpTHRn?=
 =?utf-8?B?eVRUdzJ2U0NnQnpZNS9xRjczSjRPeXZWczlPWE54eFltM2F2QjBGeWh5VDN5?=
 =?utf-8?B?bHMxWTVkVW1RYnpSMkZvRGRONG55R0QzWGJDK25RQmg2MEkzNTVpUy9CcSs2?=
 =?utf-8?B?SUt4bWZiQWhvdVliR3pZUzFzK1paUzhGczVzRkMzZVBiNVpiZzhvKzRRYk1W?=
 =?utf-8?B?aXVlR0JOdThFb04vbmRSOXgxK1ZqalFTQ05yZ1p5SGV0eUdFbGczK0U4NzJh?=
 =?utf-8?B?NU96aTl6b2NoRktsUWtGTXZBNGdWQ0c1V2l0QUZuMG4xd3BoaHNqUXRKNkFq?=
 =?utf-8?B?UFg4NlQrY3ZmbmVvOXlKVnozNVBSRElobUk3ZFVHemk3aEcxT1dLa3FObVRS?=
 =?utf-8?B?a0V4cW1OTm9abmFTQ29Ic2lxS2JuK002ZEttbWtJSUdNMXMxNzJoNHFpRzRE?=
 =?utf-8?B?Um9rR1dpN1UvQUFlZW5HWDNmWGhGaCtWQnNWdE8ycEI4SFNpWjhnMzFrNWJB?=
 =?utf-8?B?UEtFWllXYWVUd0VjSk5HU0N4ai9BNnZIdndVVUxySFV3M3IwSjJOY0w0akZB?=
 =?utf-8?B?Y0VrNDluTjRPaDd1Z2ZFN0JNdDJlbDZzd0dpbEtpZmJTR3lOWjgwTlB5R3dL?=
 =?utf-8?B?SU81TldTUEFFRHZCTjhNSVRXRnZ5TzF0ZXVqTnhtN1luanhZa2g0S2xidndw?=
 =?utf-8?B?ZlpjK3lHYmZROUJTcnl2Uk9MYzllZDV3OWdaOVlndjB4aFJhL000akJrQjg1?=
 =?utf-8?B?NUcrNjFOT3FJNUpFWjNnUEZNbllJbTd4UlBqU1dMN0NFSFg3S3ZwV2FJRXhH?=
 =?utf-8?B?TkhJSTFJblhMNXg2KzIrUTFhMWRwTEUvdUZkekFNc296NWFYODd0VzBmOVJv?=
 =?utf-8?B?N21ZWkhmNWp2QjlLeTFxa3lsNVFvWmxWcHI2NTVodGVYejBpeU5QVmhlRlZl?=
 =?utf-8?B?dXpjSmtPVU1RZVV5TTBoUGhIcmVuTVhZb0J2U01OK3B4eEVDbnM4MXlLNUND?=
 =?utf-8?B?L28xOWxRckdjNFBJNmtRdERJSVlmM3IrQUJsQ2IyenRHSTc0bGNIa2E1Rjc2?=
 =?utf-8?B?c2pFbU1HRWRVYUhkbjJ3NjZSQ2RBNjRnRVdRZytNTmljbjZPK2tjQWM1aUpw?=
 =?utf-8?B?dEUweEhtTDlJR1pkK2NZTmRIZEVGM3pjajBYKzVlWm53SDNHQmZNVTRMTjh6?=
 =?utf-8?B?SmZBdWJnL0hpcVAyV09XY3E1VVNiTnpvYmFHZHZxSXNSNjdHeEJiWkx2Vzlo?=
 =?utf-8?B?bEVGT1hwaWVGM3EzcmhEWU5hTE1wR2xhZUk5bzUwUmRvMGVkK1hQeFNoSVdX?=
 =?utf-8?B?SVBPc0VxZGRvbzlTODdxWHZ6OE81dW11NG95dTJweVNuYjBodmdCRzJQeXA4?=
 =?utf-8?B?VXBwZzl0YkNuK2JRa0txZWxoUDMwYWF1bmtpdXA1VmhYWXBSRHRFV3A1L1hM?=
 =?utf-8?B?VmMxclNtOCtCQlZFUEVUczFXaEo1ck1TMFhodU9tZnJ5ODkzbHJ1SFBJcDg4?=
 =?utf-8?B?Z2x1VzN6bXpmN2JFYVY3T04xb3haWis1WGNobDlDUkEwbFdvdTRWTzJVK092?=
 =?utf-8?B?TlVkcDBoTXVpYnJaclFxbFFOUkZ5S0xCakpwVUxtblkrVCttUUVhNk51b3N4?=
 =?utf-8?B?cytoa2JqYnl6KzlXdUl5NzR5SjRDSitoT0N4amp0ZmNrMmx4V3h4bDlPcDlt?=
 =?utf-8?B?TVlZZ1VPcVQ1VnJMQWtoOWo0Zk1abldjbXpMSi9vRTNDV2NENFRKZWZIRDdE?=
 =?utf-8?B?aXJVZXQ3SFNjMncxa1laK0Y1VXBIdUtUamFlRXBpbTNkQ1hwelFabG1RbGRB?=
 =?utf-8?B?akxoNytVSnlJYzJQajZHWW9Ja0F2K2NXMHJKQXVmdmRxVDlqVU5RTlVDanBH?=
 =?utf-8?B?RVFqN3FXZEtDT3pwVFNhK1E1RmM5bWo5NzZmNzRwSFg0a1FUaUZwSlQ1RlFs?=
 =?utf-8?B?NHRTZjVCUkl4Y2k2Y0tGUThOb1c1TUdjQ3drRnNiK1ZuNk02a215L2J0RG1G?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8920990-153f-4bb7-e652-08dd4b668f72
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 13:10:02.8525 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tV7BlS2uLScWJJAascxuZEnBcULsKdvOKUgU3XqgA4piqhplJqufZmy+FLwJw8ZIAavQ8K6ALwibohDOBdzzXzc0uvsA8ysHa2vcx3vPFfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6144
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


On 2/11/2025 11:08 PM, Ville Syrjälä wrote:
> On Tue, Feb 11, 2025 at 12:38:47PM +0530, Nautiyal, Ankit K wrote:
>> On 2/10/2025 9:37 PM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Since we don't do mailbox updates the push send bit
>>> should alwyas clear by the time the delay vblank fires
>>> and the flip completes. Check for that to make sure we
>>> haven't screwed up the sequencing/vblank evasion/etc.
>>>
>>> On the DSB path we should be able to guarantee this
>>> since we don't have to deal with any scheduler latencies
>>> and whatnot. I suppose unexpected DMA/memory latencies
>>> might be the only thing that might trip us up here.
>>>
>>> For the MMIO path we do always have a non-zero chance
>>> that vblank evasion fails (since we can't really guarantee
>>> anything about the scheduling behaviour). That could trip
>>> up this check, but that seems fine since we already print
>>> errors for other types of vblank evasion failures.
>>>
>>> Should the CPU vblank evasion actually fail, then the push
>>> send bit can still be set when the next commit happens. But
>>> both the DSB and MMIO paths should handle that situation
>>> gracefully.
>>>
>>> v2: Only check once instead of polling for two scanlines
>>>       since we should now be guaranteed to be past the
>>>       delayed vblank.
>>>       Also check in the MMIO path for good measure
>>> v3: Skip the push send check when VRR is enabled.
>>>       With joiner the secondary pipe's DSBs doen't have access
>>>       to the transcoder registers, and so doing this check
>>>       there triggers a reponse timeout error on the DSB. VRR
>>>       is not currently allowed when using joiner, so this will
>>>       prevent the bogus register access.
>>>
>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>>>    drivers/gpu/drm/i915/display/intel_display.c |  4 +++
>>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 34 ++++++++++++++++++++
>>>    drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
>>>    4 files changed, 41 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>>> index 4d8f6509cac4..cfe14162231d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>> @@ -1991,6 +1991,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>>>    	if (crtc_state->use_dsb) {
>>>    		intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
>>>    		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
>>> +		intel_vrr_check_push_sent(crtc_state->dsb_color_vblank, crtc_state);
>>>    		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
>>>    	}
>>>    
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 0790b2a4583e..34434071a415 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -7737,6 +7737,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>>>    
>>>    			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>>>    			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
>>> +			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
>>>    			intel_dsb_interrupt(new_crtc_state->dsb_commit);
>>>    		}
>>>    	}
>>> @@ -7886,6 +7887,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>>    			intel_crtc_disable_flip_done(state, crtc);
>>>    
>>>    		intel_atomic_dsb_wait_commit(new_crtc_state);
>>> +
>>> +		if (!state->base.legacy_cursor_update && !new_crtc_state->use_dsb)
>>> +			intel_vrr_check_push_sent(NULL, new_crtc_state);
>>>    	}
>>>    
>>>    	/*
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index adb51609d0a3..cac49319026d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -416,6 +416,40 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>>>    		intel_dsb_nonpost_end(dsb);
>>>    }
>>>    
>>> +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>>> +			       const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +
>>> +	if (!crtc_state->vrr.enable)
>> I think you mean:
>>
>> if (crtc_state->vrr.enable) return;
> No. We want to do the check when VRR is enabled (when we are
> actually sending pushes), and skip it otherwise (when we don't
> send pushes anyway).
Oh ok, I got confused with the change log:

v3: Skip the push send check when VRR is enabled.


Regards,
Ankit

>
>> Regards,
>>
>> Ankit
>>
>>> +		return;
>>> +
>>> +	/*
>>> +	 * Make sure the push send bit has cleared. This should
>>> +	 * already be the case as long as the caller makes sure
>>> +	 * this is called after the delayed vblank has occurred.
>>> +	 */
>>> +	if (dsb) {
>>> +		int wait_us, count;
>>> +
>>> +		wait_us = 2;
>>> +		count = 1;
>>> +
>>> +		/*
>>> +		 * If the bit hasn't cleared the DSB will
>>> +		 * raise the poll error interrupt.
>>> +		 */
>>> +		intel_dsb_poll(dsb, TRANS_PUSH(display, cpu_transcoder),
>>> +			       TRANS_PUSH_SEND, 0, wait_us, count);
>>> +	} else {
>>> +		if (intel_vrr_is_push_sent(crtc_state))
>>> +			drm_err(display->drm, "[CRTC:%d:%s] VRR push send still pending\n",
>>> +				crtc->base.base.id, crtc->base.name);
>>> +	}
>>> +}
>>> +
>>>    bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> index 899cbf40f880..514822577e8a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> @@ -25,6 +25,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>    void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>>>    void intel_vrr_send_push(struct intel_dsb *dsb,
>>>    			 const struct intel_crtc_state *crtc_state);
>>> +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>>> +			       const struct intel_crtc_state *crtc_state);
>>>    bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>>>    void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>>>    void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
