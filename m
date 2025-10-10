Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 351BABCD4F9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 15:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A7D10EC11;
	Fri, 10 Oct 2025 13:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hc5s8Dy0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79AB810EC08;
 Fri, 10 Oct 2025 13:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760103748; x=1791639748;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sDgw6e0NuhgVNrxZjQzPNNxSU+oh5Mn2tFjQA06+jeA=;
 b=hc5s8Dy0j1i8A2Z2xXmg5e2e4tlEK9GxFumoGMUMbugLZnKhR5v+qZ/N
 bZud9KJtlm/+vfbLmggz1kTYt10gU1DWKg7X6nv8kXbql4kCYlWi5Fsqu
 vx9X+gwVSQAHamrw7+lXY1PHR3JJoAqiBVJpJ9uzG3pG7uCY2Uhkrrhc2
 5omcK4xwAH1axXALo6RPVZScuFjWFW/mHgB+A/geh+XDgk/jTkbFc8hmA
 KzG+LwoYxVpHtPBhhI9MazRH97wzTwP7ZIrCSb6U8MOx9R98ilR6qgkz0
 gl0hYHgZpigPmTE01skvF1D/vqZTXfDPkGPyP+jEUGCFxplgGnKyhqVB2 A==;
X-CSE-ConnectionGUID: 3rz3ffi9RRG4/AsjVIR0Yg==
X-CSE-MsgGUID: ynQL+VB1ThaWEer3+85E6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62241111"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62241111"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:42:27 -0700
X-CSE-ConnectionGUID: YGTb0h94TXiQ8UAyocdjiA==
X-CSE-MsgGUID: Z9AlgJttSIO/SVbl8PqwGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="180231865"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:42:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:42:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 06:42:26 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:42:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rwp7mmQmh25zqR9Jw0jdUuzKxbQDodQGQDOYgLXKhivfRWh4LU/EAuQQIl0wPtDjRwpaL6AZIsJlwHImYuqcWv8RZ3YnjOk043ZsGxJAprhuTQ+fh5nNOGmG05U4COdlmCWP3sIOcgkIaTpBKKa5nVn1oh6XJK/+Qzox4X2SpHVBz0o4Ov4WiPO/8PDuC6i4tcnHD2VTH1Wy+iqBNKU4g6fs8eURuVh6ve/rPijb/xAKjlwqCL5HuaSIrhpRznJhrhmzWk7K9F2TIOooa2J7QIyHhv3b8AX2+w4PSX3RxPx53ezveJ8IDaKPb934dsYigmijcSA+l97Ld28XY1n+uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n3Ev/a5y8Lyo4HLPXvllkzoGFCDSMGBBvNfQhy5YKAM=;
 b=lFZ9bMzwQJE5eazuI7d85BFf7QH1jW8xzhm2M84lcLVt5+fDRTpi+0uPaei0SYATb+AnNhUzuAu83KH8MsTorUIdDiZkwJeGlANhEDH+KI5eIDhgP7wOFd0HPKyae3eLUkFNaqA7StBqC176NKvqA3ERgx8Y5I5k39hR7PXADZiG8ij28ktPOLX+gfOg6I0/MWrDP9aCvag2pR6MWAN39im6QNO/13GU+bzqhifA6bTGBTOrcJoaqyBoBYitIR7VkJYUarWpst1LQN7F4gRXzxmqvRKQ15R0bff0IPPRvczq7+3HyU6uKTJNpfLWvHWStITmWRJe8/yy7Zbny2BzVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6841.namprd11.prod.outlook.com (2603:10b6:930:62::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 13:42:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 13:42:17 +0000
Message-ID: <fd862250-06ea-4026-94e5-64af7684d925@intel.com>
Date: Fri, 10 Oct 2025 19:12:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] drm/i915/display: Check if final vblank is sufficient
 for PSR features
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-6-ankit.k.nautiyal@intel.com>
 <9178808c08ec3e7dd1e7bc7cd36d8b4f977a2711.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <9178808c08ec3e7dd1e7bc7cd36d8b4f977a2711.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0231.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6841:EE_
X-MS-Office365-Filtering-Correlation-Id: 12233267-2d96-48f5-847d-08de0802d3c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OC9DY0NneWZZNXVndVFrdExSak05Nm5XTWsvU0hBUE9iR3pkWlFldGdtWWJq?=
 =?utf-8?B?K2tGUmlMazRGMzZlSkdwZk5rZEltbEpiWk1BYzFzT0pqbGtPUjZaK1R6anIw?=
 =?utf-8?B?MEszQzZ0VnBTUlVKWllVaE1VcjhBRVRZRGJLRUkvVnlUbm5ZaWI2cVBDVUpG?=
 =?utf-8?B?YmhDNFBuR1gwVVNNaTIzTm1UNEFOQTJkLzhSZ1ViTEhYMCthbmdQRC9jblJN?=
 =?utf-8?B?cXMrcFRmVW5JSVo3dVpERHg3TDM0ZXFGVkNHdmx3L3lVajZqQ0cwamNqd0k3?=
 =?utf-8?B?cUZzZmtCSGpQcjI5Zy9iMC9UWkxlMTE4QkVUSDJscUNpTW9tMjk2U1I4QXdF?=
 =?utf-8?B?OHRIQ2EvS3V5T01MWDEzQkFFcVpFdDZUS3FkSDhTWFdaRldMYXM1ZFpoWjV6?=
 =?utf-8?B?OXlvemVKTk9uV0dtMFFsMTBPdm1qdWdMRmZpVUJPYW9JdVNnQ1hXSk5wdE1z?=
 =?utf-8?B?ZVFURVM4YjB2eE5QVEc3ajBiSGFsdTYvZFdzRXQzZ2U1NTcxdDVHcFhSVUV0?=
 =?utf-8?B?c3dOSnFtZThrMXhBNS80dDlFUzhKU0JFSmZzczByMktXRjFUbFlzZ1FVaDdO?=
 =?utf-8?B?czY5Y3Q3d3VkY2s5anFFZWI2WEd6ekRFcFpZOXh4b3BOU0tsd3pWTWgrQWxI?=
 =?utf-8?B?OVJWOUVoaElhQTlSS05VcnlaQ0NHZldQOU43Q1JQaHNRRXlsdHE0VGdPRUF2?=
 =?utf-8?B?QkdIK094NUFhb2MrY1NOc1YrTWhlUmVtZktlL3RXUW9kZkVqeWFGQ1JhM3B3?=
 =?utf-8?B?Z2VJZ3JWSXRQMjVPb0JqTkI4YzhkU0pUTmNsK2M3MlBrbUJUYjcvcXdjT1Jl?=
 =?utf-8?B?OFVPNldNYWVwRER1cUhMeE9NQWlMOHp2L1QxT09MK0NFeEpscUFudXlhcnNX?=
 =?utf-8?B?bTQrS0JXcW1NSm9PbHIrdUYzbjlvTlpMRUF6cUJSK2g0RmcvTWd3MlRSK1Rs?=
 =?utf-8?B?eURmY1JnN0dSWVc5V2wzenVMR0s3ejQ3RmY3U1ZZeGgvYkhEWWVadDRZUG40?=
 =?utf-8?B?ek1DQWtRelY1MFppWEpJYklKb2dyc0RRdzNleXh0S043SzdrM0RGT1ZoSzZO?=
 =?utf-8?B?RHFXQ01aazNWdWpJdHZQRXdnOXMwNEVHaVBwWkFLelRrWFpvQ2x5NFJVUTVV?=
 =?utf-8?B?aFpZNzNaL1BUSjFRVHBnNzdXL2lkUThVemo0NmZaSVExNG52RVlwTjlNT2p0?=
 =?utf-8?B?WFpNcnY1RHNYVUhnbGlvdmRlZ3MxQW1PUjQ5Y1RxdmR0YzFXUlpFbU11YVJa?=
 =?utf-8?B?c1JIa3V0cjRYVzJmR0puZG9yQzVOYkVUMDkzUVBnZXQwbkpBODZjMDMvcVVC?=
 =?utf-8?B?VHlyTEhZUmU4QWR4akYzUmJKSnhxVUlJNXNOeGEzY2tocTJEWDZjd2ZZMFdn?=
 =?utf-8?B?U2k5cmJiR0NMT0syMkpKaWxyWnF0YlhZWDJObTlHUFRPSjM1a3BkeG5DS1Yy?=
 =?utf-8?B?NlUzYlpWT2hYSkFUbThHd1BPYWhkeEhQMlZCakNueERlaU84L3VLU1B3Zm8x?=
 =?utf-8?B?OER5ZkduMlJ5Mno1ZndPY1gzSThDNkdjNjJhQnh2K012WTlRZmsxaTBSWTRx?=
 =?utf-8?B?QXdJN2pNcDdvZHQwNFZtUTZCYXN2RTIreHZzM2laLzdLQnBTZmsyditSNTg1?=
 =?utf-8?B?OTZBdWd4cWJIU3BoaktQQ05ZcjlCWUNRT2tEaTFDRk1haVR6RWYrdlRneS82?=
 =?utf-8?B?ZnYrUkRWSjRpaFB3RXBNd0VUL2k5TTBaYmdnb3QvcDhrY3cvTmlYMU9meDJM?=
 =?utf-8?B?aFozbnUya0VFbmV4U3hhd0p2bWUvV2hvNmlmTHJ4Y081TGlUUjZNK0h4TzNy?=
 =?utf-8?B?ckN1aS9mVEp5d3dPek9LMEJrc1hKS200cTZOcWJhZ29EaFRwc21PYUZpZkc3?=
 =?utf-8?B?S29JaGVoaC9uampRcVBvSmF1YjVMNTZPaHQwUHV2TDhSRWc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTlNNmE4bGNkODlwWGNuNCsvcmxqdi9YeEZ3S1c5UjJTS0FCWFJKaFRlNW1B?=
 =?utf-8?B?T0ptb2MxcjJRUGVmZFc3ZE9jQWE2WURYRThHUHV3bWM4MUN0bE1TNFZQcGFt?=
 =?utf-8?B?MzVtUnFURURpczJldjBnUWZzalJ2SjNYN2lIYjZQSzEyc1JWRThObThMWmFy?=
 =?utf-8?B?VktJTkwzVXFKMEFDam5KMjVkUmxQbzFna2t0WHJTVERKenZpMFpXMk1sVGl5?=
 =?utf-8?B?Z3ppZExiY1dxOFpaVk10V2t5ZTlSSnhRSHlQUitkdzJtRUQ2VEFBN1JwVXY0?=
 =?utf-8?B?MmEyNmxSRXBPMjdNeUZtajZHdVc3Zk1tbGRVVk5LeHJzN2F4UFBIVmJ3MkV6?=
 =?utf-8?B?YUsvV2RVZDBSd2FEZXBhVS9KZThmYkRUem9RQk5ScHhPOHBleXBSeDBEM21J?=
 =?utf-8?B?TDVlNG9tbHhuYjVmb3NnallYeFdETkZpYnpGZjBUOU5WVFRiRzY1dmloNkU2?=
 =?utf-8?B?THlraXVjaE1VSVZXQ2F1WlprRlFkaW1haGthcnozcWg4Zi9kUHk4c3I2SXkz?=
 =?utf-8?B?YmpmQ1N6VGJwUm5JckZaWGl6WXV0TGc1RmhJaGNiV05jSzdFR0N3S21QYllE?=
 =?utf-8?B?bDNwVm5EMG1jRjhEVkZMQXJnMGM3enl1aU5MY1pQR3RvUWo2S3VFUEJndity?=
 =?utf-8?B?Vytoa2ZSb1dWUnZYWElxTnFtck80Y3prTWpkajVFOWtLQ3lqb2NoZFg0RldR?=
 =?utf-8?B?Ymc2RDV2UFlzeDB2U1NDazNqV2JHWjZIVzJVYTJMUWZVZGdadUZpaEtsUXY4?=
 =?utf-8?B?MFhqRWtxUUFISEIvYlAzZVU1dFhSRU50bGJzN1pSUzI5eGhBR2FVTTJ5a3lT?=
 =?utf-8?B?ZGczTTBqaFQzT0pEV1RpNTZkSm82VDg3L1FKTWIwMkpCbUZ3TUNjZGdJS2dG?=
 =?utf-8?B?V2RaZ2hGUXlqV3hkbEhEZTcrYVE1SFRYVFc4U0JFZGpqZFZZZ1l1dWZsVU5q?=
 =?utf-8?B?Z2kyVnY5TWVPR3FnMDduc1JFVUh5WWtxOTRoT2FpMmhEZzIxQ3NETUJ1RTNs?=
 =?utf-8?B?SG9zWi9rL3AzYWtzQ1grMjB1YUZ3dTZPTDJOYTFhWFRDNStuSjlGUjdhSlpQ?=
 =?utf-8?B?ZlNFZS9WTjF1ZEJlYlZjbndUckp0SWYxWnFjOFZQUk5Nd2FUbFVZc1JEaFM5?=
 =?utf-8?B?Vm4rMWJmTVFXWTlkc0FseG00YmV5d3hjTVJCN0tQTzdQbDU0OEtmR3NTL2hI?=
 =?utf-8?B?TFNkbStaZWVIUTFiaCtvK3RZSGUxRjNDZVRzOWdTZ3F6YWE3bXcvTlJyM0RI?=
 =?utf-8?B?TTV4UitHdEJNRDlYQ1VUMG1zWUJLNG9wU3pnOC9wb0todFhhdjNEaGMzb2xG?=
 =?utf-8?B?bWZQbnJXS0FYN3N6WkRLdlFXL0J4N0ZSWEdhSW5QdFh4RDRFL1IwdFpBamxE?=
 =?utf-8?B?NEZybDBuU0swZ0Y4Y00xYm0wVmlGeWNtMGlxMVN4aEFTMzBCRSt1b1plWEJX?=
 =?utf-8?B?WjBvcGhySjZSNUxGLzdIQ1RRVjBJdlRQcFUrRTcvcUxJNVRUK1hnYVQ0RWdL?=
 =?utf-8?B?NTIxRHl3L0VtZWNVaVp2Y2I1VGptUVhRMlBOVDNLby9GWVhER0FTUVkwbm1q?=
 =?utf-8?B?RzRNbDlENHZGVE1GN0QxVUh6YWVGbk5Pdno0MW1GbENnbkVxajM4SG1hQTBo?=
 =?utf-8?B?WkpZUVFwQmVkL3EvZlkyT2lheHNFNnE5MnBWVUJNN3l2SGR0emVBTzlCbmJz?=
 =?utf-8?B?V29ObWV2RC9MQnpaZHJuSmlodWxibXIzc0svZzFuUzNkbHB6K0F2RnJFa3NL?=
 =?utf-8?B?VUw5ZE5hZTZiNW9nQXhnb0dDcFZxdmFVWlhvWnhNWnJobE45NG1rVFhoekpV?=
 =?utf-8?B?VWY2bFV3a2VQbXhPWkg2NE55ZVVMOWZheHZZanlpcEJ1WjMweEl6QjZVMnhv?=
 =?utf-8?B?a1Vtenp3UTN1aW43ZmdtOHUyYzZQWU1nbTFoWW8rYTdIdkM0RXBPdm80cVc0?=
 =?utf-8?B?VS8wOWJNbUJhTDBKSXlKci9UcStYQUFkV090Ni9vT1RFL3ZGaU9WTk0rV05w?=
 =?utf-8?B?Qmxub0ZwV0htRUNMSEx4M0RqSVVXV3N1ZTF6Q2Y3WU50a0EvSkNaZkZnM1N2?=
 =?utf-8?B?UmpwbHA4Q2l6eWNPRHVlS3JZSkJ1T2l2ekUyeHpMdlIwbzFqK1Q1OVNWNDB0?=
 =?utf-8?B?Z3dvQ0lxMzlUWkZRN3ZsL1NPK3NtaEFyMkZJUEZuTDZEZUJMU0VaREtpRlJB?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12233267-2d96-48f5-847d-08de0802d3c8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 13:42:17.2972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rp7uyEXY491YgU3D7A6KqImFJgwltcMc9Scy8ipNx6ubpEhhzEAcogC3qkUEwk+Ca9uycvNOPx3OCUyczLJGaGNzF1VoMoNyH5b5eadYjWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6841
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


On 10/10/2025 12:23 PM, Hogander, Jouni wrote:
> On Thu, 2025-10-09 at 14:30 +0530, Ankit Nautiyal wrote:
>> Currently, wake line latency checks rely on the vblank length,
>> which does not account for either the extra vblank delay for icl/tgl
>> or for
>> the optimized guardband which will come into picture later at some
>> point.
>>
>> Introduce intel_dp_compute_config_late() to handle late-stage
>> configuration checks for DP/eDP features. For now, it validates
>> whether the
>> final vblank (with extra vblank delay) or guardband is sufficient to
>> support wake line latencies required by Panel Replay and PSR2
>> selective
>> update.
>>
>> Check if vblank is sufficient for PSR features, and disable them if
>> their
>> wake requirements cannot be accomodated.
> Now as we are adding this: Can't we just drop checks made earlier and
> rely on psr_compute_config_late checking the vblank?


You're right to raise this question. The key point is that there are 
dependencies between the PSR configuration, the VRR guardband, and SCL 
that influence the sequence of checks.

Here’s how the flow works:


1. psr_compute_config()
This is called first to determine if PSR is possible.
At this stage:

-> We check if the vblank is long enough to accommodate wake lines.
-> However, we don’t yet know the actual guardband or whether SCL lines 
need to be accounted for.
-> So, we can only establish whether the vblank length is sufficient in 
a general sense.
-> On platforms like ICL/TGL (with extra vblank delay) or with optimized 
guardband, the actual lines may be fewer than the full vblank length.


2. compute_scl()

-> This computes the SCL.
-> If PSR was not enabled earlier, SCL will be 0 at this point.
-> The vblank_start is adjusted to accommodate the SCL lines.


3. vrr_compute_guardband()

-> This sets the guardband.
-> With optimized guardband, we consider max PSR requirements and other 
prefill latencies.
-> On platforms where VRR TG is always active, the guardband cannot be 
changed dynamically and any change in guardband triggers a full modeset.
-> So, the goal is to set a guardband during modeset that works across 
most scenarios.


4. psr_compute_config_late()

-> This is where we re-check if the guardband is sufficient for PSR wake 
time latencies.
-> If not, we disable PSR features that can’t be supported with the 
current timing.


As mentioned in the earlier comment, more details are available in the 
following references:
[1] https://lore.kernel.org/all/aOVOJp2zeN1eCp7O@intel.com/
[2] https://patchwork.freedesktop.org/patch/678520/?series=151245&rev=13

So to answer your question: We can't entirely drop the early checks in 
psr_compute_config(), as it helps to filter PSR early based on vblank 
length, and also helps to get the SCL adjustments. By the time we reach 
psr_compute_config_late() we have more accurate picture to take a call 
to disable specific PSR features.


That said, do you see any issues if we disable these later?
Also, are there other parts or logic that depend on 
crtc_state->has_panel_replay and crtc_state->has_sel_update that you 
think could be moved to psr_compute_config_late()?

Regards,

Ankit

>
> BR,
>
> Jouni Högander
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Animesh Manna <animesh.manna@intel.com>
>> Cc: Jouni Högander <jouni.hogander@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c |  3 ++
>>   drivers/gpu/drm/i915/display/intel_dp.c  |  9 +++++
>>   drivers/gpu/drm/i915/display/intel_dp.h  |  3 ++
>>   drivers/gpu/drm/i915/display/intel_psr.c | 51 ++++++++++++++++++++--
>> --
>>   drivers/gpu/drm/i915/display/intel_psr.h |  2 +
>>   5 files changed, 60 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index c09aa759f4d4..94c593bbedf4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -4560,6 +4560,9 @@ static int intel_ddi_compute_config_late(struct
>> intel_encoder *encoder,
>>   	struct drm_connector *connector = conn_state->connector;
>>   	u8 port_sync_transcoders = 0;
>>   
>> +	if (intel_crtc_has_dp_encoder(crtc_state))
>> +		intel_dp_compute_config_late(encoder, crtc_state,
>> conn_state);
>> +
>>   	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]\n",
>>   		    encoder->base.base.id, encoder->base.name,
>>   		    crtc_state->uapi.crtc->base.id, crtc_state-
>>> uapi.crtc->name);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index a723e846321f..e481ff4c4959 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6979,3 +6979,12 @@ void intel_dp_mst_resume(struct intel_display
>> *display)
>>   		}
>>   	}
>>   }
>> +
>> +void intel_dp_compute_config_late(struct intel_encoder *encoder,
>> +				  struct intel_crtc_state
>> *crtc_state,
>> +				  struct drm_connector_state
>> *conn_state)
>> +{
>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> +
>> +	intel_psr_compute_config_late(intel_dp, crtc_state);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
>> b/drivers/gpu/drm/i915/display/intel_dp.h
>> index b379443e0211..0d9573ca44cb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -218,5 +218,8 @@ int intel_dp_compute_min_hblank(struct
>> intel_crtc_state *crtc_state,
>>   int intel_dp_dsc_bpp_step_x16(const struct intel_connector
>> *connector);
>>   void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool
>> force_on_external);
>>   bool intel_dp_in_hdr_mode(const struct drm_connector_state
>> *conn_state);
>> +void intel_dp_compute_config_late(struct intel_encoder *encoder,
>> +				  struct intel_crtc_state
>> *crtc_state,
>> +				  struct drm_connector_state
>> *conn_state);
>>   
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 212bd244beed..dcab4127b399 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1405,6 +1405,20 @@ int _intel_psr_min_set_context_latency(const
>> struct intel_crtc_state *crtc_state
>>   		return 1;
>>   }
>>   
>> +static bool _wake_lines_fit_into_vblank(const struct
>> intel_crtc_state *crtc_state,
>> +					int vblank,
>> +					int wake_lines)
>> +{
>> +	if (crtc_state->req_psr2_sdp_prior_scanline)
>> +		vblank -= 1;
>> +
>> +	/* Vblank >= PSR2_CTL Block Count Number maximum line count
>> */
>> +	if (vblank < wake_lines)
>> +		return false;
>> +
>> +	return true;
>> +}
>> +
>>   static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
>>   				       const struct intel_crtc_state
>> *crtc_state,
>>   				       bool aux_less,
>> @@ -1428,14 +1442,7 @@ static bool wake_lines_fit_into_vblank(struct
>> intel_dp *intel_dp,
>>   					       crtc_state-
>>> alpm_state.fast_wake_lines) :
>>   			crtc_state->alpm_state.io_wake_lines;
>>   
>> -	if (crtc_state->req_psr2_sdp_prior_scanline)
>> -		vblank -= 1;
>> -
>> -	/* Vblank >= PSR2_CTL Block Count Number maximum line count
>> */
>> -	if (vblank < wake_lines)
>> -		return false;
>> -
>> -	return true;
>> +	return _wake_lines_fit_into_vblank(crtc_state, vblank,
>> wake_lines);
>>   }
>>   
>>   static bool alpm_config_valid(struct intel_dp *intel_dp,
>> @@ -4346,3 +4353,31 @@ bool intel_psr_needs_alpm_aux_less(struct
>> intel_dp *intel_dp,
>>   {
>>   	return intel_dp_is_edp(intel_dp) && crtc_state-
>>> has_panel_replay;
>>   }
>> +
>> +void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>> +				   struct intel_crtc_state
>> *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	int vblank = intel_crtc_vblank_length(crtc_state);
>> +	int aux_less_wake_lines = crtc_state-
>>> alpm_state.aux_less_wake_lines;
>> +	int wake_lines = DISPLAY_VER(display) < 20 ?
>> +			 psr2_block_count_lines(crtc_state-
>>> alpm_state.io_wake_lines,
>> +						crtc_state-
>>> alpm_state.fast_wake_lines) :
>> +			 crtc_state->alpm_state.io_wake_lines;
>> +
>> +	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
>> +	    !_wake_lines_fit_into_vblank(crtc_state, vblank,
>> aux_less_wake_lines)) {
>> +		drm_dbg_kms(display->drm,
>> +			    "Disabling Panel replay: vblank
>> insufficient for wakelines = %d\n",
>> +			    aux_less_wake_lines);
>> +		crtc_state->has_panel_replay = false;
>> +	}
>> +
>> +	if (crtc_state->has_sel_update &&
>> +	    !_wake_lines_fit_into_vblank(crtc_state, vblank,
>> wake_lines)) {
>> +		drm_dbg_kms(display->drm,
>> +			    "Disabling Selective Update: vblank
>> insufficient for wakelines = %d\n",
>> +			    wake_lines);
>> +		crtc_state->has_sel_update = false;
>> +	}
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
>> b/drivers/gpu/drm/i915/display/intel_psr.h
>> index 9147996d6c9e..b17ce312dc37 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -83,5 +83,7 @@ void intel_psr_debugfs_register(struct
>> intel_display *display);
>>   bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct
>> intel_crtc_state *crtc_state);
>>   bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>>   				   const struct intel_crtc_state
>> *crtc_state);
>> +void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>> +				   struct intel_crtc_state
>> *crtc_state);
>>   
>>   #endif /* __INTEL_PSR_H__ */
