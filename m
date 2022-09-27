Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 555EA5ECA9D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 19:17:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547F910E02F;
	Tue, 27 Sep 2022 17:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81FF10E02F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 17:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664299050; x=1695835050;
 h=message-id:date:subject:from:to:references:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9AO4AELfxL5+Qfy3RqKDwVYXMSCSSb+FkALicQZUL18=;
 b=Bg7e6MtVsDpSZcxkoMM9tDQLjrvcdaaESKPro4D0XNE13MVd247+M0lf
 AOTAGiuTafvY+BS1Z2Ra900FY88s6BrPnXdEoZrVEtsy/h0frhir4tOEn
 0sCLeuiOXzB5kaB3L58VmTLBdbrB8yKN+noVxeUTBa26V762KAyKkg7B1
 NuykupbRrhHSqlXROxhXdJ/rtuEjhn0tWkvisPw1xpa9MD4E9R3/SJE/u
 enGv6awwJE8/DBPqNN/mMbSTAqq6gZ416olTz5VZidR0753Z8KL1jUsVL
 WaVCj+s5spSN2REgbADwAVoLYJTlQvi/lZHKDs4SdYRlVfAgrGnuXuwMs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="301354507"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="301354507"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 10:17:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="796842360"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="796842360"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 27 Sep 2022 10:17:23 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 10:17:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 10:17:23 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 10:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O2uJ9EplgSb3uuRoRLXctsuMszyvPm6EzLx0S2rLhRrIsjKK+TQSbC/I9pYIw0zt/j7f+bptphHvYz+gYD0tTJoU3TvUkpgqUTK+/yvulhnfjnyjiIdaALjeMAvAZDJCS7sWdLD/7vZ//qklFQBrY3es/ftSsO8JywnNLDKQIFD4s3c2nzXCNGkKj1WTB2A28+W76XM5ctPEW0FO6qOpVd610SqVHdHSq6o8KO6YFlnWg3m1CXmT2HO5cLfJ8ajPaFNXIhrCZQ9kqwjf9zyFSGKpUQHWIVBhPSIUkEbOOKfwGdEb+4TZDeuw2uJR9jqSKLuGLxoIZ+7Vw/tYohMBpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3xr6f+1WJ/wkymFpF1q395cOOi8/9Zo8a+m10Mqiyjs=;
 b=CHnprZxptlELzeOSgBquVpolxocgT/NDaW9GmKBhv2E9oXmSe0DUZLQI6auWsaltsvTYxFYDSAqdBBnPMNweJYZSO7zVMPmY053mAjIGVz/Dp3tY8LL3SxHkf3GQnurXqMjPuiQkCOjrzVY4gaSDU7Nr1e5cjJ82ZK3vn2Af51Kw2a6euliCbuYaNLc/7POfhEFgSUI2UyN9Sj85B7z1ZnkfGAkVE3iYHzhDUxTToZSRFCKICBiJsGbLTHrlKh+ydOxmDpMCE1PzFkIT+g6WIeb/yl7HQAneU5L9pc9wSLWEtjPS92Qd+Y9tEiua7LTSmWDlm/X79F/XvnYOdfcy7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by BN9PR11MB5466.namprd11.prod.outlook.com (2603:10b6:408:11f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 17:17:06 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1f8:fd76:9d4d:71bc]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1f8:fd76:9d4d:71bc%4]) with mapi id 15.20.5654.022; Tue, 27 Sep 2022
 17:17:06 +0000
Message-ID: <3369dfb4-ca64-4a46-4a29-3819ad321f34@intel.com>
Date: Tue, 27 Sep 2022 19:17:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220927171313.6553-1-nirmoy.das@intel.com>
In-Reply-To: <20220927171313.6553-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0207.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:318::20) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|BN9PR11MB5466:EE_
X-MS-Office365-Filtering-Correlation-Id: f2f9dc22-b6fa-432c-c935-08daa0ac19f0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9By4OWWWAAmCSkZOgTGnga9wa3dovL52iKI8Yby2n1WuuJSXjA/Xidf+9MoUWs+MPZhe25uYcfunNrQrRR0FIAh1HK9pwBcQxaLvMTdiEVaVWjFJTT+C9J0iiV70PnJkL7NmEMCbq9B7V3CNvdtXCcDvnPFGXcnNUK8w6mJHcacXovFjlb0VdVFxAjYAk0v8QqGea5IGFI3JVz3kbliUrrJb7tqfeik/weludAO0tqKOF4ok4DtKjF5qXx+MhiQ2ZHr3CrA/wDh5RqtcRJt6AC/zQr2yHeHPGYwfjWI6g7qGJENmHoqnMtrKRUDmqetOCYb5oznKNIRZvHL17roDz8yausJfOBA+dqDU4ADhZzyv21H6/GKaExYvS47NDpIg+uIQbSr1K2hI7ZE0oEyLxor10YOs8zszw7hL3eByrGuUHoHIxMzDYrhun0HyJ8WqOmV1jCQGkAagh0MsUxwBjFwqREH1xLs32tCOVUdJRCvuS/WHmSHZWRCpTy5LKSE9YDeUBuEJkCOfjjZMXvCWhGxwOJjR9Okvj8+MBtNQTvXIxsh+XDA4XWtSBsepWXcY4i854qNYcfyWyckQ8WE+bv4/rmn/zN8/rT0uFoB4docD6pIQ6SleOzAJYbg8aRTrDlBqMwsMU4IGAja7nn2br2Upu/fAhJxw/aYTjRoNrcgjXHH178tGrYuY+nlVI4w2MoY0TTxTyv8eENVfvu3+JLlP3F5Y8RMTxLRUVSLENZqyZw1QgK2IfsaHvjzLFq7eKuu2y1o7nIDehReFD5OpPw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199015)(31686004)(31696002)(86362001)(36756003)(107886003)(8676002)(4326008)(66946007)(66556008)(6916009)(66476007)(38100700002)(82960400001)(478600001)(6486002)(83380400001)(26005)(41300700001)(6512007)(6506007)(6666004)(966005)(316002)(53546011)(2616005)(8936002)(5660300002)(2906002)(186003)(21314003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDlPeGlscFhqa3Fwek13ZlB2YWVPeXF5b2t6U3lqTGZzWVBVUGR0Qlo0THpK?=
 =?utf-8?B?b1RCRnhXakplV2JHTVlZVlRTT05QbUNwajZ1aHlnNUtLYmRMTzdGNHFwemlJ?=
 =?utf-8?B?N0JaSmZwZ3ZTSnJCZG00aFdnS0tYQjI2SmN1REtDczBEeG1QZkhQZS9sUXZm?=
 =?utf-8?B?UDNWWk5wUmlqczVuekl2c3JKT00xcU1ESmlnQWJ3RDRBZVV3UlFKdGgrTCtu?=
 =?utf-8?B?aG9sY1o4S3AwckN2bXZ5OTJlNTNpZlpwNlUrem0wZDcvVlYxVHQ2TzBjK0hF?=
 =?utf-8?B?YlBBZHJXK3EvMjZwZmxuS2t1akVMazF6eld1WXcySkk2MnZwNWh6OGliMmQ0?=
 =?utf-8?B?M3hWSUxhbTNoaDg2WEJnRVRrTXpGUzRwQWJucFp2cm1zbFRLTFdWc2dPZURT?=
 =?utf-8?B?dCtPaURzRmJKMHJGQXc2bnc5U2ZnTXExTDkzUVlxNGsybmlqVTB0QkhTYkpY?=
 =?utf-8?B?RE81SlNXM2o2STRvUGd4WmoyOGNYN3VlNUtZSXVUS1FLM2xWSDg0cGxudTZ3?=
 =?utf-8?B?S1Qyd2F5dW5VUzVVT2Y0RjlIaUR5UWFWVk90Z1A3dk1oOWpMcXA2bW41ellw?=
 =?utf-8?B?WlBRVHZtbHFkaTRBK2gzVGFvUXV0NFFNblh4b1FqQlM5cW1mZUNDZGw2VGpx?=
 =?utf-8?B?aG5iTjhoU0tCMzJKZzAwSGVubG9UQ3BQOUhGMS9uZUVXZFdhc2U1ejE3a0Zx?=
 =?utf-8?B?bmlYenQ3RzlTckpGdGRSeGxya25VUVljOVJXdzZJdGFBMWdYYk9FQ2hrQmNv?=
 =?utf-8?B?QVIvVVJBdHNLVjNGR2FES0E4eFJoRERUOFJpaTgxZjhpbzNkVTZscG8rZzlR?=
 =?utf-8?B?cTRQajFYdHZ2OHpFb1drdlZSTU1YaUlSdk5odUt5Qk9FWi84QVNXTk5zTjk5?=
 =?utf-8?B?SFJVa1ZZUGhXbDlKRWJhdU1KcHNkYytCSUVtUW5wQlRkOVJ1V21JZ3hiNEho?=
 =?utf-8?B?d3JScWhKSCtBb25GbEpadUMwaDlRQjFwTzJWVFJLRHBiekhoYlhhM0RsMW5I?=
 =?utf-8?B?VFBraUFRTDlYZDBvRzRsRXk2a2ptVVJOUVFiRnI0MkxkcjJPdXRxNlN2VTUv?=
 =?utf-8?B?RUdYMGtoUUZ1bWxrOWtLYVRMQnl3emVnV3FWcTZJMDVTUmgreUlMSFl5MjVp?=
 =?utf-8?B?ZFpheks0MktVMUZ2MmN3OXcvRzhXcGd4Z0dKOHBZLyszdkhRSXVXa20vQzhn?=
 =?utf-8?B?WXhsMHl0U2RSK0Z6aDNqeTUyZmsxNDFOdkd2L1hNUnI1MWVxQUtzZlBzUFVQ?=
 =?utf-8?B?TmwyRmswYUhSR0toNVNRSFJSVGhUZ0s0M0NjNXVzWnhEMHBlWUFvQll5cVNG?=
 =?utf-8?B?a3JJUkg3bXppaE9zMmM2SHQ5aDFrdmNyYSs1aWEvd3FpM3pseEpDSTJuRi8w?=
 =?utf-8?B?NHQ5T3lXL21NVVFZNmp4aUJpSWNQV2d1NCtDcnRRK0M3bHBxYWR4eXBDRVRh?=
 =?utf-8?B?MXJzTHlVcEYzQjgwaTB1eVljUE1ibGZBWVl3OWxKcHE3eGhMSjU3Q0Q5YVIw?=
 =?utf-8?B?bjdOUzdYOGEycWw1MDZGNDEremJmMFhVeXlYZXdNRmNIdjBhTFhyanJKOXN1?=
 =?utf-8?B?YXJjaWkzQWRXODFuQkQzWm5zUVVTbDFoLzgyTUYxN1dBVDcxZGpJNGU0V1lT?=
 =?utf-8?B?T2NSd21LRlRrQk02VTZRQXp5eGlFSXpEYjZYRUthQVJlOFRnMG9aZWgwZXYw?=
 =?utf-8?B?cS9YSWFZNjcybmJIcmdFemN5K3JONkY4cTZrRmZLNVFBTUZIRml6L1RZMEgr?=
 =?utf-8?B?Yi9TdUViN1NpcGlGNVV0TXVPRC9GMmNaTUtqcjFsR1Q0bUlkeFJlN0twZGtT?=
 =?utf-8?B?Tk1JMmllTTRrRUpCMkdlTGt2K1NtbGdpMjY1VkdnVmNscVZGYWZTL3hZRFNK?=
 =?utf-8?B?TE12czlhV05XOUU5Y0xheXE5THJyeUZWTjNBWU92YlNMUGZsenlFTWFhMmJn?=
 =?utf-8?B?S0ZkZDZMN0hrVCszNXFXRFpnZXdXd1dPQUxXd0plOEhVQStOUm5WdzZXVS94?=
 =?utf-8?B?NkhTYnlpTG4vQ0tFditqNnlBcU0xSDZXRXFDRGhnS2c4NFVIUmNqZS9mU2JQ?=
 =?utf-8?B?ZjNFTmhCaDcycDUvZTlHeXR6R29vRmdERkNHb3FHL1hYTXZueVZVWG9kRDAy?=
 =?utf-8?Q?cCjvTs7Jw945TMzmUTeFgNxlF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2f9dc22-b6fa-432c-c935-08daa0ac19f0
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 17:17:05.9969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I8+kQbFA2u+m+Dx6uwp9qhfF6TD1FUNVnjEqQNFQxe/huVZMnGdKSjxS33KzEJQ5bSJSXeBIeUVjk1KSY/aQlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush to global observation
 point before breadcrumb write
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

+ Prathap

On 9/27/2022 7:13 PM, Nirmoy Das wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>
> Add flag to pipecontrol instruction to ensure in-flight writes are
> flushed to global observation point. Also split the pipecontrol
> instruction like we have in gen8.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/5886
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 29 +++++++++++++++++-------
>   1 file changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e49fa6fa6aee..31a2fbd8c4a8 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -583,6 +583,8 @@ u32 *gen8_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
>   u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   {
>   	cs = gen8_emit_pipe_control(cs,
> +				    PIPE_CONTROL_CS_STALL |
> +				    PIPE_CONTROL_TLB_INVALIDATE |
>   				    PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
>   				    PIPE_CONTROL_DEPTH_CACHE_FLUSH |
>   				    PIPE_CONTROL_DC_FLUSH_ENABLE,
> @@ -600,15 +602,21 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   
>   u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   {
> +	cs = gen8_emit_pipe_control(cs,
> +				    PIPE_CONTROL_CS_STALL |
> +				    PIPE_CONTROL_TLB_INVALIDATE |
> +				    PIPE_CONTROL_TILE_CACHE_FLUSH |
> +				    PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> +				    PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> +				    PIPE_CONTROL_DC_FLUSH_ENABLE,
> +				    0);
> +
> +	/*XXX: Look at gen8_emit_fini_breadcrumb_rcs */
>   	cs = gen8_emit_ggtt_write_rcs(cs,
>   				      rq->fence.seqno,
>   				      hwsp_offset(rq),
> -				      PIPE_CONTROL_CS_STALL |
> -				      PIPE_CONTROL_TILE_CACHE_FLUSH |
> -				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> -				      PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> -				      PIPE_CONTROL_DC_FLUSH_ENABLE |
> -				      PIPE_CONTROL_FLUSH_ENABLE);
> +				      PIPE_CONTROL_FLUSH_ENABLE |
> +				      PIPE_CONTROL_CS_STALL);
>   
>   	return gen8_emit_fini_breadcrumb_tail(rq, cs);
>   }
> @@ -715,6 +723,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   {
>   	struct drm_i915_private *i915 = rq->engine->i915;
>   	u32 flags = (PIPE_CONTROL_CS_STALL |
> +		     PIPE_CONTROL_TLB_INVALIDATE |
>   		     PIPE_CONTROL_TILE_CACHE_FLUSH |
>   		     PIPE_CONTROL_FLUSH_L3 |
>   		     PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> @@ -731,11 +740,15 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   	else if (rq->engine->class == COMPUTE_CLASS)
>   		flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
>   
> +	cs = gen12_emit_pipe_control(cs, PIPE_CONTROL0_HDC_PIPELINE_FLUSH, flags, 0);
> +
> +	/*XXX: Look at gen8_emit_fini_breadcrumb_rcs */
>   	cs = gen12_emit_ggtt_write_rcs(cs,
>   				       rq->fence.seqno,
>   				       hwsp_offset(rq),
> -				       PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
> -				       flags);
> +				       0,
> +				       PIPE_CONTROL_FLUSH_ENABLE |
> +				       PIPE_CONTROL_CS_STALL);
>   
>   	return gen12_emit_fini_breadcrumb_tail(rq, cs);
>   }
