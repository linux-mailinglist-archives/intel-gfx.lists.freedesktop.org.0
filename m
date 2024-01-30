Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FAA841E85
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 09:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB7E1129BB;
	Tue, 30 Jan 2024 08:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D4D1129BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 08:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706605062; x=1738141062;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/kJlekCu9eBxIugkprm5gkAJKCIJ5w0TcyQc6krx6Fo=;
 b=Ue8q5kJN9dAJwEvxRFS9dMnb8Xo/RbjBdTuzvfQVhEY4wU69TA+Cc1ze
 CHsUOEZC4ypPbvVCVX5xHYhv/Uz/vK5zDhUTA64IFQ1fYJbOWhkDxnFRK
 QRG2C+1R2r2nbbk8jiemvnxBKkeQU2lGuD8atJj5ANRPTEogDtwTtIKoA
 jWN3lERXdhfP7zn3YkGEn+7iAdztbZT3FKjqvVRAk+ZBT2spl01PEY+Ie
 b95Cs9pjh8XDDRT5VeYk9Cn/Y78Xp/LxBi7/8XF4CdZW021XNFAMUIz7g
 nvBdc6fIxmDkritPOYbvauE2pS0lFbzCMPsGqax7l6OVMQ3wUfqBgea64 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="16598078"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="16598078"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 00:57:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="822126918"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="822126918"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 00:57:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:57:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 00:57:41 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 00:57:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQITsLZpp8HsrcPSrrs7LBAzgoTvcyorGHbwP76pCN0V2evCOmsCIaUucE5/uglKEjpnYZ+LasKwB/x0HlIqj9DEmlcx9CwC44VNeGTYwAs/SiY/5xkWw+0DABNkBFN5TaW0fjZECxEhWKDG2IEQ5mlJhYwknb+6iCOmZwFYesZYcTqhP1vS1/qbqHb5kxu3WvCkITzQAIgIPAQYMBX7WMx48lE8FN/7uLVKFnCHU+oReyncAJC2mYUp03NhNXI/yfYCo/FodjB5Nz12If/wAEDUJnjD4PftTvShVgXJfqv/eUKWxeM7nlC/pZMqNa0MCoh+jfWi1vVD+pzST/kaDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+8vX+d3k3aP6rWQ9cwpR+xd1knRm9PbIkSyJazH3Hlk=;
 b=l/4OzK/T/Nx6UpyRh078bAS9Z6DhwLIagwourKsLzKQKgzOL4MzJZHcnwXimthuBpkb7DTHSFzI2pCDnuEMGPg6WYNo4nr11/xjUShK3XpNNarojknGxN313VwzR9k0ufBSj3Eu0eB2e46gWgMeF/latPfK0UaenxoebI25i6PxMinmmFyQ41HmxQ6ugHy9dHXl+fEmTeb1R6toRxe1EQ2doq/GIgIFuxnYRoVmrhIAMBNe/5Vwe6yGJIEBDoIPqTu7D8J1C3I7PwZsLqtIibs+lFBetnxiBUTC823Piib3XbsN3f4A+bJOivxo6Xmw4KL7URYNk4vn4OCcrFGuKwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Tue, 30 Jan
 2024 08:57:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 08:57:39 +0000
Message-ID: <b8f18a07-e583-414d-93b0-851179ebefe2@intel.com>
Date: Tue, 30 Jan 2024 14:27:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] drm/i915/hdcp: Remove additional timing for reading
 mst hdcp message
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240127071640.850392-1-suraj.kandpal@intel.com>
 <20240127071640.850392-4-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240127071640.850392-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0210.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7512:EE_
X-MS-Office365-Filtering-Correlation-Id: 257d63b8-4f4e-4fcc-4a12-08dc217182a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pj856uTTRasqG5bnsPdTYkkI1gthB4AiwdImS64vr5uxSS2eo6jxVxoU5zRZE4VKqpjf039CUSQCKB8zwF0sc5hv44gq3xfNjScqFCYisepO+/xSblSCkk7nXF4GKMlHJiGgLVBUv1J9yzXFe82KvyzfilRzA03UkyjXj8bCH8mp+qqd/Pex57h/qXUTIjUu8EcL30gbesG+28SqDGVDaymsVxkD8EfjnarTXDmJPJ/2bnNKg1NKcW6fjg/57URLceCuRYZTQRflH53f2eQgSbnOqR2fmjkva5ILUrqmH+e/e3B3gtbKwOXgVp80QBSXwQuymXnURHF+8AWgO1rcJOREweZSWukTzx9CrCEovwtb5sW8oaVerJ+Q4X/OQylJWx9mi9KjOcD9hSYqXikozvH5bz4r5PqWre8cNbPjRNbRwmWkY8QHO76GkIN+Ai/1C8qJwRVoOluyDzkAqamL8/l51ORb7lAzwrpVTbBUayRPGkILy9aJx+hqc2+6tbh452RBalnI4+aNSnqdtc14iNu0KBAx7yjh762LbUN7TLMqAIsUfq5F/aSPxBG8X6MFCN0KrHjH7xJlswWeFGDLCYioe18ehgj+s999qYJ/YsYtRMAmx7qqMdgmL1sBcpnnpw5b2tLyCmf0peVajrqZoQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(136003)(39860400002)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(316002)(4326008)(66556008)(66476007)(8936002)(66946007)(8676002)(83380400001)(31686004)(478600001)(6666004)(86362001)(31696002)(5660300002)(107886003)(82960400001)(2906002)(38100700002)(6486002)(2616005)(6512007)(53546011)(6506007)(36756003)(26005)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmxOWm9OekdmL1VMcmVsT1BndU5lcnc4c210SDdaWnpjVjJnWmdOVk5qaU15?=
 =?utf-8?B?NWJwZ1lJNzgwS2hkZHpLZ2xBN21YVk56MTJLdmJEYWR6QlZ5L3B6bEpadndl?=
 =?utf-8?B?emZoejR6dThHNEVhVHhodTJkMDM5QUVWTXhxb1V6NUZpY3VQNTI4Q0NBLzkv?=
 =?utf-8?B?dmdjcmc0Y3ZKV2hCK04vZjF5c05vTDlOTExMZ05RZ2xsUy8reURMU3FoR1hl?=
 =?utf-8?B?TGM0NWFtVTFiTHdwZVd0Ukp1MW1oVjVjaUloNGtKWWNtMk00TEdOV2tmVDIz?=
 =?utf-8?B?bTlKQVJCQVlDTjNhR2VuOWxXM2lQVmpIemkrWkErK2lpNkNXb0FLT05nSVJw?=
 =?utf-8?B?dXU0Qy93czVWbG9RV2hDcllYV09sY1JwTk8yUy9GQ3hHMHRONEorck4wSmtO?=
 =?utf-8?B?ak9OK21WYlB5MXJ5cEhyTUllL3ZZVU5tL2dockJrOFVXZTJIVGVZR3hjaG1h?=
 =?utf-8?B?UkF3cWVOOHkrTytER1FTTG9yWDY4M1hWU2NYWGxsV2ZZVEh0OEc4cHNkNDF3?=
 =?utf-8?B?U0tvSjk4T0hkeDhKa05XaFl5ZGpqNHdJczBZQ3FwZVBNcnRoL0hlQ3ZrUkVo?=
 =?utf-8?B?VVFLeUZIZnoySnd1RmdxMHNROVZzRXhNSW5oY0EwY1c0REVCTFM1SW1XNzZ3?=
 =?utf-8?B?N1JRbUIzMTZoeTFvZUVBMGphczhzbEJqRDJETVAraTUwd3RIQ2NxdjFQWU4w?=
 =?utf-8?B?WGRxQnVsbDVaVEMyV3hhUHp0YVQxMVl1MjZlR3NxUFJKTGFjZjE1MDFlbzlF?=
 =?utf-8?B?bnVtT29tbjVqRTRZc3dTbDBTTE5DZVNEeXVEdHVWRlNhR1dLNkJwMGJiNjdm?=
 =?utf-8?B?ZDlYUUhUYmVFQkliQkdCWVppbXNQOWU0YkhCbWVlSGVnUmd2RjJicUxNUkRx?=
 =?utf-8?B?emtBRm9uUTI2V21jU0l3L3lRL043b3FjUUo2a0xtRStzaHkwZTdRam9NZ2du?=
 =?utf-8?B?bklvWVdIT25IVFUzUnBZZVVaakJwclpTMTNxYWlCRFVJSUMxUTNmOC83Nnd2?=
 =?utf-8?B?dTdhSmdPeVdyWlBrME5mTitPQThid0JtS3ltQTNvTkhSVmZZMnRQM0hDMWdl?=
 =?utf-8?B?Sk9iL0ZsMTNGazRnTnNZamIvVVloWE5qZGFCemRlYWV5OVFNZGxjRFVLNTFy?=
 =?utf-8?B?YnZ4Wkx1Um1RWDFjd2RhU2R6aHdCYkY4RUlVWGg1dnlzeTdRQUN2QmVZRGZI?=
 =?utf-8?B?dFhEVzNPKzRMZUxYZUtlYit4THFXVUQ5N050S0c1U2QvMjBmTk1yNmxJSk1I?=
 =?utf-8?B?ZnhTZkM0UkNsYjl0WTRxZ08wZnJxM0FlLzVXM3VUUlBWTmFEYTMzTUd4UEhh?=
 =?utf-8?B?Y090bDQ4OVZFR3FNYnRzRVdUNU9jejJEMEJiWWxLWW5OV1BhRzZzUWUxQ1oz?=
 =?utf-8?B?Vzl4MmtyUXlZNHh1WC9EVU9TbVJKYU1WdFVKZWR0bldMVDhTMHVqUXgwNCtF?=
 =?utf-8?B?SE9pcnBrV0JTQVA2UzZ5NFVEdm9jZkZEL0YxY2xHdFRaOHdWU3lmVEd2aXNM?=
 =?utf-8?B?a0dmNnhBMGtrV0pWWWtlZWVqTjZvLzBLa2x6SHBZLzlDa3dUYkxad0JsZnI3?=
 =?utf-8?B?RVB4cTBDSWNIcGE2VzNWc0xTMXdNRXhQSFFNaG51VVA3c1F4TmYyR2NsVWdk?=
 =?utf-8?B?VFB4L29XNVZCOHdVZXNqaGVwTVM4RHF6aXZMMDVZZ2FmUzhYWWRrV0pvMnZI?=
 =?utf-8?B?dzVWUElsMndtRnhUWTUzUmhQZXd3QzRVMGFtakw2UzRiZ1JXVDVzMnhoeWRJ?=
 =?utf-8?B?ZUszajFmemhwaXV0dXhYTlpnR05hNnJzOTJ0cU9VQXRSNWlQeXNpaTAwSDUz?=
 =?utf-8?B?ZkgrL3UvM3lpQ1p5M0pjWjRlTWJ4WmxHL1gvWHl4TS9aZ2k1ak9xb0JNVHNM?=
 =?utf-8?B?bkxqYk9WeVFaRVFZS05OWHNTazJzT2dzL0tSN29LNVI4RGZRUUxxcUg5MjEx?=
 =?utf-8?B?SGZYSU1oajBiQk41aTRUbE8xNzFoeWU4WDFLWkp4VVR4Q1BXUXFBeDhOYmdT?=
 =?utf-8?B?aWV3akJOKy9MVit4U21JckNUaExnYkVtYUhYdHEvRXNQeGczdTJ2RGxmSUdq?=
 =?utf-8?B?eVpXUC92d1FETnhlTklDM3NjQWpPdkM5dVBiaVlUQzNMT1FmWk51cGtpTnE1?=
 =?utf-8?B?eHFyTDU3cFZQREJudERiT1ptNVErMGZpSldENzVsMmZOMkJDSHp2R3FmTGdh?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 257d63b8-4f4e-4fcc-4a12-08dc217182a6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 08:57:39.1055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sey7680vbXllPh1dGqjhCIbRvnwaLamM5hlOjeXYxVAuVYQ07dNKhsk77/qVn43IgAqgLAU/OKpggoWHxRFUDm+tumPhkCBwKCMK8/Vq1SM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
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


On 1/27/2024 12:46 PM, Suraj Kandpal wrote:
> Now that we have moved back to direct reads the additional timing
> is not required hence this can be removed.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Add fixes tag. With that, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 9 ++-------
>   1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 4979c9e25cf0..21c503566fdd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -549,13 +549,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
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
