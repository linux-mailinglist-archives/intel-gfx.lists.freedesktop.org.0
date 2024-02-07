Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C1A84C466
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 06:32:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C61E10E0B6;
	Wed,  7 Feb 2024 05:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LySGRJA7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A16410E0B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 05:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707283915; x=1738819915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VpGUJiQdiwF6HYqiwdPzktebgbikTq8JbDYwghSsNFA=;
 b=LySGRJA7ROXzS/vpnyCnVfp/VYjSfkjs+GC5dWLyGndl8+7cOp7gFY7Z
 prV+RyqRNw64BonwIxm8tzf0VSD+oLuR5+DRI1qV47k7COC1REH+qa5bF
 emBtP7sXHTNMpFtSQQGeRXNeudAo4OVBf/ADkw6/Q18icJaCPSHiue3tX
 7XyZV8u2In4+O6Q0+7lxqDqxR7WB6wlAuXswdbTf/MoOxB1D9coRGD6wN
 YDF0XXpSad/UgxZuRH19mYOn3Zt03wrn6HvnMHjPo30p2iAgruf0n0epO
 hAEDJdKgS6oY5qoGYxgv+c/DbLaXNX1eNwXb7BUInZCM2/K3guz44t2Y2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="4697251"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="4697251"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 21:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="32053649"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 21:31:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 21:31:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 21:31:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 21:31:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ir1sVlzsx8JzHhfxSwDn0+8RzT/JmelxRJJQ86xpGjrfrOzIzHrzH6Y+ZYjtxR3pOlbgaQIsYPO7vMNiOb+aeS+Jq6M1lSsEiXYSVAQ8nRrIr8Ep7UOgt56CG37w0k2gyMOTai6q4XQei5Slj0y0lcUDJL7KAG2unCBUMg/xVroLCLWBsF0lVMYVsQZJbux1PM7ZRIsB5taCt185Gtj+qCK48xWqhPVAQGS0zEkqdm/nTwuiswOAHoKGEWtJA033vYLGn7KAHXzAnSADY7CN+o9OEpPWx4nosb33i3LegMXDZsyu/FpYDe/dnD8T93s3Ij0iM9zhzG0PF/Kn8kZPxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6nYGZaowS7WseLU2w3gstfe5BA1E2ZxXn5wp+mAJEsE=;
 b=V7rNMW6Gp9hiFtWnOoi5i3M3gKc+no6TVSDPVNtgpPzwvb+BWXKJWulq/xMp1ohXclsJXq93n8bv/9xlcQD+7w6n3dqMRsIzwRjIqByBDB3ZFrhI33MTUrIxjsQrNHJB8Q3MDVfVvJIXONnxFG3aYmA3CWgD/7tWs5/pUDl66gVnE5Y4YihLEoswtSltJ6GZrR89FLKBCItTV7ghIGim3+R57ENAOqKyhwwPq/NuwAS8uiAIp6rEdvwbCGx75eOoTv5wT9xgp8IUXnXTDr7t3E86Cnk9rXqo0LnhuM9EbIQnVynhnz8uLXdwgweGItUpVIsbPa8wsJyTGrIW7AvjDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7476.namprd11.prod.outlook.com (2603:10b6:a03:4c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 05:31:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 05:31:48 +0000
Message-ID: <d0fa2710-05fc-4724-9a14-a239f8705ee1@intel.com>
Date: Wed, 7 Feb 2024 11:01:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] drm/i915/hdcp: HDCP Capability for the downstream
 device
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240204142505.1157146-1-suraj.kandpal@intel.com>
 <20240204142505.1157146-7-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240204142505.1157146-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0199.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7476:EE_
X-MS-Office365-Filtering-Correlation-Id: 260ed8ee-78cb-4efc-2af3-08dc279e1472
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MEiO58dkDe8a1zf6AfOjhPm/s7UYQMbYe9kv1jRUSmW4ZD/uf1j1k0jLhJlQ+txvSE74aD0rVmDD2HS26f9qfmaYF30L4rZviVDsNwu4x/Ed+bfbwytckTVLtma7z7eandOzCt8OuzoCtPnvF8CxSG28K2cn2hxYnGdWXomxk//EEZlS6ooLNdC3R006V6RPy4FT1kCUxN3GmaaIsrbmmtdH4thYaliMs63rhWk5FfXiXtajVvWRCrqcrx8kxTuOOQBak66e+9zU0IZDrL0LyWRRucjSZR4Ta0lVUtIq52DFFZ/0pGX00EaR2IYWdqHBOQOJKF3DcbCFql4v/YXj/Cdm4fTlx6zS5MJpIKOcOQb8GdD3u0GGSHIuiABrJZFxxfODXcHoLnh7cFiy9fQt3G8+GWCg8mxqMsAv+W7HmsQX/cN0VSCww9OVY95E1pby4K+t1jphyavb/1XbU4ZWFE+7XhZjosdI8M+W/LR9+XlWrhM+WKDakJ5Acl4I9Tsj9c9gyc0IzBs7Co/S9n8TsJuOjgW/fOvmbuZ/n8KsZXgCKwut+XMSwhYpCG6KzqRigsfCYrW2EArKL4CHMzmURDfIwrXyHxHjXSnReco1Mh+iC36UDzOYATt4Rcnxde+pW6gQdenXGHcnRTD2JvEd2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(136003)(366004)(346002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(31696002)(82960400001)(38100700002)(31686004)(83380400001)(66556008)(41300700001)(6666004)(2616005)(6506007)(66476007)(6486002)(478600001)(6512007)(53546011)(66946007)(107886003)(26005)(86362001)(36756003)(8936002)(5660300002)(316002)(8676002)(2906002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUlNbHJ4MzA1dEtaREZ4czNxTTBzelM4dzZzaEhhejk1MkxIQm1jamNRd2J5?=
 =?utf-8?B?aHBaaGhMa2pOU0cxT3BScXYrL0gwWjVhZy9TaGFDakZzN0oyQVFVS2xMa0Iw?=
 =?utf-8?B?RVZxVkdNSmU1VHZvR3RSUkxMbEcxTGluNStobDF6T1MrZXEvaENzaGQ0L1lm?=
 =?utf-8?B?cmc2bUMraUVpQ05EKzdNZkxBNlVTTXVmcjhZNENTdGFWMmUxeEFGSXQ1MzVZ?=
 =?utf-8?B?MDN0bzRoNjh1QTdhREprSjFHcGtTeWNhemlrK2xQdkE3SmFUTjMzOWN0THJV?=
 =?utf-8?B?QzZ4WVpCUGd1UldzMUczSVQ3WWU3NldwbWdLZFBHVU5kUGt3RlI0ZnFUdmVa?=
 =?utf-8?B?UGFaNkQ5OXoyRWMrY25QN2c0YXpMc3pycDd6NFovTlJDT0xrcDlhUnBUSnMv?=
 =?utf-8?B?S2RZV3VGaVVVNEEwQkgwdk1RdTBmLzAzNExyUkVTVjNTQjlNUkFEU20wOVc5?=
 =?utf-8?B?REJLLzlYakJ6eS93ZzAyQWRXKzh6OWRna3QraGNMSER0Z1JRanlhUHlTY05H?=
 =?utf-8?B?YzRwamRoR2tRUFNpdjdkS0ZMcDhCQ2VPWmQxUjV3Y2VEbFQrK0t2THZhRlhX?=
 =?utf-8?B?QjBNNFdDVk91V0t5Zk1CeTMzWlB0UklWNU1sL01ZSFFXeGtLZVRIOVArdEZk?=
 =?utf-8?B?Sm5JVXdpS3VDWHB4TndDZzJJQTYyb2Iwd04xc281U1dxZ3h5MEtoVkJ2R2p6?=
 =?utf-8?B?N0phMXpxVlFqa014cjgyNUxiMTJVY2RCSURETmZjbkkyZmpTYkNBU3NnTStj?=
 =?utf-8?B?S0QzRFQ5TkxjZWQ4V3RzeXptZStES0xOK3RpWXE1Y0g0RlVHejNNMisrMkxQ?=
 =?utf-8?B?dTE5WXMwUUI0WEZQK3Bsa1JKZk91SGRmUXNZTXYwQlBPMkNTeFZmOVJlTy9S?=
 =?utf-8?B?bmZxSGtQVisxR2M5N0EzQ1dsaU5CZUhrYU45NmFIUXUxYnRHak16dDVQOFdt?=
 =?utf-8?B?dDJ4eWs2bWc1WXZWUXM3cjFxMThwdXRXQTh3TkJ1aVd4dThHUDZFb1IreHM2?=
 =?utf-8?B?c0UzV2ZpbG9KU1VxZk5QaStJWVNxUUNaUWxuVkhwM2hLWVNhaEMwSTZZU3dL?=
 =?utf-8?B?WW5RWit1Q0Q5OHhDTmY5M2I3dkhQT3dlbm1sc0tWZFFtTTVPaVVQTC9IQ0dP?=
 =?utf-8?B?ZnNLM081ZVlaTUNPRzRRajJVSzdkQ1cvU3FhMUNsUTRlNWVUVm1XU1hUWkNv?=
 =?utf-8?B?dFhETi9iWVNZaE5YYStFU0l4WitMcmp6NndwdCt4R1pncCtYNThUT2k5cjNK?=
 =?utf-8?B?WGszamt5bzdsWG54eWljM2tzTndqNXJBMzBteTlSYzBFaE5KTHgreFczNzZV?=
 =?utf-8?B?ZjUxVWdrS1hlMGk0RWY0VjE0SWZKNWJPd0R5WDFCeFkvRnI5dzFYY25NUUZQ?=
 =?utf-8?B?NFVIRU1jbnlEaTZYbFV2V3pwcVJTeHJwb3hvMXJMbFI1Z1VLWEZPem8wNEY1?=
 =?utf-8?B?M2pWV0ZGeWFRellOUkQ4VC9CRWUvS1VTSzlxbEYxRFo2TE9iUnQxMU5qNFpj?=
 =?utf-8?B?ZTRyZlh1Qm4xQlNQV2p4TlkxYjQrVVJqYytGZGZYeURWTHZZVjlmOVkrNlNK?=
 =?utf-8?B?Z2hLbTNubFYwUE93OXNaOTR0Zm4vZHUrQ3ZwWm1VRGhOYURwUzJReThvY0s0?=
 =?utf-8?B?YlNiSUc4SHdQNXdVZ1RrSlNGb0Y0ci9ma3M3UGFHM09TWWo0cWJyZ0UzTFN5?=
 =?utf-8?B?RlFJaXR2MXNvWjREbk9MbGdHSHR3dnZvYTBlMGQwWTdmdkRaMWU1NnJ2MHhE?=
 =?utf-8?B?MFRiY09ibW4vTU9NcGM4SnlDdDUrTjRndFAvUStwT1pWME9HMTYvWWgwY3lU?=
 =?utf-8?B?K2E5cFcydSs2ckVMdXFnalVwcFJBRzRBL1NKZENON3JIcG9XMVVDZnlmb3J5?=
 =?utf-8?B?a3BkYm5uOXZYUVVNT2hmQUNLbDFyY2tsQnllL2w4c21KdmtwY3VSUWcyZjdO?=
 =?utf-8?B?QXpna0xlLzFyRVB4ZzZnMUlRYjJMT1JmT3BKVSt3cFcrTkk5OGlWK1hMRkZh?=
 =?utf-8?B?TlVmOW9nQjIxdDNmSmxVaFFVaXkxeFZJOFEzaTFnZ1Q0S3QxRjlxbzZITEw3?=
 =?utf-8?B?Y3p6aGk1bDRuVzYrVHJsWkhhcjRGREdBOUt5THFLZThOTW9vZitKeEJOendu?=
 =?utf-8?B?R2h6ZkpDSE1qdVlqa3pnQU5mYkQvUC94aEE1U3NSV3VqREhDc1I3eDRHTmpX?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 260ed8ee-78cb-4efc-2af3-08dc279e1472
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 05:31:48.5601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h1IXKFBdLTQu/pykyyIWIytO1G6Py8ZLEA4ngZMPsvXSWqI4Ma8V8dEiJ1jN9eSrQ3ZV8mwy5gr3UfP9eeO426pdCBPoxZT3KTAExkwdV/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7476
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


On 2/4/2024 7:55 PM, Suraj Kandpal wrote:
> Currently we are only checking capability of remote device and not
> immediate downstream device but during capability check we need are
> concerned with only the HDCP capability of downstream device.
> During i915_display_info reporting we need HDCP Capability for both
> the monitors and downstream branch device if any this patch adds that.
>
> --v2
> -Use MST Hub HDCP version [Ankit]
>
> --v3
> -Redefined how we seprate remote and direct read to make sure HDMI
> shim functions are not touched [Ankit]
>
> --v4
> - Fix the conditions so that hdcp_info with remote_req true is sent
> only when encoder is mst [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++++++++++----
>   1 file changed, 19 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 6f2d13c8ccf7..a51857dc4ece 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -188,7 +188,8 @@ static void intel_panel_info(struct seq_file *m,
>   }
>   
>   static void intel_hdcp_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> +			    struct intel_connector *intel_connector,
> +			    bool remote_req)
>   {
>   	bool hdcp_cap, hdcp2_cap;
>   
> @@ -197,8 +198,13 @@ static void intel_hdcp_info(struct seq_file *m,
>   		goto out;
>   	}
>   
> -	hdcp_cap = intel_hdcp_capable(intel_connector);
> -	hdcp2_cap = intel_hdcp2_capable(intel_connector);
> +	if (remote_req) {
> +		intel_hdcp_remote_cap(intel_connector, &hdcp_cap,
> +				      &hdcp2_cap);
> +	} else {
> +		hdcp_cap = intel_hdcp_capable(intel_connector);
> +		hdcp2_cap = intel_hdcp2_capable(intel_connector);
> +	}
>   
>   	if (hdcp_cap)
>   		seq_puts(m, "HDCP1.4 ");
> @@ -285,7 +291,11 @@ static void intel_connector_info(struct seq_file *m,
>   	}
>   
>   	seq_puts(m, "\tHDCP version: ");
> -	intel_hdcp_info(m, intel_connector);
> +	if (intel_encoder_is_mst(encoder)) {
> +		intel_hdcp_info(m, intel_connector, true);
> +		seq_puts(m, "\tMST Hub HDCP version: ");
> +	}
> +	intel_hdcp_info(m, intel_connector, false);
>   
>   	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
>   
> @@ -1131,7 +1141,11 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
>   
>   	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
>   		   connector->base.base.id);
> -	intel_hdcp_info(m, connector);
> +	if (intel_encoder_is_mst(connector->encoder)) {
> +		intel_hdcp_info(m, connector, true);
> +		seq_puts(m, "\tMST Hub HDCP version: ");
> +	}
> +	intel_hdcp_info(m, connector, false);


Lets not add this for i915_hdcp_sink_capability_show, as this is used by 
kms_content_protection test which just search for HDCP1.4 and HDCP2.2.

With this change, the test also needs to be modified. So lets have this 
and the change in kms_content_protection separately.

Otherwise the patch looks good to me.

With the removed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>   
>   out:
>   	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
