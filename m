Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALlZLs/jemn5/AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:36:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F82ABB2B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7449610E7C2;
	Thu, 29 Jan 2026 04:36:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGknSzxw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E0110E7C2;
 Thu, 29 Jan 2026 04:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769661388; x=1801197388;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OXmAbTXgxy1ObDY2STwBfuhQlW7CoR5qgcHq5IaQ0Og=;
 b=BGknSzxw37lAf77GnMQQDfavDd+Ni7XKRaroWfn5POgz6mHWtgmui42M
 zKSQswwQNIq1rZ+uWtd0o7H3Xx6beWB0iuYd7aozYMSP5AfY90/FNnnQM
 ESjlJXcKZb7Dph0Rfmftu7NJcJB6EPTIeMuavhRB9/xQjKqw5UQsMY2Ba
 m8PzVtKV+WelQe5fcDW1qomUgqHAxSq2ObCB+/acydd4fZtS8e8VhPU+e
 4qRe8D01BLfMlqiY+jGZprjdAS3rcLxS4yIDNti57H56r6JD19oUOR+Oo
 jf7cNFvuBtv7QTqiny/29ftZejnf+LkR70nmEsSxnvdeLXmJjnrLNyAX6 Q==;
X-CSE-ConnectionGUID: ZR4ZE2mMSeW9pSsQ+fb2UQ==
X-CSE-MsgGUID: bSwT52q1Rle2+vs1Plu49Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70980581"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70980581"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:36:28 -0800
X-CSE-ConnectionGUID: LP+gni6hQHmu/+Qdlo+sgw==
X-CSE-MsgGUID: TgOuF4pCSsyioKW8ZatD/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213428270"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:36:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:36:26 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 20:36:26 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:36:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8Cd6jcsjDvN962csyoeefECwjgQuaMER6ScOUfdEjO3ygh6Lcx+RHqfF6BFJTKzPBAcHjU/AiK7LMuH6XJSphoBnBTru7C0myvnHbfy+8rONV+bVJh0yv0PnT4yky2/HjYsHyAU2y9p2WqgRzptilFpR/T3V/mBqRDnoR4vLBeMCoScjj+Dm5xh8Hiwuf47tsWjPwHKjApMDWiB6/cO1scng8XwuvM0ipNyrRXRGkcHRqov4m1ddVyzSCU6BximwiuA4k6l6h+8MrEwzz8lze1wDCPFkcw7IpsfebnrgAAq5CiotV2lNrnpf1IDjkGc+Q2USqMpjk0g6e4oBOqv1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JDGZ0qzMn/x2JS9MK+WrN3AZAanRDBFYEG6G6+2WLZA=;
 b=Nx9SEyUJyEiZzkVwnAgf4/3w/tpzrjCEVU9t9eKttRgOCYE3acUc6+Jv8mxjVmvoqnpN3EGuXbDRehCjllDD13PcYKB/OQ3AB07iMIqSqVo0kB2C6OH9TK4o1OSzA+Lq8nLiHlnsYIrCR4OpqRdC0LisSnSxgYhwcRCQN7I7vAJsSILmi8neeQXVfJ6d/RI03+AQt46HJxN0ECONb6BnsXNLDS1u+VoLq8iRWkIy63kEZzSmA6wrKGnyTjqroop8lfdHzZFEsDlS4nuBozhkutbz6dGEQlczQ7+FIS12NEhL+wWt+MGo2Fuo0mHQAiDu6xiH26dTpoQkNHqSv1pOtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8181.namprd11.prod.outlook.com (2603:10b6:8:159::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 04:36:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 04:36:17 +0000
Message-ID: <0192a32e-830e-40d6-8c70-95f3a39b95e9@intel.com>
Date: Thu, 29 Jan 2026 10:06:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/i915/gvt: drop unnecessary include of
 intel_display.h
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1769612208.git.jani.nikula@intel.com>
 <32359d5d5feb777ecc7c983d970823218851035f.1769612208.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <32359d5d5feb777ecc7c983d970823218851035f.1769612208.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8181:EE_
X-MS-Office365-Filtering-Correlation-Id: 01bdc891-42f0-4a74-57d8-08de5eeff154
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czZkZzI0SVZqQ2NOdm1EcFNuN2V1M2pPVW54cEJSSjlQenJlRzRsR2pVT1Bw?=
 =?utf-8?B?RVVrazhXV1IxdUVzZEpXRkJGWXIwbzhPOU5FZHdpajArWmdJYmg1TFNRQnFZ?=
 =?utf-8?B?OURQS2NnejFSSFk1K04vQ0VoUjJpUEtwajRlc0dHV0Q5a1Y0L0xtZVBzZUVh?=
 =?utf-8?B?RzlBZ0JFRFNMSVNFNW0ramkzK0FnRzVHRnNQU1RRTysyeVhwTWdUNGF3Z09F?=
 =?utf-8?B?V05OWlluSXZ5dU00WVEvQnByV1BRTXdXV2xSSVJWOGZtZUsyTEdGcnJRUUx2?=
 =?utf-8?B?ZXJXK3JqdEFrQUFUVFlxS3JtaEd5cHA0KzdtZmh4aWNyczhjcHc1RzJnVFM3?=
 =?utf-8?B?K2pVK3FHb0pFYlRxSDRRUVIyMnQ0ajNLcytHUDNzc3I5c1d5WDYxcWtzUDRF?=
 =?utf-8?B?NkVxVVlXaVBwbUxra01BM3VKSnFBajlwMGR6a1hWakk4SXJxcmlnR2JnZUo0?=
 =?utf-8?B?OFYvYk13TmRtK3ZMM0xqNHdlWFc0UC9VcmVkRnlKQ3VVa2lhRlc1NnpxZG5R?=
 =?utf-8?B?b0JGa2poOGh4VkJDbFUzZXhPdlBreDdDdDhKQ1ZSa2RyZFBEck5HK2dEMXph?=
 =?utf-8?B?L3FOcUhNVGRIUmxMU3V1a1c4c1RFcWZHZWFDdFVlMGMycEN4c1hhVmdhSnN3?=
 =?utf-8?B?eXo3TzhHanoyVlZHdm5OUTJjWHJ0OGxPaVlaL01TdXc5M3Eva3NxV2RPZ2ZV?=
 =?utf-8?B?R09sdGsvQzNmS2ZYUTNNSjJvMFpDQjZDZmxyZ3plTE9mM0MxVnlOdGFaOWlS?=
 =?utf-8?B?dTg5R0ZHWjVpYys3UW9YSk5LcjlMeWJzd1dHclVlbHRzM2Z6MUZpWCtiRXVz?=
 =?utf-8?B?bkpYazk4dklmUnRNVmRjM1JnSVllUzFQZUNtWDMyR0RaR0JEQ0p2eXlWT1lI?=
 =?utf-8?B?LzdpNitxaGF4VEhHeGorU0g2Uzkva3gwT0JTcGtKYXFRbjJMOC9iZjVSOGhM?=
 =?utf-8?B?UE1CckZOUS9GV25Bd3o2czhLYmkwRktpcEkvR2UzN1F5L1c5N0pDeHRKSlNo?=
 =?utf-8?B?UURIcVJ3NzRTbEp4ZzAyMzFBM1k2VEJweXBzQUx5UVc4SHFCZzl3QUUvanZp?=
 =?utf-8?B?Y3YzRlF1dFdHM21rNG82MWE0MlBaUWFnQzFLb1lLSDRXQklkdEhTSHJiRFF0?=
 =?utf-8?B?b0o0RUIrdXBHcko0TkN2OStnQ3ZuVlQ2ViswYnorVDlRSnozL0FJVitEMG1W?=
 =?utf-8?B?UXRRTy9UNHovTjFtNEN2YklqMkFpVWpOSloxMmxxN3lFTk43UmpCaHMwWkZJ?=
 =?utf-8?B?djNIbVpGWkRhWUk0Q0tkL01nZWJCM0o1bWVzS3lOVjl3NVRPL2lvSUEwdU9w?=
 =?utf-8?B?QytxbzNTMHRrNnUvWjUyZHpJdXoySU5JNVl3S0RNbVhnZjdJWmhvUVFNand4?=
 =?utf-8?B?dSs3VTMvNEZFS0E5VEhySENmRkhTT2Y0NFNKNW5qbmlJbjYra2ptQ0tFLzN0?=
 =?utf-8?B?UXhQMXl3K1NZSXh6cE9JTkV4bTV5aTloME9VMEd3V21zSWJoVUhLY1I4UW93?=
 =?utf-8?B?UWFQNm1HVGczYTRGVzYvMUFoeloyOUx3OWtIT2gycFE3SnpMM2ZWbms3d3JB?=
 =?utf-8?B?T1Y5cllGQ0pjSU9Ca2tWMDhxZCtCd0lXcEZtU1hPUzFpN2lHZDVNUjJaVVJI?=
 =?utf-8?B?WDN6VFdPTW1VRE5lZ3RqVjRWZUEwN3JHTTl0NkNWMG5PZGdXenNHamRWY0dX?=
 =?utf-8?B?RXB1SllmTnBjNnZuL2NBOUI1c1FZMGJvY25Bc1lEVmlKQzM1SEs4OTZFS1Nz?=
 =?utf-8?B?aHFBUlBrL2QzT29leDZoZ0p6ajdEZFFZVFFOS1hUaWFYVlRkbDc0cUl4S05B?=
 =?utf-8?B?YWo5cXhQdUJvN0NqK0cza1ZUeVlGVlVneHh0Yk5HazV0YzBaN3dGRXZLYWMv?=
 =?utf-8?B?QkJwL1l0WXJrSkRnVDIyL0FPbFNnc3ZCNW1YV0VmOWFacEk1N3R0UjJkTExL?=
 =?utf-8?B?bmNFU1Y3RDExekJlMzlFMk10MUZuUlpIMTdpNFdKMC9pZ3o4ajF6Y2NUNHNa?=
 =?utf-8?B?Z1dEZnh5azdRY0xiUVZhRHlNR3hCMm10WWQ3Y2c0R0VLRWFqUU94NnRrdGhn?=
 =?utf-8?B?VWsrM0p4VVdlWXdOVVF3VmtjVVNUaWViMExLMjFCbGhCeVM3Rk5vWHc4TCtK?=
 =?utf-8?Q?EV/0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1pEVlVKYnZ4dlY0MDJJWkErT29YMDlKQ2pQVlh6QWc2ZFp0enhGdUtpVTBR?=
 =?utf-8?B?NlU0NkQyemtZVlc4OHM3TmttUkVua3FJWUdETGo1ejlsbkgveHNvR3dkUS9q?=
 =?utf-8?B?bGxWVyszODNzZGJXdnZOYkhiL3hqRFZjbEc1Smo2YzBWWXllZDlLLzdXeDUr?=
 =?utf-8?B?R25tdzZGU3Z6MWFMcVdVMUhzaHl4YkxQeDhjd29sTjBaQVFVbnVRQ0JIdDl4?=
 =?utf-8?B?cFNadzJhRUw4YUZpRXRWS0duTHpIT2N1N0lFSzlwMEtYcTBMUlF1cnQ3RG1u?=
 =?utf-8?B?MHdMSVltNURxN2VKOTVra0JRYVpOOEJ2WFo5UC9HK0pGU2daNk5Bck96ZFA3?=
 =?utf-8?B?RUtWZWgvSWxnR2t5TW53MkRpOVRMTFY2RktlMzh4ZnhzbWxTZEN3ajZCMXhH?=
 =?utf-8?B?amFEdER4ZENwbHFSZUZ1U0IwTWlHWmhHbGRtZGkraVljLzkvcmJnV0JwQXNR?=
 =?utf-8?B?U0RwZEdXU0lqTVpqbVdwRW1YVVV5dHdQbXNVekpyQW9CbXdNTXk3dnhiK3Z0?=
 =?utf-8?B?cGc2SllDNjM1MjlPUUlTR0puWGZOOFlyRk5ZWm5JRFJNYXNsMGl0UlVxUEoy?=
 =?utf-8?B?M09kVmFaZDB6dkJIVGRCcXp1V3VBaHNFb0lmb3g0N3hrcUtzUDI4aFIvRm5Q?=
 =?utf-8?B?Uk52M0dCbWxLNWhETVJsL3hnTHFWTjdhMm9SWW9DYmFXSmVSV2tWWHIveWd3?=
 =?utf-8?B?Vks2OW14Wi85YU1iWWdKYXJILzk0bWdBcXBUMndSUlVUbzJIZUlJU3BXWEEy?=
 =?utf-8?B?NnpmNk0wN0J4RUc2emZQTGVFTjdjcG92eUJmRlFQMkFjWVZkZjJGa3p5TTFX?=
 =?utf-8?B?TndSaXVKSUFTN2h5ZHR6endQb3J4czlnMVA4OW9JZnF6aXNYY1lTRFM2dTRC?=
 =?utf-8?B?Nnc1MGF5WlAwNmVONm05ZlhtS09RR0N2QU5SYkZYTVd3M1NVUitROUVqZzkw?=
 =?utf-8?B?RWVUM012NFh1MnhodjhTSklQbEFGWWl2WnVTOUhQdEhsNjhYSGRNTGhJdEdm?=
 =?utf-8?B?Rm1vTCtoN1Q0TFNYeXlXRnQ1Yi9jUVc2UHpaWkZFYkpiNlpDdm9kNnZWZFpq?=
 =?utf-8?B?Vk40SWxmeGxjeko3b1hqU2pPT3pEZWhHc0R5ZGVNc2kraVhkL1hPZEdOM0hy?=
 =?utf-8?B?OHN6Szd6c1ZVVkdueHNlZmRyQm5MV2ZxSTNDRU9xa2tkdDk2UU5TemxuOVpJ?=
 =?utf-8?B?WFM4WUlReEVkOGxOaHM2dFFobEdueXVObzFUNGJmRGgrcTlHd0lkVUZsajYw?=
 =?utf-8?B?TW9kc1JKMWRpRWExbEc1RFplYWJGWVN5VXRlM3VZeU1pNFhVL2xwUkxZNkli?=
 =?utf-8?B?RzB4Q0tGRk5ub2VWWndoYUE2Yy9ubGRQcjBaTmlyS0RjY29HM1cyN0JpbWlQ?=
 =?utf-8?B?SDNVR2hMWHFvQ1JYSVdiS2V6VHhoWW03T0s1MDd0Ulk0S05YREtHMyt4eUc1?=
 =?utf-8?B?dGNjeVI1VE5YSjA3T2owcXFjT09KTHUrVjhsK1h4MjZ0YzVTWVc3U3FpQzN2?=
 =?utf-8?B?Z2phSFc1MEwxV0ZEVnNvOTFXWFFwdUtWOStGaUpzejdGSmt6NVhOVUU1Y2sr?=
 =?utf-8?B?U21KY3BGcUhweG0vcTFaSzRiZlFSUFdPeE8yejBmMk1mRUxnSXZKMGgyY2w5?=
 =?utf-8?B?ZlJsdHBxTFk1V3kwUjhuWVh6YjBPYzRDM1ZqbGxDU0oraG9lOWdBb2JKOGc5?=
 =?utf-8?B?aDVtVzFBdWNoRXZZNjZhZEJJQi9pMWRkekI2SmZrdXgyS0s5cnJ2SmR2UTZs?=
 =?utf-8?B?NzR2V01GR05od05pQUxpd3FVMVpoM2lvT3gvZ3hydENhbXZxSHpMMUVtWVVQ?=
 =?utf-8?B?TGU5UTFCL1J3anh0d2gySW5EVVpKNWpjYTZYS0lTTWhTQWppa3BsMSttZUNv?=
 =?utf-8?B?OEJFRjBsUE9JUW05WUpRWE50Zm5CaXRHd2dwQ1E2UkswczFKb0tVeHZVVHNJ?=
 =?utf-8?B?czBRaFJnR1F6MStEMkNXMVlXOGgyTm1wVDBzYTdYMmwxU2tTTUNRK1JUOHRY?=
 =?utf-8?B?a2JIdGlXYVl2MWFOU2daY05jZkQrcEZLQ2d3bVFGczBmdXkvbGo5bE9BTjdo?=
 =?utf-8?B?SlRORWJEbk95NkE0aHJUQzVjbnBDTHN5bmpWQUpjQWtuQXR1NXJPeS82UUsy?=
 =?utf-8?B?UDM1blhkUjJLSHcyRWJNK29HYjRBeDFPTDR1a3NNQ051ZmtjZVI4OTRvMkQ0?=
 =?utf-8?B?SExuTzBlSDJIaFR3ejNFSHlIdHg5cys2eEpWd25JV21ROUpzcjNWM0NQUU02?=
 =?utf-8?B?bUVpWHFGN1NLRHdZTWhIVStVdW8wL2h3cjBSRjBwU2hyQkZqcTJ2QmpaM0pG?=
 =?utf-8?B?OFgrb1g0ZjBlV0pTY1NqTGNGNk9NbmRKSDhGK1d6K1pVNGNMbURGVzZkOE5C?=
 =?utf-8?Q?QtE/A9CcSXRCMZHA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01bdc891-42f0-4a74-57d8-08de5eeff154
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 04:36:17.5574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tHHgaDuIkaA9F6ior+aBQmzfiYc6Ly12/Gv2Q9YYn3BPlrPvyCcZVs+/FmUidtqZBIzI4xwOYnl1rFRWa+msrQSenvBo46jzGQOAhkBmVGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8181
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 23F82ABB2B
X-Rspamd-Action: no action


On 1/28/2026 8:29 PM, Jani Nikula wrote:
> This does not appear to be needed at all.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/gvt/display.c | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index 21341842c0a9..c026526c39f6 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -39,7 +39,6 @@
>   #include "display/i9xx_plane_regs.h"
>   #include "display/intel_crt_regs.h"
>   #include "display/intel_cursor_regs.h"
> -#include "display/intel_display.h"
>   #include "display/intel_display_regs.h"
>   #include "display/intel_dpio_phy.h"
>   #include "display/intel_dpll_mgr.h"
