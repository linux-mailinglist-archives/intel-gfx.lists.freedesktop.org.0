Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB94841E76
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 09:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A5C112C18;
	Tue, 30 Jan 2024 08:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3B3112C18
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706604865; x=1738140865;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iO30SSC03hctX2aXWtNGzZ2WrcWMf5JyJFjC9GW3HR0=;
 b=eNMHcoMhXsFSZg3hZAfoCh06xDAUB0Di3Amv+Cc+lTHl4C9aiw6pQ3Ga
 e8hYDUXuGvocr2Ew2eJPchw1ZFbD8f5j+gNMjUynv26pNHCK4iZGGXbwM
 fsLfedf2MYTz7yu/VcEvdWQOnfrc9IT7Yp0IE10V48el20v7Ej/5p7uNd
 w9L5agWBKwa2JdqyUJjp3Q3u1bhJs6qesrPdlhktum0Vanl2j4fr+5Ef7
 u99x7oKW92qYWOFNHvTp199WL4jg6cfGU7nkjIHjzJyTyAALsCNqsR3g3
 Rq7pSsE7nDnSjsBDmlvgejnWyunksW5Zi1ZIPUmCxvKrQymgOO7LsfG7e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="9951878"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="9951878"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 00:54:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3640291"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 00:54:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:54:20 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:54:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 00:54:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 00:54:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IGDkuInhvalRIs+Y5pNtVF22VbF0yWaaTqd2qPDulxvZLMgTD8BDsHFtW5fTQo+jDCGtMmTpOuamLet+GYcAvcZ4f0WRyorvizC3m45XmY9YMTlzJOnLLcWF5tjZ9EXtCMdeB+vwC8+RhReYbBvG4Ffx+2Op7rhE1ALeFckG/EJThWjlbpVhgTBtL7EO4kWdK4TNBEKF+HtAYE4JmzqGDwdqAn1Zfy1IJXPbfoAh/kHg3AhFVuKn530dD+/vkuYruyXEcg+6vblHCL2HFNqfwhLJW1aBHoz0BwSo84myuFDmDyOu8VbMv/O14VWsNWuZMFPfyZASxObmUTsG5qAwqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kfFUeSxeLFXbPVK24B+F5EfkE9KFxZWYChsvi5FI1rI=;
 b=n059HMhDzq1wHBtJSogGACcgKeh3EelOH8d36U5aljz580/Z1O4Voc4yiUoGjz3lG8oghKJt+qwkUN/oD8b4GNOMDMtBe3YPIRqb/akhZF3EJcKe7CY8f+2ffZGLawnCk5PRUBeCIWO0vFnD6nCL1Yr6FR2KIo6r2+pQ3RNHjRmWljtgVO+6DY2nOyhZoGdXVqLuou9NQjr093U0cUNvmqU9f90hm+Tf1oFC726zC6aveagNFg7pxlvbIYsbaz4jR/VH3I6wDVICQguogWoDRDarZGn+1EwHzm1E62+a87jBmq4aXyJh0ewlHHULLhaCTK4sbtOqNBVm6HKfmJyKig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8246.namprd11.prod.outlook.com (2603:10b6:208:445::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Tue, 30 Jan
 2024 08:54:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 08:54:12 +0000
Message-ID: <b27432fa-d59d-481a-a851-a9dc4397c20b@intel.com>
Date: Tue, 30 Jan 2024 14:23:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] drm/i915/hdcp: Remove additional timing for reading
 mst hdcp message
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
 <20240112074120.159797-4-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240112074120.159797-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8246:EE_
X-MS-Office365-Filtering-Correlation-Id: f5f0d662-cf42-4050-679b-08dc2171042b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aDnlOEFeHe2Or2CbwJDw6vbqwdj+6szM33hA/jJ1RjeJ1ZnP0hHeYSwsMqXRxcAo9OFHWeKmGh28crViOMjyqD02+yK4bFcCHfxs28hx1sv7DtNOHfG5mUb5lktW5yab0kjzQtxAVSE8UGnH5bjbSXavdFH7Y62g38Sj6JZfzmaKoZ6jxYAQIMNCjjmQqhveZNy540z0S9vS3fmeFyn5oMWRiIaA9cJOptQKBCh8SEY2Hug1ra3/QUNrxZ7g1zNW9n9emm3RdeCV3EwKZ079W1OX/RweKbeU5PSdq453w9wL+lASzv2/JUbJuKtXHXYmnY5ojMz07dtvk9+iziOAyYfAO0/8MrUkbwXd3TYr2iRI6V62+6o9KrBalbgKI9XONWh66z+xzJeAFTzjPHQdqlEe6g+qFNTrzPJqbmUsFnCraPV5EY0cKoGSOoqlgK2gwtpSJh5WSspMroqxf7m8h1Y8wQid7DuUY2gmoeSce7PyY7wNqROTBAFYN9VAAPamdYu0XMdWSKMUK82+yMC3Vix/AknZKiqG7IRrvEzzM/x+506RBGX2ztBRcAA5nzoQ7nwRHETqatKBZIPEEt7KcSLitUwRoeVQ2mfkJtagcnD/VuQ8avhBFJyNFD5dliLTa5LqU4piKiHUySAzlk1+/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(396003)(136003)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(316002)(83380400001)(31696002)(66556008)(86362001)(66476007)(66946007)(53546011)(6486002)(478600001)(6666004)(31686004)(38100700002)(107886003)(2616005)(26005)(82960400001)(8676002)(8936002)(6512007)(6506007)(4326008)(5660300002)(2906002)(41300700001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTA4cHoyT2ozOGhBMFdnMW9hVk9VKzB1cEVpR3FKYkNBbWx3L29neE83S0Fw?=
 =?utf-8?B?T0tmMng2SGRTVEZVdVZzVnVsMUJxQ3BoUkgvWjliaE5VSmlRZHpJTTlhckFr?=
 =?utf-8?B?UDlzMlgzek11VndKUi94WTZDeVZ3VEtRNWM1cUN6ZWcyb01HbHlhTVJsN2hV?=
 =?utf-8?B?eCtBdkU2WlVTeGdDU0RJSWZUbnE1ekZOaWs3anRtd0tIcnVOVDB6SXUyWHU5?=
 =?utf-8?B?SnloVnUxSXpCSnY4WHZBVUthV1Y3U2NFdUxNeUl1a1g3VXRMZmRwc2U4RXo3?=
 =?utf-8?B?Sm5KNUhya2ZpNFM5dmdZbUlmUFdxNEplYlNpUitRTzdDd1FuN3NmdElPbk1R?=
 =?utf-8?B?aDl1ekhDZEFIcDNvb0MrZ0V6MGpIRUN6dEhFY01raytvdWlUOTNPNU10NUZp?=
 =?utf-8?B?UGdXK2EydGQ2a1M5VENvNExKaXJ5R3VPYytKdkNFL3EwSjFwS3Z0bG5jUFNa?=
 =?utf-8?B?dmtDck0vS3NZTnRpcURiUzVBa1E5RUxXYmVpRVFQdU1ldlNldzN5RGdSQ1Q1?=
 =?utf-8?B?SkNKZ0IrTURiSytLZGVCNjllTmxTeXZWNTJXdXR0U21BUm1PNFUrdnhHdHBi?=
 =?utf-8?B?NlZ3eHJrZEk0WFN5TFVQQkxaa2J0Tjh3L21vZm50aHZiT0VDM0pKZXBiQXgw?=
 =?utf-8?B?SWg0MHltSDJ3T3FGV2l0UDRucmoxdkhuYnNlYk8zeHJhU01VcFZwSExnRkFx?=
 =?utf-8?B?YzZnQmZ4YkZ3ZWtJU3ZMQ0RyVUMrSHVENk11d0liZE9Dc0o5Sjd2eU9oMCtX?=
 =?utf-8?B?cXNPNVhIVU1mdjJ6UW56REh0cFNzK3RyUzd4NlZkeHVSeC9CTTY5QmMrMHBt?=
 =?utf-8?B?ak15UkttYm1IejRUV0pnbnRzbkROWmh6YnFkSWw5V1NKVGdZd2d1dWQwSTBn?=
 =?utf-8?B?aThzdkNzenBpV2lQbS9KTHVzc0UzU2VoZ2E5dUVpdFJ0SUJrN3ZmNzIzeVcx?=
 =?utf-8?B?ckh1enRpNjFpSXFxdmNTUCtjOUFYdGwybDEyZzBqTmFzeVo1Z0FlaTAyeFpo?=
 =?utf-8?B?Ulo1dE04S01XUDJhaFhvMG5WMnFhQ1JqVlM4Zm56STh5R0FSSGFNSnhpdFZx?=
 =?utf-8?B?Q0V1Z2trd0Q4K0YrSzYvdVhHNXpzOGhZa2p4aVpEcmoyM2FjdzFXak9Xb01a?=
 =?utf-8?B?RFY2TS9idDBvbDFCMnZKNE1UcHFJQThFZ0NTb2d0Yk0yZWZPYjNQYkZSQ3hx?=
 =?utf-8?B?REU4S01mdDdQYlhIVll2QkRwaXR1MVVNVEVCdU1qVHZmdCtEY0haT01SVlNS?=
 =?utf-8?B?S3UyYnFlQmdFNjFFTm1oSkRDcGRONGNBakpwVU1EcW5PRGFtWEs1ckRVZnZY?=
 =?utf-8?B?NnE3VkxqRFZ5a0hlTmluSk9VajJySk5WS2ZFYytqSDR6STk3VlYvZFBjbUJ5?=
 =?utf-8?B?UXZXSTRoZG9DaUprMUU5ZXp4QVBSTXF6b0M0OUNjUFFueUZzNnVsUFpkcWpL?=
 =?utf-8?B?VXpHVUJsZExqOXA0V1U5VFkrcTU2enpUd0hWa2didURmOVRJSDUvN0lNQVhO?=
 =?utf-8?B?eHl0Y0FvbDhwa05vYmN4K2R0bTFDRm5LMnFkVDJKdm44SUJuM3RQVGlNVXgv?=
 =?utf-8?B?TlVLd3VuTEpTd1lQT0IrYWJJeG5OQkF6RG1RWjIvZENua2VZYjRwVkNUQzRB?=
 =?utf-8?B?S2dJb3crTHJzaStFUCtzMHBlNXRUWE5jZ3gvR3JhZEhHc0dxWURwY3hhd1hQ?=
 =?utf-8?B?bGVWVXBZZm50TmtOQnkyKzZTelhEejdzYW5QVmprZG9wNjd1YTkwUnk2MExo?=
 =?utf-8?B?VGc0K2JZSTFFcWlxYjEyU3p5dHNzQU96Y3BwZmZGbk8yQ09GY3h0MHhTdG5Y?=
 =?utf-8?B?ODRrTHpsTGR4cWNTYm84aWVEb1NObWYvRDBwRUQvN0lYOXNpZHhENU9CckZ6?=
 =?utf-8?B?dHc0VXFoMmJhZWtzYko2V2FDdmpjWmozRVRVM1hVUS8rODBHK0ZnblhBMW9t?=
 =?utf-8?B?eGZ2RlNqbGhQcUdqTXRUNHlkZjBIUXVnSUs3a1grM0czRkROOWxBMmxNQmIz?=
 =?utf-8?B?WksrTlBJbVIyb0lGRlpvdHdtaGx4endiU1IzK3ZpbndvaU1NcitlSlN1N3h6?=
 =?utf-8?B?YUhhL096U1ZDU29OVGxxbkh1NFhYQTBrQVU3Q2pLSjIzRmR2YTJ2aVlhbjEv?=
 =?utf-8?B?T0sveFM2ZWdzNXprM216dFBDMXlydXdaRjJWa202M01GOXFMMjJKWWZYTEdP?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5f0d662-cf42-4050-679b-08dc2171042b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 08:54:12.2516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W4xuzekJ06EaNCL3SMStOJ2r1xlrjNh5bnVEcecdKETFoppHWAoNEpwh55tyv4o22RRM9G0K76Zn5VDQYcbJJXz1AD4ZhrshwSXC3xW9AwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8246
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


On 1/12/2024 1:11 PM, Suraj Kandpal wrote:
> Now that we have moved back to direct reads the additional timing
> is not required hence this can be removed.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Add fixes tag. With that this is,

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 9 ++-------
>   1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 90b027ba3302..cde42b756f6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -561,13 +561,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>   
>   		/* Entire msg read timeout since initiate of msg read */
>   		if (bytes_to_recv == size - 1 && hdcp2_msg_data->msg_read_timeout > 0) {
> -			if (intel_encoder_is_mst(connector->encoder))
> -				msg_end = ktime_add_ms(ktime_get_raw(),
> -						       hdcp2_msg_data->msg_read_timeout *
> -						       connector->port->parent->num_ports);
> -			else
> -				msg_end = ktime_add_ms(ktime_get_raw(),
> -						       hdcp2_msg_data->msg_read_timeout);
> +			msg_end = ktime_add_ms(ktime_get_raw(),
> +					       hdcp2_msg_data->msg_read_timeout);
>   		}
>   
>   		ret = drm_dp_dpcd_read(aux, offset,
