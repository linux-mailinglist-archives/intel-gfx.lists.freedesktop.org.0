Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DA8BFB18F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6F410E718;
	Wed, 22 Oct 2025 09:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mLHQrHzF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E212B10E70D;
 Wed, 22 Oct 2025 09:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761124402; x=1792660402;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0yjCtnIiBMZlHx8iulXEHPJsAwUlJN/OTImN1BPspJc=;
 b=mLHQrHzFPbm9xEK+N6lP9xnRt3N7uuN8STNgGdxq6zHqY0qOthFSLSOA
 V/pQdCsjYGlTc7EUZfEoZnydvZ8+vKhoZY5LenY+zayGUKQMAOSnBeoIH
 /y9vaAJmFNt4yZhDucpthIoBUkXL8PYG3aQ7A/BAWt5DusFp10xHsBfDL
 HhdYfgAji8v3Y3jg0AWebk8KxpWp0KjUSEvC8cVrN2bwl98S3xwyi5nkz
 Q89/Mbf9+BbzTNI3a6JWwfrRLNSEup/xQLVfQPMM/HN/VVQHEm+6KAooF
 Rcr4ZCnU5SptHLinmqTkfczBnaQ4KgDjrDBpDlEc0xU+fcTnUfot9Utjd g==;
X-CSE-ConnectionGUID: WmKOz/r7SpGmRsCJu93Bog==
X-CSE-MsgGUID: j6FVxOsbTWK8/bAZkAkfMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63161236"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="63161236"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:13:21 -0700
X-CSE-ConnectionGUID: rW3AmdqXTzOZuF6udmd7ag==
X-CSE-MsgGUID: X/y22D3DQHKUy7wxtSf0kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="221014696"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:13:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 02:13:21 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 02:13:21 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 02:13:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m42M59lQbQBGA0+cg5OBWmNdPJxkoWN8bOX0FIU4RZ0fJyQ0/KeAJzEN1qJNzJ/kOsIQPyPsc1lngHIbJRAxP24Xw6ca5CyZ87vr5y/VaTbH8p3F5jmuChnx75XkxUFktagQ9oqKDS/KiqF3XlW50CFv9K/lMkBqEABGwPaLwerkATDekcVIZzbTnjJgbvERl/RlGi5jXvOX4H7xW4FfuMx+21TSuKJFyMe0o37MeEjv0keI4bGXAMoxQQIG7OuBvwUctgOEUcaYKHa2fJSaZjy5niR5XeqJ+f0/FJXr1qBPjPPHYQDXaNDwzcBMu+mS6UBm21yDTePw+X7pm+HitQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+NN7FHaU+wmzq690Lec2tuRRcus+G4UU7mj9fY1X70=;
 b=YCvzSBHW2+pAYTYR3WWZMrkTeAqP+QGkzVQAyQAzUQ+YbI7aook0bnIhslVbhGXoMAHOD1LRCGNMRQjM6h2U9ZkO/3C5LEyj0nNqJR1oyl7cTBfEP7clk7QWQ/pTi2IRvqWN8PJ+STw2SJdwP+GBaq0SMyUdqYBV0Ki2UifxjxVpuhMEVEw11wseiBXHVdmLZ18W6tvEmWWCJWtsVUQ3go6nSu23iIKNE9sqtIRO5b7nDDF+9q1EnvqDGH7BiHr9hJsLpkxKfNIx3L50DvI2QKdM305eb+YHNBQPFBKF8jSw+O6uFJ7d1/7q7BIKFl6pj/22po8JMELFyKnN9f3DLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 by SA1PR11MB8393.namprd11.prod.outlook.com (2603:10b6:806:373::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Wed, 22 Oct
 2025 09:13:19 +0000
Received: from CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d]) by CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 09:13:19 +0000
Message-ID: <aba9c4cb-29c1-4e05-b944-0aea84fbe802@intel.com>
Date: Wed, 22 Oct 2025 14:43:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/25] drm/i915/ltphy: Add a wrapper for LT Phy powerdown
 change sequence
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-6-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0079.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::6) To CH3PR11MB7300.namprd11.prod.outlook.com
 (2603:10b6:610:150::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7300:EE_|SA1PR11MB8393:EE_
X-MS-Office365-Filtering-Correlation-Id: f60c6886-6d6a-4541-d686-08de114b3d95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dG02SzBFZUdwVzUxK1NVazBROGNFTEh4RStrV00wbkQ2cEZyTyszVDZ3R1FJ?=
 =?utf-8?B?YnB2VFZmVmZFUFBLUFJub2NpWGdNWm1jdWwxWTFVNEJOdU1qTDVVT3dLdzVE?=
 =?utf-8?B?elFZWGsvSlBEc2t0NDFURTVWQXNHL1hKUHRUVGFkRENWZU90NXl0OGVZTUlF?=
 =?utf-8?B?UmVQZWFwTFIxbjV3enYraURRSmNNUjluQy9hbE5LYkx4bStBZVFCNmNmQ1Np?=
 =?utf-8?B?aDh1VW5ZVGhCNXlydUJSa1Vyc2hOSHg5MHZvaktPQ1lweERjeUhxb3BGR09i?=
 =?utf-8?B?ekNXUkJORVhiVmVmMFdWSjhHQnNHQmJ5L2RVQlBHaU02OFNSK05NUnczMWN3?=
 =?utf-8?B?YTUvNUhyT0hXMUJrcXEvenVRV2huVVYwRm44aWFrSDhBUFNLL0piWXp0bDRJ?=
 =?utf-8?B?QkhCSVE4MHdWOVN4RWRZZFB6d1FYYUh6K2FVQ0w1cXI2bmJsRUovM0NGTlcx?=
 =?utf-8?B?bEt6Z0YycG9KRHZ3eHNRbFYyMmJjTWdGbGsrdk5vZTdJRnliZjB0bGR5d1oy?=
 =?utf-8?B?aVNCUHhqZFVuZmtiTElLWlV2d0M1UllkUkJkY3AzTnFYTmViMkJrazk0aDNi?=
 =?utf-8?B?aGovcS9QNTF4WFZDVmVDaTU0OXJvRmh3eWNkbWsrVHlWTmJyMHVCcm01eWlV?=
 =?utf-8?B?aEJ4bHJUUVI5UVVER1htLzN4aTVLd1ZVVnZLMUlRUjcxWGRoMkVJTm90MkRy?=
 =?utf-8?B?RUM1dWlNdmovRG9mNyt0N2VZeW9IWGNsVE9VQ01YMlZvbDladEwyR09JMDFT?=
 =?utf-8?B?VFVVU00zay90ZGlmVitmV1FBTlh3YVVrYmVKZ0NaMUl1ZE5nRlNqRXNWSFRx?=
 =?utf-8?B?LytJckUycU5Xa00wbG1kcUZVaVlXWEdaM3ErZTJteGdtY1NLSlQ1NDA2UG16?=
 =?utf-8?B?ZHhMY1VmSjlOcFZOa3E2VWU0anF0SFdBemNKbUxvbFl4VkFRTDd3RTFqZThN?=
 =?utf-8?B?Umk4c3RTUGNPbDI0QXZVNWsxOEpQeWkzb3BWUnZ5ZmhVZy8zV3doUmlWQ2hM?=
 =?utf-8?B?SHdOdnAxVjB3NCsySGpMZHFjTlduTnNSdXZXRjQ2SVZYaEU2Mi8wa2xsdFNM?=
 =?utf-8?B?Wi9kaXJCbDRkb2xGa2UxODRDZ2dSV01uTTBORm03VTl2L0dPSGEybHN6d2d1?=
 =?utf-8?B?Wm9TVWlESkNEKzN1a0wrN2ZESldJTzh3WTdpaE5QSXNBOE82eWxIcmdaeFVn?=
 =?utf-8?B?N2E1QWNiMi92L1RkR2RFM0VwSzVmR291NytxdFJvRU1NWmVCdUhrODdwcUQ3?=
 =?utf-8?B?VXJVYWFmMDRhR042YTI3Q2o0aEpZdTBRTDRoUXNtQURLVStIY1NzaDBENkEv?=
 =?utf-8?B?Y2xMT09KbVQzOFNiZjJhelBjaVRYd2tjdHloSE9idHdFd2JXa3FYY005MFE5?=
 =?utf-8?B?S2ZKSmxVbkF0Uzg5d3BLaWJSdFlOMlgvUFBsZFNzU0VWbmhQMGFUa0RDZkpH?=
 =?utf-8?B?UzNSb3NkcEJrQVU0OXprRFNGdmJad0UwY0RQcDJ2bG9RTzFKU1BWRlZJNlVW?=
 =?utf-8?B?ZFREY0ZjMUg0a1dRZEdzVjg3RGppSUhJWnZlVFE5cDYyc3FZZlFEd0luM3l0?=
 =?utf-8?B?WGwwZlFmSlg2WUZZZnoxaURDRStWcjdacVhOSzZ6UytaazR0TVJBMmhGMHJC?=
 =?utf-8?B?b3FFTjh1SUpKVVFrcUxxMEp4NlQvY0RFYk94NVFiNkdEZzM1SGdBNkR4WlRT?=
 =?utf-8?B?S1BaeTRGOXA5dXJ3SjZ1Z25MQzlVNW9nZy9JZWxPQlRVRzNPVWZsdllPUnlY?=
 =?utf-8?B?SWM0UVZPemdGWTh5bnFKSWhMYzEyQ2pSRVdkeFhocmpGWTlOWm1XYTJuMm5t?=
 =?utf-8?B?MVJwc0N5WDd0a1F5SnZZZ2ZJYWNoY1dwSW53NXUyVytOR0JUa3NaWW4vcWZY?=
 =?utf-8?B?cDZSdHpoK3YxNnRZUlZxektNL3ZORnpCbDlBWjFXUEpleTVKY2gyZEk4RGlr?=
 =?utf-8?Q?xqyi8nCTX5nP2zVxPYBoqc6t4ZKNRSvi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7300.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2NwR1cyU3B4MTgveFAvQ2lQWkpWeDE2TjE1b2d3SjRuVEpaalBwMWhJMUl2?=
 =?utf-8?B?WVNxQXdJTzAvUGNEZXNDZkRmRFQ4V2cyME54WXAyUVNMWm50Tlg2dEh1czhy?=
 =?utf-8?B?N0RhZ2dEY3FFb01BNFBRaUtGSWxMRFVYcW96KzdsUTZKd25SckxxREVzc2JY?=
 =?utf-8?B?VHd0cGd2aHg0Z20xUDdYcFdockt4Wk1BczFkNzBodkZBcEpNa2tuYjFkTlZQ?=
 =?utf-8?B?eUMzTXB0dnNlN2xpNlM1cU0wTzBycllvQWtENCt2bU9qcjMvN3UrS2w5Z2wz?=
 =?utf-8?B?dUZ0bkcwNUNYNllSVEVrQjNvakxudDNuVkQ0Ny9Nbmo2eXJVR00vTStGVkNK?=
 =?utf-8?B?ZG1abkV5VjJFSDdWQ2d1QUJUdXRGQVkwOXFqTFB0dUFFMjJZbklwc0t2dWVQ?=
 =?utf-8?B?cU1nUStXVkd5eWY2WW5zeFhaWEtpWWJIazBSYlhkZklZNWdVYk0vS1k4WElC?=
 =?utf-8?B?ak5KcUhjZnNqYXJleFFsemJIU0FXc2VZdFdwa01UQW9RcXByeWYvVkZIOFdN?=
 =?utf-8?B?YXFTb0p4OVBSWmVPai9aSVliK1JOSHFKRkhXd1dGaFRwSDc5ZVVuVThpVHo2?=
 =?utf-8?B?WlM2WlFMaHYvKzZQd0NHckEyUmRvNW9EY24rOW9qUFNqbUlFZkRCZ1U5d1Vk?=
 =?utf-8?B?OGpQbktqdEJETUVpWWhPcjlCRldyOHBrOGM4T2xXc1h6UTF6Q01pK1Y4MkRJ?=
 =?utf-8?B?RXlhV3c5cVhLOVZzcTB4cWt3RERBTkxPSlpsR2VYS0pVd0wvUms4SWt6SHJw?=
 =?utf-8?B?ZTdqaU0vVElmV25FWEE5dlovSzFsMHlnQWJSWEhjQlZoQThHdXl4cFdIdGJr?=
 =?utf-8?B?bXZCQ0hyYlJmNWd2Ujc5bGRCNjFYd3RYUmRlTEFCd1p4YmdMM05McllnRWFt?=
 =?utf-8?B?ZElSUVpxYURXS296TjRKMEJzZTd5R2VMemVmYnBOREdxaGQzOEtXSVdLNmFB?=
 =?utf-8?B?OUxSVU5YKzdvZ0JoVmFLeTNrOEpVSHpiRHBSYTFvY25PTThMOUlJa1hJaWZX?=
 =?utf-8?B?bG1Xc0pUTm56V0VsNTdKVWRUVFZSQTlUQWJaK2pncUZwMS8reXpINENYOEZk?=
 =?utf-8?B?SENUdEJja3lNbG1PZE9GdENlNStnOXhvaStuQlpLOXpEYkJlL3g0anB3NTlx?=
 =?utf-8?B?T0NONko0K2c5U1BjdmtzY0Rad3A5T1hGNWMwTG5DV3RtbkNiNnFsVEVXbEp4?=
 =?utf-8?B?d1RXbTlVSVcwUzUwU1VHSEFrUTZ5bFh3SlJwSWVuSGlOQUNpZFN5ZjZyTVdk?=
 =?utf-8?B?NE5hK2d4WFc4UStRRElucjNNbTlOcllBZ0tYYXZsaVlldUR2NGhML1hqSGtX?=
 =?utf-8?B?ME9XcjJVb2Nod3czWHpzeGZXODk2TWdXNDg4L3lDWEhIYTJzS1Q5UUtqck9C?=
 =?utf-8?B?emVha202K0dxRE9FV3ljV3VjTktSMVlrb0tCV09BeXI5d2pvajN1VXcxdUN3?=
 =?utf-8?B?Nm5QRW91b1dVTk1ZRSswcm1haWh1Q2xTMHFobnBMWUN0QnlLWFpTSi9kcGJn?=
 =?utf-8?B?djlpZXk3V1Y4NEdKTU1ocHdKK1I2bGRoaVpRRnIra0xaaVBGdFFHcS9QWmkr?=
 =?utf-8?B?WUhOanRGNUxqSzY1blRFdmVRbkFSUUxKeEpWcThyQmJEenh6VzA1dzZIc0Vw?=
 =?utf-8?B?d0t3ZEtLdWNNVk1USDYxcjBzamkxMW8xY2Q0RnltN3RDR3dCS2lSMkt0UnNh?=
 =?utf-8?B?VVdHVzYvM1VjL3BCcGJGcnhBTHEzL1JxVksxNmVjbStxNE00U3FmTXFXaXJL?=
 =?utf-8?B?QlR0MXgrVm4rdDUyOExQT2R3SmVuS0JHb3JDSUM0eWFqbGpnYlNCS1RjRXZp?=
 =?utf-8?B?QmJ3VlZHWGFZUmlHMDNiRXBPOE9nOFZrUll3eDNLbmdGUVdoSzFwSmUzSUQv?=
 =?utf-8?B?RHdEMkZjTkZDOEVhSVI1Y1lqYkQ3R1RQSWVTRk5XQTAwZnp5OFpxWEFBWUR6?=
 =?utf-8?B?Ung4c1hhSzlLeWQyZzNtUGxoNnJQamxUYmVqRFVwYTZXN1pvL1Z4aHBkMUVk?=
 =?utf-8?B?UlFHdjRCcjRuNGdXU0Z4U085VDZ1OWZpcDhqVnlCZHpjY01NTzNSWFJ1THZW?=
 =?utf-8?B?aXBYajcxbDFrQWIwRkVsUjQ4OWU1V0VBbE1tRDBnbUtyMzRsMXE5V3ZzNjM4?=
 =?utf-8?B?UVh1aElhR293VDMrTUhxakdBMmtUUXpkb1pENVFqTU84OFBaR1R1MWNjYkVh?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f60c6886-6d6a-4541-d686-08de114b3d95
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7300.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 09:13:19.0938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tPb1SHZ0ZPenpfDs+oW77fYNrxqPf0tW+3yAev0BrkkiC5FxAlHA4/CP9JIIfi1r+1yKjVYzZZtpSt09GgGNig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8393
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


On 15-10-2025 09:37, Suraj Kandpal wrote:
> Add a wrapper on cx0 powerdown change sequence for LT Phy usage,
> as the sequence remains unchanged when going from SNPS Phy to
> LT Phy.
>
> Bspec: 74495
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Looks good to me

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>


Thanks and Regards,
Arun R Murthy
--------------------

> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c |  6 +++---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 13 +++++++++++++
>   3 files changed, 18 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index eab49c08d7ff..8455d0725968 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2806,8 +2806,8 @@ static u32 intel_cx0_get_powerdown_state(u8 lane_mask, u8 state)
>   	return val;
>   }
>   
> -static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
> -						u8 lane_mask, u8 state)
> +void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
> +					 u8 lane_mask, u8 state)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum port port = encoder->port;
> @@ -2837,7 +2837,7 @@ static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>   	/* Update Timeout Value */
>   	if (intel_de_wait_custom(display, buf_ctl2_reg,
>   				 intel_cx0_get_powerdown_update(lane_mask), 0,
> -				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
> +				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
>   		drm_warn(display->drm,
>   			 "PHY %c failed to bring out of Lane reset after %dus.\n",
>   			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index b111a893b428..8c9b97f0922d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -41,6 +41,8 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>   				   const struct intel_cx0pll_state *b);
>   void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>   				     const struct intel_crtc_state *crtc_state);
> +void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
> +					 u8 lane_mask, u8 state);
>   int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>   void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>   bool intel_cx0_is_hdmi_frl(u32 clock);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 8c6f60d9e0ac..263e9780b55c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -42,6 +42,13 @@ intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
>   	intel_cx0_setup_powerdown(encoder);
>   }
>   
> +static void
> +intel_lt_phy_powerdown_change_sequence(struct intel_encoder *encoder,
> +				       u8 lane_mask, u8 state)
> +{
> +	intel_cx0_powerdown_change_sequence(encoder, lane_mask, state);
> +}
> +
>   static void
>   intel_lt_phy_lane_reset(struct intel_encoder *encoder,
>   			u8 lane_count)
> @@ -69,6 +76,8 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
>   		     XE3PLPDP_PHY_MODE_MASK, XE3PLPDP_PHY_MODE_DP);
>   
>   	intel_lt_phy_setup_powerdown(encoder, lane_count);
> +	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
> +					       XELPDP_P2_STATE_RESET);
>   
>   	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
>   		     XE3PLPD_MACCLK_RESET_0, 0);
> @@ -144,6 +153,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   {
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>   	bool lane_reversal = dig_port->lane_reversal;
> +	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
>   
>   	/* 1. Enable MacCLK at default 162 MHz frequency. */
>   	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> @@ -152,6 +162,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
>   
>   	/* 3. Change owned PHY lanes power to Ready state. */
> +	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
> +					       XELPDP_P2_STATE_READY);
> +
>   	/*
>   	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
>   	 * encoded rate and encoded mode.
