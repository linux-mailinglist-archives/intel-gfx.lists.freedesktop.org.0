Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F5FC542B8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 20:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CCC10E1D6;
	Wed, 12 Nov 2025 19:37:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YloUlT3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BE310E1D2;
 Wed, 12 Nov 2025 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762976242; x=1794512242;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3Cf0KOlh8VBcxnAKgOZGUJt8wBoHVdL01i+MZl+CsQg=;
 b=YloUlT3DhFrgFOGw6AJP+g8wEgrNMCqtCJKcRq62v1+5V/OctQ4uo+gi
 G9WNRfQiCL2EQ3syhz7Ir89EW3CGKpQB6O+J06OwRgnlMmMkJONnHUlr/
 jg6l5K9UlMtiPMcI73GsnerziniB4hJqliCUQCqiXdlCgOtwDmzeV6ZxC
 wgxZfd9YXD1xktq9I2lzF0/CqPnQl/895sZCuKGuF1DVPjGZ96iNZfP+j
 3FZ2si9od89SLi36NQmWljV1K8lu35nihKtRDlYhVrLGo7B00EXXcdaos
 i9xXZSz8coTtYhPJDp4plc+C2OSP2CCdkZ3CKPd9mSCX1uvB/TcwF/mvs A==;
X-CSE-ConnectionGUID: vB2O3bB9QDW1ZGZFHQ7n3Q==
X-CSE-MsgGUID: ubK+dI5lS0miKew8TVskxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64954995"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="64954995"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 11:37:22 -0800
X-CSE-ConnectionGUID: Jo8HQJQrRtijlnNYiHXMNg==
X-CSE-MsgGUID: jgyfwAKyS1yryBCSnodV/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="189152536"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 11:37:22 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 11:37:21 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 11:37:21 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 11:37:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FCUqVKnsQBJYecGFXY5XBogbK6hWve9vgH20eoe10M8GXXn/eslQHWhvNpDmuE5XRfh3jAIJR7g5gesW0yK7T5T/rZN47WO0NPcCGczfa7/Mv4Gkx0LKzr2zcOI2U3a2xgsPFBjtaUvkbkjMjgFAcuO3CeIyaGs8qI/qg8LWyCTgF0gLaJ9xSQsV1izG9nbMtir2aQ4QYAiM9eF0ajxOw75xSAbiwxdTQ3gdnoO8qfZh69z/7ApgLCepSqNxjkVau4nhRmRcw4JpAvwOP1Zj6+b/R3CZTPjmp5D4yYBs6z6kW+XHjVfsjLTOq5WUA+UZ5zYSSSVh7MLCodk/uMGySQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGQLdo2V9xGIsCdWLnOyIHsOVhfMkz0HC74sjhoZz2Y=;
 b=kCZ3T2SvKzJ7Gju/+ndfzWWjs5j/36B1XjBzQ8/Sgv8m7VveWx6ZEqUSRUTwf41bNinkE7e+EzRus6qwe7ebBVSEEAlO70PvtL0oc9CXctNKrwc/5HiXPnF9slB9Ob/wFqBTP4UG+kRCSQbpwMl8pzS59DZwbpO5Cerp5BbTlgUK/V47n0oof9HDh7la2TBlWTZTXLiTRNyoeeCbuW5IBhA32J3lcFni24gWmGlKKv6PR86ljzYX+fm/DjvHDhUnToNk7D/n4HOzJTuNo9TS1j3XTQS7Nw210ntPT/M1v8WQeJEb1jE0impbWGw9n+F0Rae+oAznp/7Hf2/sfL5HQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA1PR11MB8544.namprd11.prod.outlook.com (2603:10b6:806:3a3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 19:37:19 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 19:37:19 +0000
Date: Wed, 12 Nov 2025 14:37:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe: remove stale runtime_pm member
Message-ID: <aRTh7OPupcEh1qW2@intel.com>
References: <20251112185547.172113-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251112185547.172113-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0377.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::22) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA1PR11MB8544:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bd3a5a8-afcf-41da-1e55-08de2222e4ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SU5G1ezfmVGd9XEqVhphjwrrGQAB0fARkhWRp5Qwb65TLouCEQRnGO5dW2v4?=
 =?us-ascii?Q?xjte7mhcP6KG5+U5jDfo8KglDauZ6rxddos3Jcb0IAjNcnEw12lONDW6tXV+?=
 =?us-ascii?Q?o6O6kqGPYy4dpqmth9G7rFr0PHdlmPLsJ+sa7+PowVlpxG8OLrBEnbPpPu+h?=
 =?us-ascii?Q?/xAS6U+z22Ybac7reM0Nh+GJpShHSuGM3kIWe/Ca2RH7nPL0/cEyQv7T2oaO?=
 =?us-ascii?Q?YY0ZJaK88MNzQEvx24ncWFI/wJGYGjtuZq9kRj5BHkssMsrEv+QR1XhMINy7?=
 =?us-ascii?Q?zFgD2jMzb+hb0Lghh102+jSVFiGwU7KSkE4wrFlFCEiYs7tpslZWfGdfqGfh?=
 =?us-ascii?Q?Ecoj55KKWrUHPfrTGJ/aH6V+NSaysKzLftc5L4Bs2qSAkEztPwr7YDvYhXdu?=
 =?us-ascii?Q?qlCwZAF2IVw4r0Hy+oJj99rxykYNP6BhNuymsWlm5aRD3pVm9Ke61rh0WlSm?=
 =?us-ascii?Q?3NZ9deUegfJUp61ZqRFdeo3vh9uhQZb8c5TlaWNO/bdUJqDTqnAJATwKJ6Fv?=
 =?us-ascii?Q?Vllv7r8Rvl33hYffvhdR2/UTeg6esLMrq4s0kFcflMTfqjznU4jBLAp14t1y?=
 =?us-ascii?Q?YrPZVXeoItVEeK6o8q5bYEevEAhkfIQe9B8KDNk5ENdea9ei/P/Lw2GRGGKX?=
 =?us-ascii?Q?AUuTXWS5ofdKWF0wPYfciWIr3RzQCs+LLseBqgR9mepneD1+uO1nJuaskGsi?=
 =?us-ascii?Q?0xtRyLo4vSnWIodpdLONobU2Ybmu0WzuGoVh6lFqLdiCp/YguLSUEaVFZcwX?=
 =?us-ascii?Q?U62D2PlIl9cnSdVDD1QXW8iil2go2UO47MGzEcOfIiYFvmfCC30Hl4jP8n0K?=
 =?us-ascii?Q?2ZOoU8GUCOkQOcYMV40IKxMwIiXcnBELeGuIY7SjkcbQ+aKzFwaUs+4IR+/1?=
 =?us-ascii?Q?9XpXnX3K/j8v3DNkhpGO5du817PnnZNSBLmW54iOk/pl6QVYi0HNUpyNDgFY?=
 =?us-ascii?Q?87g8KSXqZikg3RPPzNtHfe5JlR+qKQVXBeqjsu1u4zvhZnhrz/mUEH31gLly?=
 =?us-ascii?Q?v6bLYMGpfB6h8sq1axP/kWN0u+OfgO/O+aT+cankMFRlVp/pW/v0QB4s4LYf?=
 =?us-ascii?Q?5ASgbnZ0wSFLRo2Uhfus0yU+7twfQsV8Qj+nBBEgdhCErXflzy3qkQihv4ri?=
 =?us-ascii?Q?Mcl5mujps4imYuWvr68rFTYsdm1WJSR1Ik5lUOVGDVwXOtCRMUmzuOifvqXK?=
 =?us-ascii?Q?caDPK0PwiZnD6pgI8ABbRAlM/dcvO7Im4NVqtsOEhRasXKAKYZp6e/stbLnm?=
 =?us-ascii?Q?+clGnKQW+q1CHq2beX9hW3fmcB78pUT2pZyFGyV+OPWoPASa8O5vVxuGhE0D?=
 =?us-ascii?Q?I+1Rhw4PnPMzJC9yGa8Y6hy6YfUDLfYt2BbURRxlBg5vYfc+av/W0j7UFk1N?=
 =?us-ascii?Q?x8T5Vl85IoHn20hLIUZOIp9cQZVTe4MFm8MRckrrNYAkAfHBFaOTk7QdRBEe?=
 =?us-ascii?Q?oKZe7m64ZWXDylF99NUI0MaJnNPjqLQt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HwgqnPEMvdF/o1MjqGVy8/HAA5hippdUPhdEWBP2H7RADliTL9tJOierVms2?=
 =?us-ascii?Q?F78SSJvmS0KKIHQUvZFOC2MpavJ6k4utbqJQAjcFpAGvxHaxy3tfgRdyFLYs?=
 =?us-ascii?Q?v6f1oXzRXUPq4cGyFjetf5SL6Va+OvqkGTqZydR9ftxdy9xfoi3IHZ0ERoxE?=
 =?us-ascii?Q?v9bSA4RrmAo0d7OVHpeDqTFsWT9RBtSEsC5xmZGDyQrFRtV/BJC5d1Q6gIjb?=
 =?us-ascii?Q?uUoN2VrdPXxg6jKS1YCBeZNOUxW8LwGhB+Ex4kAx0nzx/DHciM6phavNv6+s?=
 =?us-ascii?Q?LvS7OZTZ3CtHOtVHOrgeU1YdeIvNrxy+MbiJpOLKzxpwLTvljUCObCIm4nts?=
 =?us-ascii?Q?LAtG6VjGdBNbtzCxS47vWZm3fxTp8VJ/oRkx4Gmu4YGiSV9RSWJgQXlT/rem?=
 =?us-ascii?Q?m5ruaqXa9u3YKp7U2+fHqlp2J4tAychx6mRrDU0b+O3UYfEJt4rmsGmP6uGk?=
 =?us-ascii?Q?9v6+bD15fMwYEzqkkfavBmc4cA+S1wnGPizfkS27WWj3cxo1pbW2blCFkkoz?=
 =?us-ascii?Q?CcSSoyiodCaD5nOeqmAQsE67TAPgGlk0WsKpzputu2iTl2nK0lK7jssD7G1t?=
 =?us-ascii?Q?50LT7Xgt/tq37vNLtG5sLjB9DKngwGW6YY+D9H5wqvK4G/EaSkM1j6ehMNZr?=
 =?us-ascii?Q?gOJFC71T+GlHRS9TcyssFsN0cV0ehw1sk1LPSkaRidbDj5Ao7lcthlcnMDbT?=
 =?us-ascii?Q?LjO57OAJgVJaMO/YDClag+DftpddHwJtGQlxdl/EWpjFFEBYknKf/ld9P7IT?=
 =?us-ascii?Q?ZISnvhyiLEMOtw6y359jm6iE0HXQYADCWHkJhLcFwYanKtjIYN2uu6qV5PWF?=
 =?us-ascii?Q?a9A3zQM6pykTp5AnU0jEvCqBpCqJsdcFXj4aAucoGuTmLjNAKmTfNQOOls76?=
 =?us-ascii?Q?685UBnNYSVQPHT/AuYBF7zuOk5rFeESF5Wn6udzlWQF7KceNZmYgi/ysp22Q?=
 =?us-ascii?Q?ufiRpODV33LUmwO83ATdhWupj0E6/y0/1p2/J4wo7vfg1/rppfijHfvKr7j3?=
 =?us-ascii?Q?MKl324Z3NytkV3aeJVcPfF1cAT1lQVSOANldLdL+PSc7NuhCWt73UrosrT3S?=
 =?us-ascii?Q?xCYkl7mOzonbyOM93IFMUNiT9S+epgPrI8mbznzD61RyMx1BJfUfplACVQFc?=
 =?us-ascii?Q?sJhpyYXmaRkOJ2bS7rhBfwKPV+DlWys1JMOS8PHwXzRSHeQvl0btyuoPHDc0?=
 =?us-ascii?Q?kjemPkvx/gXvpslwHJ84BgbqsJMwhxVA547j2lZ+EFtctRo7rdPYdCjNDM7u?=
 =?us-ascii?Q?/YECeP5bPG5YZmTyzHdf4+dnSnsbgNLSpknp+tymeZdYdbGQwvW1XeIbMegc?=
 =?us-ascii?Q?huYGP6Uw+mMryBGOZPneLn1hRT7zPIhJvoCbu7JCYg7vgwljoVr0jU1UrC2z?=
 =?us-ascii?Q?BAa7Md5ykhkAMRXqKbhgyi2bEBRpzEqilbMgTbGHQlZi9I0rPKD0e9d5E1KM?=
 =?us-ascii?Q?x0b/hjsRngcd40a2z2JdteqklDCtf0MyHanB5TBs1OA7R6PtpcgB6bbXOulX?=
 =?us-ascii?Q?J8ecya2WLq/3jF2IPC17UmjPCdLWWvuW2zkvx80wO9tobHP34QDl+t3G5lF+?=
 =?us-ascii?Q?KKabJZFzwvYYnQuWT08C+3LRr03Zz1T//qFwfGZE5u9uEJO6bzCTkuUT1hQY?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bd3a5a8-afcf-41da-1e55-08de2222e4ac
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 19:37:19.6278 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JCD48TIn7eYfpWhG2yxFzAaZemFb2a2Av4RgylSTovjSBoTOUJcjqE9eKe+rOG+orJBA9JgoLnk17m5fjuFTGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8544
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

On Wed, Nov 12, 2025 at 08:55:47PM +0200, Jani Nikula wrote:
> This has become unused and unnecessary. Remove.

\o/

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
(trusting more your compiler than my eyes)

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_device_types.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 7baf15f51575..0b2fa7c56d38 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -656,9 +656,6 @@ struct xe_device {
>  	 */
>  	u32 edram_size_mb;
>  
> -	/* To shut up runtime pm macros.. */
> -	struct xe_runtime_pm {} runtime_pm;
> -
>  	struct intel_uncore {
>  		spinlock_t lock;
>  	} uncore;
> -- 
> 2.47.3
> 
