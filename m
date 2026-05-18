Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKccAUTuCmo89gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:47:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE5256AED9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF2510E5C3;
	Mon, 18 May 2026 10:47:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lg6DqaBF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D373510E5C3;
 Mon, 18 May 2026 10:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779101247; x=1810637247;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+OUg9LuipVlUCNkYgt/IqfPk3m5mK1H0hBwi3wC0ujw=;
 b=Lg6DqaBFRJGRJyVDiimKqKUJp8umntTMRAXzsf42tDwFJIRsGJG2hswY
 ShvXricOB5XsizM2hMiSrHhHSYBUBxPvV64D0npKBEL2sAm+bmkcHylsj
 TpWKM6auKipDVFmpOdAmIChSD+4RtoO7/FK01LPUaPcaNDEu4mxqXaCDO
 DlgLMyA9hU+hVn1hEEWSty8xP+FhH0V/ZXMM4Lroab5UBz1d/GjLVunAf
 J2bb3N5S7FtXvSVS/OChylwk9sSxeRKXyIQiLqMhgGGYc2UlM5t1ocO3R
 bSkn9lD513H+ww8iy365ZhDMugyBsleP5zkzdcYwi1dWQmnTCImDkxn3e g==;
X-CSE-ConnectionGUID: ut58pg97TgapvxA0zoCPSw==
X-CSE-MsgGUID: sCYMmhP4SYuW3DJbTR61nA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="90258926"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="90258926"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 03:47:27 -0700
X-CSE-ConnectionGUID: eKGtsxJAR9eeyH9M7iU0jA==
X-CSE-MsgGUID: J2mQA9uLR3uiIjTp93W1Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="243388876"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 03:47:27 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 03:47:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 03:47:25 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 03:47:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jbaKA2BXYV7Lyz9SI+EN836jp8B6B4k8gQaVc9DTphtzGvgi/c9CDub7RkqGWZBCrBTeJK79NN3tKoa6zhTVTED8F1LgjscnBOoo+8K2iNHI7UDcT1JTArDw+HeTNh4ffOsUmpMWS9k+FgH4WGUqcLQenDs5p3Bj15ZjCKgF2vapQ+OZdCMAa1RDg8y1TDlT8KcIIrvQVP8EXQdMMhgjIR6QvWsqT5nYhIS2hXtmx5+um11H5mcF9IiDk2v3Oyj8apUj9Lpn1lc2hhvPzK3BjWoDFu58GodxXAhYGFccjsB7Xj/ZGmo+JNJh9WghrWt+2w8uti3CCVBV6PGyLEw6FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cwyKwjf+j/37eqCpxULeT4vxrJOJ97p76e15vlii5qk=;
 b=ZvRhzLIf75jxcP/dXiLy4iYrgFbkvNgcjjV6k1pKnnG51Mc3ImOP3kfjqL5eG8LJtxphwIAXlPQnup3AOQx2FZE5xqhluLF9AXvwvjelQUYAIiYnXX6/Fmc7/GqNG53uMCGh+utpf1ZBW4X7PACHYrDlPx1htD7dlfiPMmFUfbt/b67PDxIhjJUeeso7hnLVSjLY7SzCsW6D/ucSIy1c3QXUvND6E27SwtUhaJpUL+d22uYl9BbDL90XfSiC7VObROvMgMsA6Kzz7vy2pHFpePCqc32Mw9/VwkrKJwr6w/RyrkKnYBCrgQXcqlmvVpaJnTrMHEiYFe44rfyEgarF2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB6720.namprd11.prod.outlook.com (2603:10b6:a03:479::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 10:47:22 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0025.023; Mon, 18 May 2026
 10:47:22 +0000
Message-ID: <090aca95-975d-4564-8b44-30df139800b5@intel.com>
Date: Mon, 18 May 2026 16:17:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/intel/display: Add support for pipe background color
 (v4)
Content-Language: en-GB
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maarten Lankhorst
 <dev@lankhorst.se>, <intel-xe@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, Chandra Konduru
 <chandra.konduru@intel.com>, <dri-devel@lists.freedesktop.org>, Matt Roper
 <matthew.d.roper@intel.com>
References: <20260505200133.636584-2-dev@lankhorst.se>
 <a734e41d-3665-402b-a56a-43fd4f8819ff@intel.com>
 <fef9056c-460e-4a49-bed8-f2882109e886@linux.intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <fef9056c-460e-4a49-bed8-f2882109e886@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0225.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::18) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB6720:EE_
X-MS-Office365-Filtering-Correlation-Id: 40698c54-6c56-4dab-7034-08deb4cad67a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003|4143699003|11063799003|3023799003;
X-Microsoft-Antispam-Message-Info: eAhmFrMBlbZQpl0HynxsAe0sXqr47u47YHTBbOJ7gZGPRkV93cZXT5wSYMrACNFBrkSFYv2vpakztbU8P8B66Wdb7UiYRyn7xIG1XBdAa7g+u6jXTqPJMGqasMO/jBobDeh9gGPiCkw3glC9Qt0seFcz/F3Pn6lh5jb83QHqN6N7eLaA0TScGMGQhpGHNudu8Kkb8gC/kbunnJO/nNGCCbwx04eeeXPgnu6eec2SpDmcJDS0MK+TFNfTWhKYCwODULpC9uoMqQ0ofBFuaKG9wm49io/1ePtFkpD/KVyfvCNYNAfB6/+yAoyBFpamPaowG2EBArkm6//yLRHwCI3rmdiXNex2CNFyLuRKV7mYfIfMBqCBVvY+WqEjIwelpKpQvbfrI/RQbnErEOTnfU+wn82YfntOyV90gu/eRA7ljSTZFoVZpT0lV21nE8KVT5CYDYGRWJl9j3iCVKSPaKwjSW2GoaHFO6Ue3z9Vii4aFnqkUhi7xTxvFfePom7fJa4vwnrC5rLIoKdhWeGeNYHZ1+kKMOEdKk37Xvzte+jfnzGeQK9LsFVqcuhaIVOBzBQ5+LT2RTRgzKEFR5x45pfpImqQLwdApN+QRg17+a+mbFNJWa7zd5NeEGnt0z91nJ5u3rEO6uwqYIlXJtE4q7dlIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003)(4143699003)(11063799003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGJ3WFBONzZJUmZaWTcvUmhHZVZ3SjZMcGlrSTdVQ0dDRzNzeXpOMnEzNlpJ?=
 =?utf-8?B?WW1HV05jc3FINmM2UnAyYlpBY2d0d3llWGk5TVUxNnMxeFBocXMyeXhLMnNu?=
 =?utf-8?B?aEM5K1dlMjRONlpGZEttZnljRUlDV0R0TjRId3RNY29UT1BQbm5uR2J6UmRo?=
 =?utf-8?B?bkJHMXZGMHNyZ09zb08zdFdXSmZkK3g4Y0lsNjNOUlZOSEZCSDhNb2J4cWtw?=
 =?utf-8?B?TnRqOENsaVc2WlRvOVBrMHRyeWN6ZHFBZ3VhUnMxdExYbFJUVVJKaCs5dzlU?=
 =?utf-8?B?QmMrRnlzeGdVcXVadFNkM3RncnFteWZiRVBQclNhdE1GWjRRTkVJVk9UZjZT?=
 =?utf-8?B?MzgrdnhEZ29zK2NWTUREUmFvUHI5aUJ6MHFYZFB3cFEvdUtzZ1VuSDNiQWUv?=
 =?utf-8?B?VHQ2bU9NcVRWOHRoNXJJOE54ZHJvMU9SdElwRjVDN3VPbVhPUjlKeUJyR3Zz?=
 =?utf-8?B?UHZndVVTV05oMHJDamFUQktQaVdUcndPMmdVRHlPdU13S0dOZ3lpdVlEM011?=
 =?utf-8?B?N1Q1amg1V1VDcytKU1ZaaXJtZVkxbXZzUmhVK2ZuM3ZYZXpSY2IxRkdMamg1?=
 =?utf-8?B?MU9nS3o2NEdzM3lwSTkxZ3FFaHpIRUZFNmw4d3FFK2szdmRkc3VUQ0E3UFFM?=
 =?utf-8?B?cU5aYlVtM2dHMEQ4cTNDcEYrZk5Ia2E0QlhuTVZWbEdNS2NkcjJLU09vVDVr?=
 =?utf-8?B?Z0RNSFAzSXIxSmJiZjNzcm5SZEpyRFRlNlc1TlhpVitpSnRrdytCS0dnN093?=
 =?utf-8?B?OWR4bHNvZ0RKZnpPcC9iVXRYOHpuVUhJZVRIN2h5QkVscFJLWm9iWW8rMmQ4?=
 =?utf-8?B?dUFUeUN0cXdKZkFLZHV6MWxIUFRnYnJ1TE96dHNQdzJuMnJRaFZ1ekhHd3dW?=
 =?utf-8?B?cVcxMW83Rm4zYmNLQ2ViNTRhV1dPYkVLR0RTRE5CRTI2MTgvYlpxSzNVNlRx?=
 =?utf-8?B?YkZvaFhrZkdpRWdla0tNOHRPdERac0ZEYXU5YS9icEJsOVdRVnp0RU5aeVFu?=
 =?utf-8?B?TWd5RjBHcm9abksxSE5PSy9FbVVsUWVvbStPcWVSRkFwQnBiQXQ3NXRVUklk?=
 =?utf-8?B?K3dYVTZ5bXd4NHJkSVVVOGpNTThKTUc0cFlDcm1rQWx5T1c0TGJEcnNLaFZ2?=
 =?utf-8?B?dGJ6Y0VaN3JJaWs5NU0rWkw4cnZnbTRXekpCQnBSUEdSdUlqZk8vbjVZeHY5?=
 =?utf-8?B?T2JLb3lrczc2MXpPR21kRGVQanUyZGNtRFJHcU45ck5mWWJoY3pZZGR2QzNr?=
 =?utf-8?B?UHNlS240a2NwcmRYS2FKaEhlYUlTMUpMbndjeHlzcjdGVkRQWW1aME5CdVdn?=
 =?utf-8?B?a3ltbDVaOEVFNTJXMG91UTd4RWpFTENTUjRBOVRmM2tOV215UjdUalFwb1ZF?=
 =?utf-8?B?NXp0d1pCbGxlOUpYMUQwY29IQ2RzeG1jbjFZajZEVHZGQklKNUNXQVordTRI?=
 =?utf-8?B?ZkJEU0Nrc1BVZkN3RWZZQzNhN2hqVlhlMDZycDZiNDNSdWo4WGc1dXpHdGUv?=
 =?utf-8?B?NlJpL2xOUkNHaFhGREZmSXdFMkJvSTZkYm9PRjRPN1dEUWpZWUdiTEg1MjBN?=
 =?utf-8?B?elZYalFGZkhMRzFWUmR6amNDcHR3ckVwSjFJU2Zqa3d3NktDMm5YNUNHcXFL?=
 =?utf-8?B?c3VEUU1WNnpMVXQ3SzQxK1RFTWI4ZGpvTEZMVUdRaFlpajZuV21LdHMxZVdz?=
 =?utf-8?B?cVJtWWNtNTdhWjNqWDJBWHRHc3drVUVCQ2JVNXhVRko0RDFWbDhMbHJWNVBU?=
 =?utf-8?B?eWIrRkhKaEZsZXdLYkl0R01adWdWY0NnY2hWdFVrQUhkUkVnemY0OHNaVHFZ?=
 =?utf-8?B?YWVjbnVwc0V6U1NLcCsxaERPeFhraUFlbGhVRm1kVjJDNGdqRVdLNWRpdHdL?=
 =?utf-8?B?cmtCU0hJOWR3cmNpaUZZR3NSRDlTbzhDbEp2Q3hvVHVESXJZZGlrNEl2emlo?=
 =?utf-8?B?c2N4T01WUDZqbHJVZXF4ZXZSUjhaTGFDb2plTDRZamRJWkowTFZkR1RaWGlU?=
 =?utf-8?B?T0dZbWtkOHhPeGlLUjkyOWJJOEN3QmhvdVZORkkzTmRkZ1M3UHZWUXRaMlA5?=
 =?utf-8?B?dXlWeUlldnptYjlOUkFLUFpqUjVwQ3hxbGJ1ZDZFbk5NUzFXdG9IN1JBWEhn?=
 =?utf-8?B?U1N0ZkZscjhlVEsrRktmVXZTSHp6VVNZMFlLVVRMZUk3bExZSnI2Rmx6L3VL?=
 =?utf-8?B?RktlcDJISWcvVzRXWVJFY1FiTkZ3OTNLREMydVRMTVNMNmNwaXpNUmFEM1Bn?=
 =?utf-8?B?QmovZ3VkQ1dMdWtsSlVZVDhZZUVhUnBiOWQxdWZkS0V0VnM0L2MxZkkrQVdD?=
 =?utf-8?B?clNwK3R5V1VxbUtocnVhWW1CWExkNTE1eDlKRG9xUXNjUU1sWnNVTkx3SVg1?=
 =?utf-8?Q?qYZ2JtpMuuYQfWDI=3D?=
X-Exchange-RoutingPolicyChecked: S+XWc08gLlZNH2JowUXyEPTMJtIzhqIO3BYOQrvEV1pAdhqq0JOdkzRjXT0Lb0WItwIwrFwFOb2d13st3R62kFzt142ZodJwp3K61dSQ/oVt5OVRlaL0pw7yLvdxAXmJm2v95b0BClI8bAKlkAQGQOaF92dbZtYnspLNQaCbDQ3Kl4fq9CDJh96ugaD+y/uyXmkAkcYI2LGo9yh529JRnRLoe4aj1N9XLhJPtuvFW5kz0R/tz0yWn5crrq2ly0AgBjvRJtWT5cbpqXH9HujwXtgfazNxWfJpsACIVahEpnpBZHwlb/pUOQfqAnV4uhQMnxaJAS+aDww2p0yrCTSJXg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 40698c54-6c56-4dab-7034-08deb4cad67a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 10:47:22.0124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d+5argSTb0FBrwjgWgqy3w7p3rw8XmwdDqTM7FUJ3NR09Nh83J/tqw/dZCvyvzPciekijthUgFWl1ZNjItqB7vfhAIwKSiKpZImSNCn0vTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6720
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
X-Rspamd-Queue-Id: 5BE5256AED9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action



On 5/18/2026 3:56 PM, Maarten Lankhorst wrote:
> Hello,
> 
> Den 2026-05-18 kl. 11:30, skrev Borah, Chaitanya Kumar:
>>
>>
>> On 5/6/2026 1:31 AM, Maarten Lankhorst wrote:
>>> Gen9 platforms allow CRTC's to be programmed with a background/canvas
>>> color below the programmable planes.  Let's expose this as a property to
>>> allow userspace to program a desired value.
>>>
>>> This patch is based on earlier work by Chandra Konduru and Matt Roper.
>>> Between 2018 and now, intel/display has changed so much that another
>>> rewrite was necessary.
>>>
>>> v2:
>>>    - Set initial background color (black) via proper helper function (Bob)
>>>    - Fix debugfs output
>>>    - General rebasing
>>> v3 (Maarten):
>>>    - Rebase on top of recent changes.
>>> v4 (Maarten):
>>>    - Complete rewrite based on the solution that went upstream, and
>>>      on the new intel color management features.
>>>
>>> Cc: Chandra Konduru <chandra.konduru@intel.com>
>>> Cc: dri-devel@lists.freedesktop.org
>>> Co-developed-by: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> ---
>>> Corresponding IGT: https://patchwork.freedesktop.org/series/166016/
>>>
>>>    drivers/gpu/drm/i915/display/intel_color.c    | 47 ++++++++++++-------
>>>    drivers/gpu/drm/i915/display/intel_color.h    |  3 ++
>>>    drivers/gpu/drm/i915/display/intel_crtc.c     |  4 ++
>>>    drivers/gpu/drm/i915/display/intel_display.c  |  5 ++
>>>    .../drm/i915/display/intel_display_debugfs.c  |  6 +++
>>>    .../drm/i915/display/intel_display_types.h    |  1 +
>>>    .../drm/i915/display/intel_modeset_setup.c    |  2 +
>>>    7 files changed, 52 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>>> index 0531c60e5e5d5..2365cf06cd514 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>> @@ -1102,19 +1102,37 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
>>>    {
>>>        struct intel_display *display = to_intel_display(crtc_state);
>>>        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +    u32 color;
>>>          crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
>>>        crtc_state->csc_mode = ilk_read_csc_mode(crtc);
>>>    +    color = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
>>>        if (DISPLAY_VER(display) < 35) {
>>> -        u32 tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
>>> -
>>> -        if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
>>> +        if (color & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
>>>                crtc_state->gamma_enable = true;
>>>    -        if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
>>> +        if (color & SKL_BOTTOM_COLOR_CSC_ENABLE)
>>>                crtc_state->csc_enable = true;
>>>        }
>>> +
>>> +    crtc_state->hw.background_color = color & GENMASK(29, 0);
>>> +}
>>> +
>>> +u32 intel_color_hw_background_color(u64 drm_background_color)
>>> +{
>>> +    return (DRM_ARGB64_GETR_BPC(drm_background_color, 10) << 20) |
>>> +           (DRM_ARGB64_GETG_BPC(drm_background_color, 10) << 10) |
>>> +           (DRM_ARGB64_GETB_BPC(drm_background_color, 10));
>>> +}
>>> +
>>> +u64 intel_color_drm_background_color(u32 hw_background_color)
>>> +{
>>> +    uint16_t r = (hw_background_color >> 20) & 0x3ff;
>>> +    uint16_t g = (hw_background_color >> 10) & 0x3ff;
>>> +    uint16_t b = hw_background_color & 0x3ff;
>>> +
>>> +    return DRM_ARGB64_PREP_BPC(0x3ff, r, g, b, 10);
>>>    }
>>
>> nit:
>> Better names?
>>
>> intel_color_background_color_drm_to_hw
>> intel_color_background_color_hw_to_drm
>>
>> Stick to kernel types u16?
>>
>>>      static void skl_color_commit_arm(struct intel_dsb *dsb,
>>> @@ -1123,16 +1141,11 @@ static void skl_color_commit_arm(struct intel_dsb *dsb,
>>>        struct intel_display *display = to_intel_display(crtc_state);
>>>        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>        enum pipe pipe = crtc->pipe;
>>> -    u32 val = 0;
>>> +    u32 val = crtc_state->hw.background_color;
>>>          if (crtc_state->has_psr)
>>>            ilk_load_csc_matrix(dsb, crtc_state);
>>>    -    /*
>>> -     * We don't (yet) allow userspace to control the pipe background color,
>>> -     * so force it to black, but apply pipe gamma and CSC appropriately
>>> -     * so that its handling will match how we program our planes.
>>> -     */
>>>        if (crtc_state->gamma_enable)
>>>            val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
>>>        if (crtc_state->csc_enable)
>>> @@ -1151,11 +1164,7 @@ static void icl_color_commit_arm(struct intel_dsb *dsb,
>>>        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>        enum pipe pipe = crtc->pipe;
>>>    -    /*
>>> -     * We don't (yet) allow userspace to control the pipe background color,
>>> -     * so force it to black.
>>> -     */
>>> -    intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), 0);
>>> +    intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), crtc_state->hw.background_color);
>>>          intel_de_write_dsb(display, dsb, GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);
>>>    @@ -2107,9 +2116,15 @@ int intel_color_check(struct intel_atomic_state *state,
>>>         * May need to update pipe gamma enable bits
>>>         * when C8 planes are getting enabled/disabled.
>>>         */
>>> -    if (!old_crtc_state->c8_planes != !new_crtc_state->c8_planes)
>>> +    if (!old_crtc_state->c8_planes != !new_crtc_state->c8_planes ||
>>> +        old_crtc_state->hw.background_color != new_crtc_state->hw.background_color)
>>>            new_crtc_state->uapi.color_mgmt_changed = true;
>>>    +    if (DRM_ARGB64_GETA(new_crtc_state->uapi.background_color) != 0xffff) {
>>> +        drm_dbg_kms(display->drm, "New background not completely opaque\n");
>>> +        return -EINVAL;
>>> +    }
>>> +
>>
>> can be within a old != new check, not to invoke it unconditionally.
> The check we have above checks hw.background_color old vs new, the value programmed
> into the hardware without alpha component.
> 
> This check is about uapi.background_color which does have the alpha component.
> 
> I can put it in a new vs old check, but it would have to be a separate one and
> there is no benefit to having 2 comparisons vs 1.
> 
> 

Yes, I meant a new check but not really a blocker.

I will leave the name change up to your discretion. The i915 CI needs a 
re-run, though.

With the typo and checkpatch issues fixed, LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>


>>
>>>        if (!intel_crtc_needs_color_update(new_crtc_state))
>>>            return 0;
>>>    diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
>>> index c21b9bdf7bb8a..f2cbce57b63d7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_color.h
>>> @@ -47,4 +47,7 @@ void intel_color_plane_program_pipeline(struct intel_dsb *dsb,
>>>    void intel_color_plane_commit_arm(struct intel_dsb *dsb,
>>>                      const struct intel_plane_state *plane_state);
>>>    bool intel_color_crtc_has_3dlut(struct intel_display *display, enum pipe pipe);
>>> +u32 intel_color_hw_background_color(u64 drm_background_color);
>>> +u64 intel_color_drm_background_color(u32 hw_background_color);
>>> +
>>>    #endif /* __INTEL_COLOR_H__ */
>>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>>> index 03de219f7a645..b7600cecafc85 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>>> @@ -7,6 +7,7 @@
>>>    #include <linux/slab.h>
>>>      #include <drm/drm_atomic_helper.h>
>>> +#include <drm/drm_blend.h>
>>>    #include <drm/drm_fourcc.h>
>>>    #include <drm/drm_plane.h>
>>>    #include <drm/drm_print.h>
>>> @@ -405,6 +406,9 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>>>                            BIT(DRM_SCALING_FILTER_DEFAULT) |
>>>                            BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
>>>    +    if (DISPLAY_VER(display) >= 9)
>>> +        drm_crtc_attach_background_color_property(&crtc->base);
>>> +
>>>        intel_color_crtc_init(crtc);
>>>        intel_drrs_crtc_init(crtc);
>>>        intel_crtc_crc_init(crtc);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 2fa10f8582794..306908f20b5a0 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -4505,6 +4505,8 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
>>>                      crtc_state->uapi.gamma_lut);
>>>        drm_property_replace_blob(&crtc_state->hw.ctm,
>>>                      crtc_state->uapi.ctm);
>>> +    crtc_state->hw.background_color =
>>> +        intel_color_hw_background_color(crtc_state->uapi.background_color);
>>>    }
>>>      static void
>>> @@ -4544,6 +4546,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>>>                      primary_crtc_state->hw.gamma_lut);
>>>        drm_property_replace_blob(&secondary_crtc_state->hw.ctm,
>>>                      primary_crtc_state->hw.ctm);
>>> +    secondary_crtc_state->hw.background_color = primary_crtc_state->hw.background_color;
>>>          secondary_crtc_state->uapi.color_mgmt_changed = primary_crtc_state->uapi.color_mgmt_changed;
>>>    }
>>> @@ -5356,6 +5359,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>>            else
>>>                PIPE_CONF_CHECK_X(csc_mode);
>>>            PIPE_CONF_CHECK_BOOL(gamma_enable);
>>> +
>>> +        PIPE_CONF_CHECK_X(hw.background_color);
>>>            PIPE_CONF_CHECK_BOOL(csc_enable);
>>>            PIPE_CONF_CHECK_BOOL(wgc_enable);
>>>    diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> index 81bef000a4e3e..336ef29d0c5b5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> @@ -572,6 +572,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>>>          intel_scaler_info(m, crtc);
>>>    +    if (DISPLAY_VER(display) >= 9) {
>>> +        u32 background = crtc_state->hw.background_color;
>>> +
>>> +        seq_printf(m, "\tbackground color (10bpc XRGB210101010): %08x\n", background);
>>
>> Typo: XRGB2101010
>>
>> ==
>> Chaitanya
>>
> Oops, missed that one!
> 
> Kind regards,
> ~Maarten Lankhorst
> 
>>> +    }
>>> +
>>>        if (crtc_state->joiner_pipes)
>>>            seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
>>>                   crtc_state->joiner_pipes,
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index c819167618502..aa07be41648c4 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1034,6 +1034,7 @@ struct intel_crtc_state {
>>>            /* logical state of LUTs */
>>>            struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
>>>            struct drm_display_mode mode, pipe_mode, adjusted_mode;
>>> +        u32 background_color;
>>>            enum drm_scaling_filter scaling_filter;
>>>            u8 sharpness_strength;
>>>        } hw;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> index 4c646b1bd0ee0..d3b2433eae791 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> @@ -334,6 +334,8 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
>>>        crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
>>>        crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
>>>        crtc_state->uapi.sharpness_strength = crtc_state->hw.sharpness_strength;
>>> +    crtc_state->uapi.background_color =
>>> +        intel_color_drm_background_color(crtc_state->hw.background_color);
>>>          if (DISPLAY_INFO(display)->color.degamma_lut_size) {
>>>            /* assume 1:1 mapping */
>>
> 

