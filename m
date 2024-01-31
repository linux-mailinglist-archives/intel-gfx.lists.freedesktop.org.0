Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B96843658
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 06:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74704113951;
	Wed, 31 Jan 2024 05:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3642311393D
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 05:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706680748; x=1738216748;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nhD55HjkttQ1di8/NO0JZv9eNL5jZItKjxnEBMrWmFQ=;
 b=Tda0j6V4CLaNUsNuhfs3bnPcDAA2PVqAZnUskvL6khom+hJ3EoYkKMrB
 n7Bq1jVi4FOS1M4sSs+PukI85GSs2kU4Qx7y9alCwuV7oQB/nBjehfMuf
 FliTcANv//+mPsI4EziX4RvZsRd0jUb+H4gWwKrIo1gR50tYmbireGfi4
 bQYgYfVxWiX3kpyudjLfQRWo1OrD/4wtK6daDfiROz3YfkuVspsI7QUgD
 ZzsDaRaQjRVq4eN1frKsqLj0tERzjk3YnxuXLqtS3/MRVrzd1qDzAEpfI
 GhysrNwZnT9BtInDn11Kdo3Adf+7R4LF3IYh+XZKuoq2PgBsv9SJ0Ff/J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3341065"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="3341065"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 21:59:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="36754412"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 21:59:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:59:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:59:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 21:59:04 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 21:59:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBRNCSm87lUas6CVsJ9+wU8mZuccbaEQz6Smli59+tMqrdzNIyjEE3xne1Tgb/cekH7H7l2INbeXS60FSNyBZOBspgqFZ2csrFWHS42aSR0vTaWnrS4ZQ2OXfgekDfsxr9fCaCisj+iThzJ3Gnlbc/Dr2APx+0aJ7Jfdvu0QS+PVdo3w9l6vDhCPYnq+lUW61jk88WJAqNSmMekz22ozHWvsQc1VTDR7bqmFpOUkMErHh1sEqe4E5V2vPwr7590RBND4hn5hdz6fvqmvWCERPnTOBwXLJXodrmU9/lY5BnkjzONA/7TB2ufoLeYjzwI2nH/nJhtSpRSHOcjO9+lIVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UnmuGdlfxJOIwmw2bd3j+fNQYdzmP0ZedE5GutZTM0g=;
 b=M17n0j9clsxunxpV+nAKz6b9vCbpuNKvWFG0fW8oJV7nT7R7Ei7L8OFb9kP2ocxd+WzbX1bW+mxBOKgBG7dRS+EVRC3A3haUOzeDeXmpPxWUBpF8mJ8gFCvMIMPARoYA8+N5VxVbCNNVYStsv3QTX3Gmk9FexFzS0fW2q+cWG5Go0LFR500sCqOUhxAOAIsEgHR9Vfnd9lVXymUqDFneL3Ad/alaOLqa9C7sZhqhOayFR9F+xK0TRcmYn+2d6DVa2Tr9l9KPgKn6i7fGsCSn+Ytx/OpibFKYbLz3l6YQwcP3OSvNxWlJPEo1WctXX4PMPH2aYtxo82Wov3stLCtcmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.22; Wed, 31 Jan
 2024 05:59:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 05:59:01 +0000
Message-ID: <713af94e-e162-4771-9660-529d7271e5e6@intel.com>
Date: Wed, 31 Jan 2024 11:28:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] drm/i915/mtl+: Disable DP/DSC SF insertion at EOL WA
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-6-imre.deak@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240129175533.904590-6-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0221.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8297:EE_
X-MS-Office365-Filtering-Correlation-Id: b312c2e5-9ce3-46eb-62d0-08dc2221b8c6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KH4HwivNSAqnt07B081RAjq1/oteewTyyrL/LOd0E5PvsQdYyEKR1Q4UZuj9cnq4FEifkjHNCR6kMo4+bXAj2RyOVFV03sVG9Iyhe9GAg86r3ySpJdU+WFiQg5QblxQjj3HqRIC/a1KparJUu5zH921wlGCQYt59GHP7ZHirkVMlyKY5uQi8S3c0z7MCQcX31J78jYJfa6/+yU2TLnjL2iRqBSt1OPDciapDLE8xHSY9YKJEOH+LLViaqdq0kDNLjnBqktJYj1z7bjVDXxMi9OASGn6QYR6Au4ZnLiBpUCJwz6KVopxYZ3nLWfI8Wbi9qKMMcpDWnRhkZLhn5Xl66yOHf+uYzsdaOywtN4vATsw48uBJ/FNxSNFz7kfFVEdufEdJiBgqRAVnbp7fUtHE0bgcz27Z0Cv3GNav4/VNZGkL6Znm0qRhgJUoDfG9Z+R7gz3t2c3V8XORyzlb+n27aHBq8YQajBsr9FqefUbzX/QKmvZrxol2DqmsrH5qB2iLU93ITH4Nw+zN0GJ/dH48EqvWAnBJOKjBqJGD355tbN53YayN5szWjujn7J2IKjE4bBMT4LIP8A0mBKLQjTGJtLXo070stf1M/E86ckLy9vgvBwklXcC2AI1G5wdaucUfytCJVGPtg2bKrPg7nDWvFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(346002)(136003)(366004)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(41300700001)(2616005)(26005)(38100700002)(6512007)(8936002)(8676002)(5660300002)(2906002)(478600001)(6486002)(6506007)(53546011)(66476007)(66556008)(66946007)(6666004)(316002)(86362001)(31696002)(82960400001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3JIcm84UnBsZ1RPbmh6STBVa3hXaEEwNkt6b0tLQ2lTQlM3by9iZHUraS9u?=
 =?utf-8?B?eHIrdGl4Vk1oWGVyUVdVOXhZUDhzRyt4SnVrWXdsN1M0bFRUYmxORXFKOGQz?=
 =?utf-8?B?UEh2QUFxNmxzMXk2R0lzbmcwQzdzclhMczM4UkR2aXhlYkFjWXdmbnMzTGd5?=
 =?utf-8?B?a0psQndaanl3R0ZBeFlEN0J1SWdkaHA3dUFXYnlQSEYwUXlmTGxJeFV3WENI?=
 =?utf-8?B?eEQwZm5EaGU5WkxteHVOQjNMQ3JiOGxhbThtVXlrOUxHVi9iU1VMRmhVYkU0?=
 =?utf-8?B?cjVJcld4a05nYTQvSDNOQXJNTFBIcHpsZSs3NlIrTmdjMVhra0xqc1pPUXo2?=
 =?utf-8?B?Y054UlJrL1hSSGNwMjVldDFNZG12UzBjWjUzRE5NTHV3OEJRbXJTU1hqSm5T?=
 =?utf-8?B?VWdiRGVnencvMmRoVW4weTZRWHhmWUhoTCtINEVRb1I5R28xTXFHWmd2bjl5?=
 =?utf-8?B?ZWxDS0tnclNGd3FQTDNwamVlOFkvK25JL0FoM2lnV0xZMk5NVk5lYkI5SkZK?=
 =?utf-8?B?dG41M2QyaG5hMmdSVGl4TjNYOHpEYlVtaXMwVThQZ0pBVWdRZWJ5ZkdCcHc1?=
 =?utf-8?B?YURDaTl0UHRzSlJhQjFKa2hXbjIyekZuRDBQY2p1UFJub0t2WkhJRjhBQktm?=
 =?utf-8?B?ZVVaa0kydVU3QTluOHN2UUVMMGJlK3UxVDJlTk5RbEdrOXdGM2kyN0gxRnVx?=
 =?utf-8?B?N2FpQml5c3NYOUxqdUxOejhWcXNxTGlZTkYrV1dsQUhKV0Z5MlRhcm1zRkRq?=
 =?utf-8?B?bVYxVW1ucmgzaWZwd1dreWdwdTFJeWNBcUErZEU3VzQ0WUwzWC8yYWtyZEts?=
 =?utf-8?B?UzlBT3VRY0MyZURJT3RMdm9wNTVTU1YvdVlzME1JR2FNL1dkRTNkUUE5RkxG?=
 =?utf-8?B?YlN6TnZlREszaU5ndVBNVWl0SEwxNldlR2k3L283TEtNWVJ3clU1ZUR6TDNZ?=
 =?utf-8?B?ZU5HYXFubE9oSWVoVDFBeXhKanlDc3dDTVV6MmRwMmJaVDFIU3ZvQ21VRzJh?=
 =?utf-8?B?SkVBblpoZitwdSs5R0lUOUFKektDa0poanZKdTFmZmhvQlBWLzFiT3dzOCtQ?=
 =?utf-8?B?QmxybXRrNlhoWkltdkUzSERraGRocXMweUJpNDR6NzhvanZBQmJIWUVuV2Fv?=
 =?utf-8?B?QnhPRCtmWEZqaC9UYSs5UCtUWjMzOUs4M3JreGNnWCtOYUJhVTZFVXBhbSsy?=
 =?utf-8?B?OWdrNWRWcTU5Z2ZXTEZoTjJGZkg2V0Q1R3gwRnBIWStCcFNRQURxQzkxallD?=
 =?utf-8?B?Y0dHbXZZdEtkaVRrcWpBeEdqNHB4WFRacU1kcElEQ05BZmRDcEUyR0xsaVRL?=
 =?utf-8?B?cyttQzlELzA0bFBWRXIvZW5PZVcyZytVbGVwMlh5MmRXYjVVaW9kakM4M1NW?=
 =?utf-8?B?TVUzelY0RkZneXFsVG9HSVBybWZjOEtkdTJWQmNHdkZKV0VOVndlQWhCL3NX?=
 =?utf-8?B?ZHNvM2s4bWJyK2VHeWRUV2hmRVhaZjlzaUxvMy9CRDA0aWU0Rkt6TTdoRk9D?=
 =?utf-8?B?WDExWUFZZXZXSDhUREU2RWp0QUNKMnBqbFRFL1huYUxoOE1LZGlDcmJERHY0?=
 =?utf-8?B?VkRud1hNQ1BXODc2NVROblNFa1BnckNUZzR5UUpGUTFMTnpzNGRRNitLT0FR?=
 =?utf-8?B?VkcxMzNrNUlxZUdqR0o5WHA0UmtwUW4xeDZmenA4WVFneGZLSFlMdy9rRnhz?=
 =?utf-8?B?Wm4wTzc0WUxCekNnYzdyaCtJYlowcEdBUWZ3VEpiMXFRS2FiekhxNk8ydUdN?=
 =?utf-8?B?ZUt2UXEwTGhlcm5DRjYwc0FBdldPZnFlTHZNSDB1bklwVmVKclBpUWYwTitt?=
 =?utf-8?B?QkN6Z3NsZHNMaGhjV2RiRzNRWDJNbkd0bE9vSUdtSFh4RndGWUVtazEvN0Zk?=
 =?utf-8?B?WUJIOCswMG0zeTBFNkRaanFFeHl6bjVoalYvMDdEWjcvWFc0YndxMVArUUxh?=
 =?utf-8?B?U1RQN0cwUFZwZStrMmhWZlJCTm5yZWR6VUt1dDgzbDlUZTcvMjlyWEIvblg0?=
 =?utf-8?B?Rmg3Q3htNVRYOGNMRkJOQm1DWitIZHE4Z2JYTy9uYm5tSnlKbDdxS1QxTit4?=
 =?utf-8?B?QWpPcFc3dDBIc1JSM0ZMc0krdWVSNlBBdUFoK29aUkNzRHNXM3QwU0tZaHhQ?=
 =?utf-8?B?dTR6ZnZya3hMckx1TGhlSGlOMnA3TTdFa0ZJVjBGQjBIN2tGdnZjeUlZV0U1?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b312c2e5-9ce3-46eb-62d0-08dc2221b8c6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 05:59:01.2748 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47+i8Obi0jT4wyXyBMlf1XXd5AuHp2Z5n3vqBPP1noHSSNDVkTw3197kMO/qYLurdJvx3Buo4fUQkFP6aAUZRdi6kjDaK0M8HPxCD5lBsBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8297
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 1/29/2024 11:25 PM, Imre Deak wrote:
> Disable the workaround inserting an SF symbol between the last DSC EOC
> symbol and the subsequent BS symbol. The WA is enabled by default -
> based on the register's reset value - and Bspec requires disabling it
> explicitly. Bspec doesn't provide an actual WA ID for this.
>
> Bspec: 50054, 65448, 68849
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
>   drivers/gpu/drm/i915/i915_reg.h              | 1 +
>   2 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0f4cd634d7dce..e0b75aa18ae33 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -428,6 +428,15 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>   		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
>   			     0, PIPE_ARB_USE_PROG_SLOTS);
>   
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		u32 clear = DP_DSC_INSERT_SF_AT_EOL_WA;
> +		u32 set = 0;
> +
> +		intel_de_rmw(dev_priv,
> +			     hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
> +			     clear, set);
> +	}
> +
>   	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
>   	if (val & TRANSCONF_ENABLE) {
>   		/* we keep both pipes enabled on 830 */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b43d1145fa22f..9873daa16c6a1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4620,6 +4620,7 @@
>   #define   DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
>   #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
>   #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
> +#define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
>   
>   #define DISP_ARB_CTL	_MMIO(0x45000)
>   #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
