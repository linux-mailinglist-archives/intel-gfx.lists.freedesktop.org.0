Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCBCC2E038
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 21:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E751B10E483;
	Mon,  3 Nov 2025 20:20:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nfQU2Q1W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3398B10E483;
 Mon,  3 Nov 2025 20:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762201208; x=1793737208;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Ua1tQS0iADB+M4KvxgsdGLWceTZtiZyyxlGgRDFqNfE=;
 b=nfQU2Q1W+4FO/GwVLske20H1leQpvQBDlm1auZoWJJga1yfBdTMCpnAi
 qiOerHZlcjB3WFLeL31r+W94bjAF4h4F15k8/pfLiE2pLPVKSuvgfQAWm
 tZLvQACxOjUqIWE8tPWM83aBCcAUD+UmMT4bhX1RSZmUFQ3qlymmz+t6w
 x7jY+L+eWDXm3WI4iq0Hzs2IlW+lVgbXQAbTksqzvCiUHFyFN4fQyma82
 gjJfEC88T72hp+S4l81KmSbZmGUDz3USsRTN0tjuoO9AgMziaantGWp5O
 qa7wY1q/0hyEY0ucQDyypMt8AqF+2Mi1wzoUCEuGBsJ2cnqA2ZUSQNwQX w==;
X-CSE-ConnectionGUID: NBsIqrQCTbmZD36MenGotA==
X-CSE-MsgGUID: +uzYmTEIQWKLd+6/ierZUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="63984468"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="63984468"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 12:20:08 -0800
X-CSE-ConnectionGUID: 3jiqJ8GqR/2TUQFiWaYTeg==
X-CSE-MsgGUID: eBLL+c4NQSSmpbA/UgRpwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217600019"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 12:20:08 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 12:20:07 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 12:20:07 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 12:20:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E5Kx+yRakzj2dFxFhQasV36W74HDW6NbIXIfEMs0wiexZXqARmC7uSFKfG3gL4NFjeFQc4MX4riO510LhcAW2ZO470hTcv1ME3imgaer2oXbQkUWQQpuG0fbBIRQiYaW5kLsF+ZyKnIPphDHrLb7yMMXFjeZ96VhtVRGyGn7TLO39nKyT1dRhoEhsZouXWHBPOzexyHAiJ2h4VmYVQYLWP66V47hvgbwm8OHa8XFnNUQfuUOE3b/4fgRCezYSAIu6Lcg82TXlRKRVgkw41t5XE0pC84BbEmzieheARNgb72mftkjt7Y87F7EKH02D/QIDHLxP4kJI42xYzxMN0nNfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29eABTDE7+R6gQEapMKPwktOLZ7r3UfwmKUzJZdFlTI=;
 b=JLU5yB32T3Uec9iO4jbpNxuMgE7x4D1MHmas0/gVfOYvpHr8ynh4X0XU7vOCf+b6Njrdo/9iFxXi7y9/gnGX9B6fVMW9Q5apcA13RERnv4bAuXG1HFuk1UZbLYe/dqyWmHaSFw3ZkkNylMMWi2HYyiAVn+g9th8aDoFkwxS56RCdMINrlkRkhe+v3Jz4P3hEh8itUgkPkLwnI6P+YSE0VZykaM/7AE2Fr7cZUjfURcbPETNMoPOuE6ti6/4oaDW+4DlAxZORmF/L0USb8jmvcYTH94axdFQVAJZShLexPL1D4+6Kdg8+E8WwBaJxltFsY8R7V+qbWaZBynwCe4cgoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA0PR11MB4560.namprd11.prod.outlook.com (2603:10b6:806:93::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Mon, 3 Nov
 2025 20:20:05 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 20:20:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176219987661.11360.10134688087673136663@10055242dc62>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <176219987661.11360.10134688087673136663@10055242dc62>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/display: Add
 initial support for Xe3p_LPD (rev3)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Nov 2025 17:20:01 -0300
Message-ID: <176220120150.3586.7968753268835334691@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0161.namprd03.prod.outlook.com
 (2603:10b6:a03:338::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA0PR11MB4560:EE_
X-MS-Office365-Filtering-Correlation-Id: 45dc2e6d-1d2b-413b-a93e-08de1b16607b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFBkUFcxVlBkY09GQStoZEp0bzJEU09SWkxZNzdKNzFiSmZkL3diclVvb3Uv?=
 =?utf-8?B?LzhmdU5tMjJDWE84bHFOOW1nbThuTkk1eU5PT21Ca0Z6NFJsdEJNdlhVZ3Yx?=
 =?utf-8?B?dk9VNjF1MTVjRkZlQXYwREpQQVJvL2RDNmQzcDNsaENTVWxZVXEwMm9oVm1I?=
 =?utf-8?B?UUZqY0QyTWgxWFFvcjM3c243M0NtRDR2aVY2S0VwdkFoUVFLQnJodlFiNVl4?=
 =?utf-8?B?bkZ5cTAweFA4cGIxa0VpTkVlWm5hYnhqeEtKMlRTdHdGK0ZNT1p4NHdGRkVP?=
 =?utf-8?B?YmxPT3cxUG81VmR4c1JhUVFWNUlOVUt1Y29yRnRDK0dOcUJ0WHYrOHZDbHhW?=
 =?utf-8?B?bmNJc0VPaldWa1RIb2E4aTJzVkFROUpWcHlENHdDekNJbmZKb3VxdGpmWTVY?=
 =?utf-8?B?M2V5UjRZRVBhYkZ1a1Z3bjhGUzFydjVZZTZJOW9Rak9QeWZXaTVoZG15Tldt?=
 =?utf-8?B?eHkwWmZxWk5IRDljV2t4NU0rNG5yU2hkNGRUS0lJeVBJaU11Rnc4aitjQXlh?=
 =?utf-8?B?WWJOY2xIYzQ3U2FxT250QmZvWXNRaGE0MmxZOEprRVFxZEJBMXMzb1ZBejd1?=
 =?utf-8?B?OVRkZGt0NW1SVGNXMzY1Z2Q1eVNTdUkxS0F6a002T1FJdXJlaXlibTZyVVJI?=
 =?utf-8?B?WTl6Tk1HbkdPN2xucHNNU3ZkbEMvMzFQbUUzS1RLaGs4UGFuNjVyK1JnTDB3?=
 =?utf-8?B?d3o2SWZLbnV4MU8vc0RwbG1yMHNBakI2VUNDTjBBWE5hUGRiazZ0NnJHRlAy?=
 =?utf-8?B?U0V2OGhIaHcyR3pnai9sZkJpcmg0U3N0YlJYVC9GTGUxVEg4cE9Mcm1zdTAv?=
 =?utf-8?B?TUxWenBtOWVCczFOMUZJb2RkNy9sY0dIR0FLc0wxVjJTK09CUnE1bVUyZWx2?=
 =?utf-8?B?d0s1d2N2OWp4THhwMmkvSWNLQUQyNDFaNjdRckpQOGJHdlVJWUk4aEpxSDlI?=
 =?utf-8?B?enRINGhKS0dvK01nL21tMlhydHNpSTRobjgrVHY4bFlzYlZoR3d5NFlEMWZw?=
 =?utf-8?B?QXRWRk9XNDFwNWxQVTN4SlVlSVBwUXQzc0M2Zmh2TnJaTmg0ZnVGNDhENncy?=
 =?utf-8?B?UEVEZitaU1p5N251QnZXQzBtbkQxbEUyTDJnNjFCWXZwbUFhMEdYN0pqY3pL?=
 =?utf-8?B?VGVuRkNlUXBVZ29oMVh2MWZGNmhBWkFaSEduSnVkY1R0NnFHOWgwM3kyUCtW?=
 =?utf-8?B?ZjZPekdBU2R2eDMzS1IzR2JmL3VKZVJDd3dSdE9TYVBQQ29Ca3hpU3FUK3Qw?=
 =?utf-8?B?ZG80M0Y3M29HL3lsTnVMQkh3M1FHNDdIczc3Sm0vaXBmRnFiZENpZmpuSURD?=
 =?utf-8?B?cjNHdHZ0SXhuVjRZN2orL043NzJLY2E0Wmw1TktNMEhnUFRqVEpwanppYjZZ?=
 =?utf-8?B?UlgzelVTRnVYd1pLT3JvaFBtaTlaWHo2OE1zZU1qYjBRZXZGUThEK3laT0do?=
 =?utf-8?B?bjh1NmZjRUxIMEpzVEQ2OUJiVFlhL0pDSHdxOFB6UVdQVnRVeVlIV2ZHUW5L?=
 =?utf-8?B?NXc1dXo2bFI0YVJDZU5YcDJJYTVXZEpNNjBoYURVTjJneXpiMGwvaVpUNlZQ?=
 =?utf-8?B?V0xicjhGcnU0eHhyT3AxRGxhTERwdnpTWjJVZXpWVVd4NzJJQW5CT0szUnA0?=
 =?utf-8?B?cCsvK1FDSEF6aVV4czl3Kzk4L2lPaFMyb3ZjNTdaQUwrUlp0aFJCS1VIRTBv?=
 =?utf-8?B?SWZXOVZiTVVneUUzTGVpMVNpOWxLNlFXaTVCSnlmT2ljVjlqQWsvRWdXSjlV?=
 =?utf-8?B?UlVmKzdHZzlKMklhL1lKVFY3WkdaQ0JqR09LVEZCOWxLWFZLdmtVUVFjblYw?=
 =?utf-8?B?UFhaQlQ4SHF5cW5HR0tkM201d2cwQ2VLMERqUUZESGxUWEY4VXhUcGhzYXB0?=
 =?utf-8?B?WXM2ekdEN3FqU2NJVC9WY2R3UmUxalQ0SkpaVnRFY1hLUmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1dFRnNobjZpaWJwNEFTUk1LaWNQQW1Rd1UxQzZ5dUVYdTNwU1c3NnFmOUFQ?=
 =?utf-8?B?VklQZ1Ewem9NVEpkbTlSZld5Q1lwWlUrMzZ0c2VBa0dWNXhXRzRkQ3NxdGQ2?=
 =?utf-8?B?VWJnRDZGRUVqZXdzRDF4dG52dS95Z1hEZXNUTVUvb3AwZW5HbVlybXpJYkZq?=
 =?utf-8?B?eFB4WVV1QmEwNWRMZDN4VUREQktidUdRMm91a2QwRDVWMmlKZ2V1eU9iUmlE?=
 =?utf-8?B?ek1yOHZaRjRiZStJdUk2RStTVXlOUFFIRzBvRWYxcVZDNCtUMitCeHJhMXZD?=
 =?utf-8?B?TTlxQ2swQjhJWlVES2FjclVhRC9YWkpkQUR3QSt3NVpHWU4rdThNK0JuWFlu?=
 =?utf-8?B?YjVabmRNVjJjS0tXcUNMME5JQy93ZXpOMElIN3lHM20xZCsvd3F2RXBxanJE?=
 =?utf-8?B?aXRaeEJKcjlWVXZnU0JMSkE5UThESGVtSVJFWU96RkRtbWlvVE05QlNBdk45?=
 =?utf-8?B?cjBvWFFIV1kxT2FqaHJFV1EveHFTQ0JBeUZWajFUeWZkUkVDdE9Ea0JsWVU1?=
 =?utf-8?B?ZGtWdDE4V0FEY0FNRjdBWVV3RllsdTBGaUNsUlphVGJkWlBvNmZBNzZPMElK?=
 =?utf-8?B?djVWaXk3NmZFYnd4b1hTN1dWWmoyOWQvVDlXZkJwRkt3YUtQVldZc3prdVpN?=
 =?utf-8?B?QVp0OGFYQU4zZUlzMXMzUkpZYzR4S3ZuaXovR1YxOWg0U1FnZmt5VFBaSDhu?=
 =?utf-8?B?b0t0WGVFZEJRM3IxTlM2Yi9ob3hpcEFVUnFUdTZGcVh4Yy84QlhXeDFZT203?=
 =?utf-8?B?ZlJQTENPekVNRjh0SEdxeEVPRlJDcUR5TmwrSGZZZExhaUFTUWt2VDdlTGlo?=
 =?utf-8?B?K21YOWV0SWlvbXVhTElpRlNtTW5nM2ZHcGluR1FieEJQZ0p1NDIxVlVtV3BO?=
 =?utf-8?B?eDNodEpqcTQ5L2Nhb3hDN0JoUHJjRDlqYVhzWmFqb1hYdmJ3RVd6V1B2R1hJ?=
 =?utf-8?B?WUUzL0NOSWxvRFNmb2o0SjZsdUE5RmIrTU5zbWZXUG05NVIyeUlKdUl4YUdo?=
 =?utf-8?B?MG9WVmU1V202Tm9HOWZOaDdsR3V1aWhWTklRQXJEbE1XaWMvYm5IaUVnMEZt?=
 =?utf-8?B?ejF6QUFCYzBWSHFXT1gwZ1NHRkhINkFFSk1BTmp4TjVBdHpXVnNPKzVqUWRm?=
 =?utf-8?B?YmtsSnVrM1A5NFJtazROYTFrY3h6dk5uN1FpNGJSUHdWOERhdHVZRk14TVhh?=
 =?utf-8?B?cFpLVnIvRE5JdVR6OU04MHNKNHA3b1AwQVQ4L3pDZUdZbHdrL0VxQUFnNXZ4?=
 =?utf-8?B?bWpONTVoMmhBTm5WRHV5U015ODh5V0lUN1REbU5VUGQvV2RNcXc3WTBOMHdW?=
 =?utf-8?B?b1dEcmVmMG05aVArQlFPa2tuT1BKQzZJQ0lGZEhqZTI3RFBsRDQ5MmtweDhj?=
 =?utf-8?B?VGRBQzJtSWtOK0YvQTJoZ3owalI0RkkzcUFheG1sM0lyN2Q2NVBublVEM3BG?=
 =?utf-8?B?Vmkyd0FMaTVJU3Jab3d2V2x3aG8va09JQVlaMFhVbkt5YlpCN3oyMTZtNUQ1?=
 =?utf-8?B?VWp4T2VpdUdvazFUTDRpVC9LeE9GNkdFeThqNHErOHBzZHpia0pCdDRrcWNR?=
 =?utf-8?B?UGZFbTdkajJVS2g3RHR5ZDV4cTQzZUx6d29OUXo2M3M4QTdqU3pMU1VFUFJp?=
 =?utf-8?B?MDZ0djY1WU5zdjYzZVk1cDRxcnZVOHlVYUF3UE11bFk1aGh6OEFZSkJUMnJH?=
 =?utf-8?B?c3A0RENzY2liT1hWaWgwMlFmMmhTZGVvK09oQ0cxUWZVVmtHUDFyWlpjYkJt?=
 =?utf-8?B?NUJuOFRJVW5oMC9hY1RxNlEzNG9XcWJJSnVNZURnMWpWRHZ1Q21BWWRwSEgx?=
 =?utf-8?B?dDVjVkFIVUpvRWhmdm1EcnhPWUNwRzJyUEpwQjU2azlNaXRZaEtrbGYyVHk3?=
 =?utf-8?B?SFc2NjZMeDRYMmxpUm5NT0prMlJxOGVKdjM0clBBLzcyRjB6ZjVLbGUyaGt4?=
 =?utf-8?B?VnBtRGJ6b0l4YmR1cHFVZE54SW1CK3pQa2t6MjJseEV1Um9xMWtBbE1qb2dW?=
 =?utf-8?B?bkM4dVdnM09nM3pQWk5qWXRsUzBzSlZETHU2TUQzNUFYcUtieFMxS0FPWkp3?=
 =?utf-8?B?WTNsd0NUcW1wSC9ha0JaNEhrbSsrdHJ2bjRBVUpFVkdJWUlZT1dEbGs4WFNT?=
 =?utf-8?B?SlR1YmpVSXVpTE9zYXpETmpSRFh5bnd5ODJhSThRaUFMVGs1S0F2dS90RThE?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45dc2e6d-1d2b-413b-a93e-08de1b16607b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 20:20:05.6419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VSRqQM0ifsxFKtlZdHUW3FyT5fE337iB9+p5iVa1UVgLUupuLQEo4c5HkfxbsvsDLx3C/MbZnfKsX4Wz1wZdPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4560
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

Quoting Patchwork (2025-11-03 16:57:56-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/display: Add initial support for Xe3p_LPD (rev3)
>URL   : https://patchwork.freedesktop.org/series/155952/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_17479 -> Patchwork_155952v3
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_155952v3 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_155952v3, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v=
3/index.html
>
>Participating hosts (46 -> 45)
>------------------------------
>
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
155952v3:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_gttfill@basic:
>    - bat-mtlp-9:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17479/bat-mtlp-9/i=
gt@gem_exec_gttfill@basic.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155952v3/bat-mt=
lp-9/igt@gem_exec_gttfill@basic.html

This failure happens on MTL and is not display-related.  The error
should be unrelated to the series.

Could you please re-report?

--
Gustavo Sousa
