Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F53371F630
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 00:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD08410E5F8;
	Thu,  1 Jun 2023 22:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CDFE10E5F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 22:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685659459; x=1717195459;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FVuBzvRGKW6UWMK4qjCqo7dIWP+Kx7T/E2v8GRhFLGA=;
 b=nN+UZCT4EcZ5hpW+cB2drTNIUcUJx2ElkCzx8zMbVeIJ5cQk6y8burEB
 4eSeFrRBlnXURC2M6ZowuD4JsphIYzgKp9bveGJgzQlAgTM2hHvqzvJx0
 fEEfoTc0GKV7XeS4KTSF905IumSFVdFUC3NKNbcQD74ij5jKEzdTo2dcq
 5A2wLr9JBuLwo0XR2kxLc4E5cEQEj4mYooqUyhMgUjJO5tIq2nSwBxKCO
 HMsppXXhHSuWHQnK2LNpOgEOq+YwFLiC2ge4IC02/v92dy9JCgLueZni7
 197Sa2lunA/Y3/+eKc3nG1+6xCpC3AKte2PTFiGTiwKFMymX727rhXGhs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="419234276"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="419234276"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 15:44:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="881815640"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="881815640"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 01 Jun 2023 15:44:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 15:44:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 15:44:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 15:44:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 15:44:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=imQP/Teb/IBF/RJbV0sLqMZQpPa30xktwuQQyHkEV3WyRyYtBiKHoj3QWlsuTrohkEsPgn3IKmBzyuAPEkJWBVS10gAqgt2EgiCXjjVcc945QqFXXDIS7CXbliIESZzyUX88H0sNGOTbgV71T4qliuz46OlboZlQ07dH3r7skGGTNoRmsf66fby7xVUEQ+lPLOC9VgFFgtcaeiR927uF8YqjpeCdMIR+/8ljCV620Cf+LFIob+utJpCNmsfR/1H4XIdJr0jOv5/Q4lvo8aoHwE2Ule4HI6t4nxEBc8Q0gak9sTrmE+1BG57S+HBRlyhZKPUjNPWhzRAbMBS3/wkGDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G16sENCrYhbTCdl4KnCQHXgYsoynjO0cncm1ZxdpgwM=;
 b=gCRE02mRKyL+wo9t9PQburzdL5BOI32wiISB2FMfRZyJjIvjL68Q/exUxlD1plcIZZ2ILVteErCPTMCj/xryDVmaIBKCsBc7VzQolDLHJIJLwp7HRBosqHjGUI0l5fTTd5TCCmTRkkesueAEh5MBwzRXS0yCAEoimfXwisQAsX1Tlc05bQo8U9qpqcWXjpy1UC/z2kTudiJx1XrKAmgHM/vVLqmmDg53GjdSNZucSi3d/OzX/EZzMDFty/6GkCfDBwYxuQEnk4ha+FidHuGVrxYPlJjNuUY2UZodRBL7O1Uw/emJSlbwfSVsET2UShqFig/cKVsXbyU6whAXPE/TMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CY8PR11MB7268.namprd11.prod.outlook.com (2603:10b6:930:9b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.24; Thu, 1 Jun 2023 22:44:13 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4097:4a1e:9703:1932]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4097:4a1e:9703:1932%6]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 22:44:13 +0000
Message-ID: <08060955-682c-1cc5-a415-3f422fde9cb2@intel.com>
Date: Thu, 1 Jun 2023 15:44:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230529114902.1528192-1-suraj.kandpal@intel.com>
 <20230529114902.1528192-3-suraj.kandpal@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230529114902.1528192-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0258.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::23) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|CY8PR11MB7268:EE_
X-MS-Office365-Filtering-Correlation-Id: bcb7c2be-74a1-485e-f721-08db62f1b8ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a3f0vfOoiQcsXb1/80k+DsJb3SlT4lgmARNrPeXcgwwZlSR+iZ2XaUwvG5bU25mVf1o5eAt3YGHrj4D8TJ3oRthY5yprw54W+adtWQ3ByGDg6eIMMR4toM560ethQNu9QAHt3ZFkbU05aCYXdgSQdotCwg/BqAlNeWoTBR+YJRyyxIXvUBpIisRO4/L+qoICARgbcwK330sPrFNVgGAqkN1OU9uwcZfNUAYe/IYqdFZyixWMKo4SDUb/8zX4FIAymv2p+M9m0mHQV0MkfsTl88gx4P7YNpgmipKWO1YYAXFCbivxfIjgcFxjsLmXsfa8kITcghr2jaf3VrqjEUPLNP26mWQpjl85I8BC66fOgg8A7ViACguipgRI64KuPY8WYuRPToPB0M86RGrKq5VuCHzmozRJSaxxkJ86hJel+VNnCztC+wn5/OQQdkvkawyVenjzihbX2aqtA/hSI9hS2RKECGTaIwe2QBTL8GDd3iQE0furAkLTwnkogD+Hfz17Q+tXSSwMCMs2PSL3ZLsGJok3EDXPhK2swVcmVXbHWWBXgYBwnG1GFXiaBaOBmJp04qaWH3fvupTSiZFi8gO++l4GBaS1mfgeKo2IkQc0o53OL/Ee23ecAgs/PWuDDGQoTJmjPT3bg9lO3Jsy3VukyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(39860400002)(136003)(376002)(451199021)(31686004)(83380400001)(86362001)(66476007)(2616005)(66556008)(66946007)(186003)(4326008)(82960400001)(36756003)(2906002)(31696002)(26005)(6512007)(53546011)(6506007)(8936002)(8676002)(5660300002)(41300700001)(107886003)(478600001)(316002)(38100700002)(6486002)(54906003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aThhRmMvTkY1MVpMZlhEYTdIYlV0ZXA5OUt3RnVnTFByYW1sR2VhTXdSczRl?=
 =?utf-8?B?R1ZSNnNtd1ltSzkxRlpQZTJxOUkwT0xHMktVNHlJa3N6Zy9NRXJIV2pCNHlo?=
 =?utf-8?B?WVNxSURVL3gvVStoVUw0dHN2dnJCQnhNeUYwdlhUbXU2Q3hwb1BjNnJLaXFC?=
 =?utf-8?B?QmpKMWd2dTk1STQ0U2NNZWdPckVCTXQrTkY2cFNrRGZmN1E3VUVoT3FteDI2?=
 =?utf-8?B?eXpGQXRvZlBoSlNiYzVrSmgySDF6WTgwT0xoeEpuNkxLNlIrN3BCR0VjRXdU?=
 =?utf-8?B?SEgxZFN3Uks4MEF5S056UjJIYnF1c2trRHJ5VE9RZVBQRzVWNXFUa2FJT0lW?=
 =?utf-8?B?cUo2Z1dzbUExT1k1NlpjOXJ2MWxIdG1pb2YxQ29nekpxNVVRZVFHempUU1dS?=
 =?utf-8?B?WGVwVmU1TlFzd0cvUEVjbmtsOS9mdUduT1hjWXRUa2xQSWUxcnNyVmtTbmtE?=
 =?utf-8?B?bnRxVnFGbUZlRnRmUkcvemVESmRZTmJ0RWdNNjVyMkE2Zjk0MDRmYWpLelpu?=
 =?utf-8?B?SHN3TG1LQnpuaXpOdE9ycHFmQ3QxY2NUTGVmbnc3Rk9uN1ZHdE1UTytJR2dD?=
 =?utf-8?B?a3RXTUtwdWUyWTQ4TnNBZFNqUEluakJSdGN1R21ybkNJbEpVSkF3S0x6TVhO?=
 =?utf-8?B?M1EyVFlNMGE3SUE0YU9QMmhwY1dtN04xL3BlUmpDN2ZqWXdwTktnb01rTEJq?=
 =?utf-8?B?ZEthcGVRN05ZRHUwY1BDN1M5dzlDV0JYUFV6T2RKU2JGSHFibFlyS0gxU3hD?=
 =?utf-8?B?TEh4dFBTbWt1bit2bWg0K0lrNWJkeG4vYTlZUHU3b3NwS0pXRUdTRFY2NTht?=
 =?utf-8?B?blc3SEU2QmhmL2s2dlZsTTE0bTRUQ3RjSXNTTTRtbFUwR29hK0J5WkQ4Tlk3?=
 =?utf-8?B?OVJhZlBXMm5kaWFJQWdlL1FKcmlKU2VhVmxoYWhwOWVDelMzc0xJbnEwczM1?=
 =?utf-8?B?T0d5YXFPenFFd0YrOWdwQTdQaUtsQnZCS3R0T250MHh5U2tyMlNST1lmMmUz?=
 =?utf-8?B?d0VrMHRZWjcrckFYZEdUMHpkTWo4Ly9UWjQ0SlQvL2ZYdDFCelAwNGhxN2ND?=
 =?utf-8?B?bXgrWGVHcGVubTR1MmtZYWpseWZBWm8xc2NQYXR3L21DNTRRQUVUTld2b0hU?=
 =?utf-8?B?VkxCVFN5WC95ZWN1VzU3TXFUZGhQNUFBbnlCUWcwb1pFL2RHMnVqWlFvR0di?=
 =?utf-8?B?QXdHZjUvWjhpaUR5dkpEQm81d2c3WEJ3TjNsS1FGQ1NvVXBnRm5IaHdPa2do?=
 =?utf-8?B?VDNJMzRuaWp1QlhGYlZweCtTS3JOREpoWG5yQmZvMkVJWTNTOCtlR1lHdUkz?=
 =?utf-8?B?M1NnczFWamFlWWtlS1lPWklZbnRtcXpHaVJSdEJsWHBlWXFXd0ZZRUwrelJQ?=
 =?utf-8?B?eGI2ZERDZHk1cG1hQStuVFpnekNRMk1PQkpHUi8zM0lBZm43Z3hncHl0aXpW?=
 =?utf-8?B?bm9wVGhHSlBsVEJpMy80OWZoYlBZQlMxUEdaUFlwcUhIOGExOXF3d3JKd3hN?=
 =?utf-8?B?SHFURlNTcjF4V0JjQ1p6Qk5Eemo1SWd1ejB1d1VHcmx5YWo3ZDhhSVVCTmpU?=
 =?utf-8?B?YXBJZEM0M3hjRTdvY1VaNmFFeEtxVUlFVWFHa21VSXEvOGZhSXlZM1ZXTnQz?=
 =?utf-8?B?dzlmaFQxZWk5L01TbUlkdFFsR2pSZmlyR1NIUHlDRUMrV0I3S3p6TmV5Wlla?=
 =?utf-8?B?cHd0dUxxR1BOeTN6Q0EzUzBiNFAvMVUwK1pVcFFPbVZZVCsrOXJtMmFJSzg0?=
 =?utf-8?B?Q1hiK0tUcktYTjQ3Q2xjT2VyL0kxeVcrcjBpay85SVZoTUdFQkNCOFl0a3lF?=
 =?utf-8?B?UTlKbUp2YkwvdzZyeHozSm4wZi9WbUk0UzloNE55WWZLOUJQUnB0eFkxa29y?=
 =?utf-8?B?WmJsbk95MVdsdjZlS1dYUXFia3BYTUcyUzNaQXRJMGNnUUR6elpjdllsNVFk?=
 =?utf-8?B?cDl6VzJkdEpMc2hWNldXWGN6c0JQWENBVUNTMU4vcG5JajU4bTNiNzFqZHhl?=
 =?utf-8?B?Rk1SVFllWm42MURuekRxYVpyQklKZXdRMUdqVXFRS1lBSlI0c0M1blQ3Q1FJ?=
 =?utf-8?B?L3JUYXM5R3RZS3EyeXNXblpCbmFqZlFzRGJqQjVNQ0xySGo2bTlIVnNpNTRy?=
 =?utf-8?B?Q29BbTVsZUxVOFQzc01URFY1bWNXMEMxTWtSZTZTYWFsMEtCeXkxWFpyR0FE?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb7c2be-74a1-485e-f721-08db62f1b8ea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 22:44:13.4842 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRJnxkxjLLTw68Gjob7EQ3oB6qDy2ELq5ydDsfpP7FhZTAaWreARj2gyKrA5wmnsqfAj6Mn7v0+Pgn6uPfseKjguN/uqtU4kgm2x4e9FBSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Modify
 intel_gsc_send_sync function
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 5/29/2023 4:49 AM, Suraj Kandpal wrote:
> Modify intel_gsc_send_sync() to take into account header_out
> and addr_out so as to use them to verify the message send status.
>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

I think this patch should be squashed with the previous one, because if 
I understand correctly the code won't work with just the first one, 
which could be a problem with bisection. The changes themselves look ok 
to me though, so for the unified patch (with the small fix I pointed out 
in the other reply):

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 29 +++++++++++--------
>   1 file changed, 17 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 72d1e261d0a9..5f29c3c559fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -726,38 +726,42 @@ void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
>   }
>   
>   static int intel_gsc_send_sync(struct drm_i915_private *i915,
> -			       struct intel_gsc_mtl_header *header, u64 addr,
> +			       struct intel_gsc_mtl_header *header_in,
> +			       struct intel_gsc_mtl_header *header_out,
> +			       u64 addr_in, u64 addr_out,
>   			       size_t msg_out_len)
>   {
>   	struct intel_gt *gt = i915->media_gt;
>   	int ret;
>   
> -	header->flags = 0;
> -	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr,
> -						  header->message_size,
> -						  addr,
> -						  msg_out_len + sizeof(*header));
> +	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr_in,
> +						  header_in->message_size,
> +						  addr_out,
> +						  msg_out_len + sizeof(*header_out));
>   	if (ret) {
>   		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
>   		return ret;
>   	}
>   
>   	/*
> -	 * Checking validity marker for memory sanity
> +	 * Checking validity marker and header status to see if some error has
> +	 * blocked us from sending message to gsc cs
>   	 */
> -	if (header->validity_marker != GSC_HECI_VALIDITY_MARKER) {
> +	if (header_out->validity_marker != GSC_HECI_VALIDITY_MARKER) {
>   		drm_err(&i915->drm, "invalid validity marker\n");
>   		return -EINVAL;
>   	}
>   
> -	if (header->status != 0) {
> +	if (header_out->status != 0) {
>   		drm_err(&i915->drm, "header status indicates error %d\n",
> -			header->status);
> +			header_out->status);
>   		return -EINVAL;
>   	}
>   
> -	if (header->flags & GSC_OUTFLAG_MSG_PENDING)
> +	if (header_out->flags & GSC_OUTFLAG_MSG_PENDING) {
> +		header_in->gsc_message_handle = header_out->gsc_message_handle;
>   		return -EAGAIN;
> +	}
>   
>   	return 0;
>   }
> @@ -809,7 +813,8 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   	 * 20 times each message 50 ms apart
>   	 */
>   	do {
> -		ret = intel_gsc_send_sync(i915, header_in, addr_in, msg_out_len);
> +		ret = intel_gsc_send_sync(i915, header_in, header_out, addr_in,
> +					  addr_out, msg_out_len);
>   
>   		/* Only try again if gsc says so */
>   		if (ret != -EAGAIN)

