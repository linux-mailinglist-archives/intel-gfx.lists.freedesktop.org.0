Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8BE846705
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 05:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA0C10E105;
	Fri,  2 Feb 2024 04:38:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0b2Jgyu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Fri, 02 Feb 2024 04:38:40 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A5710E105
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 04:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706848721; x=1738384721;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YB4wyqI6FSnaEBWgl9SjwMrJZT8y3SGF2LOWn2Ehy/A=;
 b=P0b2Jgyue9Z+U6pj0uy2SiiY4oFMMV5+AGT01gMcW9+ZqHtZ6SbetPEJ
 f8WGW7zPowYFM7wRC/d9A+Lr4UHhmZ5UPMXd0CwkYish8ujBYc38zbqNM
 XeAOii5Z7t0uMRL+aenAC03akXQ4SLxxZ/Kjg5hME+zrUknUvKHR3P5MX
 ob2W/VP1CJAqFMFAH8rDW5no29/L79VB2HMH0eP513r60KQroKY1piTuD
 Xrp1B5WvG+cs5taVSxPAzU92X3h66TiYP8WEPPgHAPFEoh50TnIFB+pUL
 94S/2y12jU5ErqP7H33m0odYgHdoHXPKxCakTkJNsKPqqxJaawjmswInW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="257929"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="257929"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 20:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="789130107"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="789130107"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 20:31:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:31:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:31:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 20:31:33 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 20:31:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KkhbGVvRWgDcj9hKa6rE5XyB/OJQZVtuMUMU6WaxHKqNdivlwG95lSrmOFHNiWFJcFNJPT9nZNTVVUN/ZVCG2mAIXASGxg4KwBqshUy+t7XL+BQEi1AUVP1489C7GfqRTFljyt/SgutaQHrJLVXsXZUWPs5qLLA+qvk3RimKnVdC9HiMMWZDAyju1Ox85DXQc1aNUXlbNaXUpY5PAiqcxSWRBLoJIrFfoAiD3KijDS3zOsQcrFNDauRh8dCrZ4olAU96vMzUOqgoejUz8lKo2QTQGUel7KYBQECEzF4YUzNQ0SVrs9p9ZXRE3BpEiPwh35wpAnyIoI0yxBh2w48vkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OxzBRmhGZPJ+AnKjIymBdolBX6L541uaoegRKGI/8j8=;
 b=KkzF/8f9iArjw53AgXGzq7/Yv2swvgUUlGud71kDVGLAiCboekmP96TMlHs7bSq6tdE3ulF/ymF7T4k2+dtrkavUuiYdzKb7ybiXzkbZEWi4+cS0sJjel2z3baOueuGRuSfhHBT1vt+FI0ZaZLfiXxf4ZmMxlZyMyiceGF+6GPPK5FmzFaI7j4oLxZEmQDRyCcG+8G3FNCKmncy2UKvyFlT4b82uJqOmYpCEb6mBtPsy8UNz4umxPK5/vD6U5TvZfPVIA986kuEdLGJDAq8DQQfMjf0Vbt7N+VVUTJESe42r4ekeRkedciNJL5noed31S5WYoW4h5RERK7O39nhe8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5522.namprd11.prod.outlook.com (2603:10b6:610:d5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.26; Fri, 2 Feb
 2024 04:31:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 04:31:26 +0000
Message-ID: <aee44a54-2c66-42c1-a9e7-988cde1c3f1a@intel.com>
Date: Fri, 2 Feb 2024 10:01:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
 <20240131193929.938748-4-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240131193929.938748-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5522:EE_
X-MS-Office365-Filtering-Correlation-Id: c8c88a36-50e3-4f48-ee10-08dc23a7d15f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pbH5M6wmprVJACu2UPZEpeqGaCuKE5NkaVdrDZehvFhVfy4+Dq/FgELUdWH967NFB03YVNn2bcC/XKN5XjZeGb1WS0AwqDbqQUr4zbd461vyXaKqoXKedR6ZviNapGTfCqqZkbf7ICQutUJT5/IUijOpYwvcXWEHQ03BuAV5FfCXVpfRdNNldr8u7x4lIHP6BhtH9zOaEVe0uswVDZmXHw2xGB5Gkjj1clidKG545mJliHZR8F5oSe5BIXPjwbY9ToVHMgzlEM3qMdlb+yQ98ikmRTS4K5h3rp/l7LA15qszlJiwXJ5iR5AG7jDUQnL2/E+26H35ctM/Z8sNiVYC4U1AjUKFg3nfBVzbFTJR5WkSvG5S5ekyCnZYsaiJn+KWYYWWVtpJezcT5ciUhpnKW9lAyv6aOIeID4BqDQdnTXtTeXCgo3pSsBH19UpsED1dIPrk2WkDA+3efqqL3YPcDWTdQ6igQiPvUmXjnzyDNOoDS62UF8IZfKg2S4PLwNC+7Pdtee2h3eUlT+R+C8HpdayaqZH/s1/CGb3jl8ODKf7yu+fyiwOp1fYebFQtQ5L98L1ZRhsyq6NQ86QTAhajyud3A8dN57xW5s4Pgu/0zCMHOll5OafT/7ZgaxoSRv46vtl0g7m4ruhFPwhZ9rVbuA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2616005)(107886003)(31686004)(41300700001)(26005)(36756003)(316002)(6512007)(478600001)(53546011)(6506007)(83380400001)(66556008)(38100700002)(82960400001)(66476007)(6486002)(5660300002)(31696002)(2906002)(86362001)(4326008)(66946007)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHhDd0FBbmc1ZGx2YUZoell3UjlEQ0RwMTJOZEIwUVhQMGIvSHQ2cW55N3F2?=
 =?utf-8?B?YmxUVDBVU0drSDQxaEdpL0hwSndxSk00MUM5L3Rqd2psYVJ3M1N5ZHIxaDdX?=
 =?utf-8?B?Zkkybit0NXQ4S2NvRzNCNUxRN1p1dm5uMFNNN0NqOG1MUGNJUnV5QzVva1U4?=
 =?utf-8?B?aWkwaXZadCs1Y1RwdXJrZDdGSkF4Tk0xcVZYRHR2Z1E1TWlDZFBXc2ZUSkxr?=
 =?utf-8?B?YUh1eXhqNTVPU3pLbDBDdE5PQVNYOGdWR2xoNk9PSjY1YklmaWd1dDlCVWNF?=
 =?utf-8?B?QkRVeXNuQkdaQzQyaVorMHBtd0ViNXhYYlRPZUJkajBRcEhTcGo5endOdXdX?=
 =?utf-8?B?RVo3WGlxREl0bmV4TWRPdG5oOU45OEZWc3JRVktYbHBNT091RXJGZWVRZWhG?=
 =?utf-8?B?bis4aW9OODd0Y1JtZWtzb1RTdHZQYk4wUjRnbmZzdU5LOW9JZmxvdURNVVdG?=
 =?utf-8?B?M0ZscEkrbU1MRHpVOHo2NU5IZ3pNZGJ0Zlh6NGNZNlExZ1pxb3ZRTEdqRmRa?=
 =?utf-8?B?eXJQNlN0RXorN1pkalJEMnJyVWd1dDdaN20xQ3YzM2JIT3Q1Z05kZm1sbUM2?=
 =?utf-8?B?NWNXZEIxVHZYMU5LL0RkY1AxQWRPUklBYUJpb0dQZENNeFFBMHhrUmpZMFZq?=
 =?utf-8?B?MU81dHRlakJMUjJobml6K3NSdDBWMmtINk5OWkVPS1V6WkRCQzYxeXhsRFlW?=
 =?utf-8?B?UUNpYkJCcmY4QlloRzRNS280dlhFdnJGOVk0cWIxeHNKNGcxN3hOaU5rMWJF?=
 =?utf-8?B?RlBtNWJycmdzRVlVbHNlR0Z1UlFwZjA4Uk1udUZMTHA0dzYvWmVWb2dBS084?=
 =?utf-8?B?T0RZdmtyeXQ0eTlUbzVmM3dJbFFoaGdtU2N3cUlxR0F1cDRhdWJLWXBxRHY2?=
 =?utf-8?B?WExxSCtIR1hJZkFDUnB3eGZ1U045czBVOWIyWGlMM1RFSG45RTM0UGdJMExv?=
 =?utf-8?B?ZU5ZUUpMN2VhejVBZFJLdTV1TXlWaWJHRGJMZlgvVllUbWJSU25wNXIrUGlF?=
 =?utf-8?B?cVBHSUw1azE0Y0tCQy8vRlNaSXcwTWpmeW0vd2xQeHltei9sTDhJTU1ja1FV?=
 =?utf-8?B?VWs1bUU3dXFCRmRVdlQ1UkdrMWxHZjlsbm5JV00xd3lJM0lkMDBGd3k1T2FG?=
 =?utf-8?B?RC9MSExDaTN0Z1M0bE4zem1nNjJUZEc0eWFrTWI3WmJCMEk5aHc1WVo5d3hY?=
 =?utf-8?B?Q3ZneUZQcXlRK0xWWWNQaXNBc2xYTmY1YWlMUUs2THdPOEtkQVM3Wk92ZEZ2?=
 =?utf-8?B?UTZjU0d4anovK01kd0dhUDBncHhCYXRtenNDMkVSVFd2TEs4cWpHWUhtaHho?=
 =?utf-8?B?M0FOTCtucDJsK0ZyL1NES3lxVm1kNWVRTGQ2QVJsQnZTVkZrcVVMQlliaG1X?=
 =?utf-8?B?U0puMm0yRHpkSE96ZmdMY2U2eGFLaUwxMXFuandwM3VnUjRCb2UveU40aDBX?=
 =?utf-8?B?dlpNVE81Q0hwNk1wL3pIUTl3S2tSckI0MVdNSStvT2N2M1JoQ1RMSUNEaC9O?=
 =?utf-8?B?Wk1vN2U0aHZBdzRjVmxzSUhzQUcxS0FVNmpVbVlFeStIQ1gwRGxkL2xhTGg0?=
 =?utf-8?B?YnZIK2hPTi9oTnFZUFRkTERMZU1lK3hrcmJnS1RmeEk0QkxmUHMyM0lpcUl2?=
 =?utf-8?B?ck92cy8zOTlUOTJtT0pJekYyRExEalFwR3ZaUWtoTjMweTBvTk9seWJSVjJl?=
 =?utf-8?B?SWd5VW1OM1VvMjZna0cyZTVhcDlGbm4wN3FZc0ZySFZmM0w0Qm5UdmNtUUYy?=
 =?utf-8?B?TFVEWS9kR0FqbTJxWHNvUkRaR3N0YWNIbDBQeEFYbE9XNm9ZZGJ3WGlPT3Bs?=
 =?utf-8?B?M3piL1VxcWZ3TUgrZnp5NE1sTGFYVjRTcitSbkpkUUJhTjNGK0haVXBjeTNv?=
 =?utf-8?B?Ynl3d2JHTmltZnZkOFQ1ZHJDSEFic1o5K3Y2Q2VieGpWUXpkU1d1Q0dMS2tM?=
 =?utf-8?B?Y0J0ckJmdiszeUV6dTkwaEpmeGxDUExuWjhJbWlFKytTM25BRTZFM3BMcUdS?=
 =?utf-8?B?RlhYcUM2L2dNVUlRTXFtK0RhTWF3UGVsWHB6dTBhR0ZiWGhXRWw3ejZEV1Rj?=
 =?utf-8?B?aEE3TXdDQzVtbjlHenRlNU9YQ3EzNTNFMWZVN2MyMzh1UTU4N0MvbkoxaXMx?=
 =?utf-8?B?ZXdmK29wU3VFQ1JoZVNCS3RLdEdwenFRVGZzZ2o2NlBDWkFuR0EzUTh5ekYr?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8c88a36-50e3-4f48-ee10-08dc23a7d15f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 04:31:26.7822 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vcG3So7wmg9KmwP19YuHQZgJja8ZAfcTckFAFUYFITt4AACCKC0gqV0bqxO+zqwUyS1W1NZeOcoA2CkfMpJMoMtG943t7U8dZ+mCnW7QMC4=
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
> Break intel_dp_hdcp2_capable so that the common the code can be
> reused for the remote capability check.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index defc90936317..9aeee6b49b3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -636,8 +636,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
>   }
>   
>   static
> -int intel_dp_hdcp2_capable(struct intel_connector *connector,
> -			   bool *capable)
> +int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
> +			    bool *capable)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_dp_aux *aux = &dig_port->dp.aux;
> @@ -658,6 +658,16 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   	return 0;
>   }
>   
> +static
> +int intel_dp_hdcp2_capable(struct intel_connector *connector,
> +			   bool *capable)
> +{
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct drm_dp_aux *aux = &dig_port->dp.aux;
> +
> +	return _intel_dp_hdcp2_capable(aux, capable);
> +}
> +
>   static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>   	.read_bksv = intel_dp_hdcp_read_bksv,
