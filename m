Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECDB6017BB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 21:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB92810E42A;
	Mon, 17 Oct 2022 19:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A6C10E42A
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 19:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666035245; x=1697571245;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zD/pFciM83NeATdhcobUaBirV78cAJGrdMtcjAW2avw=;
 b=ZxCzHE8IyvlennQUEcCHq/K8LRJBy3coZun8oUbQxZ2F7BjpnXaqd5xX
 /OS78pPtwHhcCRqZxt9sFypMWND5PcEPgTfW2zBYJ1/UWIzHnPmFzcsCa
 69cE2B+OhX0jcdhDfnkS2Oi9JrAhNdpLlm2ysv8O7I2m3fcnfa/OxwihJ
 7UtwVmrMjS2rc5OOGbPAvJXa61hcoDssnDZprmZRn0KdSoRVhYoDj1M36
 zmHENshbt3IYPNHfHPNvZnlp70j4ipbziGsuNEurs7ZcCKEFIFh2bwgyD
 GP8evYMQRGYuYx+AE1awtT3+BO3fnq8eF5VbZl6yH3D8EUVJ8pPH2tl5h Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="306985476"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="306985476"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 12:34:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="579493404"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="579493404"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 17 Oct 2022 12:34:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 12:34:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 12:34:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 12:34:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 12:34:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kb/jN8jXvSOE8sK+PM3WpbkUeMV68p41VMytFJoAv9o8H2STnov0zOX4mS5dP6LhHaIQ9kAfspUUM+K3PdF0srBrHjVPsVMAYgbz0i+nw2ZdwaD+aHHbTaChBX7P//NAmGqrzRMdPONucjaE62oisI59db6agwbv6pBSrqLPwlVj6SDpPEotdEcksfG4UOsQwGLvNU7oFW9QlpBc+on5E9JYuqUGOwHp2c/Ymr3fOVG37+ymOuFAexEFQ5j+TZAvY1WekLQcz8Rz077xR8BfIsz8pf57O9o1HesokOA6hXf5x9+OLCslMHW2FdtxPv6S6f2lKTqI56wrnMPONIgFhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WivF3IxhiQ1Fhnk4emUE0Dgf2f6SRuAdm1KFQYHf2O4=;
 b=AtMYFB339XMnZLDNqRke6Sl71TcCoTV1iMLew57UzkkKDXclEnP7SHZl2DSB3yJ8s3AiPN9XJH1F381mK07RnFJeTunydjXnPtbVlHNB60BdIJCsCIPI2x7u8h2C/LJKk3SA4ZeJif03OeBuLVRKs0+TYyDXVbmLaOERqi8C+tx4+g5utnJKm9B6lrY88TZGQgeMo6J/uZnRqvfz3xJWEuJjtp7LQaZJjCyWge/Z7C9Ke2NuEVlssFvG1cbzfnLIUSLLJ5NPwqmxVFTcZO4oaYjHFU9xZ+RIzIHKhW3pkA9NALSjE41GkxqBcFTfyRUfMMXtmclEVKPZLXYMKIFEgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by IA1PR11MB7341.namprd11.prod.outlook.com (2603:10b6:208:426::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Mon, 17 Oct
 2022 19:34:01 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 19:34:01 +0000
Message-ID: <549304f2-6f64-fba0-0c2d-da5e4b3a2927@intel.com>
Date: Mon, 17 Oct 2022 12:33:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.2
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0055.namprd02.prod.outlook.com
 (2603:10b6:a03:54::32) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|IA1PR11MB7341:EE_
X-MS-Office365-Filtering-Correlation-Id: 306a56c0-28e6-493e-e900-08dab0768b2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GgY+Z6rGJrzLAs0XnWiWQYj3Q+bHhMGIdo+vTK0hNl5A1XDWgxudO79b0effweBlHkWVCwi9ASpmslu3qb/WxTHkqc2EbSShpLc2M0c0DaXTTKnPQ0zy+0sO1Vm8/Yf/5TBfAYeNrl3UyDSimq6snQaFHuUC7EhRGMdnrsBA7l9Lgknh2bhH9WWLuz7A53SViBMYoyfYpCrTQM7lAGroW0l30DxmxpnLqAPXsvaBmG1e6xWpY4kcAyvzWxSxYj1aFQ+rn9EmGS8qKmuJlNhlKdEy24p+tOb8nY01Egcpvwe1yCXTzJmiMg7NkAfCRfSJNHfhf3RbUnUjrlbVbxWlh9BB6k7q4TFpOk2alqlKRArVs/uSP1qSZzezY1HsIx0zyRM5yvLHTx18sl8nehzUxYvJZiG1kybnPPxluqu96NDa4EBoe5jXxKrVTR0pZItBrYOa5M/KAiCZQCMG3DINcsSKQ9BEWyFKjY5htNn7SvwSwOpWuiqt8ThqA/4T4p8VOoq49Pzt1FSDPmt1R+Undl/NgdTdUUjo+c8ha3vXVlIP1rDoHzMojQEbfi826/PXGTHLublNvZXYjd9ZklT3w7yB8sRY8I/qcTGkuoishI5Akh3p4tMzCZ/h/2tO7hrxGr8dRh9zmnpbLheZrS5l0h1NSy5myj8TVjAq50k5KIMC4XKZuOJ5G//9acV5t2xxBVHErQfd55JoRMtGo53bBNTNgxkCJ9wquqG65brKznl4n89GAMMaxNDvqMvxwZDWzSEZr2Vl7zoEBZUNVSzZ+sJMu+uJrlrMOsCtmV36DUQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199015)(83380400001)(82960400001)(36756003)(86362001)(31696002)(6666004)(38100700002)(478600001)(26005)(66946007)(31686004)(316002)(5660300002)(2906002)(2616005)(186003)(8936002)(66556008)(6486002)(6512007)(66476007)(8676002)(6506007)(53546011)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzJrbnBiMTlPS3pvL3h5dWdxVmcwY2cvdFluVVQ4T1Q0citXRmljcFJWVWU0?=
 =?utf-8?B?MXpPekhmRWJML2FXelYybGhpU0Z3bmZjL3NzNkVLVWM1cHZsTkJDOWUyQlJi?=
 =?utf-8?B?V2ZVWUlyUllJMEpPVkFzUWVEc1M0d3V2eE0vd3JNM2lCaHJCUDVXOUhiVzlj?=
 =?utf-8?B?Z0M4aVI0QUhscStSSjdQRWNoWmRmSEFqM3NxZFZRMk1uNHc0dXA4ZHpVNDRW?=
 =?utf-8?B?VTJidzBWRnBMVG5Gc3BERFRlVGp1Tzl1Q1BVdnJPZTBKakhmbmV2M080TmJH?=
 =?utf-8?B?anB3Z25ERGZ1Zk94Zm9ibjR4SjdaQkNLM1o4QVJDcVNRQmYvNEZMMy9rbmdu?=
 =?utf-8?B?ZXJnajBEeEo5M05CZnJCRWZvbkdlcGF2ZGdabmdPemRnR0dLRDg3emNERU1J?=
 =?utf-8?B?SUxrUjFZY2szbm8vQWhIV0ZINGlQeTd2ZVA0V0s5MTlaZy9vMlNqYmxoL2pn?=
 =?utf-8?B?U0dpbFppRTVpbXpEOVpIOFQ3R2ZKeEFhK25nemZHTFZ1ejQxOXp0Q2piWG5a?=
 =?utf-8?B?TXo1aFM0TUE2NjFmb081VGJrTjdjTDZ5dERoaDB1SEJ4ZmlLaGg1RXl4d1Uy?=
 =?utf-8?B?SGg3cVM0bC9vK21ONTVCTXgwL1RUZUpxcXhta3VMRjIydzB2eTlCbDJhRFV0?=
 =?utf-8?B?UzZ1dVdLc29STk1uSm1CZkZ0c0M2cUpEWXJ2WTNpZy9RN1JVVzNob0V3cXNV?=
 =?utf-8?B?dVlvZ0kzclZHU1VQMEVOQTR4S21xVW1hS3cwR21HclZheUhmRmhoSkF0NVFV?=
 =?utf-8?B?d1dUNDd5b29tYXNKT2RPWkhrYjRWR1ZNdkg5OWFKMlZubEtNRElsVVRvdHVs?=
 =?utf-8?B?M2k1QVZiTzFlZnhvdmRzSFJYaitBbFdJbDdDc2hLam5vTndYZUlRdzFYUitZ?=
 =?utf-8?B?Y2twbDlTRmtSRU5hNzNCUkJxTGcyN05GMUVIS3VESytKUXRPZ05iYzFKNmxE?=
 =?utf-8?B?dDFjSkN6OHo3VEx0RERqa3Q5Rlk2Y2ptMEJRZWdBcnJ4cFFTZUtyUUxwNk1u?=
 =?utf-8?B?Z2daYStETzR0aEJGVTJ4ZTJ2VEN0TkpyTEVTa3J1VzJRcjdLQW14NDdNVlJm?=
 =?utf-8?B?TGtuWlZTNWhxZEdNcXUyMDdyeWx1Q3lyMkhyRlRtYlhJVFBHZGpWYjRPSTZx?=
 =?utf-8?B?ck9iM1BNVER1L1VSQmZLa2IxT3VLS29sZ2NydmdxNWdBUEYwdnh0bzJSOHhO?=
 =?utf-8?B?YVJvdzhPc05DQnU1ak5ZdEZKbkdVMWUxOU8rWnVIZ1Z6aW4yRVcxeEZ1RkZK?=
 =?utf-8?B?My83c3hMNDR5TE5oUDRiczVDbWRNeThJVThvNi9kNm5KTDdBWW0vd21XNHly?=
 =?utf-8?B?RnZZN2xHVE5nS2xnYmJpd256aTREaCttdFhOK0VDUVE0RVNYaHZDVDljOVJk?=
 =?utf-8?B?NzFxS3RSMElrSXJ0ZXFRSGszcWRwckxuL292UnoxcVp1STgyTHNuRWgrWmpQ?=
 =?utf-8?B?dmQyY05UZm16dXRCbnRqU1RnSEoreDZ6ZlA3Q29MUEFnRHVUNjM4SlhSc095?=
 =?utf-8?B?RmRTc1pBMW1pdkF3NlpvOXFKRWRORnU3Q1Z2WUxGVHdNNmtPMGIvdm5mb3kx?=
 =?utf-8?B?cG8yUEZ6RFpvRitzbS9sZnRFQnZoZGM2L3lhN1U2dmF5a1RrQ2hBV0FINGVE?=
 =?utf-8?B?STZkQ29ZMGgxNlc4eFFCWUtNMkw1MFNLY1piUG95K0FkcnNxTTJSL1ZTaWxW?=
 =?utf-8?B?RUNFalZaT29xcjlPMGMxd0Jkczkvd2JQTUNsOXdkVWY5blBZc1A0WlF6M3hC?=
 =?utf-8?B?aE5qSmp6S1BNc2M5SXNxczBsRGQyc2dqK1VJYnBuL1JhbkQ2b0tLbTk4UUtn?=
 =?utf-8?B?MzNUd1JuS2ZrQUxHRlpqM3JxR0tjUTQ5d3VZNFRVMDZBTzh6OHVwOUlVWWdQ?=
 =?utf-8?B?WHB6SFJnQXJ4akVzR1NNS3FkdmdoVEFWSmNDd2sxbkcyTkZFVVVYQ2dJRUxN?=
 =?utf-8?B?bjlSZm5UbEtkdnk5UTFxQkpkRGNaT0lBQWhsbXJhcllDNmFGald1MzVMdW5N?=
 =?utf-8?B?bk56SWJEenFOaWRRUEs4eE5FTzAzWEd3MkM3NEVXQlVnN1VzVElmN1J6WVlB?=
 =?utf-8?B?cnRtOFFiTWdWRW5wQjVlWklUMzVXTWszWjhtSy83c2VlZm9FU2hxUjBNblJK?=
 =?utf-8?B?cDJxamt0M0ZqbWZUN3k3KzN0a1p3ZTZhckg4eUlCZ2tRWGh3bkhpeWlXY3Z5?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 306a56c0-28e6-493e-e900-08dab0768b2b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 19:34:01.6855 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UAxVg5aG9WJEKtmxUAY5hopaQNdWspxgAuprSl0QS6uMhb8o90u2P4g6FOT6p18EqmrNJvT+bWgwqMWkZKMYwcO28RorLoBl3F2ZIquBnTU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7341
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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

On 10/14/2022 20:59, Alan Previn wrote:
> If GuC is being used and we initialized GuC-error-capture,
> we need to be warning if we don't provide an error-capture
> register list in the firmware ADS, for valid GT engines.
> A warning makes sense as this would impact debugability
> without realizing why a reglist wasn't retrieved and reported
> by GuC.
>
> However, depending on the platform, we might have certain
> engines that have a register list for engine instance error state
> but not for engine class. Thus, add a check only to warn if the
> register list was non existent vs an empty list (use the
> empty lists to skip the warning).
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 55 ++++++++++++++++++-
>   1 file changed, 53 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 8f1165146013..290c1e1343dd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -419,6 +419,44 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
>   	return default_lists;
>   }
>   
> +static const char *
> +__stringify_type(u32 type)
> +{
> +	switch (type) {
> +	case GUC_CAPTURE_LIST_TYPE_GLOBAL:
> +		return "Global";
> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
> +		return "Class";
> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
> +		return "Instance";
> +	default:
> +		return "unknown";
> +	}
> +
> +	return "";
As per Tvrtko's comment, this is dead code and unnecessary. A blank 
'default:' that falls through to 'return "Unknown";' would be better.

> +}
> +
> +static const char *
> +__stringify_engclass(u32 class)
> +{
> +	switch (class) {
> +	case GUC_RENDER_CLASS:
> +		return "Render";
> +	case GUC_VIDEO_CLASS:
> +		return "Video";
> +	case GUC_VIDEOENHANCE_CLASS:
> +		return "VideoEnhance";
> +	case GUC_BLITTER_CLASS:
> +		return "Blitter";
> +	case GUC_COMPUTE_CLASS:
> +		return "Compute";
> +	default:
> +		return "unknown";
> +	}
> +
> +	return "";
As above.

> +}
> +
>   static int
>   guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>   		      struct guc_mmio_reg *ptr, u16 num_entries)
> @@ -487,19 +525,32 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
>   			      size_t *size)
>   {
>   	struct intel_guc_state_capture *gc = guc->capture;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>   	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
>   	int num_regs;
>   
> -	if (!gc->reglists)
> +	if (!gc->reglists) {
> +		drm_warn(&i915->drm, "GuC-capture: No reglist on this device\n");
>   		return -ENODEV;
> +	}
>   
>   	if (cache->is_valid) {
>   		*size = cache->size;
>   		return cache->status;
>   	}
>   
> +	if (!guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF && type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
> +			drm_warn(&i915->drm, "GuC-capture: missing reglist type-Global\n");
> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF)
> +			drm_warn(&i915->drm, "GuC-capture: missing regiist type(%d)-%s : "
> +				 "%s(%d)-Engine\n", type, __stringify_type(type),
What Tvrtko is meaning here is to not split the string at all. You can 
ignore a line length warning message if the only alternatives are either 
to split the string or to obfuscate the code with unreadable/unnecessary 
construction methods.

> +				 __stringify_engclass(classid), classid);
> +		return -ENODATA;
> +	}
> +
>   	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
> -	if (!num_regs)
> +	if (!num_regs) /* intentional empty lists can exist depending on hw config */
Not sure if this is proper formatting for a comment? I would either put 
it on the line before or inside the if with the addition of braces.

John.

>   		return -ENODATA;
>   
>   	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +

