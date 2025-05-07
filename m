Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6B6AAD67B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 08:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DB810E74E;
	Wed,  7 May 2025 06:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFrCUT+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161B010E74E;
 Wed,  7 May 2025 06:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746600782; x=1778136782;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DdmpYt1N2iJs2LrT1GHHeEVgvIyejvwKAdF+hwT31ik=;
 b=dFrCUT+vArC/3v5wKvGajWmKMQFkRFs/G1iu2d8I02J7g0tYborjitzV
 24qJANVw56OHJh9NIdTEYOE3tBIY5bBj7KSZUZ0SIIfIBBrDlt75mPp7G
 RtwVZMAtCoaFD+Ey1fCxkvzQkRauqY+63JdHJ4t/0O/d+CJi9e7UhQatn
 dT9H+YRyw+ltIZ4U9LfVPAtSbYokFFczduaQHbdILnwy6MHLQo+yv5ibX
 3wIUCSLIEY16nsVo7udrY1soGBeNGTW3olO3mJuJCHDTvqOkYXMoX30t+
 PHiiXT6sFjebnzjyCuUzPW8GvHvmCSk7oW7PnIFkdyfwq3kPpCynDuesi Q==;
X-CSE-ConnectionGUID: oYo0j0aqR5O3lWAYO894OQ==
X-CSE-MsgGUID: c6fmQN8nQtOBVRxQ1K2rGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48021596"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="48021596"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 23:53:02 -0700
X-CSE-ConnectionGUID: X8klNiVpTd+2Gzc430Z4Bg==
X-CSE-MsgGUID: pk1VV3BXT9uaUK/2GX1AtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="140821934"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 23:53:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 23:53:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 23:53:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 23:52:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=da4x2Vh1TjJAzcjL1KnqUFbiqLvftBUIhCIZvHPjZVOyj8W8/9czzse7vhQUo6TUhM4/Q/EcDeKr/PQ46qkpZPFcF5FQMUycr28Jm3On4Jw3Pk1iG8Vzfo6hnrGU1F1Z6Pg9Qbu1SnXwqTgeCi5ia0/rBlu1Puy2r6MKXRU+GbWz3iQ+Xkz1QrcPFJW55+jJVgz4w472iobxhempf9vez1HuGUJxnL1USw/7chNMcbmY5gIC5JsrN4wRVsN9KSABpJFp9wglLeGQ+uMSp00Px7NJkATctqF5H99Jt9A/3M17OU2m76fPmQk4dFh7zO6AXrlBbGn4kYj8NPeGyi0hkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VtqrmxR+JWsBA70pc11Evq5qD8Zb+8/TJSg5nVrRU30=;
 b=kAhLwJfvVdJo3wrYOHhNdK1y7EBvGtGIfB7+rcFNTHNesfQuK0Du0cDslJwtUZ847QBrttv+hXESrjKHsO1M2urBeGTz2kRg/Y+CNX7FBG09nlq3YPOKUtWOelgErvyGBpd77eDKDnqu0Eff2WwVIzzq2fTHT1kqRQF+/ICqAXJLh/FtVI3hkBHZpETx0r3rcU8WnYbQSRtuBU3mRLOAQgvWV6rBf/BpBKaJW2IKWbC6MlnU2Lv2Ng60SXweKkDaSD+iMeU2fGCfqoEpN5GrOsFoLDUKT1AAusw2/w/4omaQH6pJKMWvAf1qXM3UeOGETUX+l4/Wzg5onxcNasuruw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.21; Wed, 7 May
 2025 06:52:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 06:52:50 +0000
Message-ID: <e0b84875-cd89-4504-93ea-09f30189feba@intel.com>
Date: Wed, 7 May 2025 12:22:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/17] drm/i915/display: Add VRR DC balance registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250506145517.4129419-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250506145517.4129419-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5165:EE_
X-MS-Office365-Filtering-Correlation-Id: eff9e2ff-ff08-4e61-b618-08dd8d33c825
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXROQlRnaEhFd0VmUkloMlVCMkpXbVFlTUZ5MDd6SDlYZ3ZKSzV0UjhCVG9Q?=
 =?utf-8?B?czdDa2U3QWpqWmtGcldnWGt3UUNTcE1OcHo3Z2Jnd3B6c3QrQWdZS2F3L3Nq?=
 =?utf-8?B?OXV4SXZPV0RVSFJ5WTVOY1gvWUYxdzJGaVQxcGJrQTBrZkNTSXVFa0RsVXg4?=
 =?utf-8?B?SWFZRVRDTVBaOElWNDdlcUVpaVlXbkF2WGlSN0xNa2pNc1h4UDhzV0xmNU9B?=
 =?utf-8?B?Nk5paGNnUW04TGc0UEdVcEpLcDEvQmtUdkdzNVNheTBCeHZYVWIrdW1vcjhJ?=
 =?utf-8?B?Qy9SS3BxWWZRU3hFY3JCSHlvOVVrWGdSazRKaVpHOGRBZVo5N3VIVzNibC9Q?=
 =?utf-8?B?QW9vakNKOE1uVUh1dERVZlVyRXdTNExHVUduMEloSFdZVU9COFNLN3VCTW8r?=
 =?utf-8?B?SExicjFmeUs5R0VMa2ZjS3laeExkc1IxcWJma2hoTlpselVNWXdCeC9WRFNE?=
 =?utf-8?B?ZjdBZytvRXN4TUZUNk9YS1BzaHhVVEFWZW52WUxiQ3pIMzJHdUsxOGM3OU1r?=
 =?utf-8?B?UHUrY1FkemxsUXd2TFFGZWRYalQ2bENaUG13VUtGZnkwRTlLK2tiNlJzL2pI?=
 =?utf-8?B?TWxTeEVzNUZSQ04wQWNJOGo2bXdNblRLYWlqOWF6YlBmb0hVNCtBRDRBcG1E?=
 =?utf-8?B?eWRYMWs3WDJvOHdCRlpLUW1EaytRYmlLVTFMSUthazROeDNxZ0hWb3N4NHNT?=
 =?utf-8?B?MWU4eHlsWDArNEZKQXVKZmFYQmVzRkpRN05wYW1vYUFwTHZBaWxTR21tQUVa?=
 =?utf-8?B?T1RhdEhxdTdnZ0xYdmlWWVZ5UXdtLy96cjZlNWVyNEtGUzRnTytrMWZSRDJT?=
 =?utf-8?B?TEVYSG1EbnFDSm91ZUpid2lhck5UdXlFbnhVK0dNMVFZTU9yWnhEYU1aUzV6?=
 =?utf-8?B?amwwZ3hiMGtZQXBTMllvUmsxaWxaYU4yQzd4Z2hPQ2tHVEhRajY5TkFNYllI?=
 =?utf-8?B?LzkyTlkrL3FGWXp0b1pGVzhqaitjZ1NMTGRKcXhadERnSktSTDZTQ2h1YThv?=
 =?utf-8?B?aVpjdDdJNHg4Nis1N1k1VVFaakhsUU1VYkFCU1dJTVdObk5XK0FEVUVTZHpz?=
 =?utf-8?B?NnZvYmlZTGZvMkp4TTB4SU5LbE04M2pxUnNiTU1ERXppSFN5T0xQcmRrbXoy?=
 =?utf-8?B?UXdRM09CbDc1SmF3QlVFaHZ4NklITHlyWVZjM1gwVXlrM29lVGFybHI4TjhY?=
 =?utf-8?B?bmdIemdYckw0M2l2d3RHZm1IM1RKN2d4UEJvQTdza1BKNXo3WVN1S2V6alpN?=
 =?utf-8?B?elg3SDR3aCtDWW8rSVRSTHBhMmlEWEljTlQ3QzRqNEU4eDYxYkNlejZUVUJi?=
 =?utf-8?B?ZldlYS9EcjJxR3phdXgvV2lEKytSdkdHbzZ1dFZtYjc2U082U3d3TmdlUWp3?=
 =?utf-8?B?WXY1TmRsN0dhOTJxaHVjTitJclNCb3RXK0ZwcVYvMnZUczAvc2ZqcldGKzBV?=
 =?utf-8?B?MTRXdlBLbDE2dEhMT1BHVDdrSllxOGdZbit2cHJRa040dWpveDk1cTZzRFQx?=
 =?utf-8?B?ZHVVVjQycitWSE4rdldhVWhLaFYra1VmbE4xTUI3V0pXR2ZwRGFON0ppREJ1?=
 =?utf-8?B?ZEdMY3VRZjBzb3lmN3ZwUERzN0hwV0ZlaWNqQ3lGU0k3RzlvT0xPMDFOZERm?=
 =?utf-8?B?R1htL2xNS001bFVNYTdwTmVkdEpNRDQzY3MzMW95V3lzb1VOaGw5SzJYSVly?=
 =?utf-8?B?UU9QUGhmSk9SNkFEbmRyYU1LeEFlOE53M0NrOStmbFFBS3V6Ti9qSksxcm5F?=
 =?utf-8?B?dnNxRGRZZE4vWno4bnNmVXpZclVyWHp3T1Z3TTNMOUhXNG5yMDE4eWhweml6?=
 =?utf-8?B?TDdra09jd2VVSEw4MlRkbzA0RHFPTW0xRys3ckdzazFUMGZuZ3JBYlNNNWla?=
 =?utf-8?B?b01RNkpwclNLbXZ1NzB5MDZzUGovdXRnVmVrN1ozN0tCekgrR0syTTVsWUZM?=
 =?utf-8?Q?zO+2xgeoTeg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alZYRjVWUHdEVGVLdlRiNG8vRTBNZ0ZNNktDRVhWU3BpUmtRKzlIajFuWm5C?=
 =?utf-8?B?N1p1Y2QyUllGZEZtY2EwTkMzWEZOaUlwQkR3eDBTQUJGejZsRzdicm5mamlS?=
 =?utf-8?B?TUlyaHZpcExoc0pzbG8wemdwaG1odXZEeEtWVUg1KzZUSUVydUdnWkoxaHJH?=
 =?utf-8?B?NkZZMHV5djRYS0Zab1c0TWZxTFZ6V1dMRHV0aEhJQURKRzlES1c2WGpvTzNM?=
 =?utf-8?B?c04wbGpiMDdqNkJjZDFyb1VaOXBhWmFQRW9mRldya002bGI3ME55OWNIQ21z?=
 =?utf-8?B?a1M3ZEZlWHBsYTBZaTVvNHA5ak05eXl0b29HTFBRbExaN1phLzFHd1lIZlFl?=
 =?utf-8?B?OG0wTWQyTG9RTjlrWFJOd0hJTkVyeGlzZ1dLeVlRKzJkRE1WYm1tUjVHRXBH?=
 =?utf-8?B?TldWeE13NnljZTlPcFdDN3c4Z1lIaThxVXNpcVJXT3FGVm4yVkVxNlpHcEs3?=
 =?utf-8?B?cTJvWXh0b0w1eE0wRzdmTXZVVnZPNW41R252U2kzZlIyNlp0N1FlM1g5Y1Mw?=
 =?utf-8?B?OENmV2Ntc1NBbE9LUVNEa2NKaC9MOC9ETG1XQjVhZFNwUCtUQWxyS1pmTFYw?=
 =?utf-8?B?Qks0MUlBOVd5dGtlR3VTNGU0YjFIVHRwcDU1SEYra0JkRHIxQVdMRFlNeGw5?=
 =?utf-8?B?N1dUUVVrc1gwVWVBMGdnVjNXM1ZLRTNkcGt2QjNSdUtTS3d6V2dCbThGczM0?=
 =?utf-8?B?YmVLMjU4T0VaK0dJOGxONWdzM1gxZE9zMnAyWDhBRHJBeWlEUFhzT25RUExh?=
 =?utf-8?B?UCtaWUtQUldqUWJMMkd3Nlg2bjRHUUQxSVltZkMxYTdzZGF4UVcvYlhLaWJq?=
 =?utf-8?B?T1lJd3BYZ3orc0RvRURtN0xHWGJHMUwyNjNqcUdvU1l2T0JFQzhaalFabHBI?=
 =?utf-8?B?VldCcjRDdGYxMDVyVG5wa3k5ejBNbUpRN01NUE5wZWdZV2hSa3ZVL2ZGM1BR?=
 =?utf-8?B?Z2RES0w3QzhBbmVMQjhxSUlLM2ZPNm5IQmVjM2NYR1EvMXBVNkUxbWsvTVlN?=
 =?utf-8?B?NFNrKzNOQVJ6R2ErRjVXajZFeExENXlqS1dqcWZ4RTNEU1ZscHNUTUNWd1Vt?=
 =?utf-8?B?UER2N2sweDVOVklnY2tsUlYvUDg3cGIyRnJWS2JnQW1JOG5MelVPYjhCTmtI?=
 =?utf-8?B?Q3JZZHlteEl4cmdjSXRpNWRtQ2luOE56UGtkNVE5NlAxcFpTSEpmYjNxNEVX?=
 =?utf-8?B?SGlrVitiS1JMV1plNDN5WlZMN0F1VElCNzZLOUtmT25aTVFMMFJLZzJCNFZF?=
 =?utf-8?B?MkovNm42Q3g2b0JJVWRmbXZRYzJIWFNiVkU0elZLUHlXS2ZjS1ArOHZsQnpq?=
 =?utf-8?B?ZmVjM1A5Mk9sc2VScFRORG4zOXpUdE96eFhmWWJvbzF2NWFHMFFQRUtxUWRY?=
 =?utf-8?B?alEwcDd5S0xlYnZ3L2swenh1T0JiWENMQzgwRm5MVkdhMTlENkNSY3laZEJ1?=
 =?utf-8?B?NjZDakUvTTR3V0lKZGVyYzNBU01VOS92cmRMWGg2RFAveGMvZS9tS2lzZDFH?=
 =?utf-8?B?WXFsNHllcUlzcWNXSDkrZm94d0Z2dFd0UU8wV0h6NCtPNlhiSUxMM3lRNkU4?=
 =?utf-8?B?OXMvZUZVcWovejI4Yzdvd1RNVFY2bDNIS0wzMXZ3NXVjZEpzTlh4VW5NYUZs?=
 =?utf-8?B?VzhjOEZ5WVZVbitNYnc2WlpkZjJiR0JjTlg2QkdobTF2TllpTDhWY05aSFhn?=
 =?utf-8?B?Z0RsdDVkaTdWelVQQS9FSmRPNjNOdXo1TDQ2YmlwVGtyY1htVnVkdGhXOXgx?=
 =?utf-8?B?TjRMWHhZUWd4VldtL2NQbjRtL3hiZk5ZMi9FTU1LNGIrTldXM2xFaXJkbVFw?=
 =?utf-8?B?YXZDQk04Yjk3aUppRVRpNFRzMUlkQWRRS2lrM0hkdmEvRkpPc2o1Y2VFNkRT?=
 =?utf-8?B?RUJ1NE10eGpTUWtqOFNGWDg3blU5enY3cjlLNlNUdE1Mb3FKd1BZeDZUeWdE?=
 =?utf-8?B?VzZNb25JRndQZ1paaUErR1pqSWY3RFNZa2UyN2JKTGx0TnYyOE1mUE8vNlVv?=
 =?utf-8?B?UGpaUUp5RjFFQzJjNVY4ZXlJeExuL29QNyt4czg5QjNFRHhnREIvNW5Fa25w?=
 =?utf-8?B?ZWNyUUxhNXV5VnhnbW5NRE5mTjBoME1uS0MwVk1FUWI2YTl4dlhacHVaYWRn?=
 =?utf-8?B?UGp0a3BXVXZ3R0RQaG5oY1pSZDN2TU9DS01XNG5kbS8zRlVIdkYvRFdEOEhi?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eff9e2ff-ff08-4e61-b618-08dd8d33c825
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 06:52:50.0705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D3pTToO9Uq/gT9NgsDAURIeaRCYdGgthp8YobzJRs1Lte1VYIqYBbCZ2z5jiUBgSzDN8itIqFLTXuRUk5g6hZ625+x/uC8YcJnVig9SBzoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
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


On 5/6/2025 8:25 PM, Mitul Golani wrote:
> Add VRR register offsets and bits to access DC Balance configuration.
>
> --v2:
> - Separate register definitions. (Ankit)
> - Remove usage of dev_priv. (Jani, Nikula)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 48 +++++++++++++++++++
>   1 file changed, 48 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..8a10aec4f3cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,54 @@
>   #include "intel_display_reg_defs.h"
>   
>   /* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
Same comment as in previous patch. Lets use small case.
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, \
> +				       trans)	_MMIO_TRANS2(display, trans, \
> +							     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(display, trans)	_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
> +
> +#define _TRANS_VRR_FLIPLINE_DCB_A			0x60418
> +#define _TRANS_VRR_FLIPLINE_DCB_B			0x61418
> +#define _TRANS_VRR_FLIPLINE_DCB_C			0x62418
> +#define _TRANS_VRR_FLIPLINE_DCB_D			0x63418
> +#define TRANS_VRR_FLIPLINE_DCB(display, trans)		_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_VRR_FLIPLINE_DCB_A)
> +
> +#define _TRANS_VRR_VMAX_DCB_A				0x60414
> +#define _TRANS_VRR_VMAX_DCB_B				0x61414
> +#define _TRANS_VRR_VMAX_DCB_C				0x62414
> +#define _TRANS_VRR_VMAX_DCB_D				0x63414
> +#define TRANS_VRR_VMAX_DCB(display, trans)		_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_VRR_VMAX_DCB_A)
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(display, trans)	_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
> +#define ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK			REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK			REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK				REG_GENMASK(19, 0)
> +#define VRR_FLIPLINE_DCB_MASK				REG_GENMASK(19, 0)
> +#define VRR_VMAX_DCB_MASK				REG_GENMASK(19, 0)

These masks should not be clubbed together for all registers here.

Some of them belong to TRANS_VRR_DCB_ADJ_VMAX_CFG, some to 
TRANS_VRR_FLIPLINE_DCB.

Please move these bits to their respective places.

Regards,

Ankit

> +#define VRR_CTL_DCB_ADJ_ENABLE				REG_BIT(28)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
