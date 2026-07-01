Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sXi9M9hARWrF9QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:31:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310226EFCFC
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:31:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Y5mCZi3Y;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AED10F043;
	Wed,  1 Jul 2026 16:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B4610F043;
 Wed,  1 Jul 2026 16:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782923477; x=1814459477;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5bORAicPpSDNQc8NvVIi2HpBL/slLozSlxSp1JZPSdQ=;
 b=Y5mCZi3YMZMUAcnsJt/Qkm/6Iarcuhmoxs3Rvs3N/gx2e0sdUmdvuhRh
 2uIT4Zal12jProG8KakZMeGa7rQ3UV6Yll42LIciBJfO0T7RPErJCu30f
 H68nwJF/POEEnpOzAhXgRdaBIllw0WGP+L1CuH37umM6iJhF5otioyQJc
 pWpIAIS0cilSmCM08Fj4HPhtMU69M1Zh+MGow/O+8ejwlOZ78euwKGvtd
 +ZIIzk/zuF+45UV+hncC21gDm+Dcdi/sk+BUnOrB/EnpDBPbQ5z8QSU3K
 URVEDI/kLcrhzDuj9OhfqFkLAMcLgYA9gcAAlNjMhrjYcPYuu8NlqQgxQ g==;
X-CSE-ConnectionGUID: 5ROck6c5TuGVWhuM4xvJNw==
X-CSE-MsgGUID: vsAzcAgBQS+9nVTbhSm+VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94815831"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94815831"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:31:17 -0700
X-CSE-ConnectionGUID: K0UCjmPeTvuNSRd+JPCxRQ==
X-CSE-MsgGUID: lV3OjExJQYemtD7zIzwvzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="253263856"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:31:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:31:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 09:31:16 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:31:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pepyrI0rsORqEoiE8RNLYLWqySLxQwZhOw0W7ad7YHdldkfhxbueJfJSDYXtDuP0nWp+jhnJLsul/WjVfVdS6vc56r/3NqS9/trTI0neryrMHwSlw7dqUYpdxgcnHrWEJsok6Fz/pqWMoKUKOAb6kMC+5keuea8Eu1of/aHVtCwCSyxRfKh6rEJOVDTVM+6eawU/zTVDmKO58U8q8qwpq4j10lA0rFVzcLmJE/h0/AIG4bCJQvZLcHgP8lGM4fyX69n/Qg579Oe4fdMle22SeoQWFlDJDlqg3+T+B0ofNtzw5y7r9PGRMvzqczTFxXrnoIeTL4YaWa20giUz3d5qWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSbmXb8mXbrbHRfmP+4oUTt4h0oL+ZSKRwIkpHaFERY=;
 b=nm6IUjQAWj+fkOGUyW+xqanuZcfEf5qYQNLHwMmbZqcK1KXqL8X3QJ/tkQ3ubu1NgcA3q9qC+CuYj/s4EF50x6p0qru8d9WmLyZ2alBhzYTe8GnoFfev+6r2J//l8dF0K5TfLL+ZVrD1vriMMvSPgyLwh/obhIwj5eqaCUdPyb5yIJaVShchU5K8m62yDO4qcc+VvWAXM1jm2XH9WNJF2vHV/m4xwN1Z8LRCHaw83QV/D1xx3+YGuexXMsCCGgd67QK98npgPmHC/wrFu8b0zOrWjM3ExEIIIbtkKN3k9NUOWqXK78a1EnXvOOBm6IzwCL89jduzhCpL3rz/vLeKEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by CH2PR11MB8865.namprd11.prod.outlook.com (2603:10b6:610:282::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 16:31:14 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 16:31:12 +0000
Message-ID: <c39409e2-4983-48f3-8a4b-3729dd973762@intel.com>
Date: Wed, 1 Jul 2026 22:01:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] drm/i915/cursor: Allow joiner cursor fast path update
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-7-nemesa.garg@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260608062629.820477-7-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0207.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::15) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|CH2PR11MB8865:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fca43e5-995d-4b1d-c6b5-08ded78e29b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|3023799007|5023799004|11063799006|56012099006|4143699003|6133799003;
X-Microsoft-Antispam-Message-Info: PcuGUB8z5xOA3O3jKhdGwuOb3lo6P9QPLL+bAlgX3gRiq60qR/PL2JQoR/Ib6iM/kP4H0LtE6yWt4D1eC+FJstPEYz01aCBEZhzUEtNBOBZ4f14ON7iyZgHyHvvV2D90DWA4SJAI47teW2XYWFYe4ZWwshHCq9TGTszZaAub7AMf/09YXXenQejS8ZtEwtcX3YXc0SNf7DCgfq7iMuwBY0lsUB3wiWS1TtEf6PiAsb3i/IaBCNUjAE/puLIygcZjtylIETnOf/30BwbSwVQ0WCa0Z7LJ9SZuSGdNDISmxALszwla0ODl4S2ZZFrGXU8+UERJrn4OyMuW6KHW2takpO4rDzGwL401u+D0osE3cRlPE4C9JhP7j+O3BPVJWsKfKsYD4bDrWLppw0zpjUVI2LDhsdVMf9r/R/rXJkaxDRaYDB7r9t85a3/3ePr1irjNJFyvNDsXhw6bnkFgblnsQc2Uo/N7W+/fhUVhxxvXUyWdknusHPSiZUZB8Q4wYcg6mlIrDfV+m4/3R29iJA6dXxDSfhUfE4zelYwFS8uO8eJnNwt05ezMpy8TUqTheFxuaHQwgiF8b6f1VWNLPtP2GQo9R9fF0IalH5B3L/Utr/xDCQEbxZuwTYOrI/iVisMRoy9E9hkRELgp6miKd5mgng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(3023799007)(5023799004)(11063799006)(56012099006)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1gvQTFyak9EdWtrTHBHTmg5OHRTaFhaRU9rckFIMmhHMldGVkQ5aEpxZUFH?=
 =?utf-8?B?QUcvbkM3WlVpZmdtVElhNzNkYkV4YWNDUFNITjVlb3NQWHRXeEp3M3NyTTRD?=
 =?utf-8?B?bzFtWEJFSXp2UnJrckRWL1JHb0RZZS9FdjBwUm12dXJoREJSdUpvbHB2d0J6?=
 =?utf-8?B?cDVmRkZxa2w2MWhsbS9sQTJDTGlrNE80V1V3emhFK010aGUrdXMyWlZBWWY0?=
 =?utf-8?B?UlB3U1F4SWlVU0ZmSjJxLytlV05GWnBBUWhTZTRDOHhOdW5zYlhIYW9zMDcv?=
 =?utf-8?B?dkRRcWhadVByRUFFSktaNmhXc0RWVEM3SlZzZTl0WTZHdmY3d2V1RUl5a0Zm?=
 =?utf-8?B?azk0L05XYjlSTnBJNC8xdFJKdlJnSTkvZ291WXE1djFBc2ZGOFVRQlpUSUcx?=
 =?utf-8?B?SXhXMTBTQ0ZDeUxYMWNmOXZKakw1dWN3bU0zUjNYd2xmMHo2UXBsN2lla0k2?=
 =?utf-8?B?aWI2Um90T0ZtV0VVQkFDM3RCb0Y2WWNpVmthNGU1STBHVC8xd2hUVHJXMHcw?=
 =?utf-8?B?V1RBL0VGU2sydnl2cXM5STlkK3Y1c1VKTXpReldKS0ppV1FMaEI5T08xUE9P?=
 =?utf-8?B?bEdxYk5XeFMrOXgyaEp5dTRKLzVGdlBITXVYMTd3Nys2YVllZUJrS2hMSjY3?=
 =?utf-8?B?UVhGNTI4SzNBK0Z1WWtVMkVFR2tESDAyNmVva0lQN0RESTEzaWtCV0lqNGl0?=
 =?utf-8?B?VXhqM2IzVEozbWdJZExoVHNOK3E0YmpvMVl5OUlKUGIva0JGcFQ5ZjYrNE44?=
 =?utf-8?B?ZXBZS3dKWjJTc1YxOUFrTU5pUFpzam5kRThJSHBISWVJZ3ZWT1d2Zkx6YTlx?=
 =?utf-8?B?VG13TXVqUHF0eGd0RTM4WXRabnNTdGpSb1RFMVRMNlFldTdUOFJTbjdiLzdt?=
 =?utf-8?B?Y2JiTjBxSnlNRHdhOUV1QUQxM2Q2Z2FoaHZMQ0g3N2RDdmF1aTlQc1JUdnpl?=
 =?utf-8?B?WUc2c3ozVzdkV1J5L1NCZFhEUEFaemplalJnOEFkL0FvWjAxY3dpOGw4T1lE?=
 =?utf-8?B?dmtuMWZyYm1ZK0tncFFaU1hzd1pQTWZYck1rbzZrbnBJeVA4TmVFaUU5a0ZT?=
 =?utf-8?B?S3Qwa1NiVUFucFNSWEpLcks5dGFxbVhXQjN5UER3d3VWQnNSVmdlejFLelQ5?=
 =?utf-8?B?WFplZkU5dmRSOEVXQ2ZGeFI5WFdZNldyNkt5TUtIL08yc0pNd0RYMHM5OVk2?=
 =?utf-8?B?a3J5Q2c4VzYwTmZhRjVUSDlqRnp0aTNkbHh3NGNZUjBYTDVoUjgvVHBwTTQw?=
 =?utf-8?B?OGpwZ1RwMEdTNlBZSThzWUZSYmhMb1d1bUxhb3o2Z2NwM1J3Vjg2UlRCR1Nx?=
 =?utf-8?B?UzFCZDd0eC9oQms3M2Z5MWxxUGpna2dFdWZYWFNiRCtQTGZmUFdyRjcxRXRm?=
 =?utf-8?B?RUtScXl5QUdYWDg0SWxHSWlRT0pkN28rMDlkTlh6UXBOSmdIOXRCRFUySkVW?=
 =?utf-8?B?Q01mdGE5LzYwZTkzYzFHWjZvMjdTR29mTGIzaFhISDhKOVl2VjVnbVYrQ3A4?=
 =?utf-8?B?dlo1akYyeXJWeFdxYVFrc3l3bXFraktlSmNjYit3bEQramw4V09Sekt2dkhG?=
 =?utf-8?B?T29EUHZ2bTF5NEF2cjM2NENzN3pBTGx3R1NmQVRSNjFpUCtDUzVvNkJGUWgz?=
 =?utf-8?B?Vy96c1pDc0ZZZnFIeHVKRGFlajVaUEJsK3RISDFVZGorOGlBdGgrMWJuVFpj?=
 =?utf-8?B?YnFabzAzQllRY2xPaGt3ZlR3TGJ0QmRUWEJKazFCYnFsbkNXZ3M4OUhuU1pi?=
 =?utf-8?B?UERyOTFJZkJtMWdObFRFeEpHL05hcDYzYkVaLzUyTDUwSTZ3VHBoRTNKQXJj?=
 =?utf-8?B?RVplVEhYR1Q3a0RrYXZNL2tOV3BsRGxEOWJ3MU9MeFFueEEwSDgva1hRU3R3?=
 =?utf-8?B?RHN1bWhJWDVoc0xpV3VnT2Q2RUJZOU9OamxsMlh4d0lPdFYxTWNKMndSRkZK?=
 =?utf-8?B?NW93eDVETjhjeW1qVTV6ck41b2kyejNqMGVjUTk1ZXRmOGk0NGFSbzVWckda?=
 =?utf-8?B?YU5zcjNjNFZWNnFVRUJjNkYvNmhSamJNdmpFZkVBL1ZmODZzZzRpZWFEN2o2?=
 =?utf-8?B?ZndSZnFwcmVVOElqVG4yVkRVWDNhbkVVQzhKS0VsY24rRVVEUGF4OWFIOE1a?=
 =?utf-8?B?RGtvL1BaR0lPRWUwbmlXemNDdzNiTnlLemd0UkNqTUs1REIwaVkwQUpqeHBP?=
 =?utf-8?B?OGliZ2pNSzBqSWt3ZVVBQjBFT3h5bE9jNmRMUnlQWWFEZGpZYUpxS3QrRCtQ?=
 =?utf-8?B?TjdvcW53dkczY0FCSzNma0hIeURNQ1dQbGhBMDF0eTNZdG9NdjkyYzE2WVJD?=
 =?utf-8?B?RkttZjU1bkE4MkxrcEFCYWhaUGZRcTE4TjBZVTh3cnNpM2V4TW9rU3gyN0Fm?=
 =?utf-8?Q?9hx4J7bq12g+vY/k=3D?=
X-Exchange-RoutingPolicyChecked: Ua3+SbRUJtxM+0av5coJVXgcb27Y+/tCX2kHmuC4DwtTSrlUV3HmKxjiy/JBjKazNNxnKYZV9tb+Ux3+xPepB09Y+pdwY/MDnmtAdH6RCW5PEiCQSMRCl3OptC1F/FJOHa1x2nolV1K3hfiUAwWS5eJ+TtRnRaA7yS2zM+0DPHq32F3QUUbKWqq03PKWMEiQzMPip/PGelfyDEMQH094q97ywyKl8kjmA+gktTsFwsDPc0mIrGIow7Xj8wJ8Vc5Y03NaFvWPtwofBkqc5YrTvGyPrr3oPYjZ2uXiw0L/fxJHLTpsj3FKgrCpIZeMhliEztAdHaA41KhY6kSOIanNVA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fca43e5-995d-4b1d-c6b5-08ded78e29b5
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 16:31:12.2434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eZtVqzAtyCm378W/OM/FSc5tXnqqQYC4N3SLBSVE3lbMOMH4pXKoLHE1PjM9+fHj7owUC6dz1sw+oBGzhDbUhHGiRh/V4qagZ28UzFyMkVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8865
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
X-Rspamd-Queue-Id: 310226EFCFC



On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> The legacy cursor path forced all joiner updates to the
> slow path by checking joiner_pipes.
> Drop the condition so that joiner cursor updates can use
> the fast path.
> 
> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 10 +++-------
>   1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index cb1fcae8a445..b9acdb2d8ea7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -909,13 +909,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	 * PSR2 selective fetch also requires the slow path as
>   	 * PSR2 plane and transcoder registers can only be updated during
>   	 * vblank.
> -	 *
> -	 * FIXME joiner fastpath would be good
>   	 */
>   	if (!crtc_state->hw.active ||
>   	    intel_crtc_needs_modeset(crtc_state) ||
> -	    intel_crtc_needs_fastset(crtc_state) ||
> -	    crtc_state->joiner_pipes)
> +	    intel_crtc_needs_fastset(crtc_state))
>   		goto slow;
>   
>   	/*
> @@ -1113,14 +1110,13 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	 */
>   	for (int i = 0; i < num_pipes; i++) {
>   		struct intel_plane_state *old_pipe = old_pipe_states[i];
> -		struct intel_crtc *owner_crtc = pipe_crtcs[i];
>   
>   		if (old_pipe->ggtt_vma != new_pipe_states[i]->ggtt_vma) {
>   			drm_vblank_work_init(&old_pipe->unpin_work,
> -					     &owner_crtc->base,
> +					     &crtc->base,
>   					     intel_cursor_unpin_work);
>   			drm_vblank_work_schedule(&old_pipe->unpin_work,
> -						 drm_crtc_accurate_vblank_count(&owner_crtc->base) + 1,
> +						 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
>   						 false);

As mentioned before, this change unrelated to this patch.

Are you planning to some IGT tests? kms_cursor_legacy exercises the 
legacy cursor ioctl, but AFAIK nothing forces it onto a bigjoiner/
ultrajoiner output (perhaps force_joiner debug fs can be used).

One subtest could be moving the cursor across the pipe seam(s) while 
checking CRC per pipe (might need some extra work to expose the joined 
pipe's CRC).

Also, please check the CI run status for the series.

==
Chaitanya

>   			old_pipe_states[i] = NULL;
>   		} else {

