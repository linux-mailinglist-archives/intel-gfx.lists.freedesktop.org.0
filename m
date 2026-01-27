Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOOEBfB4eGmdqAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:36:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FEA91232
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5AE210E250;
	Tue, 27 Jan 2026 08:35:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SJBUYf7N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9BD10E250;
 Tue, 27 Jan 2026 08:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769502957; x=1801038957;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=g6bFjiGJ1YzJCFEo2D5GUiRI5Rr4L4hrsDBadqF8iGg=;
 b=SJBUYf7NJOaOHM1XqfrTY8Fq/tLO/ZRF+RvK3b4gqnk1TPcAhDhFHAGc
 qdsu8F7XOgwyFiZT5jL9D/aGLpja5ZPCZEf5LABcKZjw79baSi0iq3vd5
 74JJDuvz/RIteSN32vhZXMTaOT5mQtzed191SaBA2gyUZcWk9PhjsR3Sb
 1qff54IKrophDhZDhalrTlRHfKoN4odq82u6LuuSBU+GoeD1QNOO6QJNW
 tOaFn6+GgezH+pTl3hhN6cLVG/88QTHLMbHKQ78A3aLs07aJo5Lspoxvl
 TWYszb5kaXu1LIB6eVKvWgj5kRUAhWRBNOogrVV8IzsW34G5KOjB3VJZo Q==;
X-CSE-ConnectionGUID: 9OgSnvQ7SBekzNUtK3DYcA==
X-CSE-MsgGUID: jHSeoUmMREiWgQQr+JZhIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="74555130"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="74555130"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 00:35:56 -0800
X-CSE-ConnectionGUID: 3xRVFu/LT6CFJtDhFf74sA==
X-CSE-MsgGUID: hTV84kwSQPiL2DSBUamLrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="208350521"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 00:35:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 00:35:55 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 00:35:55 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 00:35:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E55JKCULyR35AFFRN0+JSMDFsB9ZaGTTHuk6a7RpW2BGnccE/jqsWEjLbULpgoiGDQJMPWbiAC8L+SosXb9cDjefMdExaIi68S/J6Wfpry5lBz1dqudd9KyoWVZ+F2HrxyQQDl2dzyMU1k/w1rr13pwfnGLXq0TqHHklWb5M76ZzvqOzfKyOQ1qluZBAqEkfwZ3rZvz/BAG3eKLeSifFvj3jKa8ZZfuuxqc33w6Hxx057RGtk1Lo5xcnG0+iUCP3NTGayBiL1Glc+RKVQdNTGFQCFeoixA35eFd933OTsoaqw2sbrTvJEt6LnT7zSppWM9G5Z2jzQsrELyNO1DtGmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n3m2xotXknZp/l8BO91P7HGDxeDh3K61UCw3bdQGos4=;
 b=GHniI8abWHgVolQaMgPq6sNxkxlXrrTytCPoVaTPprNICCmNM3UC99R0I7ApCMDdNE4nqgVkRYqvcM2QE9EgxkzaA1nq8zsFRQBdl8BtIc3DXQUGGzJRHhvKSimuFCzmhDKXiTRyljJszOG00imBEJW1OnmhFFAStoFT3iikV1zDWMfEAu5fUB9MFgyUCx6VtH26qfK5/gONJxuWXkF9AB4xhhfgNoAgj27dDiW4rn/TSt58lk7WYXZeggUTM8I+CBIri7lvRw/PjH2uEm0wwum3YTqLGCj5FBFb9/jrIEcWDPi/3xBxlF5D4MMaojtr7JUYk61pJOxonoaBiQBAZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:94::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.10; Tue, 27 Jan
 2026 08:35:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 08:35:51 +0000
Message-ID: <514cea9e-27c4-4241-aab6-ba2d2e5bc9e8@intel.com>
Date: Tue, 27 Jan 2026 14:05:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 10/10] drm/i915/psr: Use TRANS_PUSH to trigger frame
 change event
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
 <20260126075959.925413-11-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260126075959.925413-11-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB4786:EE_
X-MS-Office365-Filtering-Correlation-Id: a90c1d6d-4278-4f8c-e544-08de5d7f1435
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjJQVjNqUGhGNnp2VUhob2pBZUtrS2t4Q3RhVHhFa2xEK0RUNnhXbDJWQm5R?=
 =?utf-8?B?L2R6VEltVHJBT2hQMGszSTkvc3djWEpKVU5odVVxekRiMXBPMFhvVEx3RjJr?=
 =?utf-8?B?bGFUYjZkVEhOcEZncndBV01WOVovWmtiWXlLeUdlSnB0eEZMM0ZKMURpaHhi?=
 =?utf-8?B?MUtaWWRVYjErd0NFUkxTZ1duK3orcDhnYUdnTGVtYVBHeUdXVGhqbmFMdEpW?=
 =?utf-8?B?eHN2WVBNVUcvc0lRUDRsZHRqUXBjUkRpN1A2cVRZc01WbFVGbjZ2UVo0d2tX?=
 =?utf-8?B?TUtCa3p0cE04dWd0c2ZrV0FoL0VnblZEUVlyZUVZVDFTdHIvVE1LZXRudUFC?=
 =?utf-8?B?QTRxa1lCQkcyK2xXU25Eck1RRzBsODEydWVDYUhhbHZrMmdyekhhNFRQbGZR?=
 =?utf-8?B?TERTdC9EWWlBTmMxeGp0TXZ2OGFObWl5Y2pGR1A3QTJxcys4cE8wZFJ5ZXFh?=
 =?utf-8?B?WmlkMW9uclBFSGhBUUQ0emtmYjMrL1gwMlMzN1BJODZHc3doV0cvOURzRExT?=
 =?utf-8?B?NXhwTUo0TEtCeWtPT1lCaDJzRmJnOEFIWFM2ZWNYVW9aR3VSVVJoZDVpM2sv?=
 =?utf-8?B?eS9aRnl1bW5vS0hzeE15SG8yTzVVV3hic29vMWdwV1FmSlg5ZTR3OWs1czll?=
 =?utf-8?B?SUhkajhwSXg5V1d5RnZWNVNCTnBRZlFpQ3RFRyswb1JFWjY4RDZHS1NsQ01T?=
 =?utf-8?B?cWRVZndLRExxQVJyTjNWeXFGcjVIV2RIQ1ZhS3R6TU9ML1ZUOHhBalhvdzMy?=
 =?utf-8?B?aTZ4b2l2WnVoSEVUVlJ1NTViN1k2MlNZUjgya0FKN1lSQk5wdjA3UmhvM1Jz?=
 =?utf-8?B?WEt0ekZSVUhmOHVmTEFZMWpYMDc5VFMvdFhDRjNRNXRycUJwVG5OSW05N1po?=
 =?utf-8?B?Z3IzWTRLNjlRNXk5TjcyTmZVWTM5WmhXQVF1T05JOTduclN5VGNBWUVjcmgv?=
 =?utf-8?B?aSt6ZjRTTVpBMEcvN1EzQTZHSUw3NHdoY0JBZENUUndwdXZBUnBITElxY3VO?=
 =?utf-8?B?QlJiLzh1MzBwVnlwNDhuZFI5RXArU3M4MExRRVBCNk1VNzlEYUQvS3FzRlNu?=
 =?utf-8?B?eFlwY3pSMU1WaGVFVUtPYWoyOEVvQ05CMWNlRkNVM0o5Q1R5SVZNZExmeHEw?=
 =?utf-8?B?eW1PMzlMR1J5R0hGeWlXTEtveDdUK3lXeFdRRkQ2UHhMU0FRdlNFVStGUUVn?=
 =?utf-8?B?UnZHcUhjdFdUdURaVkFHM2ptYzh5SXZQY0dlZnAwcVR5OWU5Tm4waU1SUm1J?=
 =?utf-8?B?QWpUY21OOHZua3dXWm8vMmhaN1FIeWlPWW5oSXZNam5oL0hxL0pkOFBlWVFx?=
 =?utf-8?B?YlpKRmlxMERiM0ZqZ2hjaEJ0NDZlQktUK0lONno3Tm55Qmt2cHRlSStvUk5q?=
 =?utf-8?B?Q1pucndWY3JRMEJMYXhPWnR3a21tc3R3Rks4NmluR3pHaGRQOEdCVi9iVjFC?=
 =?utf-8?B?b3ZaSi92STRqTDNFTTRnVjRLUDExYldYcnFvQW5qSCt6UWo4QllHbnNkWlZ6?=
 =?utf-8?B?NGxNL3Vrc0pyK2xKM0xab2Z0blZ1MUo3OHJBTmhTUm8yblZIQTZiSURNTXky?=
 =?utf-8?B?S3F1dDV0UE5nbU9rVEY5RjBBcGNzbU1zV0JCZUh1V3J4eDRiWDhOZXN0UVNG?=
 =?utf-8?B?OG1ubVdzZGZtN3FVcGxjWHhtRnV1K0xkQ0s2MUlLYmZRN2tWTHNtYmZVREJ6?=
 =?utf-8?B?OXRpd2xMR1BlNnhzaDNZeVZmdmxzRnRlQ2dnRnorQnkzMm5FV1EyQmxYc2hs?=
 =?utf-8?B?dmZRM284SlArQXN5THFMRFNjcGhCZ0htcUdYb2YrczYwTVovbjdxdStWK3lF?=
 =?utf-8?B?Zy91cWl5RXcvTnNnTlh3M2JUQ1FQazVvVjcvZnJpWnZyNXlWdHk2WGdkSHFn?=
 =?utf-8?B?VTBCbkFWSmh5TnlqOER5THR5SXZDNE9mWmlZV0dwa1hNSHdIQit6aDRwYjNF?=
 =?utf-8?B?SXROWUtvVG5FenlHdkk0cCszM0EvU1luVC9xNStNU0htd0dqdjZROGwxbFRv?=
 =?utf-8?B?b3VMTWRhWGxxQjE4Wm1qUEs3Z053TVhua0RIc3YrWEkrdzhnRlQ2b0FvZ2xZ?=
 =?utf-8?B?OTExczRZcnVmTWs5ZktqbWJUam9RaXlKd0lrdXduMWkzMFFrdmEva2tGeTFi?=
 =?utf-8?Q?efTs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVZDMDRuWVloeGoySDhhTUEzVDE3dzVreHFJMjgwdlhPT1QzUmtkbFllWmRB?=
 =?utf-8?B?dzBoa0FkN25HNFNQNTFGd096ZkJUalpvVjUzaElsMUJ3V1Zsdmx5NEEyVXl5?=
 =?utf-8?B?czc1TzEvQW1YSW9WNVVQUS9wVE8rNi9tREw5S0plb011QyszUVRhWi9jTjRO?=
 =?utf-8?B?aWZJeEZsZTI0emlOclI3aHYyd1Z6cWEyZUtOay92MDJqOU5JVEJweDJSQXVT?=
 =?utf-8?B?WnNwcVhjK2plOGYwRzJ3d1pVZldNRnVBdWN2Wk93RDZiNjE2ODNxSFk0c3N5?=
 =?utf-8?B?TCtRMDdtR01lOFd3bHJZNkR5Z1MvN1F3RU5tRC9laTFJZ0dYUE5MT0NzcDVP?=
 =?utf-8?B?Sjh1cm1QLy9IdkxHdFZkckw0c2JGRVBmaEo1RWdTNjhmNUJTZUtJQjQ2eDUz?=
 =?utf-8?B?ZlBNL1dlVUh3RmF0bEFocldZU3pMQUJwZFU3ZnVXY3NsbzJPaU9HRFhYNG04?=
 =?utf-8?B?QWd4SndiZUpLMTRaU3JXanZhYmtsR05wVXI5anBObk9rbjhFakZQSEhMU1di?=
 =?utf-8?B?UFhwSGVtcG0xNFNEbDFQS1A4ME1aYzl4bjRFbCtWQjRpL3VZZ3k2WTBVSXhP?=
 =?utf-8?B?bEtEWS8xWHAxdHJJald0Wm5uczNlcytKZUNqSXpwOUtUdVlxKzZteHZGS1N3?=
 =?utf-8?B?N1lJa1NkOGRMSlRvZTNLbGVqcWtEK0MxYmFkQWtacmY0NkFQYnRZRUdtS2pS?=
 =?utf-8?B?SjlJWnZFcDg0aks5M3U3UlpXZFc2NU9kUUcvVU0xVldnUUJiK3poVEhVSU0r?=
 =?utf-8?B?MmpHQjRYbTJSYnQ2dkR4OUprUTlNNlFCS2poWjRTOTY3NVJnWXZTUXdpWFM5?=
 =?utf-8?B?NHpMZWNIM3YwRjZvMlcvckhLRE5ZMndGZVhjN1VIY1NTcWlUbU5LbWdPUzhK?=
 =?utf-8?B?c3M2T2h5OWdvMG5oNDNqenlXd0tvYzZONG1WMTRkeEtmQkxGbVkwQ2RjRjZy?=
 =?utf-8?B?bDlwKzI3MnFZeE1UbUJHZjBIQ2NOejd2em5MOWtybEI2UUljM3Qya0dtbjZR?=
 =?utf-8?B?VTV0QmdkY3E5U3F2SnpsWUFxM0JYVjh3eCtWT2RsV0pxSVU3QmRycjRPSy9t?=
 =?utf-8?B?VTlJS1dhZm9OQlBhTzVRZkJVeTcxc3NkMHFUQ2pGZkVIRmd5RmNKc1FaWjdu?=
 =?utf-8?B?U04rODRJRG1Sd0ViYWxrVS9TUUl6ekYzamlLTU9MZ2x0Q2o4Yis0WU1YMncr?=
 =?utf-8?B?UGxMM2R5bDdHZmE3WlRsMXhYZ2tLSVlLU0dCQzE5djFoRFJmUWltUUk5VkZL?=
 =?utf-8?B?MUJDQlhMK21UeVYwZE56Tnh6RktaVCtXVG9zNy9vdW95V0kvTW1yTFZueEdE?=
 =?utf-8?B?T0lMRTIyeUcrbHU4Z1JDRFVRU3BvR1NoMnJGcUVsM3lnOHhyK3E3Nk1rTjVU?=
 =?utf-8?B?a3ZWZ0QxT1gwR1BBZStZTjgvTDVFVUdTYXQxRVdIdG1xV28xaG82UkdyWkFV?=
 =?utf-8?B?ZXloVVZLOXlKN2swWGNLakUwM1g4KzRSTXBheTB6ZGxqWmFXRG5EOGtUd0Rs?=
 =?utf-8?B?RHkzenlzUXNJdXBSTThMTFJJZWVlWTRXNFFtRDJTMENLVzR6TkVhb3V6c3FF?=
 =?utf-8?B?OVNYcDQ3czFxTCs4Y0Q4RmNkY2d4aHdkblRlMk1RR2cxTVlaNDlRK0ZUckxF?=
 =?utf-8?B?UFdyMHIxV0JMemgydHl1ZXkyc2hOb1E2MENpUnRCcGswMHJGZzlwRngyc0Z1?=
 =?utf-8?B?UTFGbEJSVktiQUQrcnc3ZTNjSmFrRGNZcGpXeGxmR0g3MGtXZUNIWElpQ3Bu?=
 =?utf-8?B?SDRmZm5iVmRYTnVncE41bmFoOU9xcm45ZnNzSVVKaVpQR2lsTDNCbENDUWpa?=
 =?utf-8?B?K2ZMUzQ5a01USmZHYmNVT0ZpL1FzS2I1TXgzZEcvb0s2OE5UVlc2RE5MazRj?=
 =?utf-8?B?L0lhQSttRitzTzlBaGE2TGZxeExGZGVZcDNiTFFzMWIreURnMFhJZFVpaGd4?=
 =?utf-8?B?SCszaEdKLzc5cjBGSzhva3U2NUY5YUFJUHArMmg5ZS9KbExNNUdvd3Mvc3k5?=
 =?utf-8?B?ZlcvSzBGbmNKREVIYzl0aEZ2M0JmTUhSL3dmMkM1WXdZMGt0NWhENmpoMW5l?=
 =?utf-8?B?alVVQVBTUjkxTzNkVFY3OWxjNXU3eEpra0VKbGpjOW9xSU9SdDg1dHR3NTNR?=
 =?utf-8?B?TGNUK05pNjdsdnMxWmJXYXZCZzRoTjlYd3JTTE0vTkVBS1c4MW91Rk0vajJp?=
 =?utf-8?B?U0JyN0tVQWhnbFllMzdLV2pGMTcxamUzbzdCTE9KMGhvZWJIVjBUUFBkOGQ2?=
 =?utf-8?B?QkY5Vy9LWmRHcXQrOHQwNS9VMWZ0dnlmV3IwMFlhRFd0Y2JnbDhpRFNvaTJm?=
 =?utf-8?B?OHpRMk1LeXcxUlBwM052c0lqTzliNWFKUXhuWnMxZ3pTbDNTT2xLVzFyUlVR?=
 =?utf-8?Q?ikqiHtVYimJtEfWY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a90c1d6d-4278-4f8c-e544-08de5d7f1435
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 08:35:51.7891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZxAjw/7Je6b5dAIqZH+H9FtfuNiZKczv4JblfOxRYIgWpPb+O6sx+wMA4imSWl9QGGeeN78GRp+axsvnkZKLFzEqQ0qAbtNmjmHPZaZxMqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
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
X-Rspamd-Queue-Id: 76FEA91232
X-Rspamd-Action: no action


On 1/26/2026 1:29 PM, Jouni Högander wrote:
> Now we have everything in place for triggering PSR "frame change" event
> using TRANS_PUSH: use TRANS_PUSH for LunarLake and onwards.
>
> v4:
>    - Added call to intel_vrr_psr_frame_change_enable call
>    - added setting LNL_TRANS_PUSH_PSR_PR_EN into intel_vrr_send_push
> v3: use HAS_PSR_FRAME_CHANGE macro
> v2: use AND instead of OR in intel_psr_use_trans_push
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++--
>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 +++
>   2 files changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9a4354c6bdda..4e644711c571 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2125,6 +2125,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>   		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
>   
>   	intel_alpm_configure(intel_dp, crtc_state);
> +
> +	if (HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display))
> +		intel_vrr_psr_frame_change_enable(crtc_state);
>   }
>   
>   static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
> @@ -4569,6 +4572,7 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
>   
>   bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
>   {
> -	/* TODO: Enable using trans push when everything is in place */
> -	return false;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display) && crtc_state->has_psr;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 8a072f90049f..9d814cc2d608 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -689,6 +689,9 @@ static u32 trans_vrr_push(const struct intel_crtc_state *crtc_state,
>   	if (send_push)
>   		trans_vrr_push |= TRANS_PUSH_SEND;
>   
> +	if (HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display))
> +		trans_vrr_push |= LNL_TRANS_PUSH_PSR_PR_EN;
> +
>   	return trans_vrr_push;
>   }
>   
