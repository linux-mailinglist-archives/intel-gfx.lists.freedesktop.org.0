Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370866EF464
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 14:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0D010E95D;
	Wed, 26 Apr 2023 12:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8964C10E95D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 12:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682512571; x=1714048571;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i3vf/SO87MbBjyaEd4cB8g5rvWwO/GDHDgLEq/D1YB4=;
 b=AJ4LuB+1Vp05mcfbvugWyWfMzSjc4vFusrNVAdgZXAKFcwGHqrHdVBF5
 3C08KygWS19RguoWNzLBmK7aAydu4z+1TTn+dJIercLvGtiddpDZD+eG0
 fdmlidzrQpxVpUBaBH+M8VUirkEsDjnfT9VEH68OEC5LB29rA8x/XpPnh
 e6LHz1zLOdpJ/JsHevewH9w1nLtmJzWZCHZ++wOxnajosuUFPYKH1UcKI
 qY4BP6e0KN+/KE2GhjMsQ87nhIHyEAnnjOFGY0thk3xZRpxlJktveyPMG
 pr2ckjokygx1CSGHY2x+qJ31qyNvBzTicn9dQzAycyPVUfWgvYe7Zrgq4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="349903071"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="349903071"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 05:36:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="671329050"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671329050"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 26 Apr 2023 05:36:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 05:36:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 05:36:10 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 05:36:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vb6nadY3pmfPrbQO+WCUFqkvYW8v+H5ohRFIXUZTOIGgzhTd1wHADNErSH1VL5jvyJvJQiyrb3ZVeLEz0GMz8CBwEmtlx8TweNlYhA4H4q0iCKm+WkxxNf9+I+OmGCm6y5v61TaMfvURGvTRQ2e5AxmLUXcIN/9onW+UQ3jSv8JmBvoAWhVpQ/D+c2fpmoXuZ+5y+sTZ1woRtSzCjhPTbtHfpc8iioiAgnlpTefSUFJLEXU2CY4562QP2Fdk/sEb1+riRIS/PtAfUCTIIfQ/wDz2A2kR4w421bMRpW605sHjJhI134LvzDwDisMb2qrJvtnacAOOLQF/lUlo1CCHrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ltNyDzCYr9y3ldb+O/LEsAVGfm4n3Hs9ZtCCsgRjTb0=;
 b=jp1uOCNdEwDa77yAP15FqZX2QFPUpzVrZyTUutw7AtLfY3caK2fpq0Npxn+UaAc6hnut9NNZvTUXxBrOLx5Gg3mthLM5JKiqPFF+tFYdmyjhtd8cXByAL+39dZ+aK5tr1srnHHJM5aWMzMTxWbXO+pL36cL4PCbwfVLt2zDpm7oKeqpiV3btxbozTadA5JPRba+P3mIhpK0AKxCXyl+ru7sXlkCLfm7YXiTg4csPJqMVaqurCUUciUFPsD8FQvcrReiBp1xy4nJSx2JTwecXUJlPy3xnt3th5/gxG1ezZb9rgn24hD0aBmnnhP7s31StTA2JhvgTc6z9Veay5cpW+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 SN7PR11MB7974.namprd11.prod.outlook.com (2603:10b6:806:2e7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Wed, 26 Apr
 2023 12:36:03 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 12:36:03 +0000
Message-ID: <fd12586f-d2ca-f6a8-aaaf-0221ebf4df99@intel.com>
Date: Wed, 26 Apr 2023 18:05:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::28) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|SN7PR11MB7974:EE_
X-MS-Office365-Filtering-Correlation-Id: 22356174-1f5e-434e-5466-08db4652cbde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L1sa1oVxuU2IorIgFqBTXdzjAmqIsUCAMJ84Yj+oBqltyHXhSebc1myrEfNz6BAmlfaKNIFzLfjNc96hQLEbI5CKsm2ZbQCj3wGpPxZZdySjfCyzIk/Ww+C5ek1fO4bwRDXW5SznloDKtvvNQ+FdFJMn0Z/PB91B4roGs1/LTiC4WGWCfp/or5sXscF2ozyJqJvrKwBGf8hKVEYQDHFcKgp3lmPd5ECfnnB3Gqh6Ar9kJtZMOIoD6EyTNJL3Jw/He73K7GvY+4jCYhAJ0mKf++7A1s7V94KgyXk3GDh2bSS8K+c8Mofm8I4PVtF8GuLpmhoDFXVga/a1+Idnt+RdThEEPq15OCvgh7fn5AMNCUXee5MRC7yfSgR2WXiY2Md+/QAqmAgKm9zyAxgnvG2zTuBepC3Tj3XMpRU0tNXDIH3O6/AHx8JhYCEuSDBgHc5GW78prmouBUz8m3rakbFUtxj9BYfIVBNk6QhN+k9fbqADm0vyuQsKcS6MGXSsT5IcAkx49o31BBI3rGgvqiGd7MvEZdn3eDAcTPzyf42Otpf5xRyQUR9DP/VFiSDpg5vX3jYMc+2z1ZHAjMKSJlYSXIOZxO9DZ7PW5uoq6i0nyneei7MMQ5f9JAZLOUt2K+wPjvEjNCUiAkHdtLS8AWRlCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(39860400002)(346002)(376002)(396003)(451199021)(31686004)(6512007)(186003)(86362001)(107886003)(478600001)(66556008)(38100700002)(66946007)(26005)(53546011)(31696002)(66476007)(82960400001)(8676002)(8936002)(5660300002)(4326008)(36756003)(316002)(2616005)(6486002)(6666004)(6506007)(2906002)(83380400001)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmdjbFJWYW9sT2ZvMFlwaHZoTVJMS0dPOWczdXJ5M3Q3WndOelJDVTVrMXhx?=
 =?utf-8?B?WWJtNlpDNGVaVWd5T0ZvV2QyRzVvKzFkdUxuMUR2SURnVzJ6SHFKRHJYeVIw?=
 =?utf-8?B?UE1laWNNbWc2cnJSeFQ0VkJhdzVndWNiWHNGZG5vRGt5YkV6ZG9RY0xIbFZO?=
 =?utf-8?B?YnVoRXZvdEVERzJwSVhVVVNOWjFBaXhrT1FVMlFGWksyQUlOVkVWbjFaMGl6?=
 =?utf-8?B?eFQzclI0SmxzeVFhSHN6MDRIaVIxTEVlVVM3eENia3p5NFVray9xaEIyOFla?=
 =?utf-8?B?NTdidHJiM1ZJN1JPVXZHOFZBM0pKNVVsU0E0MHQ2eEZBMjVVY0V5emhNWXdM?=
 =?utf-8?B?QmQwOExvQzc2QzIvcjFaelZYcUNQYU12WnQzb0lwOThZTEZuQ2FZeHB0YkZK?=
 =?utf-8?B?OWJGYllkQVh5M2NPMXFOT0ZjeFZ0WW1Ec0hhWmFBSUtaenIreEtEbmpwRExr?=
 =?utf-8?B?MTN6cU5WT2t3TFdGcjJrVFkvUEo3S0FPZ043dlNGc0U4VmcxMG5Dd0VmRzVC?=
 =?utf-8?B?V2IxdTRobWczaGRJOFBPWGtzT3FNeEhLRk9iMWN1T3hpSmY2K2U4eGZLNTdU?=
 =?utf-8?B?SXNScmpEakxmRnpiYnFudXhRRFNPTVM4Q2QwY0RhN3I1cWxHN2JtUzU0SCt4?=
 =?utf-8?B?TXdNNXJabXQvSjdqdkFIOGRGZm54TkowY3U3ZmhwRTYrUFFXSXZnaExMUFZy?=
 =?utf-8?B?a2FuTUVLWGZseWdVbDZlL3VROUhyNTJ2Z21udVlIUDZyWFdPVkpTOTk4cWNB?=
 =?utf-8?B?SlVsTWp5TkhRRVJRY013VnMwNmFWa1UvbEoxVkt4VmozaVBhbnlZbytGRUps?=
 =?utf-8?B?cGMwQkQybU0za3Q4K1ZCVjdUNnlkUHVuL291NmhuWU5wY1JNbE5UTlJvVmFB?=
 =?utf-8?B?VnpveE5vM3pwZWVpak1uMUNMR0xyNjh4Q2EyYkZLZkNlYkkvZE90NVFEek15?=
 =?utf-8?B?Y1M0VFZ2aFFoOEZvQi9Lam9NOEUwVjkwNmp3ODdxZVhCWjBIZmhGb3NteUFv?=
 =?utf-8?B?eXZFRUlzZXUwRCt4Z0Fyc0ZBQUVmOVo0ZlN2Zm1saUxwTlNYRFpwa252SFlX?=
 =?utf-8?B?R2RkY01OQk1rdXo5WFlLT2VFVXJNVHpHUStySUtoQmI5MjVOSWVsL3U2VCtt?=
 =?utf-8?B?Sm9JNS9TYk5xdW5xVFVtazhiZytEaGEyVWgyZkJvbmUwSzZRRjhETXpHZW5N?=
 =?utf-8?B?RGZLS0ZLTVNKT2MxWVFiTTlRTkp5NWJPdXJoQnBEUDBxUlBtc0dHK3N1d2o5?=
 =?utf-8?B?NDRYajZXSVBaWG1UUlJYSHBMOVAxUGQzZ3RjZ0tMcFBvcjhnN3dvQmdkQUlq?=
 =?utf-8?B?bDFlTUdvZkRpR0c4ZE1KS0Q1Z3B1ZmhTb0JieVhlL3ZPVVN1dGJUNjlLbUQy?=
 =?utf-8?B?d045VXROcXdkZmZEcW51R0pybTdRK3NLVjZVVzIxaEJOSE5QWWQ5ZTFJblBt?=
 =?utf-8?B?NkFxb3BEVjBaT244YXRmNzRCbXh0U2dlQ1h6V00zZ0ZqOTU2RDVqWDc4TlZm?=
 =?utf-8?B?NUdKWisxb3BacnRMUlhWQXlaUXFIdGo3a3plOEpxcFVRSGVsdHBhQmRLSFk0?=
 =?utf-8?B?RkljY083eS82b2duZGZNc1Z5L2hrcFRCN0JpOXBPVTJqcGtIb0oyS3N6bktq?=
 =?utf-8?B?SjJnTmdmL0lSWjE1bnZINkx0dy9kUitDN1BmR1B6TW1uaVZSUjFhMmhyNGMw?=
 =?utf-8?B?REtaOUVVZUQzbkJjMjlWcFgxdjJQQy90bGwxVWtvSU9aSEs5cHlLSUVZREdj?=
 =?utf-8?B?dUhXTFBUVGpMTU1WTWFpVmFGOTRES241eE9Qc0R4VHpjcnpDK0RxOWJzK24z?=
 =?utf-8?B?aTFIZUZxbnhjYkdEVUZWeE9FempNL3g1NlNkdkgvOUEvY2J6VGhjL2NmdW5O?=
 =?utf-8?B?RWw1THB4dDUrTnR6K1Q4bmo5TzFnY0dKYnQ2Z2h6UUVqMWdPdE1pZkVIb3pN?=
 =?utf-8?B?OXVsZEF5TmNkMlV2OC9MNGJ2empnVjh2Q2E0d2FoeDZzNmVUdUpaT0FBQ1pk?=
 =?utf-8?B?cmpTd3U5KzRsMXBpalVKUkpLZlFERllpVFhvdC9CZWpVMjdtL3hnQUhqTG9C?=
 =?utf-8?B?ckJhQkoybUkzMlF3UFB3eW1CcVBVVTJkQSttWjdkQ093QS9FSDBZb3Bsdmdp?=
 =?utf-8?B?ZjdxeWJpVDExMzVRdE1RS09ybU5GMHpKZ1p1bkNxalZuK1o4ZW5YZmdjY0wv?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22356174-1f5e-434e-5466-08db4652cbde
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 12:36:02.9449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ma54GXpDHEZOh1jHA161yABVP7UIdI9Nmn3l22QHhnvFFcOTTEuTAUOn0RJGuSHNp8v7oUfJZYdFmKWxzbMsUlL3Xmp7SYJlt3JEoc9GjY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7974
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/26/2023 12:00 AM, Radhakrishna Sripada wrote:
> Enable strict RAR to prevent spurious GPU hangs.
>
> v1.1: Rebase
>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>   drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
>   3 files changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index e8c3b762a92a..af80d2fe739b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -529,6 +529,11 @@
>   
>   #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>   
> +#define GEN12_SQCNT1				_MMIO(0x8718)
> +#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> +#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> +#define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> +
>   #define XEHP_SQCM				MCR_REG(0x8724)
>   #define   EN_32B_ACCESS				REG_BIT(30)
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index de4f8e2e8e8c..ad9e7f49a6fa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1699,6 +1699,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>   	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>   
> +	/* Wa_14019141245 */
> +	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +
looks good to me.
>   	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>   	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>   		/* Wa_14014830051 */
> @@ -1707,6 +1710,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   		/* Wa_14015795083 */
>   		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>   	}
> +
>   	/*
>   	 * Unlike older platforms, we no longer setup implicit steering here;
>   	 * all MCR accesses are explicitly steered.
> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> index ba103875e19f..e5ac7a8b5cb6 100644
> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> @@ -134,10 +134,6 @@
>   #define GDT_CHICKEN_BITS    _MMIO(0x9840)
>   #define   GT_NOA_ENABLE	    0x00000080
>   
> -#define GEN12_SQCNT1				_MMIO(0x8718)
> -#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> -#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
These two register bit and register(0x8718) moved to " 
intel_gt_regs.h"not getting used elsewhere(I mean, in i915_perf.c) ?
> -
>   /* Gen12 OAM unit */
>   #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
>   #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0

-- 
Regards,
Haridhar Kalvala

