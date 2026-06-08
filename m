Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oG/hESGCJmrbXgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:49:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9533865434E
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:49:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=byDHvVsK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C7C10EF8C;
	Mon,  8 Jun 2026 08:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E7810EF8C
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 08:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780908574; x=1812444574;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rUDtSFZMtVMFdu1nbh5xPUeOgY8TRRNJt+LMFu8Uz/k=;
 b=byDHvVsK0XYQcfRvhkF4T7qtwZff8S/bwHUq3s3LwTIsU+w+XM7hAxtv
 JhSz5P95O2/dS3G4r/kh0jEW4FoUjrmYceRfoKIM2tQQL3uegxJvQbO71
 fZBQOBCaarDuDycs/Z7o97M9v3qGI6Zbbw8tYnff42ZN7bvXHOPG8rC+c
 p8wD1ffApdd5jO65EbU6XVa5PrW+JDqifdAayuX3as7MlyiJk0zN1D9JT
 uI4eE1TwLvEbBjUlMYYHBxhhyF5YMBinPJV0VuilicQz5cDHsDk4ysG2g
 QgE3irDV+PGH3xAyL5aZ6AKHndT6Jv2FjD8vImiNRfCt0pBslR9955ukS g==;
X-CSE-ConnectionGUID: eicv/ApfQGiTm5TohbNKUw==
X-CSE-MsgGUID: LmTri/M9QfKvnMxFQhUkug==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="80667823"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="80667823"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 01:49:34 -0700
X-CSE-ConnectionGUID: P5HrP6aCQpSgKigFv3FXAg==
X-CSE-MsgGUID: aSzwwUjDQPeIoi6B2/1QzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241045454"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 01:49:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 01:49:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 01:49:33 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 01:49:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gdGuHc/BbKTUZ6owV5xYM2QgiMGO7VST+zyDnDE1gLbloIE4OkopPhONkXwFZZuk9vugbUhZD8O+eOeO24MpoTRTzmP1Tljom8uBQHvzPR16An2OnVUqs3+s7GEHRlN+BLUoQ21pEejbfG+jPOdQOlOLFJ0zPrENfsoVZBzhUSmwPgoR3YbiAvrwfo+Hzpri1BNvtsfK6Y34XlAmXtV8c6ipG+y/FTSZKYFyPbZ0OP/AukJLVQRtZK2ihSXhjr30rrsCrkk6xn+tUcRoVaQgMXiExbu79loGHLG7+/yLGFLf9W/FjiALZ35QNje3/Cp9ctOAUh8Nuodjs7WiJLB0TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TCmgEGw+As2Ujw2GE+h0n0667rdaZMhs3dqoBmDUFLY=;
 b=jUf5tTtbNBBV4PRr1Fh6c2OuUW62ct+jQpSOOH9r8YGn31QJUQnKSg1uDCrtda/tqn4X3E1nzeSSpQmMA6MT/H4jMfdNMeq0drQJK6VU0VodtgpkRKGLYcxAJKvKN3w/mxqsWfrB6EnMfbG1QBjcuP11JPj9UH0SF67w8UrLHfyotegBA3euvBTKdY2X6PIAgAmq4bjqayLbqe4bm3bWc1r60oYDnXj4lEdbALk2hxayOWZsbaZpWJPdlZphOCuBmo/BAAIY3qxjqM7ylYEZio7WvFcmPk/KHuvrSSUNCkjjmSWTYGFdAzWAcd74VgIb3JZwVuoYCS2FZMzRZVqvsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6359.namprd11.prod.outlook.com (2603:10b6:8:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 08:49:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%3]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 08:49:30 +0000
Message-ID: <26bbe5d9-32ea-45d3-b06a-0dc4e5f815d5@intel.com>
Date: Mon, 8 Jun 2026 14:19:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dsb: wait one scanline before delayed-vblank
 DSL wait
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop>
References: <20260525091159.564066-1-ankit.k.nautiyal@intel.com>
 <20260525091159.564066-2-ankit.k.nautiyal@intel.com>
 <aiLgZx0B9yhCfEko@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aiLgZx0B9yhCfEko@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6359:EE_
X-MS-Office365-Filtering-Correlation-Id: 9709a665-3ad6-4272-7a8c-08dec53adafa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|11063799006|4143699003|5023799004|56012099006|6133799003|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: VniHrhor/SKpsssmtJIxaVrxg/alHs1jnlP5dWy1fGIX7ntTN+keRqb5VvwrqXdXFKhvHJ0dAaEE9L19GqRJSv1qGvef011hWwXKBsBWX4zpTKbs4WPg2YdxOPZQZKc6TX03MCJYAxhRtU9R5Vhiab8UcvwqMcd+ldBLgBUyan612gmkMiklBiUCDn4CXovee4qV5HKTNK5JnR2G2Hc9NMHC4TzhhktwPGJFT6/FSSjWwojtVx6OhRrCCQtOim5RKjO442aN+SBVVqwwNedjftxkd1B6wqAKtCMZVQn0Gy6Hm5nZSomW7bZwKgPWW1cwIFrgsm4sstXYJwCeuzRoR0a3baeu7M0fXD5wlcECvgeFFD2YdWSf+pnZn/hvRum+OCPUnMnRJlkC+dXdDuyuHHLsosqf86Z4IGTTY7ZijM1eKc9p/lDob6mFWdMYS2j2Y15GMMLky+97l1mKeAoweIAo5oj5LfYnedOzHlB/nsHc380HH7HolunTDnq1CiwgmmStUeDH1eDsOChhiKUZLI2OK54eHT0X7V3ZTZrRSdlgKqKZQPF6RtKAKgBMfTwRoKRzYWVnVKVCT/MIq7uEQMLY45T7hJmi8w9cgr5+tNwzc+Sfly0cY/5frMEfzvyywY+RVC+PoczOEqCa7YR1lM4Po+tCg03mIx5BJAVOJdM/7/aSRyCGNznu0TyKPSZe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(11063799006)(4143699003)(5023799004)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGp4UFpCTGYyekkyWXNOeW1KQStlZ1FFblc2TGFWQWhNOUpsV1dhY1k3WHRM?=
 =?utf-8?B?VGtVMnpzQk9aZ2V4UEJRQkUxWGlBQUQxUXJOWU4rYzVBNW1YRjBsa1RBVXRo?=
 =?utf-8?B?OC9XSjl0Tlp1NlYyYXpxMXIxOUUxcjRldjh4UE9UK2xWVVp5NmQ2bkNaNEhy?=
 =?utf-8?B?ZGYwcmExZDU3Z2NpZ3QxRUVxTVJFd0xIcFdHRDRlaVBUNm0rbjcxa0Rvc3JM?=
 =?utf-8?B?d1JuTUYzMGJrS0R1S1EraTJoME80bGUyVWpyWnhITGgxWDZrNU1UeVFXdmdG?=
 =?utf-8?B?eWFMcFlMbXArZUt0ekdXd2cyWnhjZ1dUL3NkMm94OHoyZkRjcERSRjBReDFW?=
 =?utf-8?B?cDJSK25ST3ZwQWtzSjl1eEdBeVBHNTdUR24xbTR5cnlTckNZdUN5dVJRaEVH?=
 =?utf-8?B?bTBicXlid052U2oyM3MzNzVCc0hJU2VwQ2xZZU1xcTdrbjFGNUFmeFlTS0Fv?=
 =?utf-8?B?eC9LTEs4RGlmNDdCU3orY3UwSE9iOTkyNXRYa0VrNTdRaWhUMmVwOFJmc1Zs?=
 =?utf-8?B?UHF1SkNOWTZWaEJ4Q3Y4Qk5VbXVxU3BXSjI2cDVyU3A0K1l5WEZobVJpTm8w?=
 =?utf-8?B?SFZtVnJCc0hQZUJiRlUxZ3NieWhCT0VFa0pTaHkrTnJzRmZkY1AvUkF2UCtG?=
 =?utf-8?B?KzRyeHhVbFZjazFmZkZkbWswRHZoa3hvZlFhbTVmSlhja0ltNlNwZENzbEF1?=
 =?utf-8?B?N3VWbm93MmhGYXYyMXhyOUYzNEo3YnNKaXdCdHFMYlIzZkhCTUd2cFZkSHNQ?=
 =?utf-8?B?VlcxdUg3dFZuS0dvb1VQemxHU3hlZU1uSWF0cjB6MldvTDJMZHAvekJ4bjFF?=
 =?utf-8?B?elBzRzVTOE1iWFo1K09lbk9OaFI1RGlsZzI5dUpPRzliY21zWXhoei9aejZw?=
 =?utf-8?B?RkVsOW8wTklqeXhHVlBnQi9PYnNBNHRwT0kydU96ZVlYNmtyczVRcE5mYWVC?=
 =?utf-8?B?Mi9OTTZLKzhYeWs2NlpzdTVqSkdKdEZCbDd5WEJ4VC9PQTQ0WlE4akhXalZp?=
 =?utf-8?B?bGVSQ2o3OEJSM3U2Y3FZSmxzdVJlS2gwWkR5WG9OZFRlNWJOMU00RTAxZlhN?=
 =?utf-8?B?Q3BWenlCVnhnUkhxNWhla0RSSnhHV0l0QXZ5elU5YTROM0lKdGd0Rysrb2Ro?=
 =?utf-8?B?MUdSNHVOVEF6ZnJtdTh6b2wyRlQ1UHFsUG9wU0NuVDhKR3NvNmpuTmcyQXE0?=
 =?utf-8?B?eUM5ZVBGTGFkcHNpSk1tVU5Gay9UL2Q1bytSNXJiQnBQb1N5VmlkMnNVQ21F?=
 =?utf-8?B?T1RyUFF2UFFOMG9MWUpERUxyRXdBVFVCWEt4LzN5a0twMXFhSzZmOTh3bXRC?=
 =?utf-8?B?WDZobFhYcW84S2VYZHVSaDBUcmVvb2p5a09SM2k3Q2U4VUpBTVRxTHIxbnpY?=
 =?utf-8?B?RG0vbmM4eTYzM0xPajAzS3BkNXVqU0xhdVIrYVNnQ29qTm44SDFpL0JpdVJ2?=
 =?utf-8?B?L0xCSHBhcG9BTU9LTm9iK3RCVGNneU1NUlIvNndIRGErMXZRcXQvVmhPTlZ6?=
 =?utf-8?B?YUhPcmQ3bWp1RVIwcFN4Vi9nOGgwNVJWMzVDd2hNdFdVTUpIeU9zQzFCNVVU?=
 =?utf-8?B?QTg5UUhFV3M3TjVidk5VYnNMazBNMWhVR0NuWlJpeURuaTlUSFRkaDA0Z0Q2?=
 =?utf-8?B?S0NCM0F3cnhRb2VnSm9WY1NCNE80UWExOXIyV1RKNHBTRm9Ka0xPZ1I1a3lS?=
 =?utf-8?B?SGk2QzVOaHM0dGFKWHYyeXYwZHQybUhNWTVEMDBhZmEwdDUxL3ZIVzZjanIz?=
 =?utf-8?B?YVJJYlhrdTZrSlRiNWlKWWdNWGNHT3cyQzVzMWVaTnp3a2hCYXlHaUc4VWlY?=
 =?utf-8?B?aENENzROVVlVRDZMZWdBR05qWVRJTkdpQTU2V1g1cjU2aXlkbkZUT29BYWs4?=
 =?utf-8?B?MkZUMUgyTWN5ajBsWlcyZEdYT1JHdkp3WVFsbmhadW9sTmhMdHBuRjNReW1S?=
 =?utf-8?B?VytOWnZ6TElUbGJPN0lObVkxdHRRYVFtaW5CLzdnb3NDMnBDM0xIUWs3cUhP?=
 =?utf-8?B?MXMxeldkcTNjZFNvVEhtd0E0VGpKQzRESFVzNmZJK2JJU3lFTHZNUk8yVEl6?=
 =?utf-8?B?d1hZbEk5SURCNUNPVjU3ZThRMjY3N2JPd2FiQXY4Ui9vRVArYWkrSDA3cFVa?=
 =?utf-8?B?aUZPL3Q2ek5SUFVmNENBa3o4dnl4YUhJckZIVUxwRjVjQ0tXMlBMQjN2eXN5?=
 =?utf-8?B?RGhZUUN3aCs5QzJPQzN4dE13MWNvcjlobkNFTUFPT2I5a08wblh3eFh5cmxD?=
 =?utf-8?B?K3c4bFMvbkZzdS9BcTlGKzdrYUZjYnJmZzdNWWJYaGtUWlVPaFIxN2EwQWJF?=
 =?utf-8?B?eEFNUnUzTU8vQWVPdlo5NlhZSEhIc2xlNzhmUlR0aGo5ZjhtY0pka1U4czlY?=
 =?utf-8?Q?Gn7Zi5YlbR/uivqA=3D?=
X-Exchange-RoutingPolicyChecked: Gm+eVae79j5/vg6xPgnQsT/wcmlla7iZyV740Ld+TMg79zPrkLiD5FZX1KDO8EeVUm0bHSUnYUCIf2iDeFHSNc5/6vQZic/tGTbSuDI8xAUbFSK8E5wfRcCSDunRQnai5zkuve8El6Z1xVLgXSw3mHGz4zp7TdEnxo+c4l0EsnDb1HvFqWUn+lQGGlzZkrJdJKBRnEKyEPeQ1traqAqTpy7I+O9hcBR+jrOLrMdrqlcqTwyUlbq77msF785QNoo1ABtgIXYMpIjW59sfLiOMjbzwhAB2Oj4yqGpsI6QQTe0xvOaJtBz/uHbsTNYQsyOHKz4tjm3iWPanN84hTWTXzg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9709a665-3ad6-4272-7a8c-08dec53adafa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 08:49:30.9206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yUN7Jdd7oPnwOSQ8Y3tzi/+AezA2ZZGitbHlmcycZdUERQdYN+0hXbt9FtDqWpGSHtUZCdcLBRWFOIJ6stPPBOPdiN6AyvxMpmJc+vzMOts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6359
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9533865434E


On 6/5/2026 8:12 PM, Ville Syrjälä wrote:
> On Mon, May 25, 2026 at 02:41:58PM +0530, Ankit Nautiyal wrote:
>> In intel_dsb_wait_for_delayed_vblank() the VRR path issues a
>> WAIT_DSL_OUT(safe_window_start, vmin_safe_window_end) followed by a
>> WAIT_USEC for SCL+1 scanlines to land on the delayed vblank.
>>
>> Experimentally, when PIPEDSL is exactly at safe_window_start as the
>> WAIT_DSL_OUT is reached, the wait is skipped and the DSB falls
>> through immediately. The following WAIT_USEC then runs from too
>> early a reference and the DSB interrupt (flip-done event) fires
>> roughly one frame ahead of the delayed vblank.
>>
>> Wait one scanline first so PIPEDSL has moved into the window before
>> WAIT_DSL_OUT runs.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index fec8a56e21ea..dae8ea33d069 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -902,7 +902,15 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>>   		 * the hardware itself guarantees that we're SCL lines
>>   		 * away from the delayed vblank, and we won't be inside
>>   		 * the vmin safe window so this extra wait does nothing.
>> +		 *
>> +		 * Experimentally, when PIPEDSL is exactly at
>> +		 * safe_window_start as the next WAIT_DSL_OUT is reached,
>> +		 * the wait is skipped immediately.
> That's an interesting find. I was a bit sceptical at first, but after
> poking at this locally it does appear to true.
>
> It looks like the DSBs view of the scanline counter is somehow delayed
> a bit, rather than the vblank/safe window wait terminating early.
> If I configure the undelayed and delayed vblanks to coincide then
> I can't sneak a PLANE_SURF write to latch on that frame anymore
> after the "wait vblank" instruction. So the delayed vblank
> apparently happened at the same time the vblank/safe window wait
> terminated.
>
> Not sure what's causing the delay, or how long it exactly is. I was
> able to get past it with ~5 NOOPs in some cases, but then reducing
> the dotclock made it so that 5 NOOPs were no longer enough. And speeding
> up the DSB by pushing CDCLK higher also required more NOOPs. So the
> delay does seem to be related to the dotclock/timings in some way.
>
> The "wait scanline" instruction is also affected.
>
> And for good measure I also tried a poll instruction on the
> PIPEDSL register, and that also sees the stale value. I was kinda
> hoping the read from that register would somehow force things
> into sync, but doesn't look like that is the case. Depending on
> the dotclock and CDCLK I may need to poll multiple times to
> get the up to date value.
>
> So far I've not been able to observe this delay on the CPU side
> using intel_display_poller.
>
>> +		 *
>> +		 * Wait one scanline first so PIPEDSL has moved into the
>> +		 * window before WAIT_DSL_OUT runs.
>>   		 */
>> +		intel_dsb_wait_usec(dsb, intel_scanlines_to_usecs(adjusted_mode, 1));
> Hmm. Instead of that I think we could just use safe_window_start-1 as
> the start scanline for the wait.
>
> Since we know there a preceding wait for vblank/safe window I don't
> think we should ever get here on that specific scanline for real.
> So if that scanline is observed then it'll always be the post-wait
> stale value.
>
> I also had a quick ponder about all the other scanline OUT waits
> we do elsewhere, and I think those are probably fine because
> they're rather concerned with the end of the scanline window,
> not the start. Seeing a slightly stale value at the end of the
> window just means we wait a little bit longer than strictly
> necessary.
>
> I suppose for a scanline IN wait the problem would be reversed,
> ie. the end of the scanline window would be where the stale value
> could bite us. Currently we don't do any of those so not a problem.


Many thanks for digging into this and testing this thoroughly.

The stale view of DSB about scanline counter explains the behaviour.

I agree the boundary adjustment approach is cleaner from a semantic 
point of view, and I will change this in next revision.

Thanks & Regards,

Ankit

>
>>   		intel_dsb_wait_scanline_out(state, dsb,
>>   					    intel_vrr_safe_window_start(crtc_state),
>>   					    intel_vrr_vmin_safe_window_end(crtc_state));
>> -- 
>> 2.45.2
