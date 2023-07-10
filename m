Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E8574D4DD
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 14:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3531E10E278;
	Mon, 10 Jul 2023 12:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD1E110E155
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 12:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688990421; x=1720526421;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=auHDctk7YcxKjXFyGs0JLWlVxzmDvfGy3MMSUl4mtic=;
 b=d9024CzLxjWVCQYOqge59de2p6CwAOMycyGuiHXPHtoczmCL/o6YHZ1m
 gt6qpejOULF/19slYooBGVqhKjjPm3tVOeWcVaXCNS6mGHJCwWb0qhq/o
 2lXV433DjNe22jZ9jCWikpmgu//WyIUEoNubwQEvPUJof5iIbCadchJSS
 fXTG7FvDpVY5vAQCi2diWhgyI6/z5FtMzQUTUuXtNvjmAwGhaoQzAGIdi
 2GeZ/qUTBg531lfuCj0Y4pIzxsSvBkeo2daR+T5uDxU37c1w8RUcDd9Zz
 s4yvLEM6omtxN5YMQgrVen7pVgGePG3eHQ34t8FD3VLKZYEPExWxXFqUx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="430397282"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="430397282"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 05:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="894748045"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="894748045"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2023 05:00:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 05:00:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 05:00:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 05:00:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 05:00:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPntJQdeAOtLLJd3mDzJSCUMueX7438W+1q7vdh0BOv1Cga8uZQH2Suem10vzpQFdCK+zOGIH+sSDAqHbFj1FKl7XTV6SF3rdOcr7xnGEA9K230eFEk1GCQi2wYPK8hSngf51/oxrncaRSMti9yT0KWGTQL0oQI30BJdo4+TVgzR6Plm/P6g95DmihYp+dl9+vRcewlUt+zVPlSHI1EJ4KMN7szCMMaIDi6pAVCjT5sCwcMbQx5Mr6W2p/suYa/Wn7cebCyXP/CBpvdZOyOutUPw4xpWHzy6Ckrl3pRD2+H27YPWFYh5jT6CujQJxDARRKtZlBMBXeXH2YUCLwggTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A5aS2yRE1lIXTqjDZhMx91VZzudh/EN0wiECGa4ccPs=;
 b=K8MLurVxThgK5ayMJ/iG999ZesJf1XYWBEd89qTlRfqtXjnv1LZKdPK/AaPw9CD5obL90YfMq70u+lXJRyv6Xfy6OcSNRHsg9rmncxZ+TTOJSu6Ks2KAP7fo6P9bVUWcyFE1WPF7lN+edRDW80oqMMQuDhAEVlombWMrIoHLxnJCf5LdLIQZXJGrudGvuoF+fPbdNgrUtj7fQAxh6rQdan4SsSAMuBngq3dJyYhX1yW97W0gfEopqyiS01zWEKu/4KAVO9gwwEulFkynUDX4tCshPLB+p8sYh1XDBqUUSo5HkxHeEMxpXV/oQH3mtOJJPHR1Q/4jvqSY6ze9cAj1CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6868.namprd11.prod.outlook.com (2603:10b6:930:5c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Mon, 10 Jul
 2023 12:00:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::60a7:9e5c:928:90c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::60a7:9e5c:928:90c%3]) with mapi id 15.20.6565.026; Mon, 10 Jul 2023
 12:00:17 +0000
Message-ID: <e6a29428-5ffc-6822-0577-179bf2c0c8f2@intel.com>
Date: Mon, 10 Jul 2023 17:30:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230705051502.2568245-1-suraj.kandpal@intel.com>
 <20230705051502.2568245-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230705051502.2568245-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0234.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6868:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cd4978a-6cf7-4102-2dd0-08db813d39e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ejovbdgSxfVrA7m50+4y1FbwXE8S0BobhGxaxOLm7TLkN0TLa4Tyxz4ib5iPc3oXFjntSSKnspRhsTi3ojvJYKJyeEHNnl4CVy6BtQT3Xamk9mAeaEvwwMEFLYuFAPkYGyjbZk4LobzQrRQSJbOnYtqJ5c+Bgbn7v56kohHY5CARQYM/3iTnWmOd93XgjKk7sYibkeRIR4ZBYsLVIKsDoOOhBy0SVzMkv89ZTAKSZgL2AfGUNeWd0B5HxKRqvP+6ZBdepDLqNx2zJaosWHrnB/b1acIxVSLXZWtqlH3DAdwnNMux3lYPMdtkMxAL5VIS7ZLcO7kRhgx+oCBoh5vPHhy4yPDC050ba/g00dkF06CltK8GlqTUPWdCyobHGuX2LXwPZARtaBqDwLHSVoWw874bZSL9gkDYKuDw3EOcaWVTgFOZfqJ1vyOEN/Qmfoxtrj0xbuh4IZh9XCNXkqSC5YnwNfAjPO0zF62gnyiE1TH0n0il+yJN6doGt0N0JTtIDBwoCW5N42J7ChBPxlA0Ndvi9zCxcDBU98NOCLuy7BlsxS0qdISK1avG9cDmZ3r4NMzpCEOHrY8C1qV5cXorLsHHdPMVjC/5QkoIwbPvysmi7ft3XRki5wPBjh1ZX/jd+gRl4OGP7pEOAu6iC24Nag==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(6029001)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199021)(186003)(82960400001)(2616005)(38100700002)(55236004)(107886003)(53546011)(6512007)(6506007)(26005)(83380400001)(5660300002)(478600001)(54906003)(6486002)(6666004)(31696002)(86362001)(8936002)(41300700001)(8676002)(36756003)(66946007)(66556008)(66476007)(316002)(4326008)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0l2SkRHWGtSY0sxSGhzcG1qSndiMEZoTU5BU0NVM2JVS0M5K3hxQ2ZBZkJH?=
 =?utf-8?B?aWRTUHMvQWNDcWpFS0hCenEwOHJxNllnZFdhcnRFZVpLUXNROFdlbFhIcDBP?=
 =?utf-8?B?RTRLMVh3eE41NzlMWUY3R2MwNEorTHRFU04rVFNVZFBLNm5tbDFGZm9YTnNy?=
 =?utf-8?B?VFhpVUlZSzJjbXJXUEdzYjBIeDYrRmxySTJkMG1rZFFPazhXdFBOSk9KZHJF?=
 =?utf-8?B?NjZPZ3k4TTFZcG5renZGd1Z0SFRvc0hlSjgwRzk1MHluRzFWWHZUdmxPL3By?=
 =?utf-8?B?cDZZMVFJMzZvRVAzVVZpeTFDWXNib0xSTGxwMEV4N1RibGZaOURjUGZyZFdu?=
 =?utf-8?B?MlhnQzh1Z24vVElMV084Q0s5RG1xV3R6WVZWTFRXZmJBNnJ0NkplWFNyb25z?=
 =?utf-8?B?SkNUajEyMHRjME5rbnN3eldkM2dxMTRhOHNWU2poZmhGRjNYSkMyK2gyZ0hK?=
 =?utf-8?B?RGxZWHUydll2WkVRNWhiSUtQbktOcDcyVFlZRTRMcHoxcFBVVjlMZGRsNzFj?=
 =?utf-8?B?S3JDeHZGTitHN0c2c3c4MW9EaXpKdVY1cGtZejRKanNzZDgxMnl5Vlptb3k3?=
 =?utf-8?B?bjVLcS9kMmZsd1Z4ZUU4dTBSWkFSdVVBeWV5VXA0TGRJQXF4NitHWnZBdWRO?=
 =?utf-8?B?Vi8yZXlHaHU3TDgweXNnVUswSFV2UndIdU5YY2YzSVpreVhBR3ZMK2dsK2Jv?=
 =?utf-8?B?Q1llQ09jaWdnTTVvUld2eUlaUHZJLzM5aXBMMkRZNGs2V3U0UDdMSTdTclU2?=
 =?utf-8?B?bzVZL2Q4SXExalF1ODVtdHR1MENMQmZLS2owQ0tRZzFUM3dpaUFIeHg4eGdN?=
 =?utf-8?B?WitjNmxiOU43UVRCSXROSXUwYU5XbXNnekViRDdQb0pkVWtYT0FUcjlKMm9x?=
 =?utf-8?B?VW44TmUyT251aWgrbW1SRzlIM3o4cjZrMzBDUnBSeE42dWNzZzFjVmxGRkw1?=
 =?utf-8?B?alk4c2w1ejI4WHdEbjNzK3BDdWNvS3YrWm85b1ZIWHI0bnVxUGoxd0VGSElH?=
 =?utf-8?B?ZFIwQXBhdDl2RThZVUxlT0NBQ2M1Zmd4UmJ2Y0xwdVNYa2MxbzdQWnB4QkFK?=
 =?utf-8?B?N3ZPMm56MExqV2c0NTE1V2dKMFNSMmR0bnhrQm1BMXNrNVdBLzF5Z3lIREg5?=
 =?utf-8?B?N3c3ekhmU2NpVEZxZzFFY3MwbEhUTkFNaEpMU054NGUrQWUrT1pxQUJkTDBY?=
 =?utf-8?B?TWYxUXo5ZEVpNWo2MnEvT0Z2MDNQV3ZVQ1NsYmFneUNTNWVmNzFuRE9ONzIx?=
 =?utf-8?B?cE5PV205dURRam1tTWVQbzlIb0gwOFoxQlRkRHJkaW9kdjlzaUlueUUvTjRF?=
 =?utf-8?B?MVBJdnR1LytyTHBNekNiYlBpT0JKZ1VraHZ2M3RNWnhXcmwrc0xTVGdTbGtU?=
 =?utf-8?B?Z2RmMnF4cUh1K0h5TzlWb05DVDNNNHVLbnA5Vy9ERzlRRVRGY1pRRitLOEVV?=
 =?utf-8?B?aTdpUlNtaHZVb1VzMHhHaU8rM2kzbmNHRkpySm5KQVBhM2Y1R3lqN0Z2NkVm?=
 =?utf-8?B?SkVQUUJZcDhoaW5rb3c0Qmo5ZGdCcXVzVG1UUkgxbWtXNkcvTmVidGtDZHdE?=
 =?utf-8?B?YU1odlF5L2JKb3JoRzVuU3NVcDl0VjRWWFVJekt3UW41dDZOajhNUDVCTXp4?=
 =?utf-8?B?RkJXYzl4MEJlcDBWMUJrei9IOGF3VDY3T2JTbXZyeGxlaEhpaGZ4UEFuOFlx?=
 =?utf-8?B?a0JVcXdKbHphc2VaSWt1MWFDZGFOMzBqWjl0VDgyOWpnQkxqbzFSRGNDaFp6?=
 =?utf-8?B?eVY1TnFBMVpZOFZtNVB3YTArQmJRbVdjelhGbWg0T1Q4d3F0blJJVlJTOFls?=
 =?utf-8?B?NTFiQWl0enE1MDZnVWZEc2tyeERUTU82eFBkd01sMnVuRmRoOHhzM2UxVGQ4?=
 =?utf-8?B?VmZKTmFJdlRCVWsvNGUxNVo1RzhtYlFuQ244cEJacGNmTHkzb2w5eWZqZDcx?=
 =?utf-8?B?bnd2VkRUNWVkQ2p3Y09odmRiZkRGT1pvS3h5SnZOZEFXRGJ4ZHFLUXFsUDJI?=
 =?utf-8?B?d1BzalJhbjVmNjJjOHJWZG50RllYYlJXQ3l1cE9PaWlQTVRFeWJKUVdibUhu?=
 =?utf-8?B?UHlyN1E1ZUYwa3l0cDhlWFYxRStlZUFJc0lycjJaOXdsNHZHRndrSksyUkcw?=
 =?utf-8?B?MVJ5cjgwRnZpeVdEQmdFeEFqaFBmcDlsRVloUWV3SnBEaHBwNW1EdzQzeGo0?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cd4978a-6cf7-4102-2dd0-08db813d39e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 12:00:16.9614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tnykcXZHqGPMqGGlRnNR1Pru+x4rFcq04ZZ9keCppupZlNMDSlNSC66yRJAuQivTN8PlI/HbXNGXB+To3DWFBv7DohPrQpZpiecqCStg9+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/3] drm/i915/dsc: Add rc_range_parameter
 calculation for YCbCr420
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

On 7/5/2023 10:45 AM, Suraj Kandpal wrote:
> Some rc_range_parameter calculations were missed for YCbCr420,
> add them to calculate_rc_param()
>
> --v2
> -take into account the new formula to get bpp_i
>
> --v4
> -Fix range_bpg_offset formula for YCbCr420 bpp <= 16 [Ankit]
>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 144 ++++++++++++++++------
>   1 file changed, 106 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index cfcd463f66bb..8f0dac908e61 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -52,23 +52,36 @@ static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   	return true;
>   }
>   
> +static void
> +intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
> +			  int bpp)
> +{
> +	int bpc = vdsc_cfg->bits_per_component;
> +
> +	/* Read range_minqp and range_max_qp from qp tables */
> +	vdsc_cfg->rc_range_params[buf].range_min_qp =
> +		intel_lookup_range_min_qp(bpc, buf, bpp, vdsc_cfg->native_420);
> +	vdsc_cfg->rc_range_params[buf].range_max_qp =
> +		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg->native_420);
> +}
> +
> +/*
> + * Calculate RC Params using the below two methods:
> + * 1. DSCParameterValuesVESA V1-2 spreadsheet
> + * 2. VESA DSC 1.2a DSC Tools Application.
> + * Note:
> + * Above two methods use a common formula to derive values for any combination of DSC
> + * variables. The formula approach may yield slight differences in the derived PPS
> + * parameters from the original parameter sets. These differences are not consequential
> + * to the coding performance because all parameter sets have been shown to produce
> + * visually lossless quality (provides the same PPS values as
> + * DSCParameterValuesVESA V1-2 spreadsheet)
> + */


As I understand we are using the values of rc parameters from the tables 
given for DSC tools application from C-model for different 
bits_per_pixel and bpcs.

It would be good to mention the C-model used for these values.


>   static void
>   calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>   {
>   	int bpc = vdsc_cfg->bits_per_component;
>   	int bpp = vdsc_cfg->bits_per_pixel >> 4;
> -	static const s8 ofs_und6[] = {
> -		0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
> -	};
> -	static const s8 ofs_und8[] = {
> -		2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> -	};
> -	static const s8 ofs_und12[] = {
> -		2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> -	};
> -	static const s8 ofs_und15[] = {
> -		10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> -	};
>   	int qp_bpc_modifier = (bpc - 8) * 2;
>   	u32 res, buf_i, bpp_i;
>   
> @@ -119,33 +132,88 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>   	vdsc_cfg->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
>   	vdsc_cfg->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
>   
> -	bpp_i  = (2 * (bpp - 6));
> -	for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> -		u8 range_bpg_offset;
> -
> -		/* Read range_minqp and range_max_qp from qp tables */
> -		vdsc_cfg->rc_range_params[buf_i].range_min_qp =
> -			intel_lookup_range_min_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
> -		vdsc_cfg->rc_range_params[buf_i].range_max_qp =
> -			intel_lookup_range_max_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
> -
> -		/* Calculate range_bpg_offset */
> -		if (bpp <= 6) {
> -			range_bpg_offset = ofs_und6[buf_i];
> -		} else if (bpp <= 8) {
> -			res = DIV_ROUND_UP(((bpp - 6) * (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
> -			range_bpg_offset = ofs_und6[buf_i] + res;
> -		} else if (bpp <= 12) {
> -			range_bpg_offset = ofs_und8[buf_i];
> -		} else if (bpp <= 15) {
> -			res = DIV_ROUND_UP(((bpp - 12) * (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
> -			range_bpg_offset = ofs_und12[buf_i] + res;
> -		} else {
> -			range_bpg_offset = ofs_und15[buf_i];
> +	if (vdsc_cfg->native_420) {
> +		static const s8 ofs_und4[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
> +		};
> +		static const s8 ofs_und5[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und6[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und8[] = {
> +			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> +		};
> +
> +		bpp_i  = bpp - 8;
> +		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> +			u8 range_bpg_offset;
> +
> +			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
> +
> +			/* Calculate range_bpg_offset */
> +			if (bpp <= 8) {
> +				range_bpg_offset = ofs_und4[buf_i];
> +			} else if (bpp <= 10) {
> +				res = DIV_ROUND_UP(((bpp - 8) *
> +						    (ofs_und5[buf_i] - ofs_und4[buf_i])), 2);
> +				range_bpg_offset = ofs_und4[buf_i] + res;


We can have a macro for this, as essentially we are using linear 
interpolation to get these values for a bpp from the table of nearby bpps.

But that perhaps would be a separate patch.


With the suggested changes in note, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

> +			} else if (bpp <= 12) {
> +				res = DIV_ROUND_UP(((bpp - 10) *
> +						    (ofs_und6[buf_i] - ofs_und5[buf_i])), 2);
> +				range_bpg_offset = ofs_und5[buf_i] + res;
> +			} else if (bpp <= 16) {
> +				res = DIV_ROUND_UP(((bpp - 12) *
> +						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 4);
> +				range_bpg_offset = ofs_und6[buf_i] + res;
> +			} else {
> +				range_bpg_offset = ofs_und8[buf_i];
> +			}
> +
> +			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
> +				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
> +		}
> +	} else {
> +		static const s8 ofs_und6[] = {
> +			0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
> +		};
> +		static const s8 ofs_und8[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und12[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und15[] = {
> +			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> +		};
> +
> +		bpp_i  = (2 * (bpp - 6));
> +		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> +			u8 range_bpg_offset;
> +
> +			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
> +
> +			/* Calculate range_bpg_offset */
> +			if (bpp <= 6) {
> +				range_bpg_offset = ofs_und6[buf_i];
> +			} else if (bpp <= 8) {
> +				res = DIV_ROUND_UP(((bpp - 6) *
> +						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
> +				range_bpg_offset = ofs_und6[buf_i] + res;
> +			} else if (bpp <= 12) {
> +				range_bpg_offset = ofs_und8[buf_i];
> +			} else if (bpp <= 15) {
> +				res = DIV_ROUND_UP(((bpp - 12) *
> +						    (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
> +				range_bpg_offset = ofs_und12[buf_i] + res;
> +			} else {
> +				range_bpg_offset = ofs_und15[buf_i];
> +			}
> +
> +			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
> +				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
>   		}
> -
> -		vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
> -			range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
>   	}
>   }
>   
