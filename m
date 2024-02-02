Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7278466FB
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 05:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965F710EB87;
	Fri,  2 Feb 2024 04:32:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFwekEsj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C0810EB87
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 04:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706848323; x=1738384323;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4I/qHO5cYL8GvfABx1NoHZsq4Ct8SSTjtqgbQnsqEnM=;
 b=dFwekEsjiir5OGHilMcIPvllr03n9srhHys/YfS1ZHX/oHSsbkymd0gK
 MXR17Fgq7vMvIQtcNyKTrZBnMcIT+h8hn2QoopD98M6YC9dTUJ7h3yrru
 J8fhlfbY850ZCMEMBdqmSPFv9BRNQZvX1f1jUv6ZZnWUKrRNKAXIWaEwj
 Hk5sInuhPTLdJyNrzj8jJgi9tPH78BgvKd3wyRKEHCs9KvN9AEz6uyif9
 Rx4skVIbyf3QnbfLmDx+FmkQyx+OVDDhAkF8SFHZKVuHLOJTewxhXwNax
 tY6cItkr81MlmOwvjybmOVF4v4xpZt1Q+I26FbnbiS5HaFg4ceXRraaez g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="394518060"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="394518060"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 20:32:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823126205"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="823126205"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 20:32:02 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:32:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:32:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 20:32:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 20:32:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMND6Sq8/Guc82xo0iuzmpigvjXpGVfhhzIGVmVUTpfYoCG/QG2DQLNgLyhY5cirmulEI+dcDWam/sFTICSNWJpxGGnDLpdC6TQ5mtR5nP8aI7ZVN/V9Sf9PF62sPhcOBGLOZ6M8igSUTPYT7mtpbRAal6N9POtCvhGLry6Hnf58wuyhAn4LF4A4ZprDip4hh1ioVKEvbVhf+G9XUrQDgb60UtdLWw1rT3DlGzvLK32NFCrdRtZWjaXbUKw10Ph3PbalBMkOI2ppFvgyn+xG2zmFX0kgfsOs5KRPzL0tkZ1JC6WF+ANjbCvUY19PCZykLsCZbb8dksTmjXqziKnNAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=phEcutem35X+gIq8MHxJ23VXi7MDo8Iom02CCu2elAA=;
 b=AUKrN2MEnKzR/SQA+dccS/bwh0d9MKesR6QXmcPcCmeX6QdHv8FyuupXw58WMQaerQ5Nc6d66vJ0lZEf8zGWxuxREl4tAn8ByCfVZUmVzOxOZh0h40LP9hUA9WZctUAEF6XtkA2rE/OcuGQBAgU4uPYOVzYGHZoVItFJmq0U9HZ2d6SbGE2Tvwdc6EyIAtnap5TRZY1VyYHIyKR8YMJALxkEegf5+KAb0/KGEITzf3k8XSsze8CGsYbFKL87UWr9dJE3NYXEIneNoALe8L13VqYlzHN1gPPiOj3mlgRqSCFuwnKOTElIl/TpfG5dQfO0oUh8ddS8tLljmKF0ER6b+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5522.namprd11.prod.outlook.com (2603:10b6:610:d5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.26; Fri, 2 Feb
 2024 04:31:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 04:31:59 +0000
Message-ID: <e1afdfe9-abaf-4602-82c8-00c9b39e5f36@intel.com>
Date: Fri, 2 Feb 2024 10:01:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] drm/i915/hdcp: Pass drm_dp_aux to read_bcaps
 function
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
 <20240131193929.938748-5-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240131193929.938748-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5522:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a9fdda8-9774-4553-4dee-08dc23a7e569
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xDDLad4VVmdR2oQ6wc/fXBYkOdxFYWgj71lq0wmyYNy/L5njEpgomDabO9GqEsuh+3RgE2Db7u4VCt6pVYihDLSPhlnG0VXZ4AZQKHKXrCXw5hSi0vrsiqFS4hlJFCugaOJhCq6cpfaj3E3/bVxlZNKTGMfWjcvRHRoUZtsRd+mG+cDMLTMEB9gKQce0xaKwS3TP0Y/pciuDXPfvLrjdcuHjv25HTDSEQCzsUNDWptAP5tJOcCYRe54IteRv7ZpitbZVEysaHQ7BjGh3Un1bplLItKWWHeKD4R/y9kHByZmL6sjQJeKXmInM/KZ/LlOlJI4bRKZT1Tr195uxpQ7G1SgCFUSAAnYAqV8juBSo6P4mjmSBnLG51FBtR4XKvvMeJ4PNcaCnnLl/YpQ3QrdQeXU16WwlHN+goDOSRzQlc8Eh+EXl05eWLxUk3JXysHqHMS7w7l1GIJZFA8/M9EqR1Rvdma5gMcDLs3TJGRXzn+cP+sgMsOiIL3gvEjO3ghn6U2xdb+A4+WH8A5PgsryumSWVJhTRQcnYmitHSPqOZNE63BUTlirQydBu7yTBeI+SG68h5rmwsXXVwSJii5NfDv2KNUbyAaEvrAmMe2MALA5FPpFdrdpwBvAfqgepcDb/CeE/7HpNYcrFpLxF7emgVw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2616005)(107886003)(31686004)(41300700001)(26005)(36756003)(316002)(6512007)(478600001)(53546011)(6506007)(83380400001)(66556008)(38100700002)(82960400001)(66476007)(6486002)(5660300002)(31696002)(2906002)(86362001)(4326008)(66946007)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K010VWE1L0VhQkxYY3UxU1VLZjV0Qmprb0JJZVJSN3VodWo3cGZzNnZEdENs?=
 =?utf-8?B?WVdRTXRQYitBSTN0MmU3NjZyLzdPaWpTK2RmeG1Ydy9IUTVKWlk5Wmg0M2Jn?=
 =?utf-8?B?SjA5ZjVaVXEvK2gzbk5JSlJ1aWZGQlFxQ2JaSXFaTlVvd3lMMU1vbmFFZGJE?=
 =?utf-8?B?dTlRMEFHTjBMTS9uUXJEMnIzT3hvN2xlaXVkeWpkWEo4SHlSckpqc3RYb09q?=
 =?utf-8?B?azJGOUZzTzM3ckJmV3ZSalJOQWtNdnJiYkxhNEhGRHdGYXJJRSs3U2g0aFVL?=
 =?utf-8?B?OThjc1FNbTRBckl6ckJoUDhGV3ZPOGlqLzZVNHJMZkZuTFFZRmNiSzh5UE42?=
 =?utf-8?B?bTJRbmtaaWNCa3BFNjF3Q3JHTythS3YySkMzYjhYVmd2UE95ek1UT29OWHBz?=
 =?utf-8?B?R3BZaEgzV1JpZlBSYWhsSnUxcW96OEY4cXluQ0FkbTFnRk1nWG5xaHRxQmc5?=
 =?utf-8?B?Mm9lRVBOYzhkZGJ4bldhYTF3MUtVbkJiQm5qS3BnSEtWcjJLdjB5b1dGalM2?=
 =?utf-8?B?aEhuWXJwaW8vNE9sdHVzbXJBUzhSc3ZwakFVcWo5V2NvSENEM0hZRXNNeHQx?=
 =?utf-8?B?YU9XMmQyQ1krNXNMU0tWaG5QSlhaaWF0cVpra2NmRDMzWFVNZWRaS1BUVjJx?=
 =?utf-8?B?ZjVzNk5zclN3K0lPaER1ZFhDajdMdkdwZ2FFUzYrd1BkaGVZekxwQzlYcFl1?=
 =?utf-8?B?MlZWd1J4aHpReVRnUTlPeGJyaDRMTEdhR3h5Mm80T0hYOXdGeWVpWnQ3NUs0?=
 =?utf-8?B?UWxrcVJzUi9CblMyUGlpMlpOYmZ6S0FURE9QTDVmUHJYcktSeThzdEdKQUFB?=
 =?utf-8?B?OHBrNEpjVU54WFBVcllUQXlUL21PS01hTXFIRU1oU3A4aHFFUDdpdjdWVE1O?=
 =?utf-8?B?WUJGaGc4TS9QM2ZPbnR0aSt3YUpBMzdpR0JqZmIvQm5ibG11ZVc5RXZ5VjFt?=
 =?utf-8?B?eC9OejNmNHVDaDV0UXh6L3RETDg0VlprU2dVOUh5YzlrWWtTRUdGeWNzd3NC?=
 =?utf-8?B?RDFpR1czTjNlMGFSTldtUElSdy9zeCsydGlOejl2RTU2SDIwSEVTRlUvTURl?=
 =?utf-8?B?WFV1L3lQbHRVS3hzWGhVcVl3ZDZuNWNzbEZGZjhRYys5R2RsTVF3ZUNXdlBU?=
 =?utf-8?B?cFlQWERqZU1RMXNGRWkxck9LVGp4RGZ5bnphQnFaTWZZbjJndmhsWERTaXUy?=
 =?utf-8?B?UnpuREhxU3gwc2hPYTBzRnFob0FidVlnSWIzdmNTQ2ljd1cvOU1XMElGRlNB?=
 =?utf-8?B?UjJoZHY2T3J0Ui9CMlRTb3RaQzZ6RnU1bjFKZGdkek8ydHg3VHFBNFNuYWQ4?=
 =?utf-8?B?TXZjYmxENDM4Ynl4eTduMFZpSHBmdnlTQUpmMlEzSTBKMWpIYUdERlEraW82?=
 =?utf-8?B?RmNHVVo4ejJiZEtiMUx2YjBGMzdvbWM1STRrSEgxZHpnUTIvZnFIMzhUa2xl?=
 =?utf-8?B?VkxzclFpbmYrQXA3dXI5VFVyMzE4aWxCeUJUYmYra3hnc2p4V1o0eWpGUEEr?=
 =?utf-8?B?MVA4M1VkQUxkTUkzREtBVXdSMHNFeHQ2VWRKSjRmemFYRW1xb2NGQTVPdVNN?=
 =?utf-8?B?MmJqSGVYQ2ljVmhUcXkvM3d5Tm1TbE5jNUsxVWJjN3V0MFMxSDU2eTFEcFRB?=
 =?utf-8?B?VDZFL2x3UTdEMjdNamk0MzI1YlV2UGpJOTdKWDBOem1YcURzcktXSUtxYUtq?=
 =?utf-8?B?ZU5KOFNXQ1FVZzhlR1p2RlNKb2EwS3NJZElHcDNESjE5WkVFZEFFeVJkYWIy?=
 =?utf-8?B?YmNPWXBoRVMyZ0RPVHVQN0cwd3VCVEVRenltU2JUNnd1NE9nZnJKaElxWjJ2?=
 =?utf-8?B?bzlUaG1kZ1FDWmorUWhJY2gzTmN2TFR1TVJxajFXbTZ3cGZIcUFadEY3SUdE?=
 =?utf-8?B?T1RZbkNpUTdpdkhnc3ZkM05IRkx5eGsyaTJNRjQxSi9TYndMQXgwbjc4cHNH?=
 =?utf-8?B?YWZUMWpIdStuditLSjBZMUtDbXFJNjhGRUY0aVE3b3hKNzZYbk55a0VKZkFw?=
 =?utf-8?B?eVNmbFlweEVDRFYvQkx1WnE3RURrMyt4QkcybnBiK3pmbUFmR0k3UUkzcnhs?=
 =?utf-8?B?TGgya3hzQmxYVjJhMTNmS2JkRTBCSElhR3VxNzBNd3Z1bGRLMnVDVlVDa3d4?=
 =?utf-8?B?T0hMTU1kbXREeG1Yc0MwRDVveEhPaGlTK1JFNytlMWtIdC9WN1hHSU5ZZTR0?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a9fdda8-9774-4553-4dee-08dc23a7e569
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 04:31:59.8137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aTDP4y2FzrAETk7mOS7SDH7bP76HQAs80P9suJQHFLjAOl27SauYS6DxUUrGzs/+aKVqG6Hja+X4QhtaYR4W4ddLOQs7OWTABHDw8jvDyaM=
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
> Pass drm_dp_aux to intel_dp_hdcp_read_bcaps function
> so as to aid in reading the bcaps for the remote monitor
> later on.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 12 +++++-------
>   1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 9aeee6b49b3d..261de01aa5d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -122,13 +122,13 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
>   }
>   
>   static
> -int intel_dp_hdcp_read_bcaps(struct intel_digital_port *dig_port,
> +int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
>   			     u8 *bcaps)
>   {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct drm_i915_private *i915 = to_i915(aux->crtc->dev);
>   	ssize_t ret;
>   
> -	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BCAPS,
> +	ret = drm_dp_dpcd_read(aux, DP_AUX_HDCP_BCAPS,
>   			       bcaps, 1);
>   	if (ret != 1) {
>   		drm_dbg_kms(&i915->drm,
> @@ -146,7 +146,7 @@ int intel_dp_hdcp_repeater_present(struct intel_digital_port *dig_port,
>   	ssize_t ret;
>   	u8 bcaps;
>   
> -	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
> +	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, &bcaps);
>   	if (ret)
>   		return ret;
>   
> @@ -271,7 +271,7 @@ int intel_dp_hdcp_capable(struct intel_digital_port *dig_port,
>   	ssize_t ret;
>   	u8 bcaps;
>   
> -	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
> +	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, &bcaps);
>   	if (ret)
>   		return ret;
>   
> @@ -639,8 +639,6 @@ static
>   int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
>   			    bool *capable)
>   {
> -	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> -	struct drm_dp_aux *aux = &dig_port->dp.aux;
>   	u8 rx_caps[3];
>   	int ret;
>   
