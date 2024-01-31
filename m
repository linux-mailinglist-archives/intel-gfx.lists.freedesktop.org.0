Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 175C48435EC
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 06:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B679112243;
	Wed, 31 Jan 2024 05:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A20C112243
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 05:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706678134; x=1738214134;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vx1lO4LcncdXHbC/B0jD8FLRrZ7uN9UwryonBBKe04Y=;
 b=mmCMMYXcgFpTKLTa/M/zDWq5iteGilw41OgQRQcNmigQD6u3fn/s1Qyv
 AUPd1h/qPTw6PmjndJt0M1d7tbM079p4q1K4VPsFJy7QmCXNsqZspH9Q/
 nzZbm04N6Ac2LAUH4wkXz1Bowr7soPaNX/jTUv2h7H5Xe+6GpAh/5RD86
 22HdNAiWnJmhXrCCkshbkTsXOzfTg2Ccr2qWqHrxRzR/sNPbuwZMgNeSv
 o/6Pz8pvMnN3E+MfTVFZxvBvXrvx5mfQgQM/C0O3kZ83cU7A3OL2mC3IJ
 2a9T6k9+xjUra1DUaJCnvn0hObRzp1c/Hh3hdipTLAHBazTO+HWQ+djR3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="434662572"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="434662572"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 21:15:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="30119752"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 21:15:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:15:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 21:15:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 21:15:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DYXfl8KcLixR6NaeSgggxfhxaxPxqKvH4LXhLUe7y4xtEmljeO/PxrK+2xhV9kf0yV4sj4ynIZ6Cx3++yOi7Yp6qQ9TUhChsnCCu3UiM9QZZLwEk25ag9Q2qcaImcPWlDmWnPD4uxMz5gDzyubAbS2VwUdxxq/KsyXmkM5AqrDqtsHWBZX6t5lLwdmkKOcC9DIYQ/4rQkr1xOCmljO8l90u6QbW7LR35GtPG4M2VMhVgmYdQ5tkRVRaie2DXdtoRjk7qJhulLeLtYjWn4josGrzVB6Y5IDgtlj3GVXj48HNSJDTXdMjGuyhypK0rSJ+qTt4GKoPTR4SWlGO4PAlA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZLUDS63iE8Br88B83uQ7nnoRuglBNXkwmo0JGlOkrE=;
 b=VwTzZgvaEj0wsgEQC7eim/fMjpGZKpz2Hh7uMfRaNw3PNaGV4AiyylWLJBvxH7DAizoN0tkCM34nw4XmM2a+FvMXuzfE7FeayRh+SW7ORXrq6Son71PwMa2oAjPozDKEgB+UfoT4Bwa+jHjd7o6ZHlmQSTIoIrU1uWkt7hhlegmV5xl58SOUdfMAork/FiQGejnEKqWLNuRFbTes1AkI52Re4HCxm1JsfuQKnJOAC/sPEfZgZGRj9jksN0LRYls6PwPqc/nav/EmlyiRJOearEQnkLsTEfQg0LrvA2mnBgZjMFKMVLOXl/L1vv2SZg0zGwAOEFLw/zeTCOtanCJfQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8236.namprd11.prod.outlook.com (2603:10b6:610:184::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 05:15:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 05:15:18 +0000
Message-ID: <e3a3dd15-9e98-4916-9ffd-97ff1bd8e2ee@intel.com>
Date: Wed, 31 Jan 2024 10:45:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] drm/i915/adlp: Add MST short HBlank WA
 (Wa_14014143976)
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-3-imre.deak@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240129175533.904590-3-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8236:EE_
X-MS-Office365-Filtering-Correlation-Id: bc9e33bf-abdd-47cb-aa90-08dc221b9d7d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OFSRh8aYP6wp+G1jxosbFEyCuF831K3gWDCaY+edMUdjRGDOQaXSV2WIBXUyF0FZblSDIPzJ1Qw7offkwc3iku6QIczGg5rq3V1Vs2JuY1u/qke7wgJfrhhBjExI114zqZeSEMYi50a8tSoiSWVtYCyOGz2UaJXdIF5dQUShxj3THSUnbrRpL1jNzE0RfrkmryiAiu/4hrUPeaIdvWT6UKB/QVYkaAlMb5CtIgwkKjjmHnZzj9q/9YmWZL4K7vuxecJD4QCFfrSZH7P6iD/EwIannzM60RwqQ8SaQ3doPZmcZGrQ+q3htFLHBnJXvLtkrLfhSPB/W/RFpPaWIdZ0JAuo8+7I/AFrRQbWQEvPruimSF6stmb6QYIi9KIIZWiLUKQLK723HFTLeJvC+qAEjyVnhIArJrP9ztZpZcJluaNIoRXZ8/M7K9XuvKjW3STCO4HkPRKXeatHnCnSNuUzOsOp0KSVgEkrdrlWxZSd480gLdSCdL9z9Vat7DEGl3CD71ZCqIWmEqIRTitQ7/haxP/S3cnVU9Nm5q6Br3JFIocpg82OoTFebO6kYW2bXWRI6RSOFGqd0g+yDXSf8yd1sle5nK+TwWs89cTFg0oYU/Ir+QQwAEZfcx6IaNqPh6CS3VPkkGT3ACojsF16JLeu7A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(366004)(39860400002)(136003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(36756003)(41300700001)(6506007)(8676002)(8936002)(6512007)(2906002)(2616005)(5660300002)(38100700002)(478600001)(6486002)(31686004)(86362001)(31696002)(53546011)(66946007)(66476007)(316002)(66556008)(6666004)(26005)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlRKS1ZXd1lFQzBTNEZWZUc1bDRZTmhoT0RyaXR3S1pGR1FPQk51WEdZMXFO?=
 =?utf-8?B?U1JKa2NTVnl1emwyOHEwb2hDSzFWVFZmckExSHF5eThoMGd1OUVCeE8wN1pX?=
 =?utf-8?B?SHBPRHdwbUk0S3NnWit0NHBIaWhxR2Z4UjloQ1BiZFZMWUlWQ25BN21LelpL?=
 =?utf-8?B?TDVOY3FQcUFlOWgwb09BZ1ZnOUdWcEc2cTRBY2crRXBHREtqSzFKL1p1V0ZL?=
 =?utf-8?B?V2VIakxHUEF3ZjJGRWVWYk0zRUNKV3JRYWI2Z3BTZWMvb2Jtc2RPclRTeDFh?=
 =?utf-8?B?YTdnU1orME9BUFdkcHQzOGsySDFSV3o4QURsUWMyWDB6QjgzbnVCb1lVbjJo?=
 =?utf-8?B?OVNsdlgvT0pvMUtOZ1RXaFM4TU9MZE9hSVpDYmlGLzNCdnRCQ2RCcmkrMlFV?=
 =?utf-8?B?dXlWZWtHVk93cUp6emNVcVQxNUJYTzg4QVRNRG1jUmpWMWVSQUpSYjZrQWJt?=
 =?utf-8?B?eCtidlNndWJpZGtxTzVibFh1ZlB1NEtnbHR6M3ZReDM0cHJHendjV0hOb294?=
 =?utf-8?B?U2tFa0hoVmYzYzVnV24wN3FoOEFUeWZhckx5ek1STVhaNXJia2pLTm1mSndZ?=
 =?utf-8?B?TXB4cE1zcUJkQmNDdkVwZ3FIL0xTdXA2VitBbU9tY25UN1Iyayt3RStRWlNO?=
 =?utf-8?B?SFFTSjJNWTAybWYzY1dLejI2d0g2UlVnK25wSkxTNkMrSEpJdkVKZmVtdThq?=
 =?utf-8?B?ekdpeUgzdGl5djdpdVpMYklhNUREQmhRbTkxWnRtbEJxbkI4K1phRU1IZk1Z?=
 =?utf-8?B?Y085WUtPOGgrM1dIc1R4cmZ6T0hMU0RUZHgxN3kyQWJJQkk4ekpKUkhBaFdp?=
 =?utf-8?B?eFZqLzdQVDA1R0c0cWttdUZzekVXSG9GZkJKWVgxejduaVpXVDBhUUpMRWx1?=
 =?utf-8?B?Q0ZuYVpMRFg2blBXL1Z5bUQ5Q2ZHdlMvclVGYU5UVjA2RGhhOVdrbnF0SzVE?=
 =?utf-8?B?QW5BSElaaXBQK0YxRHpBRWhOa2ppTDkvMUJ0cW5JeXd0aU9tbWF2V2pFWW1y?=
 =?utf-8?B?ZGwyYXIvamNTQ1pZaS9ncDdqNlUzdXRoMXdqYUhPaTRPck11QnV4eWlOUDNB?=
 =?utf-8?B?OXVLRms5L1hEUDlSaUtJUzdJcTJjZWJZdE03N1k0K2J0ZksxeG1pRy9jcEx6?=
 =?utf-8?B?TXY1SEJ4N3RiZDNnYWtzWWJYVy9meDY1T2hGYWY3cDFob0pLeVUzSEJoOG1O?=
 =?utf-8?B?QnI4clNOSGwrNDc5cUFiRXhQanJUSW1aenBGSC9YVHRQd2cwcTBDcWxaa3NU?=
 =?utf-8?B?MkUrQndHT3FvdmJZNGxLNHAwQWFpUGJQSjN3QmpjVkRodGxBODdiVXRHSGVl?=
 =?utf-8?B?dmVMREZQVm1nb0F4aHRaRkRiMEltQ0V3Rkpsa3Vzbytjb3A1dHpMQ2JwTmtq?=
 =?utf-8?B?N0d0MkF6aVoxNW1oR2NsbzF1d3RNUmZ2dE5FVmZzck5WMUZBc1cyaFJmNXYy?=
 =?utf-8?B?cW8yeXoxa0M5OCsrc1hoWFd1U2hoS0hRMjd1bVVwN0o0czgwUHVIZ1BMdEFs?=
 =?utf-8?B?bHlDZFNhNXpYS21NRWNjT0pLOHVpM0d0emU2V2tDTWE5eEpVNDdreWUzdnRi?=
 =?utf-8?B?RkZWa3lKRVJZZTRMOXlMYUsyUzJYNjUyUTZuTFRNMjZ5djVISkJxQWJzcTJB?=
 =?utf-8?B?bi85Sm5ycUhlVm5kZ3ovT3oyS3VCU2pTeWIxOGlwLzBFUjd6Q2I4M0tsNi9p?=
 =?utf-8?B?a3VsejUxV2Y3T1hDdXU5OGhnbmMrT09aemlYQUxaR1VLNnBub21uK29Ka2NE?=
 =?utf-8?B?R0l2WUVjTWdlbFJyMDBNY2NBYjRqUE5KUXRUaW5FbUcrdXk3ZWN3K1FGci96?=
 =?utf-8?B?c1ZOcVR4U0VUdE1UWEg1dGFEZkNEN3daRnp0ZG5ibXExVGZ2THIwNzVVQk5v?=
 =?utf-8?B?Y3JDZS9PQ0Z4aHQ0MlZBY096MlVvRHlXZHEzTWRvMWNQdkdBdWpjL3VwRWJQ?=
 =?utf-8?B?akp2cUN5OWFIYktsa3FVZTZYV0JrbytZZHlkSzc5NFdabkRFb1paRnlXM0Vu?=
 =?utf-8?B?NVdjS2FGd3l4UE9oZWVEbk1ML3JPalc5NHJZS3lQemRCVWJLb3hkZElrdUoy?=
 =?utf-8?B?KytIcDFXbHpGNmpGZ2pLV1puQ3Q2RXR1N0Zocy93S01YK2drVWt3STdWQVVC?=
 =?utf-8?B?Zk5PQlNxelkxTnlia2VxdVJhK082Q215dVJyMGc4MjRCQ01aM09BRnRvK2Vi?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc9e33bf-abdd-47cb-aa90-08dc221b9d7d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 05:15:18.5010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: phXc7nRnpyapzbpti3dcplHcL/1fj7Yuh0CPPjHJE5XgbHMJojwVSmuejzgjQ8MTIglzr027nrBffJhj4OkCryfTLwbXl48yoq9oPzYpA8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8236
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


On 1/29/2024 11:25 PM, Imre Deak wrote:
> Add a workaround to fix BS jitter issues on MST links if the HBLANK
> period is less than 1 MTP. The WA applies only to UHBR rates while on
> non-UHBR the specification requires disabling it explicitly - presumedly
> because the register's reset value has the WA enabled.
>
> Bspec: 50050, 55424
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
LGTM.


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++++++++
>   drivers/gpu/drm/i915/i915_reg.h             | 1 +
>   2 files changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 22c1759f912db..23f3f7fab9d0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1122,6 +1122,14 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>   	if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))
>   		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
>   
> +	/* Wa_14014143976:adlp */
> +	if (IS_DISPLAY_STEP(i915, STEP_E0, STEP_FOREVER)) {
> +		if (intel_dp_is_uhbr(crtc_state))
> +			set |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
> +		else if (crtc_state->fec_enable)
> +			clear |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
> +	}
> +
>   	if (!clear && !set)
>   		return;
>   
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 67b7d02ea37bf..091edc1071e0e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4556,6 +4556,7 @@
>   #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
>   
>   #define CHICKEN_MISC_3		_MMIO(0x42088)
> +#define   DP_MST_SHORT_HBLANK_WA(trans)		REG_BIT(5 + (trans) - TRANSCODER_A)
>   #define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)
>   
>   #define CHICKEN_MISC_4		_MMIO(0x4208c)
