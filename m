Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2DD8466F9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 05:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57EB10EAC1;
	Fri,  2 Feb 2024 04:31:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lb3lwvs2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A878C10EB87
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 04:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706848268; x=1738384268;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vgJCBZqGmg2d896I4xsV3xicKNAWr6K9XD3anvUivUQ=;
 b=lb3lwvs2OV4FfVPPrWCAHn/8SxaBKtHEeRau0nMXgOgY8DNnHcU4IbJN
 Yz5kyLBnO7U9OUeMs7ubgydWPGvi30lK96KfyYRkfKsp8IWRJFruIMXPY
 s6dttzkbfG6Ib49Kcgb1pqO+SVv9TVM0H6eL9fF6KdDNnn3JGkXl/l+vm
 E7HG0Cjx+ai0o6LdmBMNpix3YbGB/k/uc7Ay2JlIu3yJBnBrYA9QGeWPD
 LND2Ip5iLHabAbfgRdEW9Ngn5BqV9hYsFDWGgRtkMbSCQky/8DWLArFgm
 Rb+lVNUY5y+LNOnqLQxcCspBjBmIOSmIOkmAv18ZcF9q3ihcsnCdHk/1o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="468294241"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="468294241"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 20:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="859317347"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="859317347"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 20:31:05 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:31:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:31:04 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 20:31:04 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 20:31:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bYASCHwf5kpjoIkwhrm0RdWEc9yCwudiNq0TV2zU3dccGLakaqS4hoQZIjkfNYUgjc5PwaJQowOqIVSe9c/SCGLSip7gDTuPAFc5XJ2UrPPC+uXKTgi8vS7Sht2vDC4oWKbxNqANMaqcubY/ozYhvloLZ7DFNo3OhP/Z+o685lVrWJWAS3uXB4PUeu0Hoxgg2M8QkccacwPYoyP1GXt4Rcb1/9w8E6mBMl8aYQlQi+pSMB6kt0qYMOYRdmtiZZzDEfhWxkB7lsZaTZhB/Meu4/Zg6uoxWm2zpWDVyvsr2McZ+osi3rTr1Uw5+aLVlAouXP6l+KtVsKVb0XavOz0xZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w8AbFf7qTEr5QRjFgy9tx/SQw5onwmSMYIEVo4h0rzY=;
 b=aruUAKhn4cIT8ldBcFJ3TY8yBcre/T1EPVlpyGGLSWZdajg/U9FkKuoSlWJ9uvX9/4cP46m4Ib1S8zGRk3UMDgJqf3BjQ9+f2JUmWWI4WQkUs0VFbYGlNXsSpxq2ZA0h1ARKMnHtRhi0lDdMJqXejL58soDAayA3WSkXi6lgPHN+b9lef2uKj0En/RNtNA7XuOOyqOOkl9AP4+XIO1xNV2mcp+ytqa7C94Z0oTqTzeuOoeV8di2pjvEQYB/YvTc0KpKl7pUh9d9W+wnkkMULUggkRxmMdwVdrtIcXHkNUjt4KTrHWzj3NfzmxKHmnTbSOz8M2zNjJUC2I9ubABQBlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5522.namprd11.prod.outlook.com (2603:10b6:610:d5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.26; Fri, 2 Feb
 2024 04:30:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 04:30:58 +0000
Message-ID: <2c334dd3-a4b7-4175-b7d2-5b3285c6ac2f@intel.com>
Date: Fri, 2 Feb 2024 10:00:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] drm/i915/hdcp: Move source hdcp2 checks into its
 own function
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
 <20240131193929.938748-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240131193929.938748-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5522:EE_
X-MS-Office365-Filtering-Correlation-Id: b817faa2-e717-4588-82df-08dc23a7c096
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ieqmKWRUydWUDz96aQOMOX7PaD4fgqUYkHZEeYYG6M6wZrAJnW0qrLPEBS1J8XY85rBYIRy+qhg8tSM/ezHRtcfgxBEhukJC4aTEv0r3gfEM9w4G5MN2c0OJnDvlK73wZFFKdHxOR+cyC0Yq0w20+ijzJNFNWJBU4TCmK7Y89sC51AfWY2M9I7/hfG1ZcfR2utTQ0Nx5jdSlop8zK9Rv9axSVYlXAhi7an1o+NxHk9vS52b4ry3lTCV4Ut9hMsUSXIA/2lzXYE/yzvyKA9oQbGhNRPt2wksWT+JBz4kces6W+eS+W/FE+QvVsPNLceK83h4Fxc12zBbZEZ8BI0Il9rXUCI2OFJjBaT0jWuco+TN+TEHyHJktWrJacbKpd5kvwAMe6iSSJNhFghoxV0mpQyqooIR2FUjLcbvaHt59Nde2dB8sefPqnPJOzU1iI3GZuTxBdCvZ/7XD4AvgVee2rY80xEpzrcA3Pm7lpDRUeP1ViE090b1I1PbhXsBayZNvbbRa0/ztDKUcB6t/Q1vESzBQZa9++BwzjjC2r+YNVLSho4Binku+2sJJcqGi4xw6vCwCHOFJFeinKOGrS7lS3hZulgpq1xSbHtO/yU/TevZY0i/QSyFPjZbff5qTsl0aCDwkzY8U/xXTL9tDUd2m1Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2616005)(107886003)(31686004)(41300700001)(26005)(36756003)(316002)(6512007)(478600001)(53546011)(6506007)(6666004)(83380400001)(66556008)(38100700002)(82960400001)(66476007)(6486002)(5660300002)(31696002)(2906002)(86362001)(4326008)(66946007)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFAwYU9QMFZHVldjUDljam1oVE9oS28wZkRoTDcrbVRxU2dKdU85dkRiby85?=
 =?utf-8?B?YUZtakZHbm00MUttMWc0Y3BacjVkZHZZaEFseHFoZDRrUklOWXBOVzUyTGVv?=
 =?utf-8?B?MjFjU2VKRmFXOVJRbkFEOWlnZXpGTVJJZ21RUW1DdnpFNXh4bEtqTW9FbWJu?=
 =?utf-8?B?VjRuU2RROVZQQ1RUQ1lFVEJEZjQvS1JZSXphS29VWjZkWlNIa0haa2ZTdk9n?=
 =?utf-8?B?MzMvdVlIbGNFTmd4V01HcUtSODZLcXRScUZ6V1ZZdVN6Z3BtWUlEZnZNbUxj?=
 =?utf-8?B?WHpFSkFEbnR5VzJXL3NpbndhdkJNeG5WeFpSLy9DUHZxWnd2UHIzRlNRZjRQ?=
 =?utf-8?B?NlczT291UWYwRDA0ODUrYmJxME0rdTZ1eCtUZmdUbHFDemhkcGxOT0RhOEVU?=
 =?utf-8?B?MEI2ME1jZzRmV3o2dEZTVTY4R3FBTU5rYjhNd3AwQ3AvVmQ5b2E5OHdrTk1S?=
 =?utf-8?B?clNTTHYzcGRFWEFXOVN5SzhRdk1xTXEyK2NZWnpXdkJTZjJ0ek0yUU13Yjcx?=
 =?utf-8?B?d3BVZlZnMUtvMHZJQU5WamZDWXZldXhtSHo2OXJnNUUvOUhVL0RsYlhBS3F5?=
 =?utf-8?B?aS9HaFNxd01wMVIwY2lnZ3ViM3ZndHQrQktscFQ4YnUrOGdsVUxhamR2WW1J?=
 =?utf-8?B?d0dJdVdKRmduSjVuR3BKUmdzRTl0QjJkalRUT3ZSeXBVMURLUTJSQ1U5K0Zy?=
 =?utf-8?B?WEozdkJQaTErQVZSRzlNTjlCeHlZeDFUbUM5R0h3Zk5OaGFJTFMzZEthTGRM?=
 =?utf-8?B?UC93MDZ2MjFUTWV3UUlpYjdUSGFYOTV5K1gxVEI0TEVlVm5wcjlvQXZwN05Z?=
 =?utf-8?B?OVAxUm9WYm9vQy8wbnhwRHIvMng0a0ZzMnRDc0Y0ZER3akxRemRpZjlnNXBG?=
 =?utf-8?B?cDhjSkY2SDJVc3JCNW9KT0FwdHpIQmtmQVhQVGtJQWtMQVRPKzgrZkltVStk?=
 =?utf-8?B?eG9PMnpnVkRTaDkyTWozbHp3K3d3UzkrYWRxQlRtNkVNelphTFVtN1BCWVdP?=
 =?utf-8?B?eUhpTHBuQnBjNzkrTmZ5ajZlSnZkV09TaGgrcWNmUXNseWlZdTkvZ2g1T3RD?=
 =?utf-8?B?M01lNXJ4TW5DaE1DMTFvdFJHMW83Q1AwVHMxL1Q4NUwwNnFuOURTMFI1VlJC?=
 =?utf-8?B?ZXZuY2YyVU9mUS9wNGs3S0Z2UVdsYXQ1MGVTMWRSUW5FNGovWGRrUmhXN0ht?=
 =?utf-8?B?dlN5dTIrK085OUZqQ0xzK25abWQ3VXRmSjZnaEsrNkhLZkNyQUhvZDVNbXJv?=
 =?utf-8?B?T3NleTJUNGNoZVFSZlpiMFp6bEt6UDlMS3pGeDJUbllWMWRTTFp3S0p1Sjcw?=
 =?utf-8?B?b0xJaU4vNVNLU2gzTUNmdmlVdXZhUUZObHcxUFVjVU16L0p2YW5seVQwdi91?=
 =?utf-8?B?YVFMMUlIY21uNVBBQlJIV2xNcU1PTnJBd0kweXB1MHhSdVBnY0NWMTNOTThR?=
 =?utf-8?B?akRwdUlUWDJ6RlJHVk9SemNJU0tKUVhmdWZDd2VybTZHbHZ2aEM5bG5LVnlL?=
 =?utf-8?B?UkcvL25acndIM3NWZFh1eTdKU3JSemllaGpKcUpBOFMybWZaMm5jeEg1YTZK?=
 =?utf-8?B?QzdGNEM1TXZBNDVhTVY2U2ZZcHh6aFJ1U0lOZmNaTjMwT1FZNWdQRW5MYjhM?=
 =?utf-8?B?NEV6MHFNbWdqankvK3RJTTQzR0xwb1Y3VnVuYjA1N0UzNW9xdEVSWm9Wblly?=
 =?utf-8?B?anBRRjVETUEzdXlUcmJqeVJIc2dnNjU4Tm0vZFVBejQ1YlJJRS9JRUFwNm5D?=
 =?utf-8?B?clEvV0FHWVZuMU9QSmhPRndlQ1pHRUowN3dkNFFwVEJOWnZMZy9keGxiemk1?=
 =?utf-8?B?SFVSY2NNVXJ3U2w0Y2F3ZFVMaWVsanR5VW9wNzY3dmZUZlVudlVkSnVOSUsy?=
 =?utf-8?B?ZklXL3dIZFpnSmFCTXduVkxuakRjcHNyWjRMYVRtOTVqQnNvWmdneThnZkNJ?=
 =?utf-8?B?QXUrTnhhbjZnUElwZVZqOHd6MDF2bGRTRDA3c0N3cDdJU01pSXRxK2x1RklY?=
 =?utf-8?B?Q05ZOW1GM2xPMW4yYVU1dHp1WU1LdFM3VlF4MHY2bjV5Z3U5a3BLU3dtSlRN?=
 =?utf-8?B?bnhWRXY5WGRFb1VnUytBNDc2VVN6R0RoYmV0NDNaWTZJQ3g2MVVDZ21jVHow?=
 =?utf-8?B?bm9mQlZUbmd3Qk0rcFF5UTVTdU9VSTZkU0pSWElyVEQ2T0dIaWtBT3R2eFBw?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b817faa2-e717-4588-82df-08dc23a7c096
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 04:30:58.0908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UoXilvhs1JPJsHE6PkVNbONMPx0+RtEl35U8+qMTt7ewR28l9g0VR2kGveinypnHov5vr7qUah557dS6W//HkIw6a9p2CT8Cdh1g2/uV3RY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5522
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

On 2/1/2024 1:09 AM, Suraj Kandpal wrote:
> Move checks on the source side for HDCP2.2 into its own function
> so that they can be used in the HDCP remote capability check
> function.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index c3e692e7f790..4593ac10e2fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -160,12 +160,14 @@ bool intel_hdcp_capable(struct intel_connector *connector)
>   	return capable;
>   }
>   
> -/* Is HDCP2.2 capable on Platform and Sink */
> -bool intel_hdcp2_capable(struct intel_connector *connector)
> +/*
> + * Check if the source has all the building blocks ready to make
> + * HDCP 2.2 work
> + */
> +static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> -	bool capable = false;
>   
>   	/* I915 support for HDCP2.2 */
>   	if (!hdcp->hdcp2_supported)
> @@ -185,6 +187,18 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	}
>   	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>   
> +	return true;
> +}
> +
> +/* Is HDCP2.2 capable on Platform and Sink */
> +bool intel_hdcp2_capable(struct intel_connector *connector)
> +{
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +	bool capable = false;
> +
> +	if (!intel_hdcp2_prerequisite(connector))
> +		return false;
> +
>   	/* Sink's capability for HDCP2.2 */
>   	hdcp->shim->hdcp_2_2_capable(connector, &capable);
>   
