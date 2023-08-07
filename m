Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 045187725AB
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 15:29:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407F410E0C7;
	Mon,  7 Aug 2023 13:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4117210E0E1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691414946; x=1722950946;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FXEMBGj/oY7lUDMx3UOTF+op7egjsPAymj1DmnMqRUA=;
 b=d7IDT3Tqv10HGvrwdpSRdFAAkC9BQLG8tm29HBQCNrbmLuFq3OWvKTRt
 n9NqDsHDUyqEK23chpFugsJJdL9eYwScgmCZ/ZstmMSd4i1pBjmxs/FZG
 WsT4IQx/N2z+UtHOYPfqLL2gvsT7eyuv6msnkiz1TjOUbUQ0oMTzYdcpb
 qnmg1u8+vtBp+C/K05OIhN4xPKn+UQhpXsLD4i3ypP5GhtBbDrWDAuGq5
 hF/qJYBwO4Gc6CDNfio1WtY62I46WZQy8Jag/R0zxuLRPwqNWGjCPpTo9
 +6UILzGaE9rLjBEZsClvIBXuY9mTDDISpLBIpSQ3xwVDkzUk4ckeL+kPp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="456926634"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="456926634"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 06:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="1061580011"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="1061580011"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 07 Aug 2023 06:29:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 06:29:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 06:29:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 06:29:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 06:29:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhkuTUH+8WLiqXehsRtZcaV3SCXIbYCO+r+DoLjbU+KfGUfx3w64bEY7eyQ5ZTMkgkRWA4QVRsBGoN3LT+gxnsd4UuCRIh/exr053iDH8rZ9sp8uU2LVBZO/jLptNAjvsHCR8GFyoJgAM4xgqMAcgixlFwycEG7zy8PUBy7jx65FhdkhTLO698LA7rrD+O1gae8+JheQTDbGATo8dL6Qpr/J29AAYWehCs4dj32q9Uct1gkbwOBgyoSgjXv6SOFQDTJChQYAGH8n5bim6VuNWyV5WhugWV3TwEe8wKqpISM8pph4tnLSni8GNpsF0r5a//sxjlYcH99DFJqKFMF6vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5u0kYldCsDmj7GyyiiohW6B3y2XELxakFIP3nFGe+0=;
 b=jYcNIpItsCHyq9d+dGxXs4m+MFZxfHzJ7yLiUOOgb0Muku9tA7qxJ1XivxfBq5Qp3Wp63zxjay5d6SiugfUZM1QQvRp0UhoLdb+HXasYJM2oSbvAJCluLLgBCpgCDkzUmUhy/X1kpnQCseSK2TK66K0CTnZS3NASJgYXihEvC9be4q0NZKGl3UagC8K5UVbWZBHHQeZFaNWpgNh968+lRUZ/SRlG/m0kJMfxKuN8BW0xntAGQ6RFitpwy7tkwqbD88YIUr86+p2Gp14mE10FaeTe4fxJKwQOCDmGuLOZwcBwwmYI9D4+nbtBxmnhNuk93tFSCHAR9Z6DWvHC5QLnNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6713.namprd11.prod.outlook.com (2603:10b6:303:1e8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 13:28:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 13:28:57 +0000
Message-ID: <c4c0648a-935c-1047-4c97-19deac2c9a6e@intel.com>
Date: Mon, 7 Aug 2023 18:58:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230803130337.3784597-1-suraj.kandpal@intel.com>
 <20230803130337.3784597-9-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230803130337.3784597-9-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0017.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6713:EE_
X-MS-Office365-Filtering-Correlation-Id: 878a9d94-dca4-47f3-6edc-08db974a4053
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8F8t8bPntlAoMs2tl59GOdCIxXLUh4hGOB4b+Z5DZxR4Flz2RM3pad8ZUu7gs2ynWUa8SDozSLE/frX2mTqrNqm+E1n0krFDh0GRjL4NU5x1hUaDeHJQcc9VaujX1Ae8rXpRVVCOvCJfEeJkoj784TkrqSdsuP8lGTKDw1wX/hSptZyFMhSH6frCE1AzI9+IwBRHWLb5OOSfaZtUJcApHDyoQr6XHdp8Yu6fOfvsWcsRtBaP+91hXAqRxNYCy/oOWwErhvehyd5KtCGzNfan/15aYiiZ7qr+H2+P9DjTUIGEh+rqZI/umaEPRD9o1TeSuZZxMdljQeUB2J4EieInqr3F5G2yO1bD0X5Led92K/g8lcd2/OmapIXDtvKw4VCs45tDFk+CdFa0nS119L94ozgNwoIOptCwZWjtKQ/otrOyS0IGijCLpgfeyiPQtesOAYt+3rTtqyi3wNO3LGPQXY1jV+oh+HgOhEDT6adY4Hw2BE0+UnWsKOpqfEKY95Ryr+gN7HbEemdGESsyy5UzLhA13Nh7ugz90Rf2PbsauI7ArEFz6dxKdXhMXXhDfVDyym1fl4jfIcpTjtCfxRbLk/VqspCD1kOGtyQO+8Oi64MC89DxhyWTKn2YmWt1Ee5PnLTsf7wZnW0z77e6wtzq1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(346002)(39860400002)(376002)(451199021)(186006)(1800799003)(2616005)(36756003)(6512007)(316002)(86362001)(55236004)(38100700002)(66946007)(6666004)(478600001)(66556008)(66476007)(6486002)(31696002)(53546011)(6506007)(82960400001)(41300700001)(26005)(8676002)(8936002)(2906002)(83380400001)(5660300002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eE5SZzB4QUdCaGxwOFhxMXNDOEVKZ0JVQWE5VmkyTlBkNk1vcmJkRGc0Ym1W?=
 =?utf-8?B?VGRlSE1ZVmlJK0JGSWc0KzQ4cjRWb0xzc090b1kyZkwvdEI2SFNqakU4WXIr?=
 =?utf-8?B?aUNSbHJkemR6ckZ6N243c0UwRVU1MExsVFZ4T255UkhUQU1mV2xCWE80TmJs?=
 =?utf-8?B?RTNuSkgxWTVISksrREdTZzlxUFNLejR5K1h5UER6WUhHcXRGU3E5ckFXR0xZ?=
 =?utf-8?B?cXk2M3UxTTFiZHV4VmFOdnplaW5POTRJYUFRY2h3Mmg2aVJDaXZ6OUFISjUv?=
 =?utf-8?B?N2Z1eUJ5cGpNaG1jUGJIaFoxTkF4cDNtU1h5SUt4QXk2MjErYW15YnBaajl6?=
 =?utf-8?B?R1R6V1B3Ukk0Rkl3cmRyM1NHNUtBR2ZpZWF1dTh2cTI3akN1ZWdOdE92NTlN?=
 =?utf-8?B?cHc1Zm5PdnZPaGJxQ21tM3kvcDM1aTI2Tkg2RDZNYlZjQnc2R01XSjhTVitO?=
 =?utf-8?B?aWJDcGg0WGx1ZGJnemQxSXpPSWF1U0M1NzRtWnVmVDdUdWpzRFlrWG9rN3lZ?=
 =?utf-8?B?TXRrNUNQL0ptVjcxMXhlRHlkYXlOem9mTE4wNUJmVWF6RWs4UzIvQWljNmdv?=
 =?utf-8?B?dnVyL1piMUlLQy8wajBnNm9oWUlUZnR6Zmkzai9CUGQySlFsV0VndFJnNDlN?=
 =?utf-8?B?M3VxdUVQcExJaXkrWGlPaFF4Nk1oUEd4ZVFrTWI0WGVITXNSTlZpeE5xS3RK?=
 =?utf-8?B?ZXc0TFhVSlNiVVh5WXNDZGdKNkFTamk3Uy9uUkcxaUdSNko1K3FLeng1ajJu?=
 =?utf-8?B?bS8xdHIwRHBIV0srYUppQ2RFMm80NDM3SUlsV2tBaWgzbnFabEFwaWpSQlRp?=
 =?utf-8?B?SWNkaDVoVUZ0VTZzQUsxdm04eEJjZGxMV3hzQXZZdWl0WHBUUUJuOWl4LzVB?=
 =?utf-8?B?VmpqSGM0OXNnN0JYQTVBalJOdnd1WUloVDBDWnNOOHZ4V1d3MVZybjEzM1lG?=
 =?utf-8?B?b1ZsOExlSnVQZk5sVmRyc2lnZWs3MmdsQSsvTzlWaHlEOXBIQ0xFSEFGbnlU?=
 =?utf-8?B?c1o4SytzeXMwYXVSVm5vYmhUT3FEV2pCM05adTNFT3RUdGRucW9WUkgvTU9y?=
 =?utf-8?B?NW41OHh5WmZ6K092dGJndzgrMzdocHJzWHdTM0x1MGxFVGNOMlBHQUNLUGov?=
 =?utf-8?B?MlZoNzlrbzhoekJZbERJOEVIOWdTVzdHV3FxQnlMQmRKQmhweUVhL1JOS1FK?=
 =?utf-8?B?SjRhZmN0MThudlR0bmUxME9OTUhGOHphYmRWZHdUcWkwYXhjUFFhNS92aUF1?=
 =?utf-8?B?K3NEajF6QXc3SlZUU3N5Z0NqMmNlRy9ZZkdtQmltVUNXeEUwejdXNnovSERw?=
 =?utf-8?B?TXhYTy82Vk4rMWVpbkdCUHZjMzhZdzJ0QXZ0YkJQYnpjYjJxRkdaYUhjdnE5?=
 =?utf-8?B?RVR0ejJ6eDdJZk13QjVVb0Zsd0szdXVjbUl2R1BDdURiSksrNkF4a05RdXVi?=
 =?utf-8?B?Q1Y3cll0aTRQZ0RXQjg1Y25VNWhjdG5pNHlkTzRtZng1UkRXc2FlNThCUWk4?=
 =?utf-8?B?WGVsZFNUUGg2SzBaZDZOOTFobmZsRFlmYmxxaTJjVkZIV00rZ0ZLWDRzaUdG?=
 =?utf-8?B?TnNPcjdmczhxWWdNbVNnNExZbHk3cEhFRVovbmg5ODJQMXFzZHZ5UzFyM1l1?=
 =?utf-8?B?Y0VOeE94Q0J5RXpPVU1Dc3FYdVlHMng5OW4yOVROR3lZQUZwN3pZMk4ya29W?=
 =?utf-8?B?ams5K080bkw4b3cxNkNjbzZyQmJnOFVHQ0tIZWcrQUE1SFVVbXZHVXZ0b3dw?=
 =?utf-8?B?TnVSdzZQbDErNmpQVCtnMmFiQkRRY2M2SjVtQVhDYmptaFY3bm82WHhObjk1?=
 =?utf-8?B?Wm53U2ZFbGx0RFpMUnRtRkt0eGJiR3hwdGpLYlVhTjNRdkRXSFErcDZtRU9T?=
 =?utf-8?B?OWcwdy9yMHhjS2x0bGJyQkIyOEsycVBkd0pabUxyTmJHeVR3NHdBZ0RwZ2lH?=
 =?utf-8?B?QndQcVF0OTgvK3dqZzBwTnRaaXlwT2oyQ2JvbjJWdERCL0tlT3M1M0EvWS9m?=
 =?utf-8?B?c0JOVWl2bDVGSkJyY1JLanpjem1tMXRaMCtjd1YxaDBVOVErTUVSam1icHNl?=
 =?utf-8?B?Q3VCQ1hHa3RJeDVPekF5VWUzYzlCK2hwMVEwbHFBN3ZaQngyc3RTQ1FOdmRw?=
 =?utf-8?B?a2R6WS9ZQTYwbVZacmtGYWRmUlBUVnhHd1BESGVGZXQwZHhOcGJ3ZVNGaUdk?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 878a9d94-dca4-47f3-6edc-08db974a4053
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 13:28:56.9559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KrliYLDag+iTSVGR/ywUIFNh4PPI3hQB2V46zpOO4USj0E0x8YX6f1aixBOnKpnEsNL7PZk/Ro6v8frvB31rN2Pq60le7JhIN3iZjpzMxbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6713
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 8/8] drm/i915/display: Compare the
 readout dsc pps params
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


On 8/3/2023 6:33 PM, Suraj Kandpal wrote:
> With the dsc config being readout and filled in crtc_state add
> macros and use them to compare current and previous PPS param in
> DSC.
>
> --v2
> -Remove version check [Jani]
> -Remove dupe macro for dsc pipe compare and use the existing ones
> [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++++++++++++
>   1 file changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 43cba98f7753..9c407ceb082e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5376,6 +5376,37 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   	PIPE_CONF_CHECK_I(master_transcoder);
>   	PIPE_CONF_CHECK_X(bigjoiner_pipes);
>   
> +	PIPE_CONF_CHECK_BOOL(dsc.config.block_pred_enable);
> +	PIPE_CONF_CHECK_BOOL(dsc.config.convert_rgb);
> +	PIPE_CONF_CHECK_BOOL(dsc.config.simple_422);
> +	PIPE_CONF_CHECK_BOOL(dsc.config.native_422);
> +	PIPE_CONF_CHECK_BOOL(dsc.config.native_420);
> +	PIPE_CONF_CHECK_BOOL(dsc.config.vbr_enable);
> +	PIPE_CONF_CHECK_I(dsc.config.line_buf_depth);
> +	PIPE_CONF_CHECK_I(dsc.config.bits_per_component);
> +	PIPE_CONF_CHECK_I(dsc.config.pic_width);
> +	PIPE_CONF_CHECK_I(dsc.config.pic_height);
> +	PIPE_CONF_CHECK_I(dsc.config.slice_width);
> +	PIPE_CONF_CHECK_I(dsc.config.slice_height);
> +	PIPE_CONF_CHECK_I(dsc.config.initial_dec_delay);
> +	PIPE_CONF_CHECK_I(dsc.config.initial_xmit_delay);
> +	PIPE_CONF_CHECK_I(dsc.config.scale_decrement_interval);
> +	PIPE_CONF_CHECK_I(dsc.config.scale_increment_interval);
> +	PIPE_CONF_CHECK_I(dsc.config.initial_scale_value);
> +	PIPE_CONF_CHECK_I(dsc.config.first_line_bpg_offset);
> +	PIPE_CONF_CHECK_I(dsc.config.flatness_min_qp);
> +	PIPE_CONF_CHECK_I(dsc.config.flatness_max_qp);
> +	PIPE_CONF_CHECK_I(dsc.config.slice_bpg_offset);
> +	PIPE_CONF_CHECK_I(dsc.config.nfl_bpg_offset);
> +	PIPE_CONF_CHECK_I(dsc.config.initial_offset);
> +	PIPE_CONF_CHECK_I(dsc.config.final_offset);
> +	PIPE_CONF_CHECK_I(dsc.config.rc_model_size);
> +	PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit0);
> +	PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit1);
> +	PIPE_CONF_CHECK_I(dsc.config.slice_chunk_size);
> +	PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
> +	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
> +
>   	PIPE_CONF_CHECK_I(dsc.compression_enable);
>   	PIPE_CONF_CHECK_I(dsc.dsc_split);
>   	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
