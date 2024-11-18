Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6521D9D0A80
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 09:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B172210E334;
	Mon, 18 Nov 2024 08:00:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BkbHkNvs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3AFC10E334
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 08:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731916812; x=1763452812;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KxwqGBFgMxmcctzHoq1V0ISKZ76BN36lXUZLhcKO76o=;
 b=BkbHkNvsQP0vM9qRB6RdyYxZIw6DeNZq6xIi1XR6IzVjWDeQPDGHccNs
 2WBn5QHa/pd3S3t3czxpdxu8QqDzVI5GLIDI/Qm3ttSQ2dERFs1oR2/gA
 jMmFA6xtvUzDhYSc7bQemaVRGKXxDDQGmBWfHOfbphIX+kNdJmQBLtJco
 j+8++dpeHgV+HP0TQJyekZs+8s1Si5gUM8eJt9zZgsn2wpPCC5N+1N5Vl
 +Ox23V4r6klZgSfm5NsnJLPAsqZndMqtlyl4l7E/VTb7av4xUp4QcijVw
 /l5ataXR711l/P/hWu3AYiXvXAvgHZ+J6yM/Ev+FIZYp1gG2rKWttPHFX A==;
X-CSE-ConnectionGUID: NUWFZfwNThun+pXbIv9ISw==
X-CSE-MsgGUID: 920Jh+GCRGmyJnKCoxGVtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="35528383"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="35528383"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 00:00:12 -0800
X-CSE-ConnectionGUID: jYbPIWKST/6EyQjYBxiiSg==
X-CSE-MsgGUID: ix8w5b5HRQOkHA3Oqic7IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="120090908"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 00:00:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 00:00:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 00:00:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 00:00:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c4eoFdHkcIfsh4qHGE8bldCGXEt6ey4r9LZCzXYig0J3F0u1L+tSb07cVmWTj+JS6dBm2Y7jptYiZueDmwKOH+ZwhK8S8/vopk9czrlzBpVHRBcG45jUGhA7jR96sAYbfESqVwbxfYdYPIoZIYhQmqD/pGqdC91zWqn3dOfsFJyi94DnZaV2QbeP4IDG67ldY453yltgZB6oodQXP39FWtFAnUDw1HGvl8O8eYuS6d9dya3bEhjvKhgQi3d6+tpCYZKQp09VLik2fbIX85GrkeF5EKlXbbdsqXr6r2NKrBQFTyCFmarYEsziPCROcNs35hD7nBu2HAufhZP7sKeedw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kg8Rr1W1WcjA5SVCtk4znz69reXcuXB1Cj4cf8aI7ko=;
 b=tak8W5Ql7TJNhPx1vd32DGrCS19TvSPBsnXhdmZOXxtqGeasNrN63QNY7Dl12IWIlzSuNp1lqfiH35DAfChQjlc35Q7XU+O0eoIez/dlaIQ15H/+tiyfXpNquzlboA3EmYsuHQKpZbmRtOuVp0O2ts6Wno4/zticYCi8kkN6zCdylhAsYsOO/s0wLaZMgyYTW3ky1dGgRempXJ4kdQf0mcGP7v6fuDAmOaAvYzl8PtmO/SBp7w06c/hRBnMzV6RmzCyrHKVKQof3/dSmnr2BUWC6oih1tIoe+v/D5q0c6xCVZ9N0mrhrPkf+W6AZNtKTK/po6Ue3QA9Y3cgSULOiQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5209.namprd11.prod.outlook.com (2603:10b6:806:110::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Mon, 18 Nov
 2024 08:00:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 08:00:09 +0000
Message-ID: <e5edb88d-71b2-47c4-845f-b136f6133ce1@intel.com>
Date: Mon, 18 Nov 2024 13:30:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] drm/i915/dp: Set FAVT mode in DP SDP with fixed
 refresh rate
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241021105100.2861830-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241021105100.2861830-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0239.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5209:EE_
X-MS-Office365-Filtering-Correlation-Id: 43196a93-9c82-43a8-3be9-08dd07a705ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmhodXNLNG1UQW1vV0VOUzh1UU8zNlJJR2gzeFFlRldIejZ2cFhXdzgwdG5z?=
 =?utf-8?B?cUluUlZVVlhNMmlOSGdaKzZwbUx6cGZkQ09hZklUcUhsYk5Ga1ZaOFB0RU1q?=
 =?utf-8?B?c09oZzNOUi9uZ0J5Nkx4RDQ0R2RFVWZEYzEzNk56czdqby9Kb05GREtXemww?=
 =?utf-8?B?a01wSXEwbjMza1J1eFFmUk5RendtdTVNTkloZjZpNnZyL29iNGNabWl3dVA3?=
 =?utf-8?B?OGNsRmNDU3dhM0h3MHNFbUJveVFMWFR6WEpXRFdFQVZSSmNzZjdkcUFla2Mv?=
 =?utf-8?B?QURzN3F2R0E0cGNwTzl0NHhhMnFOMUFCdTRQWE9ESnBxZC9sUllXaXlydW11?=
 =?utf-8?B?bXhIbVRoUDJibzFKbEhDWEhZUVlvYWJNcENpWnRDUTV1dzlkLzNSMGF3bDZJ?=
 =?utf-8?B?dU5PZW9DN3hMVjRQd1hKaTkyUWtXV21rZzlGMUZEZDMzRmhjbWE4ZllnWXJY?=
 =?utf-8?B?c2FidXJDbWwrdzhld29NYXBMUzJxaGt4WGFKbmRBYitDQ3lDeFY4blovWmtB?=
 =?utf-8?B?VWFKNXNzbi96amFWK3htSkJLa1RDR1pVdys2cmJLaThJN3gwY3dNSitRMjN0?=
 =?utf-8?B?QURqN1RWY2RrTUhTcjFSL0xOWUNTQnBZY1ZqQmFYOGRwSGhza1lPRHYxbVBy?=
 =?utf-8?B?VHBtNTdRUUhHQVpnNm1BOE9ZS3hQVXRycGVTUy9IOVEvYWJoL3FrdndGaFp4?=
 =?utf-8?B?aUtxZnkxdGl1OXJkQk1Oa3FidTV5Y0xWU2VzemQrc2o2UHVPMmE3byt0dWZJ?=
 =?utf-8?B?Qk8xNmtPVW4vUEcvdTltK0tCZGZBWFdwUDBuYU1jTm5HZGVROEk3SzI1UCtU?=
 =?utf-8?B?elkyM0Nya0dFR3hRZnJPUGFnSHd5Q1pLdjBnRGFkTVp5WURLZ1d2NGtsZVIr?=
 =?utf-8?B?ekRGOHU0SkhYWjZoRkYxbTdVb0FBWmhIYmxTdGltUkl0RXNwVWYxS2I1U2Jp?=
 =?utf-8?B?aHRMVkN4dTFQME8vZ2IrbFNqNEg4MVg0OFZ0Q2RhNm1LbURCKzBGQXVxY1d2?=
 =?utf-8?B?WjI2Z2hSUDJieUdGbG1OVmFSUUZCSVJJMC92UlV0K2d2dUFzb3NwdUcrK2dq?=
 =?utf-8?B?MDZRenAvcFdKMVlXZjZtRTYrTHEzS3lXSzNwSmFzVnJnL2V5TWZRYkhKbG0z?=
 =?utf-8?B?bFh0ZXAzeHVIMHJ5cFlEeWZNOHpyb2ZtRVdxTlkraW9SdGZyei9ZMlNCby84?=
 =?utf-8?B?czlLVU9UY2k4RkkvYWV2OC8xVXFvMm9nSnB2L1VNTUd0OWxuKzFjejA5aDds?=
 =?utf-8?B?cXJyTlFiQ1orallVZWNZaVJVRlBNaFplMXlUVHRpd2Z6dTQ4R0Fvb2poKzdp?=
 =?utf-8?B?dy9HZmR1N1NqcUZwMklsNzJzNk5wVGszZ3VkdEpmYUxiMW1OalovZFZXWWsv?=
 =?utf-8?B?OEpacjFBSThzT0xMRURnTE95RTdHTXZhYjk3Uzh5ZTNjS1RpcXpmZ1NQQ1Fo?=
 =?utf-8?B?S1FETE9FQ0lkblJ5elpjb0xQcHU2c09odm1RRUxLMXh5R3lTcUVaOXp6RDha?=
 =?utf-8?B?eVIwblpUUjFURk1LeUNrcGlYWSt3SUwrZ3BvcnZuWkZFWkMydGJuN290TzVh?=
 =?utf-8?B?Wk5ieFRGcHp5dDNoVklzVHJpMWxoYXZMVjhnQkZtcFFWTzlsRTY3S3QyRnZM?=
 =?utf-8?B?RUx3RGZTSjRxYmh3aTZYUFhYRElpbTZwZkV2Mk1LaFl3Q0ZLWTBnbGFQL3Jp?=
 =?utf-8?Q?YfyGo3u4FKaYUrnU4JSW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkRtRzRPK2x1dkg3YURFNUVlUXdPZlBWcy9IWDVlV1p1ZzhaYmM0YkRXaDAw?=
 =?utf-8?B?TndFZC9LRG8xdWFFL2xuMVZkbC9KeitlSTQ4SFU0TE9DOWtZNldjNW5zZmZa?=
 =?utf-8?B?RXNvRHg0cFluNWw0Y3hIMlkwclJVeEdZUlIvUkZOaGZUd3dWYUFnWW55K0dD?=
 =?utf-8?B?cTl4bFpZM29tNmNCQUhGZmxLOWZEcmtWcVZhRDVwQmtBTG9uN0tsMUE0TVhK?=
 =?utf-8?B?QUdmREM1VFZCQ3NjaHRrNUtyMkZNZCs0SDdzcXhNcU8wV09FaVBxYVdGVDd3?=
 =?utf-8?B?V1pDcXpFeEUrZ0FHSnpNaUViSjZiYkU0VWUzb2svdHNMOFU4bmNDZUM2VnFT?=
 =?utf-8?B?cUhOdHZqVlZrbW96Sys4OTdVOEZ1bHVrOEN6U0lDV25uQXVHTWxnSWtDWjRo?=
 =?utf-8?B?YVA4c0NwemFmTlltTWFPRWw4NDJBQ2htTm50OHRRbFc4cGxFd084d1F2OVlh?=
 =?utf-8?B?eWtMRnV4OS8vT2dDcDhvT051a2JKbWhGUlo5MWhsa041cWtTL1VyYi94TFhi?=
 =?utf-8?B?U2h4U0dObXNTaDFER0dDRkQvcUFPTEtyblV0VmFqb2o0VTMyMFdYT0pKN09K?=
 =?utf-8?B?TzVjMmhtTy9EcWFTRzlidldWNUE4RW12ZS9tSy9idTRwZHY0RXFlTTYvTU5S?=
 =?utf-8?B?UnJnbVJVcndyMkl3akNjL1ROZkQ0T2FveXlMelY0Yit3SElLY1RRL2VNdUJO?=
 =?utf-8?B?L3JHYWVKclpDRDVsdjBqR1d5b3A0Sk40STFmTzUxVUVuSXQySDdjb0VyTzk3?=
 =?utf-8?B?ZFZHY2h5Nlhib0x6RXRKZkE1MzdBcGhNYklwZldEUTE1T2p5UXB3VzZ2eEV2?=
 =?utf-8?B?eGc3R0lsbTBraktTWXZXbUg5WEo2ZWVzTnY3Y1RtNHVKU2I3MUR0bjc5M2tX?=
 =?utf-8?B?WWdNVXlGRXpxTmtWaHA0Rk04eStSYTBOajJOd2wrZjA0QkUrWFJMeXNaYVRK?=
 =?utf-8?B?eW56MzY5UUwwaEh4aS8zaXNaRlo3Nno1ZEo1UTJQY1pLeHoyU093SVBqLzFB?=
 =?utf-8?B?NWd0cjNKVlVwMkhtTGVNaTY5TDZZdUV0MTM1RkVyeTFlY0FGVkRtazFDYlIx?=
 =?utf-8?B?Zk96TlAydFh3VThOS2NINnNDZzdlaFVYTWZ3dnhsSEo0YzhHclVwU1JkMHlt?=
 =?utf-8?B?MWVsalBvNmVhU3VCV3lyeXVZbXRoNnV1ZDk5a252NWV2U3FFN3lXY0hUS3BN?=
 =?utf-8?B?bE9xZWFlemdqbE9KM0d2NVdmSnpQcU9ITWgvNSttQSt0SUNFUG5KMXJjY1Z0?=
 =?utf-8?B?am5hb0oxL0x6NTdiOG12OWV2UWh4ZCtqeTNnVG14MjNTdGNlMDRoVHd4cDhu?=
 =?utf-8?B?VnBQc2IyWEFia3hxOWFrUjJxeFo2bHh4djlraGt6YW9zTzc4TUlNcFEwbFUr?=
 =?utf-8?B?R3E1NWlvMTd3NXR6T0JHMk5SUWJ6S0c3ZjMvRndmaWxEVG1WcDNEcnhTaDJZ?=
 =?utf-8?B?cXNBUjhEUTdxSURmbUN4ZEFBUUVRRWlWR3o3WVZNOTZ2TkpoMndpSVVobXVw?=
 =?utf-8?B?T0gwQXg3R1FTVjlza2dNd3pIQW5kS2h5cmlEb0p2TTluelJvMWdKNjNtaGZ6?=
 =?utf-8?B?Sk4va09MczZVMTltNnBxY1hCRWRPWHNMKzZnOFlxYVJ6UzlzY1R3N2hibnVv?=
 =?utf-8?B?OC81ZWZRWXhpbEpvUTM2RThIR0JaeWlCazdQcmN3c2RTNzJ4UVRSTEkxdVNh?=
 =?utf-8?B?TWpGOTl1WTNqSUY2V0ZJMzFBYTlzOWNUeDhOQkt2bGEwcEN2Z1pHaFFJOUtM?=
 =?utf-8?B?SWtnQW9aQ2g0UDZMRGxiNDk2NUhsNjdpMUhad2VkOUpMSmdOcnZuWlVBS082?=
 =?utf-8?B?UGI0THRjRmRqRHdoWUlIMGFDWHIzK0VMTnJwVnNOcXFqRXFMS2R6Sm5wSVNP?=
 =?utf-8?B?aHpJdnJmeXBqYXFqR1JvWmdUbWE3L0tTYVI4d2FwM21tRm9PaUtSaGZlQzBR?=
 =?utf-8?B?eXI2WVZqeWsrWnptVjJheG1SWFdQS25WbGJ2WFloM2MyMWRTOEhVdTFvWGow?=
 =?utf-8?B?cDNMczlyTTlsTkNvOFJJRXpSSUZER3RMWUVXSmlYVlo2UXRhNmZBcEdhOVVR?=
 =?utf-8?B?RGdwQU1UaHgrU1lVeE1BU2N5YytXYUV5dndlakdmb1JvdkRYYnpIVG5vN0Z5?=
 =?utf-8?B?Wm5Qb25oMHhScVRKNnhOeDhwekFpMHlWakFNYlFYYldRcHU5YjhUVmJuOWNx?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43196a93-9c82-43a8-3be9-08dd07a705ec
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 08:00:09.7946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Vw75DOaf6Zcu3j3+yTbjTSEYHrm3Wb2gtwM0mQNTNIHk8G5U0DBfbl7+RhkVfKsi5yMYSCfxEdrbOA0hQ0/KCrCobjinBVnKYoTLMx2Fys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5209
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


On 10/21/2024 4:20 PM, Mitul Golani wrote:
> While running with fixed refresh rate and VRR timing generator set FAVT
> mode (Fixed Vtotal) in DP Adaptive Sync SDP to intimate the panel
> about Fixed refresh rate.

This is not matching with change below.

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7e04913bc2ff..b1f68fff524d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2785,7 +2785,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>   		as_sdp->target_rr_divider = true;
>   	} else {
> -		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
> +		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;

This is done in patch : 
https://patchwork.freedesktop.org/patch/623895/?series=134383&rev=6

Perhaps we can include this as part of this series?

Regards,

Ankit

>   		as_sdp->vtotal = adjusted_mode->vtotal;
>   		as_sdp->target_rr = 0;
>   	}
