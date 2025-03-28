Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B168CA74CF3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 15:42:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829B810EA3E;
	Fri, 28 Mar 2025 14:42:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="loegcRuh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3C810EA3E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 14:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743172941; x=1774708941;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=X5pe7uS2dlFpX3SoENwq4T/sN19J4/wlDnYPaqqY6wk=;
 b=loegcRuhvyIL3CTTglIJHLqkxdIyKm0S7alHvPu5XRtcrm/MGAbb0VjB
 yqIP/pJ0104dUufgLdzvMjwrPP7bTiomQPNxRshwm42RG9Oh2UVDYBzxk
 c5OhKx5hieVjGoJTFmct88dfPNaJ6SqYQd0MRC0872USblyNRHkb5Mvcj
 X71AnxYBADigA7XzZAIbxn5ASNJPkkFUSy5uKPJhM6iDigJRM8JJHLXJV
 VRwOgyXdGBsXW6mn2lyazdOEEWuQEzLuW7+xYiCFmCDgmyCLA/vxIUmGr
 fJcCj4yqEEJPBcy+6fXSNtreS4janwEQNV9rFX4bUMbu7f6pPkCiThNR6 g==;
X-CSE-ConnectionGUID: rpB/o9mVSMigY3N4DkRvMQ==
X-CSE-MsgGUID: MVo9hkOxRViGT6PYh/MAkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="44420437"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="44420437"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 07:42:19 -0700
X-CSE-ConnectionGUID: mOPMGFJMQqetqKXbfkoNpw==
X-CSE-MsgGUID: VvqyWBc3Rquref7XATMq3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="156451596"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 07:42:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Mar 2025 07:42:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 07:42:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 07:42:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UfKypMUtIkYR0+4Rf8MHnHTcKKFLuGQHeZskWTN8WZpoerAWBZ39wo7+gFnZ6rn6OsndfcJdLcP0BIzqFs5UasD1w2jf3jjBAX7CsTwEM9mAa4qECj22jwatLaZG+26xcYC7ardqWTrxe+IYpVsb/oj+zUruDZbnwsd0o1hm3Vso6AnszgSokjUfjA1WWkQjWmIAi/zuxuo0+fq9jS5fS9qQT1Tsnliraq3PkdnynBYptXeQxr6RWSj4cKAwyElqdjzxADYFbFkjbWR2Gr5Ty/t82UqRNuY+nTpypQvuPiSuB7GNfp6nh/1vj8YML6TMRztroskrvBOcYqjGn/Aw4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KnMTU1i1zaN48Jzi1bhGG9xJ8HM+dr+tfgiLP6l7SeY=;
 b=ELPkaxRfTgGF40hFbJXYdsSJyvNVViA1ZUZEWWVkO+t9qbvBzyPWeiE9Y2bvXmwr++Nt6H8HbaIHGz87Tk0kMtHk/rbDtaDagGHbVO08AuMoU8kQ8njWLyNkTtffukcRPRaT5dqXRfhTBKpgiMpgqhWGwf1WNlJ5RcgME/kzbMeB7AQBNlWStFvlmrj4MwJ/JaPWLs5aUL6ImjS9VD5eisPZ8qae6GW+/obOfNMNC0jFIsSONKX1Ni4GsEilABchZFgj4/Nkg7XtY1p60II9Fet0bXUhUn4yUvYoq7vuHWNa38Mx6wnqxT1Jg2QV3DP9zZyjV13h6chtf4GjYUzefQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7110.namprd11.prod.outlook.com (2603:10b6:806:2b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 14:41:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 14:41:42 +0000
Message-ID: <df393e00-d280-4327-91e0-304eb96e281f@intel.com>
Date: Fri, 28 Mar 2025 20:11:37 +0530
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_VRR_Regis?=
 =?UTF-8?Q?ter_Read/Write_Updates_=28rev3=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
 <174309796860.11772.14780151732834528890@e6b6f09ec485>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <174309796860.11772.14780151732834528890@e6b6f09ec485>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7110:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fca05a5-973d-4bde-d553-08dd6e06a7c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YVV1L1I5K0NhVFdZUTdGc0Uva1lmVGpHQWU1M3E1SGppY2FIQUV5ekR1cXFF?=
 =?utf-8?B?MTJ1UVRIMmpFSVpSZHlLTktBUjBGTEhWUmt1Zm9ON1IvR25lam5kZW1wK0hw?=
 =?utf-8?B?bkNWaTJjZmp3UmVQdTNYVGFzV21YMVdyMGkxYzFKbjVaR0QyZ1Z5akRxWmE5?=
 =?utf-8?B?WlFRa0VKN3lwUW1rRlJQNzlLeUdaSjBmSDZxejFpamZad2ExSVV1czRZbW1r?=
 =?utf-8?B?eXNqdG55UnNuNlhNSGlPc21ROFUzTkw0WkxLNXcvbFRSUFJSNWZKSjUyNFpm?=
 =?utf-8?B?aXZXTVdVeUxZUjVwLzBGNmJuUXlhRVBKZkJPZVVydzNreHp6TEdpU2RBc1hv?=
 =?utf-8?B?aUZSVEg4WHdFM3FncyszVXIxOWRMd3hBYWlWU3NGemNqTmM3dDdHbDg3MVRa?=
 =?utf-8?B?cUIvM3g2MEl2SjEzZDdJREZMdlJTMW5wZnVGTWRzRkN3UVlhY1d6QS93bjZS?=
 =?utf-8?B?bTdMTloycmJ5dUhjNVFNWDJpV3V5c2lzRGJJMmVaeHRVV0ttWnRZc3I2M0hO?=
 =?utf-8?B?Qlk1WGhGYlVSNG1ZNy9NenFzaTlwZDlWTU9rTDNIZWhucEtnRGhTTnZHOFFZ?=
 =?utf-8?B?UDNuVFdpVWhacDB4b09SL1JmeHh2cW55Sm5HQW5saFdJNzYyQnJpQWpucnVS?=
 =?utf-8?B?akdPZkJGWVVMQldmSG9xelVPamdTTWdBVStZcXFMT1ZpeHZVRkVRTll2cnpJ?=
 =?utf-8?B?cWdSdXdXK3JmQnVDRFREMmduZDQxcEJkZHdWeVRNOVJKamsrcS9qR1h6Rysv?=
 =?utf-8?B?QjRyRlNWZG1PQ0VobXNPK082M285TDVFRG81dmZSNlAyL3h1eHBFV1JhZ0p4?=
 =?utf-8?B?K3lHTUY0dDdEckUxQnlLZ2NyallQSU00M2pkb2RkalU5d1VpcmZ3a3p4dGVE?=
 =?utf-8?B?ejBWbDVHRTdUelJKZWN4RFZtdDUwM0JGM2hTL2FIRXI4azVZbFlGMWpOVjZQ?=
 =?utf-8?B?ejRON043aWJxOUl3OEJYRHlDQWdSL21rQmVIenF6YTUxeHp1eWMyOHJMTnh5?=
 =?utf-8?B?N2VmcGh4ODlSN1V1U3R4MU5uRHp3VlVLa0tzRXZITkVjQ1RrVEV1djV4STdl?=
 =?utf-8?B?eWh1RXpiRVpUTEJRSERFRFkwaTdFYnFrVThQVmU0cGpFNkQ0Z0kzeGZUV05y?=
 =?utf-8?B?NEJ3ZDVidmN2Y29vMWtuNFc2UjhEN3hCL1RINjk4aTlERnA0c0tXUmQvaGZF?=
 =?utf-8?B?RjJuLzVKZnpqSXB5VDUzaUtyUmlBa2Q4MUdxQkdyWHZ0NERPZ1JVRjlKZ2JQ?=
 =?utf-8?B?YVZFNVhaTmJ0WDJJcFd6KzBkUGFDdjFvdjRYM1IwMytDdGpjaENLYVQ0alRs?=
 =?utf-8?B?NzNROU8zcHZMUGV2WnVOVElJNFpIQ1EzZ0tIbzcwNW5XbUxhTmtqY3lYM21k?=
 =?utf-8?B?OXZ4U1pManc3c0huZjFtTkxmTm82b3VwdnJKZjRhSmNvVVIxZG1nOWZhZGlk?=
 =?utf-8?B?aEVZTkxNRCs2a0V5SmNmVktZWGlrQTFENndBeSt1TUphTlJMVjBKK0tEQlNX?=
 =?utf-8?B?SW01TDhCVGhDaTAvb2poQ1hud09meW1Mb3FQL01vblptd0lISFN5VTU4amR4?=
 =?utf-8?B?MUI5M3d0R1h1TlE2WlBSSjJGOFBENXdadFBJT0VEb2lmaytTdzNPcUlNNDJW?=
 =?utf-8?B?aE11SUNXSnhjNEtlRHlMdzBCaldWeERGSVpqWHZCYk8xUjRkK2g5WW0ySmVp?=
 =?utf-8?B?OWRqQTdNenFSajNBcVNwRjVoemNROGJaekkvZExxZ1VuNlRET052cnZqSVFL?=
 =?utf-8?B?MmdRa1NNb2djSkZheGx1d2l4S3ZURC9kSG1qeW9WdXVndkxaOFBxNm5nRXlG?=
 =?utf-8?B?cGc3ZnhWKy82WklabzVTdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SS9EVVdkK2FDSjZZR25SaFBwZ1NUVTZGRHlqMlJSNFAwYzNNVW9vZXhuWW9L?=
 =?utf-8?B?NjVhYzNURDI0SjJFSTlDd1lWTmlVR3ViQnY3RXhyR2ZaV1BMVFdUdWVpRXg2?=
 =?utf-8?B?a29wTVppNXd3QTR1Uk43U2IvWWlyaFRJR2VTOStxMlZNaHlkb0duRVJVSlRx?=
 =?utf-8?B?YUEvalFZYXllYm95ZUorcFJ2T3NBcEswNHo1NkprL2cvWnpjOGIrMkk3V2Jh?=
 =?utf-8?B?VzZldHI0UzVaY3R2dnFTMGVXNVlNaVgveHFkWlc0V2ZTWm9oQllaSmRHb2xC?=
 =?utf-8?B?WE1yaTNQWG9IOHhzODNiWDg1VjJIaFJ0cVdXa0t1OXE1cU5yTWJsb2EwRzc5?=
 =?utf-8?B?UC9KNFVDV2NFNUtzZGpDSmFlODBuc2VlZGRBZ3BzWUplOGpGSUo1ZzA2c3I1?=
 =?utf-8?B?M1JPVkhxejB5M0dpVnNOZEMzU1lHNEVUVnFuVHJSQkpscjJsNzNHT3orMHht?=
 =?utf-8?B?QXZQSm5lYmNpdDBqV29lb1dKTjRBUnV2eW5pZWwxS01tOGc4RG9sR1pBOG9n?=
 =?utf-8?B?Tm03cm9CZ3hHbXY2ZEVzcXVjZ2lpNGsxWHcvelJHSm5zdFZzdEtOS3VaWUM5?=
 =?utf-8?B?NFRYendWYWdlK2EwY3ZBNDlCZlVPelNaMnpGd09yS0s2UkVMb1Y3emdjWXJT?=
 =?utf-8?B?SUgwVG5DVWd1YWp1VXl5MUNrSE5Nb3NlaXJKUFZueEtjQkRkS0ExNW8xV29i?=
 =?utf-8?B?Ymd1VzlOZ0JBMHM3ditXREZGZHFZREYrUGNYZFVVaS90R1FOVmxZWm54d0R5?=
 =?utf-8?B?enhUUDk2OVMxMWp1a1FSZ3ltRzR1aGdtZVZHazA5OGFEZVR2dnhFckZrQ3JO?=
 =?utf-8?B?c2lyb0pFR0tkWkdHSGxuekt6UWhQNVJWYUZOMExvL09ObXpkYWZ1c2xFM0Fh?=
 =?utf-8?B?T1RjZDZTZko3UGU0ME1QT3RrWWg3UUJsTndWY29ISDhVck41L3AycVoyNVhS?=
 =?utf-8?B?OEFjZXgwQWFqdkZjcmZERUtKWG9sTGE4WStQZC8velAzZTRJYlZpWE81K1Zm?=
 =?utf-8?B?bVM0VE1nYUVrMUhZZEQ3dFJmL0p3YVJKMVhuOTZyQ1k5WlJLblB1eEVBQmZM?=
 =?utf-8?B?RmwzRGpvQmMvNzY1VS81NVA5ek9HelBMZFUycmRaMEdVK2YyNEJNYXBDWVRj?=
 =?utf-8?B?S0JXUWUyZkZWWWcydGdONFJwTFFDalZ3KzVYcHVnREpURnRuYUZyR21KVXh3?=
 =?utf-8?B?SmViVUl2dWVua1BESldIYU90eXhXUWRBSWxYRTArZ2xKYVlESW42TFlFV3BX?=
 =?utf-8?B?REd2RmVNeEJjN0QzSUIwc09ZSkNKSm52dE8yWDJGMXcvVjMwa1N0MWRjM1VF?=
 =?utf-8?B?SlhrUHBIVFQrRFJVMU9qYkhzRVVoUDBkYlg0UlVuSFdySWNFVnVXR3BYYnlq?=
 =?utf-8?B?WlN3WmFmZ1RWZWR1Nm43SDZDclZGd3RVY2NzcG93V3lYSmVhSnViZTRJa08z?=
 =?utf-8?B?MVl0TDAxYzU2UlRXL2NGMGxrdTNYWThST1pqSGxkYVQxc3BBdnZnNWlIcktV?=
 =?utf-8?B?dEtIMXc0UzF2azJUbXpVMlBUV3JvYUVHUUE0Z28zbjM5cEV1MDgwTi9RWmI1?=
 =?utf-8?B?ZkZxRS9WNWlrUHZSNkgxM3JlSWJIcW5LTjBGTVJ1WGJ2UVJ2VjdoR3k0Vy9m?=
 =?utf-8?B?SjZBVk9LMUR6QUFXZlRIeWh3UExqdkJMSmtTNFErODdOOVV3Q3diS0lNc1dR?=
 =?utf-8?B?c21kcW5oZmRKN0wvT0NkaGREMmJzdFFzY2g4TjJUZE84T2Z6NGJKZnh5TUM1?=
 =?utf-8?B?UElnY1lEMFYvOEQ5ejZzVkU5VzZ6Y3R6dTl5ZHRubG1EWlpWVmcvR25kcW9D?=
 =?utf-8?B?Q1pZdW9IZVRnV21tYlFyOEF4SlphUGFDSDA1SnJmOFVHanAyNnRjakx2bzRH?=
 =?utf-8?B?dFBsQ1ZPK2oyZnZJNGN0amc4R2oxK1BRVW1NNThjVXVaRzlQNEx6VUxUQlFm?=
 =?utf-8?B?T2prUFBDWmhKeXh5KzVKUlE3Y0U2dWNJZWtpWG5YVExHUFR6UGFndVZNcndv?=
 =?utf-8?B?bGplNFN2dUJDUTVsbTd0a2wzWFE4ckJpR3Fic3ZmeG5Ma0VQTGloOUNYTGFG?=
 =?utf-8?B?QXJWTUNNTWUyNlNVNE5oK25XOXoxMTAwa2I3ZzBKK0Z5KzBTZlFQRzZEMDl3?=
 =?utf-8?B?Nk1YUVRyeTJaUTAyYTlMditHbE1BdUY4T2lLbTlLcE9oWWZUMU1hNTkxdk00?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fca05a5-973d-4bde-d553-08dd6e06a7c7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 14:41:42.8645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r8FpFQY79I/achAnH8BfosJNC5I4qyli9WZrvxnmpe7SxsOsgAoXbdqSzn5t5RWJSRawvAdFiX7SeVGdEBP9pmzW4z9OaXohAG7QuUY/wus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7110
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

Hi,

The failures below cannot be due to the patches, as the patches only 
skips writing VTOTAL.vtotal bits for PTL platform only.

  *

    igt@kms_busy@extended-modeset-hang-oldfb-with-reset:

      o shard-snb: PASS
        <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-snb2/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html>
        -> INCOMPLETE
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-snb1/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html>
        +1 other test incomplete
  *

    igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:

      o shard-rkl: PASS
        <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
        -> FAIL
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
  *

    igt@kms_plane_multiple@2x-tiling-4:

      o shard-dg1: NOTRUN -> SKIP
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@kms_plane_multiple@2x-tiling-4.html>
  *

    igt@kms_plane_multiple@2x-tiling-none:

      o shard-mtlp: NOTRUN -> SKIP
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_plane_multiple@2x-tiling-none.html>
        +1 other test skip
  *

    igt@kms_plane_multiple@2x-tiling-y:

      o shard-dg2: NOTRUN -> SKIP
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_plane_multiple@2x-tiling-y.html>
  *

    igt@kms_plane_multiple@2x-tiling-yf:

      o shard-tglu-1: NOTRUN -> SKIP
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html>

Regards,

Ankit


On 3/27/2025 11:22 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	VRR Register Read/Write Updates (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/146778/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_16326_full -> Patchwork_146778v3_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_146778v3_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_146778v3_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 10)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_146778v3_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-snb2/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-snb1/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html>
>         +1 other test incomplete
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>  *
>
>     igt@kms_plane_multiple@2x-tiling-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@kms_plane_multiple@2x-tiling-4.html>
>  *
>
>     igt@kms_plane_multiple@2x-tiling-none:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_plane_multiple@2x-tiling-none.html>
>         +1 other test skip
>  *
>
>     igt@kms_plane_multiple@2x-tiling-y:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_plane_multiple@2x-tiling-y.html>
>  *
>
>     igt@kms_plane_multiple@2x-tiling-yf:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html>
>
>
>         Warnings
>
>  *
>
>     igt@kms_plane_multiple@2x-tiling-4:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-4.html>
>         (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-4.html>
>         +3 other tests skip
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-tglu-4/igt@kms_plane_multiple@2x-tiling-4.html>
>         (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-10/igt@kms_plane_multiple@2x-tiling-4.html>
>         +2 other tests skip
>  *
>
>     igt@kms_plane_multiple@2x-tiling-none:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-5/igt@kms_plane_multiple@2x-tiling-none.html>
>         (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-none.html>
>         +1 other test skip
>  *
>
>     igt@kms_plane_multiple@2x-tiling-yf:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-15/igt@kms_plane_multiple@2x-tiling-yf.html>
>         (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-14/igt@kms_plane_multiple@2x-tiling-yf.html>
>         +3 other tests skip
>       o shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-mtlp-5/igt@kms_plane_multiple@2x-tiling-yf.html>
>         (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-5/igt@kms_plane_multiple@2x-tiling-yf.html>
>         +2 other tests skip
>
>
>     Known issues
>
> Here are the changes found in Patchwork_146778v3_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@api_intel_bb@object-reloc-purge-cache:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@api_intel_bb@object-reloc-purge-cache.html>
>         (i915#8411
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>  *
>
>     igt@debugfs_test@basic-hwmon:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@debugfs_test@basic-hwmon.html>
>         (i915#9318
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318>)
>  *
>
>     igt@device_reset@unbind-cold-reset-rebind:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@device_reset@unbind-cold-reset-rebind.html>
>         (i915#11078
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078>)
>  *
>
>     igt@drm_fdinfo@virtual-busy-hang:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@drm_fdinfo@virtual-busy-hang.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>  *
>
>     igt@gem_basic@multigpu-create-close:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@gem_basic@multigpu-create-close.html>
>         (i915#7697
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>  *
>
>     igt@gem_caching@read-writes:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gem_caching@read-writes.html>
>         (i915#4873
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873>)
>  *
>
>     igt@gem_caching@writes:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-1/igt@gem_caching@writes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@gem_caching@writes.html>
>         (i915#12917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917>
>         / i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>  *
>
>     igt@gem_ccs@block-copy-compressed:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gem_ccs@block-copy-compressed.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#9323
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>  *
>
>     igt@gem_ccs@large-ctrl-surf-copy:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html>
>         (i915#13008
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008>)
>  *
>
>     igt@gem_create@create-ext-cpu-access-big:
>
>       o shard-dg2-9: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@gem_create@create-ext-cpu-access-big.html>
>         (i915#13427
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427>)
>  *
>
>     igt@gem_create@create-ext-cpu-access-sanity-check:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html>
>         (i915#6335
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335>)
>  *
>
>     igt@gem_create@create-ext-set-pat:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@gem_create@create-ext-set-pat.html>
>         (i915#8562
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>)
>  *
>
>     igt@gem_ctx_isolation@preservation-s3:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3.html>
>         (i915#12353
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353>
>         / i915#13915
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13915>)
>         +1 other test incomplete
>  *
>
>     igt@gem_ctx_persistence@heartbeat-hostile:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hostile.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>         +1 other test skip
>  *
>
>     igt@gem_ctx_persistence@heartbeat-many:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_ctx_persistence@heartbeat-many.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>  *
>
>     igt@gem_ctx_sseu@invalid-sseu:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@gem_ctx_sseu@invalid-sseu.html>
>         (i915#280
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>  *
>
>     igt@gem_eio@in-flight-contexts-10ms:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-mtlp-6/igt@gem_eio@in-flight-contexts-10ms.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-7/igt@gem_eio@in-flight-contexts-10ms.html>
>         (i915#13193
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193>)
>  *
>
>     igt@gem_exec_balancer@bonded-dual:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_exec_balancer@bonded-dual.html>
>         (i915#4771
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771>)
>  *
>
>     igt@gem_exec_balancer@bonded-semaphore:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@gem_exec_balancer@bonded-semaphore.html>
>         (i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>  *
>
>     igt@gem_exec_balancer@noheartbeat:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@gem_exec_balancer@noheartbeat.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>  *
>
>     igt@gem_exec_balancer@parallel:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@gem_exec_balancer@parallel.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>  *
>
>     igt@gem_exec_balancer@parallel-balancer:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>  *
>
>     igt@gem_exec_capture@capture-recoverable:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html>
>         (i915#6344
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344>)
>  *
>
>     igt@gem_exec_capture@capture@vecs0-lmem0:
>
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_exec_capture@capture@vecs0-lmem0.html>
>         (i915#11965
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965>)
>         +2 other tests fail
>  *
>
>     igt@gem_exec_flush@basic-uc-prw-default:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@gem_exec_flush@basic-uc-prw-default.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>)
>  *
>
>     igt@gem_exec_reloc@basic-active:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@gem_exec_reloc@basic-active.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +5 other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-cpu-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-gtt.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +1 other test skip
>  *
>
>     igt@gem_exec_reloc@basic-cpu-wc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_exec_reloc@basic-cpu-wc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +4 other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-scanout:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@gem_exec_reloc@basic-scanout.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +2 other tests skip
>  *
>
>     igt@gem_exec_schedule@preempt-queue-contexts:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@gem_exec_schedule@preempt-queue-contexts.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537>
>         / i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>  *
>
>     igt@gem_exec_schedule@semaphore-power:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_exec_schedule@semaphore-power.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537>
>         / i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>  *
>
>     igt@gem_exec_suspend@basic-s4-devices:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-mtlp-3/igt@gem_exec_suspend@basic-s4-devices.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices.html>
>         (i915#13193
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193>
>         / i915#7975
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975>)
>         +1 other test abort
>  *
>
>     igt@gem_fence_thrash@bo-write-verify-y:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_fence_thrash@bo-write-verify-y.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>         +1 other test skip
>  *
>
>     igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>  *
>
>     igt@gem_lmem_evict@dontneed-evict-race:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@gem_lmem_evict@dontneed-evict-race.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>
>         / i915#7582
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582>)
>  *
>
>     igt@gem_lmem_swapping@heavy-multi:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@gem_lmem_swapping@heavy-multi.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +1 other test skip
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-multi:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +2 other tests skip
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-random:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +1 other test skip
>  *
>
>     igt@gem_lmem_swapping@verify:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@gem_lmem_swapping@verify.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +1 other test skip
>  *
>
>     igt@gem_madvise@dontneed-before-exec:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_madvise@dontneed-before-exec.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>  *
>
>     igt@gem_madvise@dontneed-before-pwrite:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@gem_madvise@dontneed-before-pwrite.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>  *
>
>     igt@gem_media_vme:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@gem_media_vme.html>
>         (i915#284
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284>)
>  *
>
>     igt@gem_mmap_gtt@cpuset-medium-copy:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-medium-copy.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +2 other tests skip
>  *
>
>     igt@gem_mmap_wc@close:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_mmap_wc@close.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>         +1 other test skip
>  *
>
>     igt@gem_mmap_wc@coherency:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@gem_mmap_wc@coherency.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>  *
>
>     igt@gem_partial_pwrite_pread@write-display:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@gem_partial_pwrite_pread@write-display.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +1 other test skip
>  *
>
>     igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +2 other tests skip
>  *
>
>     igt@gem_pread@exhaustion:
>
>       o shard-tglu: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@gem_pread@exhaustion.html>
>         (i915#2658
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658>)
>  *
>
>     igt@gem_pwrite@basic-self:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@gem_pwrite@basic-self.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +4 other tests skip
>  *
>
>     igt@gem_pxp@create-protected-buffer:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@gem_pxp@create-protected-buffer.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>  *
>
>     igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>  *
>
>     igt@gem_pxp@hw-rejects-pxp-context:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@gem_pxp@hw-rejects-pxp-context.html>
>         (i915#13398
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398>)
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-off-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@gem_pxp@reject-modify-context-protection-off-1.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>  *
>
>     igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html>
>         (i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>  *
>
>     igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>
>         / i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>  *
>
>     igt@gem_tiled_partial_pwrite_pread@writes:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@gem_tiled_partial_pwrite_pread@writes.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +4 other tests skip
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gem_tiled_pread_basic.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>         +1 other test skip
>  *
>
>     igt@gem_userptr_blits@coherency-sync:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@gem_userptr_blits@coherency-sync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +1 other test skip
>  *
>
>     igt@gem_userptr_blits@forbidden-operations:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gem_userptr_blits@forbidden-operations.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>
>         / i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@map-fixed-invalidate-busy:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_userptr_blits@map-fixed-invalidate-busy.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>
>         / i915#4880
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880>)
>  *
>
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +2 other tests skip
>  *
>
>     igt@gem_userptr_blits@readonly-unsync:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@gem_userptr_blits@readonly-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@relocations:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@gem_userptr_blits@relocations.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>
>         / i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_userptr_blits@relocations.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>
>         / i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_workarounds@suspend-resume-fd:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-1/igt@gem_workarounds@suspend-resume-fd.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-3/igt@gem_workarounds@suspend-resume-fd.html>
>         (i915#13356
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
>  *
>
>     igt@gen3_render_tiledy_blits:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@gen3_render_tiledy_blits.html>
>         +6 other tests skip
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-glk8/igt@gen9_exec_parse@allowed-single.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-glk3/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566>)
>  *
>
>     igt@gen9_exec_parse@basic-rejected-ctx-param:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@gen9_exec_parse@basic-rejected-ctx-param.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>
>         / i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +2 other tests skip
>  *
>
>     igt@gen9_exec_parse@batch-invalid-length:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@gen9_exec_parse@batch-invalid-length.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>  *
>
>     igt@gen9_exec_parse@bb-chained:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@gen9_exec_parse@bb-chained.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>         +1 other test skip
>  *
>
>     igt@gen9_exec_parse@bb-large:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@gen9_exec_parse@bb-large.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +2 other tests skip
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gen9_exec_parse@bb-large.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>  *
>
>     igt@gen9_exec_parse@unaligned-access:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@gen9_exec_parse@unaligned-access.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>
>         / i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#13592
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13592>)
>  *
>
>     igt@i915_pm_freq_api@freq-reset:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@i915_pm_freq_api@freq-reset.html>
>         (i915#8399
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-fence:
>
>       o shard-tglu-1: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html>
>         (i915#13790
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790>
>         / i915#2681
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681>)
>         +1 other test warn
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html>
>         (i915#3591
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591>)
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@i915_pm_rps@basic-api.html>
>         (i915#11681
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>
>         / i915#6621
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>  *
>
>     igt@i915_pm_rps@min-max-config-loaded:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@i915_pm_rps@min-max-config-loaded.html>
>         (i915#11681
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>
>         / i915#6621
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387>)
>  *
>
>     igt@i915_selftest@mock:
>
>       o shard-mtlp: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@i915_selftest@mock.html>
>         (i915#9311
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311>)
>         +1 other test dmesg-warn
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#6645
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6645>)
>  *
>
>     igt@i915_suspend@fence-restore-tiled2untiled:
>
>       o shard-rkl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         (i915#4817
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>)
>  *
>
>     igt@intel_hwmon@hwmon-read:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@intel_hwmon@hwmon-read.html>
>         (i915#7707
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707>)
>  *
>
>     igt@intel_hwmon@hwmon-write:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@intel_hwmon@hwmon-write.html>
>         (i915#7707
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707>)
>  *
>
>     igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212>)
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html>
>         (i915#8709
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709>)
>         +7 other tests skip
>  *
>
>     igt@kms_async_flips@invalid-async-flip-atomic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_async_flips@invalid-async-flip-atomic.html>
>         (i915#12967
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967>)
>  *
>
>     igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +2 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html>
>         +3 other tests skip
>  *
>
>     igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>  *
>
>     igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         +53 other tests skip
>  *
>
>     igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +9 other tests skip
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +24 other tests skip
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html>
>         (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>  *
>
>     igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +39 other tests skip
>  *
>
>     igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +164 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +24 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +37 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html>
>         (i915#12805
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805>)
>  *
>
>     igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html>
>         (i915#12805
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805>)
>  *
>
>     igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +7 other tests skip
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html>
>         (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#10434
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +1 other test skip
>  *
>
>     igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +116 other tests skip
>  *
>
>     igt@kms_cdclk@mode-transition-all-outputs:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_cdclk@mode-transition-all-outputs.html>
>         (i915#13784
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784>)
>  *
>
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html>
>         (i915#13781
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781>)
>         +3 other tests skip
>  *
>
>     igt@kms_chamelium_frames@hdmi-aspect-ratio:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_chamelium_frames@hdmi-aspect-ratio.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +1 other test skip
>  *
>
>     igt@kms_chamelium_hpd@dp-hpd:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +1 other test skip
>  *
>
>     igt@kms_chamelium_hpd@dp-hpd-fast:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_chamelium_hpd@dp-hpd-fast.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +2 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@hdmi-hpd-fast:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +3 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +4 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +5 other tests skip
>  *
>
>     igt@kms_content_protection@dp-mst-type-0:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html>
>         (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>
>         / i915#3299
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299>)
>  *
>
>     igt@kms_content_protection@dp-mst-type-1:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_content_protection@dp-mst-type-1.html>
>         (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>
>         / i915#3299
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299>)
>  *
>
>     igt@kms_content_protection@legacy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_content_protection@legacy.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_content_protection@type1.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-32x32:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x170:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>         +2 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +2 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html>
>         (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>         +1 other test fail
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-256x85:
>
>       o shard-tglu-1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-256x85.html>
>         (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>         +1 other test fail
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-512x170:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x170.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-512x512:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-max-size:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_cursor_crc@cursor-sliding-max-size.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html>
>         (i915#13046
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046>
>         / i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html>
>         (i915#9809
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809>)
>  *
>
>     igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html>
>         (i915#9067
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067>)
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>
>         / i915#4213
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213>)
>  *
>
>     igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html>
>         (i915#9723
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723>)
>  *
>
>     igt@kms_dp_aux_dev:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_dp_aux_dev.html>
>         (i915#1257
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>  *
>
>     igt@kms_dp_link_training@non-uhbr-sst:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-5/igt@kms_dp_link_training@non-uhbr-sst.html>
>         (i915#13749
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
>  *
>
>     igt@kms_dp_link_training@uhbr-mst:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_dp_link_training@uhbr-mst.html>
>         (i915#13749
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
>  *
>
>     igt@kms_dsc@dsc-basic:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_dsc@dsc-basic.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-with-bpc:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-with-bpc-formats:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_dsc@dsc-with-bpc-formats.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-with-output-formats:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_dsc@dsc-with-output-formats.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-with-output-formats-with-bpc:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html>
>         (i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>
>         / i915#9053
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053>)
>  *
>
>     igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests.html>
>         (i915#13798
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798>)
>  *
>
>     igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html>
>         (i915#13798
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798>)
>  *
>
>     igt@kms_fbcon_fbt@psr-suspend:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#3955
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955>)
>  *
>
>     igt@kms_feature_discovery@chamelium:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_feature_discovery@chamelium.html>
>         (i915#4854
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854>)
>  *
>
>     igt@kms_feature_discovery@display-3x:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-3/igt@kms_feature_discovery@display-3x.html>
>         (i915#1839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>  *
>
>     igt@kms_feature_discovery@dp-mst:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html>
>         (i915#9337
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337>)
>  *
>
>     igt@kms_flip@2x-blocking-wf_vblank:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_flip@2x-blocking-wf_vblank.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>  *
>
>     igt@kms_flip@2x-flip-vs-dpms:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-dpms.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>         +1 other test skip
>  *
>
>     igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>         +1 other test skip
>  *
>
>     igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +1 other test skip
>  *
>
>     igt@kms_flip@2x-plain-flip-interruptible:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_flip@2x-plain-flip-interruptible.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +4 other tests skip
>  *
>
>     igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>         +7 other tests skip
>  *
>
>     igt@kms_flip@flip-vs-absolute-wf_vblank:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank.html>
>         (i915#13734
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734>)
>         +1 other test fail
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>         (i915#13027
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027>)
>         +1 other test fail
>  *
>
>     igt@kms_flip@plain-flip-ts-check:
>
>       o shard-tglu: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_flip@plain-flip-ts-check.html>
>         (i915#13734
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734>)
>         +1 other test fail
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8813
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#8813
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>         (i915#6880
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +5 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +1 other test skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +10 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-tiling-y:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-tiling-y.html>
>         (i915#10055
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html>
>         +39 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html>
>         (i915#3023
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
>         +13 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +4 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html>
>         (i915#5439
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html>
>         +6 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
>         +14 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-rte:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-rte.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
>         +14 other tests skip
>  *
>
>     igt@kms_hdr@bpc-switch-dpms:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_hdr@bpc-switch-dpms.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>         +1 other test skip
>  *
>
>     igt@kms_hdr@invalid-metadata-sizes:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>  *
>
>     igt@kms_invalid_mode@clock-too-high:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_invalid_mode@clock-too-high.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#6403
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6403>
>         / i915#8826
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826>)
>  *
>
>     igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1.html>
>         (i915#9457
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9457>)
>         +2 other tests skip
>  *
>
>     igt@kms_invalid_mode@clock-too-high@pipe-d-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_invalid_mode@clock-too-high@pipe-d-edp-1.html>
>         (i915#8826
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826>
>         / i915#9457
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9457>)
>  *
>
>     igt@kms_joiner@basic-max-non-joiner:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_joiner@basic-max-non-joiner.html>
>         (i915#13688
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688>)
>  *
>
>     igt@kms_joiner@basic-ultra-joiner:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_joiner@basic-ultra-joiner.html>
>         (i915#12339
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339>)
>  *
>
>     igt@kms_joiner@invalid-modeset-force-big-joiner:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_joiner@invalid-modeset-force-big-joiner.html>
>         (i915#12388
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388>)
>  *
>
>     igt@kms_joiner@invalid-modeset-ultra-joiner:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html>
>         (i915#12339
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339>)
>  *
>
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>)
>  *
>
>     igt@kms_panel_fitting@atomic-fastset:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html>
>         (i915#6301
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>  *
>
>     igt@kms_panel_fitting@legacy:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_panel_fitting@legacy.html>
>         (i915#6301
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>  *
>
>     igt@kms_plane_multiple@tiling-yf:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_plane_multiple@tiling-yf.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8806
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806>)
>  *
>
>     igt@kms_plane_scaling@intel-max-src-size:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html>
>         (i915#6953
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>)
>  *
>
>     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +4 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#6953
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>)
>         +1 other test skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +8 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +3 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#6953
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +3 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_pm_backlight@brightness-with-dpms:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html>
>         (i915#12343
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343>)
>  *
>
>     igt@kms_pm_backlight@fade-with-suspend:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_pm_backlight@fade-with-suspend.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>  *
>
>     igt@kms_pm_dc@dc3co-vpb-simulation:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@kms_pm_dc@dc3co-vpb-simulation.html>
>         (i915#9685
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
>  *
>
>     igt@kms_pm_dc@dc6-dpms:
>
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#12913
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12913>)
>  *
>
>     igt@kms_pm_dc@dc9-dpms:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html>
>         (i915#4281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281>)
>  *
>
>     igt@kms_pm_rpm@dpms-lpsp:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>  *
>
>     igt@kms_prime@basic-modeset-hybrid:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_prime@basic-modeset-hybrid.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>  *
>
>     igt@kms_prime@d3hot:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_prime@d3hot.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>         +1 other test skip
>  *
>
>     igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +5 other tests skip
>  *
>
>     igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1.html>
>         (i915#12316
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316>)
>         +3 other tests skip
>  *
>
>     igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1.html>
>         (i915#9808
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808>)
>         +1 other test skip
>  *
>
>     igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +3 other tests skip
>  *
>
>     igt@kms_psr2_sf@pr-cursor-plane-update-sf:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>  *
>
>     igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-2/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +2 other tests skip
>  *
>
>     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +3 other tests skip
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (i915#4348
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348>)
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>  *
>
>     igt@kms_psr2_su@page_flip-xrgb8888:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>  *
>
>     igt@kms_psr@fbc-psr-dpms:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@kms_psr@fbc-psr-dpms.html>
>         (i915#9688
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688>)
>         +6 other tests skip
>  *
>
>     igt@kms_psr@fbc-psr-sprite-plane-move:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_psr@fbc-psr-sprite-plane-move.html>
>         (i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +12 other tests skip
>  *
>
>     igt@kms_psr@fbc-psr2-sprite-render:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +9 other tests skip
>  *
>
>     igt@kms_psr@psr-cursor-render:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-9/igt@kms_psr@psr-cursor-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>  *
>
>     igt@kms_psr@psr-sprite-mmap-cpu:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_psr@psr-sprite-mmap-cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +3 other tests skip
>  *
>
>     igt@kms_psr@psr2-cursor-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_psr@psr2-cursor-blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +5 other tests skip
>  *
>
>     igt@kms_psr@psr2-primary-mmap-cpu:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-cpu.html>
>         (i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +8 other tests skip
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html>
>         (i915#5289
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>         +1 other test skip
>  *
>
>     igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html>
>         (i915#12755
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755>)
>         +1 other test skip
>  *
>
>     igt@kms_scaling_modes@scaling-mode-center:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-center.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +3 other tests skip
>  *
>
>     igt@kms_selftest@drm_framebuffer:
>
>       o shard-tglu: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@kms_selftest@drm_framebuffer.html>
>         (i915#13179
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179>)
>         +1 other test abort
>  *
>
>     igt@kms_setmode@invalid-clone-exclusive-crtc:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-8/igt@kms_setmode@invalid-clone-exclusive-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +3 other tests skip
>  *
>
>     igt@kms_universal_plane@cursor-fb-leak:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>)
>         +1 other test fail
>  *
>
>     igt@kms_universal_plane@universal-plane-pageflip-windowed:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-17/igt@kms_universal_plane@universal-plane-pageflip-windowed.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-17/igt@kms_universal_plane@universal-plane-pageflip-windowed.html>
>         (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>  *
>
>     igt@kms_vblank@wait-idle@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_vblank@wait-idle@pipe-a-hdmi-a-2.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         +2 other tests dmesg-warn
>  *
>
>     igt@kms_vrr@flip-basic-fastset:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@kms_vrr@flip-basic-fastset.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>  *
>
>     igt@kms_vrr@lobf:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_vrr@lobf.html>
>         (i915#11920
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@kms_vrr@lobf.html>
>         (i915#11920
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>  *
>
>     igt@kms_vrr@seamless-rr-switch-vrr:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_vrr@seamless-rr-switch-vrr.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>  *
>
>     igt@kms_writeback@writeback-check-output:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_writeback@writeback-check-output.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>  *
>
>     igt@kms_writeback@writeback-check-output-xrgb2101010:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@kms_writeback@writeback-check-output-xrgb2101010.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>
>         / i915#9412
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412>)
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_writeback@writeback-invalid-parameters.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>  *
>
>     igt@perf@mi-rpc:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@perf@mi-rpc.html>
>         (i915#2434
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434>)
>  *
>
>     igt@perf@unprivileged-single-ctx-counters:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html>
>         (i915#2433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433>)
>  *
>
>     igt@perf_pmu@busy-double-start@vecs1:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html>
>         (i915#4349
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>)
>         +4 other tests fail
>  *
>
>     igt@perf_pmu@invalid-init:
>
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-3/igt@perf_pmu@invalid-init.html>
>         (i915#13663
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13663>)
>  *
>
>     igt@perf_pmu@rc6-all-gts:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@perf_pmu@rc6-all-gts.html>
>         (i915#8516
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516>)
>  *
>
>     igt@perf_pmu@rc6@other-idle-gt0:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html>
>         (i915#8516
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516>)
>  *
>
>     igt@prime_vgem@basic-read:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@prime_vgem@basic-read.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-3/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>  *
>
>     igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1:
>
>       o shard-tglu: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-5/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1.html>
>         (i915#12910
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910>)
>         +9 other tests fail
>  *
>
>     igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html>
>         (i915#12910
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910>)
>  *
>
>     igt@tools_test@sysfs_l3_parity:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-4/igt@tools_test@sysfs_l3_parity.html>
>         +8 other tests skip
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ccs@suspend-resume:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-2/igt@gem_ccs@suspend-resume.html>
>         (i915#13356
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_ccs@suspend-resume.html>
>  *
>
>     igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html>
>         (i915#12392
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392>
>         / i915#13356
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html>
>  *
>
>     igt@gem_ctx_freq@sysfs:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-1/igt@gem_ctx_freq@sysfs.html>
>         (i915#9561
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-1/igt@gem_ctx_freq@sysfs.html>
>         +1 other test pass
>  *
>
>     igt@gem_eio@hibernate:
>
>       o shard-dg1: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-14/igt@gem_eio@hibernate.html>
>         (i915#7975
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975>
>         / i915#8213
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-13/igt@gem_eio@hibernate.html>
>  *
>
>     igt@gem_exec_capture@pi@bcs0:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-3/igt@gem_exec_capture@pi@bcs0.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-10/igt@gem_exec_capture@pi@bcs0.html>
>         +1 other test pass
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-on:
>
>       o shard-rkl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-on.html>
>         (i915#12917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917>
>         / i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html>
>  *
>
>     igt@i915_pm_freq_api@freq-suspend@gt0:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html>
>         (i915#12455
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455>
>         / i915#13820
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html>
>         +1 other test pass
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html>
>         (i915#3591
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html>
>  *
>
>     igt@i915_pm_rpm@system-suspend-devices:
>
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-mtlp-7/igt@i915_pm_rpm@system-suspend-devices.html>
>         (i915#13193
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-1/igt@i915_pm_rpm@system-suspend-devices.html>
>         +5 other tests pass
>  *
>
>     igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html>
>         (i915#12238
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html>
>  *
>
>     igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html>
>         (i915#11859
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html>
>  *
>
>     igt@kms_atomic_transition@plane-toggle-modeset-transition:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html>
>         (i915#5956
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html>
>         +1 other test pass
>  *
>
>     igt@kms_big_fb@y-tiled-8bpp-rotate-0:
>
>       o shard-dg1: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-16/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html>
>         (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-18/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html>
>         +1 other test pass
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-2:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-2.html>
>         (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-2.html>
>         +1 other test pass
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>  *
>
>     igt@kms_cursor_legacy@torture-bo@pipe-a:
>
>       o shard-rkl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-1/igt@kms_cursor_legacy@torture-bo@pipe-a.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-8/igt@kms_cursor_legacy@torture-bo@pipe-a.html>
>         +5 other tests pass
>  *
>
>     igt@kms_dp_linktrain_fallback@dp-fallback:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html>
>         (i915#13707
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-10/igt@kms_flip@flip-vs-expired-vblank.html>
>         (i915#13027
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank.html>
>  *
>
>     igt@kms_flip@plain-flip-ts-check-interruptible:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible.html>
>         (i915#13734
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html>
>         +1 other test pass
>  *
>
>     igt@kms_hdr@bpc-switch-suspend:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-6/igt@kms_hdr@bpc-switch-suspend.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html>
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp-stress:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html>
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>         +1 other test pass
>  *
>
>     igt@sysfs_heartbeat_interval@nopreempt@vcs1:
>
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-mtlp-7/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html>
>         (i915#13723
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-mtlp-6/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html>
>
>
>         Warnings
>
>  *
>
>     igt@kms_content_protection@srm:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-11/igt@kms_content_protection@srm.html>
>         (i915#7173
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-3/igt@kms_content_protection@srm.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>)
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x170:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-17/igt@kms_cursor_crc@cursor-random-512x170.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-17/igt@kms_cursor_crc@cursor-random-512x170.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>
>         / i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html>
>         (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>         (i915#10433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
>         / i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>
>         / i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>  *
>
>     igt@kms_hdr@brightness-with-hdr:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html>
>         (i915#13331
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html>
>         (i915#12713
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html>
>         (i915#1187
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187>
>         / i915#12713
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-tglu-3/igt@kms_hdr@brightness-with-hdr.html>
>         (i915#12713
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
>  *
>
>     igt@kms_psr@fbc-psr-basic:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg1-17/igt@kms_psr@fbc-psr-basic.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg1-17/igt@kms_psr@fbc-psr-basic.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>  *
>
>     igt@perf@non-zero-reason:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-6/igt@perf@non-zero-reason.html>
>         (i915#3089
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3089>)
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-1/igt@perf@non-zero-reason.html>
>         (i915#9100
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100>)
>         +1 other test fail
>  *
>
>     igt@perf_pmu@module-unload:
>
>       o shard-dg2: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16326/shard-dg2-2/igt@perf_pmu@module-unload.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146778v3/shard-dg2-11/igt@perf_pmu@module-unload.html>
>         (i915#13520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_16326 -> Patchwork_146778v3
>
> CI-20190529: 20190529
> CI_DRM_16326: 1e750490a76bbb8bcb8ea8d5fba2a68bf0845def @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8289: 8289
> Patchwork_146778v3: 1e750490a76bbb8bcb8ea8d5fba2a68bf0845def @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
