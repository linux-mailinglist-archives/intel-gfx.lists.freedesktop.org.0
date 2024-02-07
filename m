Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E462584C438
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 05:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D6110E105;
	Wed,  7 Feb 2024 04:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G+8CZIxW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0133B10E105
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 04:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707281920; x=1738817920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=di6qYyeXDu3a1vtsVUb68oVfOLO0X49u0kQ7MQ2/vUQ=;
 b=G+8CZIxW1BMIIz/p23jFNRp3127jSBPvt44ofJa8kWW6fLZNwc2WWuNo
 09+LAL9akdGR3QgWcKBpCF6XWiQ2l6yfiN6DP3uMOgXCl6NmTOVxm5oOA
 iv9h8vfJXlIMGH4E1HUkq9eb0fKfs6ZLYNA5ZMlIQDTr9DIDRq4FNMVTf
 TfCR4IMHBvJNm5dxY2vUYq4SAaRVHZ10z27LE8/rQP9dGMU6P4eaYB3F2
 V6lywiHb6yRpm2Kb53LnTvW5iaOYggLwIncskPF6O96a6rVMKK+u7eco7
 Q6Bv2lGpEoFYYbabfi+2K0ByWylhU9FwkPdCU8FmO3SPiUtQhnVoxD3T/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="3877390"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="3877390"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 20:58:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5840124"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 20:58:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 20:58:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 20:58:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 20:58:38 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 20:58:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E9uOnyNz5RYIwUyEcE8n8YLp4ToBTjCoY6Rw0job72LCptvtMoAzg9PygpJtMbVobMNm40GKNl70sqGzmQAOsH9XQqpYmr8huMkeaV82vuexrREPS3zVLjg50YyUKGPbXzPQvxy+Ar+kCBNDDrtKfPng4OvVB6RO2SJzcPTqmdLIhy8HdeQyI6nNxnaxMvnzYsGqb43xcBR+t8BxG+sp492xXaV61abkjUZ5Rh4wPzPP3WDGWA3JqClVyrjZGh2lLqELbDVqvHIgur2/Y6SO1zPk30PhgsX1/hSgIIrNFYUrONz/Uywojg9NLIRcZ7i2TnQpFxydCNsfb3YhR0GSiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LBUoGB3GMdYhYQUJPL0Ke6TErHvg6BlNn9x5PVTGhDk=;
 b=YuLr5LDIraTGgkeAEsvvfST/23MU3HxkCy/2XlKycxSxJqVdZDrwFeJ8HdtaDEMeQtG9PYH6YjisDrve0KSj59+1FVTM+qV91+RZkFe0YQxiUWvZliJuYmP2A/DmpixWy5OtNQ/ERUkDipHPMG5g+zDuFwT63uVrEbeQYLBMWzx3zyvdz06CzvKZjWzSCmpRFxqMsVsTU5qVFyjQLzfTZ5wxaw6efNEHA68507jU0p/lvv3qmPIlwyabMCod5CUiSRAQd7HrX5r52VRJnuYujco4Ri1W2P8byIDR1riKZ3j/yJlXTs8kNjZEC8MfJddE9FKS2eiRkGSztIang08ZBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5644.namprd11.prod.outlook.com (2603:10b6:510:ef::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 04:58:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 04:58:34 +0000
Message-ID: <2ccbfd41-6a2f-4fa1-832b-9aa67d4b29bb@intel.com>
Date: Wed, 7 Feb 2024 10:28:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] drm/i915/hdcp: Add new remote capability check shim
 function
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240204142505.1157146-1-suraj.kandpal@intel.com>
 <20240204142505.1157146-6-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240204142505.1157146-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0003.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5644:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a5a4c18-d47b-48ab-5d1b-08dc27997018
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 75pcgVDx6alu0AazB+X2IhUgQfID98fbJT1GFwePm7NIdfitdd/+3hwjCjQLh1Lkal0EkUyrkVqju5XVhRJUfCsG3hi/gRbjVnrC7VYHoM/HzyBYoPHVcuA8FVZe+7VsVdytnI+Ro4k22G+0nSBSeA0ZGR84QvkzgDwfSlkvx7thN5V/qomyh7R3h3X4JYgvuJcBLYYVzsOVmZXZsdGMcEdWBtMetKgGDFU161IoAvb56obpn1xoAyfDF3dxdap5pbylcSs1wTkDlfvXFFvtb6RLNU+objycX2DgdJqaBYWLS0/62S1ARHM/wIX0LTL7SBr8v5p7RsqJAwlMn93eysKDdz6m5Wc6v9mI6cxE9/jkfn8o6O04Hd7JyDiv2R8eatcAsSmQDvxiaVm4nT9v3opOXvrHn+euNoFNcdFGOWwtzrxlKNEp4/GhSUf30a0i9tdE3QnZ6smzLfR2SBcuM1P+9iIFZD3G54ajkvsoAOnKxDOEVhILuwTpdtemucYcfNnaDkZ+pmNYcJ6V5cuTHntXn+UNAYzCRH+Hm0NPrN4qm86l0xMG7z9BRqTxzF9gAVtdE9hvP0o085koPbdnFtNf9BiyNrySnz9M/TSsvOJq8eoepcExbYBAEgyTW5Oam6LwYK2nJEj20JODLbogkw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(136003)(366004)(39860400002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(31686004)(2906002)(41300700001)(36756003)(86362001)(31696002)(6486002)(478600001)(38100700002)(83380400001)(5660300002)(82960400001)(6506007)(2616005)(4326008)(6666004)(8676002)(107886003)(8936002)(53546011)(66556008)(6512007)(26005)(66946007)(316002)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zjcwd3o4UmZXck1jQURmOFhzUkJ6MnpYK0M1eVZSNTdYV0NvdWt0c1lMQVl2?=
 =?utf-8?B?RUxKaUFsUlhJZnBTRVFpM2krM2hsZHZpZjlyN2pQS0JRVmdQeXpwVnhZSVMz?=
 =?utf-8?B?WURiczdmYmpyaVdrZ2NEcXErTlhpL21kSlloaURyZW51UkoreDNzQ2VINCti?=
 =?utf-8?B?N0luVll0a1VrTHEzaTByVFVkSEtTL1dNWWVRK21pNjM5ZnZPSUU4eFVQb3hu?=
 =?utf-8?B?d2hmSWpidUw1LzRRQlAzQnpwQ2lEMFVSRUtINjlEa0VEL1JndHJQUnNZRDBD?=
 =?utf-8?B?dk1NTWZHV211cjF3WWpHV2JJNFczbGRYYWxEbytBYWxqdkYzSmFmVlhpVWtu?=
 =?utf-8?B?NVVsUmQwMjFva0pGTjlDSnlIZmM2enEyZTF5NU9EYmIybVhOUDFFQVp0bTBP?=
 =?utf-8?B?NnJGMG5zbUhIdDBaZGNnb0kwYWsvcElyc1lLTUpXL0lrRzJua25KNGtEQVRq?=
 =?utf-8?B?OEdHazRSSUNTUlBQVXY3YUlnV2RydGNWK016SGV5TkRPeFJycFVjSEg4UzRu?=
 =?utf-8?B?dUJUTVU2dHJIeERZQ3I3UU1xdGZZS1BWeU5KZG5GOVhoQS8zK2s5UkZaeVZs?=
 =?utf-8?B?V1FtZmZwUEtNKzZXZVluRWM5TldLS3FjNTJiVi93T3dnOFovZE5iZzFPNm5B?=
 =?utf-8?B?WjVUWURHR24vZ1ZuREZ3OW9xcjFKTEE5RXc3c1B1aCtnQUJKREViRDMya3cw?=
 =?utf-8?B?cUpha1hUMytqVFNIYTVOZFFpcWpLS3VPSXNrcDZZdDAyN1dXZS95MlJaNnFQ?=
 =?utf-8?B?b2JNYmxDem9zLzZQYXJabXErZldyakVJYTJTK2hvWlJTcmtCRHMyQ3ZvNnNu?=
 =?utf-8?B?MDBaNncwWThiZmZaYXg1K3drdWFxbitYeTRtNHZLcjltRzlNbXpJMTJKM0di?=
 =?utf-8?B?TUhPcHFUUEltMFEvM2p1OVpXTFIrcC81eHJSWlBWQ1ZnMVlydWd5WGQ5bTFo?=
 =?utf-8?B?RHF3U1drY3VHZ01zd3AybzZNanZwdHlYL0dBVFpaQ0xPVzFaRVJ5K2pUTllo?=
 =?utf-8?B?VW0rYzZlZFBYdGlxYnl4ejMyTzU4dyt4b2VGWlAySDhCTEZ5R3VObldQUmNC?=
 =?utf-8?B?c25pNTZZN1ZiRFBIeFpzOXlQeURrTERPK2t1eWE5MVFJUmFWUVF2WS9pMXZC?=
 =?utf-8?B?VmF1V1gvWWhnd1V6OHVpTVMrQW8zWjRTb015Z2haL2xNSVhwMzFDM3o2Y1Ro?=
 =?utf-8?B?amlZSm0rbmRqZmV2TkgzTU13U052cjlkYVBLRVBTR2duaXVxMzRwbEhUR1Jv?=
 =?utf-8?B?SjNXTCtQUG9veHNMWkhqRW5IazhvcDdTVDZBK25LSUN4Ykg0bGU0eUNyTnRk?=
 =?utf-8?B?TW1mTzZueHkrU3YvcFE1UUpVS0RQb0hsL2xpTGZsd1YxM2JGczhCb2dnMWxt?=
 =?utf-8?B?dW1MajBPbnNpUUFJeVNrbGJSVUt4dEtsTWVHcmQySHZ6QUFoVEFvZTVsT1dW?=
 =?utf-8?B?NG1wdWVUKzM1RElhK2xlS3ZVVlZ2amVIeGRiOWltVUV3bno3VERncmVmNjZX?=
 =?utf-8?B?ckI1MmdaVHlDYWdSWjhVZGYweDdVTEdiSWdhRkRQaE5CNHhyWkM1b1hOcUcx?=
 =?utf-8?B?RXhPNUJ0RDA0NDRrNENTSi9NYkJmN0tuWFZpc045SjVBYVFDY3NUY09LeDV5?=
 =?utf-8?B?S21pS0JSa2xyUXVrbXoxL2p2RS9kdWlKZDZaT3pac0dTNWdQY2lVQmVNdlcr?=
 =?utf-8?B?NnpOTUZLNk1oYURzdXVLU29DMUE2YmVhVW0wWTQvYWdZSUJlT0owTWJ5Nlhj?=
 =?utf-8?B?WFRRbHlSalFmcFJmMitFcnF5dU54RjFEaEgwUW9wdG8zRUpZTmJiVWI2UStx?=
 =?utf-8?B?U2lid2lNSFFjeHRXYmNPb0ZPVWhRZDlsWnpETWQxSTI4ZjRxTndWR3ZlUHR5?=
 =?utf-8?B?S0FML1VJTGdWV1RUTjBzRzVHbUltNy8zME1ja0pZajZaZ0pjU0ZNcnpVTVFO?=
 =?utf-8?B?Mk9RcWhjMEQ1QXNaRS9oWERKa3pEU01la1huSUNnWnR4RFN5MlpnQmxoNlMz?=
 =?utf-8?B?SkRCQkZYL2IwTzBEaENoZk11RnZhMXFyRnEwTjJ3TjF5ckVaQWJVUEJjTTA2?=
 =?utf-8?B?Slh5YUIzcW1FdUZybUZReEZoS2c2Y1Y5TWJsWjFBS1U4dE5RczRFZ2F6SEVF?=
 =?utf-8?B?ZjRQYnc0REphTHRmZmpoZEU1Ym1VcHViMDYzTmpKNUlUQUtVNjlGZWFHYTEz?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a5a4c18-d47b-48ab-5d1b-08dc27997018
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 04:58:34.5050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B5wrPmdAxPyrMnjkyfawreWn32sOUafKRMj6cJXsjffktH6xoHhBXGAnlaHs/o1hPbknG6SAKs+jN9xagcmvOJEGj0XETYU9tq5UrUWdNLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5644
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


On 2/4/2024 7:54 PM, Suraj Kandpal wrote:
> Create a remote HDCP capability shim function which can read the
> remote monitor HDCP capability when in MST configuration.
>
> --v2
> -Add an assertion to make sure only mst encoder call this remote_cap
> function [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  4 +++
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 26 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 16 ++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdcp.h     |  3 +++
>   4 files changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d69..7e7a370a3b30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -532,6 +532,10 @@ struct intel_hdcp_shim {
>   	/* HDCP2.2 Link Integrity Check */
>   	int (*check_2_2_link)(struct intel_digital_port *dig_port,
>   			      struct intel_connector *connector);
> +
> +	/* HDCP remote sink cap */
> +	int (*remote_hdcp_cap)(struct intel_connector *connector,
> +			       bool *hdcp_capable, bool *hdcp2_capable);
>   };
>   
>   struct intel_hdcp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index ef1a4c90c225..ccd274200f92 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -668,6 +668,31 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   	return _intel_dp_hdcp2_capable(aux, capable);
>   }
>   
> +static
> +int intel_dp_hdcp_remote_cap(struct intel_connector *connector,
> +			     bool *hdcp_capable, bool *hdcp2_capable)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct drm_dp_aux *aux = &connector->port->aux;
> +	u8 bcaps;
> +	int ret;
> +
> +	if (!intel_encoder_is_mst(connector->encoder))
> +		return -EINVAL;
> +
> +	ret =  _intel_dp_hdcp2_capable(aux, hdcp2_capable);
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
> +	if (ret)
> +		return ret;
> +
> +	*hdcp_capable = bcaps & DP_BCAPS_HDCP_CAPABLE;
> +
> +	return 0;
> +}
> +
>   static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>   	.read_bksv = intel_dp_hdcp_read_bksv,
> @@ -685,6 +710,7 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.config_stream_type = intel_dp_hdcp2_config_stream_type,
>   	.check_2_2_link = intel_dp_hdcp2_check_link,
>   	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> +	.remote_hdcp_cap = intel_dp_hdcp_remote_cap,
>   	.protocol = HDCP_PROTOCOL_DP,
>   };
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4593ac10e2fa..2b739249b60c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -205,6 +205,22 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	return capable;
>   }
>   
> +void intel_hdcp_remote_cap(struct intel_connector *connector,
> +			   bool *hdcp_capable,
> +			   bool *hdcp2_capable)
> +{
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +
> +	/* Remote Sink's capability for HDCP */

I think we can do away with this comment.

Otherwise looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +	if (!hdcp->shim->remote_hdcp_cap)
> +		return;
> +
> +	hdcp->shim->remote_hdcp_cap(connector, hdcp_capable, hdcp2_capable);
> +
> +	if (intel_hdcp2_prerequisite(connector))
> +		*hdcp2_capable = false;
> +}
> +
>   static bool intel_hdcp_in_use(struct drm_i915_private *i915,
>   			      enum transcoder cpu_transcoder, enum port port)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index a9c784fd9ba5..213d286ca3fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -40,6 +40,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>   bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
>   bool intel_hdcp_capable(struct intel_connector *connector);
>   bool intel_hdcp2_capable(struct intel_connector *connector);
> +void intel_hdcp_remote_cap(struct intel_connector *connector,
> +			   bool *hdcp_capable,
> +			   bool *hdcp2_capable);
>   void intel_hdcp_component_init(struct drm_i915_private *i915);
>   void intel_hdcp_component_fini(struct drm_i915_private *i915);
>   void intel_hdcp_cleanup(struct intel_connector *connector);
