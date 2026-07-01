Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pOObDilBRWrk9QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:32:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D3F6EFD40
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:32:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LGikSgLN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA3410F059;
	Wed,  1 Jul 2026 16:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0CC310F059;
 Wed,  1 Jul 2026 16:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782923559; x=1814459559;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZIA5ZXEbBnSjySIMa3Gw6cZp1/cW2YZAXJ2zokhyxbk=;
 b=LGikSgLNDuyLA1KtTqKn219+K46Oe3T3fr8Bu7S9Wc0zGhG2T8fb+ETA
 +s84lDcpvSTzvHRxa3rmGHS2G+tsz63OgeLBGwNwk/DjdlsMLr7wgTTSn
 3xH88CODidzjOdgMUDyvUREYw25L4R/MPJ+EMiUVJE/ym7a8+A28NZlEl
 Qz9qFYvpNDcXOpQlGV1NC2k8GjxCKbG034qqpnaUMGE0zfQpBpMVbSNVd
 TagyBcM3EJjUF06D0DXoO+WSKg1Y0frUItz5uKBnTba9cukT0y9p5dfFh
 k2mzcoaFYx6Ro+1thoIFOu6ztK9Dx6Mh6FAqQQSURLeuvD5s37t/NRQ6g A==;
X-CSE-ConnectionGUID: fiJjZwcSTTSHchba8rKOJQ==
X-CSE-MsgGUID: JCSCGYPGSHONLiPZbzP/Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94816110"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94816110"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:32:37 -0700
X-CSE-ConnectionGUID: Yy5R614yRzi30FLPLXVtPQ==
X-CSE-MsgGUID: 4JU1HRfmTUCAP8jVpJaSkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="253264512"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:32:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:32:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 09:32:36 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:32:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qq7O22Ye5Pe+X18XfsfPSylN1U6hxWc1YeSJDqlizysUVROXkQu/GzxiDvjEHUtihrgdAYXpd0yqvPr2U2D1HT0hyclNXVIqoh4SqwKStDj8mngHoq1tT589JSmg3DpxV0TJ7g78hfXubUjDcR0i7b9zFq0fT5AG2cMaaCYZOrGneW0PZVtPlYu18WOG8dL0ExAxo5M/DnjHQKK7vkV/fymrVfixdu13IOMD7qfqjKoIWlxGjMSGq4LgrqxfWl5pEyKxCozibQzoT0TxWC3yOHxt95er2cPtpHNQxRxJwK9hgOTw1EyBLWYXKhMsJwQ+lTFJUlyywuRNRzWIvweN6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ytx2HPhioBX5RsRwe29U9Bb3a2oyDghQvqan7clQdTo=;
 b=Ewa5+4YTyZZFARsj4zCvNYNyBvwaqAI6RiJ4i22tq/dJg5I97KtH7mtOEhoH+KytuAdEb0B1PqiD5tlAkEO7PuH6dux7JAX3z5AP8eFMR2wh8+LJbfblQQmmmJDl6jd7FG+gcazwfkCPNg9+8amNxroBGBkYqxYm+XcyIQEAIXTcNPYHcCL8Jx7JKRbB62gVuDejYWwm++U/Ap4walqCnINB8MBSLrB1FS8FSNJKvA52YCe0SbCgAk96ebrCuBZWUOn1rp76+UfEf+b0hc2+4byypWH+7TLoUrzgsRnLzUnbNjPesPeZol0v4lv2KVZip0y/9qHGSpmxrsDfAvRgGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by PH3PPFD01EAC3BA.namprd11.prod.outlook.com (2603:10b6:518:1::d4f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 16:32:33 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 16:32:30 +0000
Message-ID: <f7acea16-e3f6-4c90-b1e2-92126ea63de0@intel.com>
Date: Wed, 1 Jul 2026 22:02:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] drm/i915/cursor: Program secondary cursor planes
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-6-nemesa.garg@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260608062629.820477-6-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0105.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::7) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|PH3PPFD01EAC3BA:EE_
X-MS-Office365-Filtering-Correlation-Id: cc255815-616f-474d-522c-08ded78e5878
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|22082099003|18002099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: JcLyg6I+hJjbitBzdMzTnashVb1fGwxqh65DdZ56A1cMK+6/YuJOeDg1Ba2IyO9D6vX9Olsw6arqdAVCuve0H8/q7SbfOED1G+nakFd1Hk5N5i3wgx5Pi/QqnHe8F+WmidJpymLhj8BJt+b8jHzAAmjoXT1m1yc6FG0XlG8uplRqpVWJoPLRyuQ4U+dWyz4hVjNx4ZuD+kLs2TRnZIdFIr17tqr+OQZbbeVKDSPWlPsFcI/hy3WdV3hnDa32J/Fx08T2Jh1+qebuecWcwNLgDwXymQ5O4yaajpMFGS1ZFH9y7RopGLl0N7yQHb23mQ7badDx++FX9u3IgIc1eLeSHCpLBanXUVXAmPiZBhRtqqFFCX7WN62T6LlkSIYvPdVUGQVqqM0Eu2HbNZdRU7bQDR4AjnDf5UBi5x3YhFJneEx/65EEKEd4M2qogrWmed8O+wP/EWj+XHumCC5p+WKQx2EHxdO19S75yKnhhFfvHi5aBGIzDkJvDYQ5Q/GM5euCE+hcu3XJ1xjsI3SGE7xbzNa5lv6RFkfDjbLyLcKqT4+M/TBQrgYABQsf15hS5D2N9xinQL2GMaBhaYnlIvlZRhCi5xwlk5KmAB9J340JOaz+9R+fmks17UZekFz0WCOn9bjnostSaHyeAnm1rZDInBxkf4xa7l+GcYtGhgd22lI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amJrSVZjbXJXaU54MEZxNldrWjdXTkpIQlJ2UjJPMUhsWDlkU3JtdmgwbmpR?=
 =?utf-8?B?SGYxOXhzOEZHY2JZajl5M2hZbTFmMWczWjNvSU15Zmdmc0t5b0YxcUdRN0Qw?=
 =?utf-8?B?d3lkUjUvNWNtM2ZtZkpYSWFhVis1ZDc1eDdpV3ZZdlZmNWo3N21mRzlMT1Zw?=
 =?utf-8?B?d25ubE5MU0RPVjkrRHlDSlBlNVhDNVk2d2Zxdi8zdDNKc1hrczF6dy9vWFVj?=
 =?utf-8?B?bVowVHZubzZYRHdlZzhFMGkvcFRZVmxWL2dMTkZ3SWJOSDJmZkErZU9pZy9N?=
 =?utf-8?B?NTdOU0l3aG44eFZIQktNQkdvZGRkbCtIZEthNWUyQVNDMGx5REhRMjZsMGJG?=
 =?utf-8?B?WWU4TVJsa3FOSitxMjFpSGFDS2YzTGZ1Q2VwcmZTamFhTTVYdndJaHZjcHo4?=
 =?utf-8?B?RG8wQkdKN2xDZkFqakNwV2czQWFvK2I5aHNtSzhPWGljTlU1SzRsUzgydENt?=
 =?utf-8?B?Y20wVFRra21iMWdYOXgwNGQ3MmhEenUzUEZKcmlKV0JKSjE1VE5VS1EwMVJ2?=
 =?utf-8?B?VnNldnUrWXNJaGJlRDdYMnlpc1pWQ1g2cFpBYW9jSUVpQ2xlaVkyQnd6SWty?=
 =?utf-8?B?TVlkdnFadzhXZGI3MXp1UHhRY2FVcWZ1YXFNL25wZDU2Z2YyWG1yaHQrM0ta?=
 =?utf-8?B?cmsvV2ZrRFBubVJGb0IwcWJDZDJHY3kvK01nQTczNVFmcEFtdVhIUDNHbk1l?=
 =?utf-8?B?MjlhbDgvQjZFQy9BcEVHUUtmQTBRVkJlZnBrOEs5aTNLZlZCMTVtN2tHWmhz?=
 =?utf-8?B?OU0wd2lVYnJyc1V5WlpxdzBUV3BoaVIxdFQ5c3BKRnRBNklhMTlWemlxOGRE?=
 =?utf-8?B?RHBxUms3ek93Vmdzc1RUUnRDNWt0QXdxWjYrRzEzcFQ3RjRIK29qOURGbTJU?=
 =?utf-8?B?Q1NDY3R5YUFJQkl2aVh6VWI5Y1FPaTZQSFNRNmFJZlBwc2prb3drQ3RaN1JK?=
 =?utf-8?B?Nll4dzJGQ3EvMWN0VnBEMGpSQ3NUZHh6M3JNbU9QTjB0QTJXTkkrMkdQckx3?=
 =?utf-8?B?UzBXcUU1SDJ2eURZOUs1YUt4RE5NZ2pIWk5BTFE5MlltWFNoV1NxcWVKMjkz?=
 =?utf-8?B?OXEvTysxMVBtekN5c2Z3Q2kzQndNS1p4Z29mMC9tZ2swNG4ybEVrSEdCQTZv?=
 =?utf-8?B?Tnl5N3J1MTJNcVkxb0RWZzFGWjlCaGp5M2NmSnlsU29ubjc0enhENHB6STgr?=
 =?utf-8?B?SjJSRXl5RUNvdkJsZW0rVWtvRkxIWmZOZ2JJS2lWaGJudFJkcU1RUVlkZldK?=
 =?utf-8?B?YmZDcm9aSHhhYjF0MXhqckl1MWgxa1UzMjNkL1J5MU5sZWdKaTllSDFRNzNn?=
 =?utf-8?B?WGpRR1VQZE80N21OL1BuVUtIN0hWMlBINW1YdmcvQnBHRHpHOGthd0l0Qm43?=
 =?utf-8?B?alI5d0hCTUh6U2ZTYVg1NWhPZDIwQ0dPSmJDVnhLN1Fub3AwNytVeDN3bnJ1?=
 =?utf-8?B?QVlucFpUcVZoR1FjQnpQZzgxMXRUL0U4L0cwOEVzbkVQc1dGUmRKb1UzRE5Y?=
 =?utf-8?B?ckN3QUxyTlE4YThFQkVnUHVSR3lvaGJTQUJEVzRxMUNoemxkVEVJNU1ZVzNU?=
 =?utf-8?B?UlFjMzBwdDBiZXNsQ0N3dWp6Rm5ldDg1UVFoUFF1eStXcEtuNkEyb0JaaC9E?=
 =?utf-8?B?Yy9FRjZsWGo2R1B0RW42MlBqNk92ZHcyck1CeXBGU2NsNThhaVhSaDQ0WXFv?=
 =?utf-8?B?UTZabWcvYmVobVU0L0w5ckxMV0h1ZTY5U2Q1bTBzTnpBSVplS2hnTlVLMEVz?=
 =?utf-8?B?YnNtMDFLOEN6eVpsVnZQbmhsRTVaREttVGpMRWlURk4yZzJIclM0WEMyWmRR?=
 =?utf-8?B?SktnRVRQUDB4clY3ZHM0bkVDR29DUE5obFdrWmpSN3phS3UyTy9xdVczOGdz?=
 =?utf-8?B?YmZmbDRXS2loNnFBNWFVNjVPNXh3dk1tWU03akFFOUplQ0hsbDF4Mk44TmlD?=
 =?utf-8?B?b3BRRVJzZW5QZzlyOG14K1E0Y1EwaUNDMzJBMmtNSVR6dzhvZTV0U2U1UEQy?=
 =?utf-8?B?VWxkWHZYK1Qxb0RHM09OZDY5TXBaUkJyZU9nanhLY3d4YUVVZnl5R1hJVHBT?=
 =?utf-8?B?MjREVWxaMnJFNVNRL054MjJDVENiZGdhOFp0T3R2cTE2RUZSNnRPMzkrWW5N?=
 =?utf-8?B?ZXR1U0NWQmhFcjVrTTVVMXBmM011S3M4dWF3eUJVNDFGZjF6eDN3eVB5RTRI?=
 =?utf-8?B?STQ0VnJiYTNTcEVQMjYwYkFJUFlqZ2phSDNLYko5VCs1cEdQaFFzYXhHSTZO?=
 =?utf-8?B?bU8vV1l4RFpFSGp2M2ppamJrWFJHc0pwdklQZ0ZIQUpkMUtPamx5MUZLMmpN?=
 =?utf-8?B?ZWdkSGNyQlc3eVlLUUR5K3lRQmJBZ001VCs5MmVLUi90dmhlYkhaR2grTnUv?=
 =?utf-8?Q?RuA6GDmSF0vOFwjE=3D?=
X-Exchange-RoutingPolicyChecked: eALmDd3I8x6SyuTdC7rtPN6/rzhxVAQcdk2pT0HOxGxslS4DprD5nOQPLE4D1RxiWFgvv3dP1MRJ8OLAZ/dDpGBaejorbQWRUABRhCTZOmR0jub506asdZmQWjGaCGxXrctNc2/cjO3PC50pSYxMiwg3x+Kaxw2XV9gLMyWtL6B+nC6DkHty2YxwIXwOiOssSrZqSdslJQyxFOPIhUc8jrelDlGfxLaXhwIrg7E2CxxnTYqs0f8NafoqCI6E51HxzV4fh6qEckuP3os4NItlVlD3ke5pis94nnUqeSP5psKa5C9n+aBdd5/lRFmxb8G+VjKwXZ7c+YR4cJ8Bdb+WyQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: cc255815-616f-474d-522c-08ded78e5878
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 16:32:30.6039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qnvAV9GBSK1yN0cQ1MXOLYE71S1zRVBfQJBQf2DfmADMHKtg8P5R9w9nVMAsMPpJ01JrcP08N/dFORhNp5ySUyWJkWDxy+SW+/zKKQNG5q8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD01EAC3BA
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 94D3F6EFD40



On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> During the vblank-evade, program all joined cursor
> planes using intel_plane_update_noarm()/intel_plane_update_arm()
> or intel_plane_disable_arm() based on plane visibility.
> 
> V2: Check primary and secondary pipe together. [Ville]
> 
> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 19 ++++++++++++++-----
>   1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 147ed6efb174..cb1fcae8a445 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -896,6 +896,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	struct intel_vblank_evade_ctx evade;
>   	struct intel_plane_state *old_pipe_states[4] = {};
>   	struct intel_plane_state *new_pipe_states[4] = {};
> +	struct intel_crtc_state *pipe_crtc_states[4] = {};

Another candidate for the struct.

>   	struct intel_plane *pipe_planes[4] = {};
>   	struct intel_crtc *pipe_crtcs[4] = {};
>   	struct intel_crtc *pipe_crtc;
> @@ -977,6 +978,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   
>   	pipe_planes[num_pipes] = plane;
>   	pipe_crtcs[num_pipes] = crtc;
> +	pipe_crtc_states[num_pipes] = crtc_state;
>   	old_pipe_states[num_pipes] = old_plane_state;
>   	new_pipe_states[num_pipes] = new_plane_state;
>   	num_pipes++;
> @@ -1032,6 +1034,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   
>   		pipe_planes[num_pipes] = pipe_plane;
>   		pipe_crtcs[num_pipes] = pipe_crtc;
> +		pipe_crtc_states[num_pipes] = pipe_crtc_state;
>   		old_pipe_states[num_pipes] = old_pipe_plane_state;
>   		new_pipe_states[num_pipes] = new_pipe_plane_state;
>   		num_pipes++;
> @@ -1087,11 +1090,17 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   		local_irq_disable();
>   	}
>   
> -	if (new_plane_state->uapi.visible) {
> -		intel_plane_update_noarm(NULL, plane, crtc_state, new_plane_state);
> -		intel_plane_update_arm(NULL, plane, crtc_state, new_plane_state);
> -	} else {
> -		intel_plane_disable_arm(NULL, plane, crtc_state);
> +	for (int i = 0; i < num_pipes; i++) {
> +		if (new_pipe_states[i]->uapi.visible) {
> +			intel_plane_update_noarm(NULL, pipe_planes[i],
> +						 pipe_crtc_states[i],
> +						 new_pipe_states[i]);
> +			intel_plane_update_arm(NULL, pipe_planes[i],
> +					       pipe_crtc_states[i],
> +					       new_pipe_states[i]);
> +		} else {
> +			intel_plane_disable_arm(NULL, pipe_planes[i], pipe_crtc_states[i]);
> +		}

All secondaries are now armed inside the single primary vblank-evade. 
The atomic sync path evades every pipe individually but that might be an 
over-kill for cursor updates. I wonder if we can add some debug logs to 
warn us of vblank straddles if any.

==
Chaitanya

>   	}
>   
>   	local_irq_enable();

