Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E967738E0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 10:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F1210E3C0;
	Tue,  8 Aug 2023 08:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79F710E3BB
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 08:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691482166; x=1723018166;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0az6Y5B6VSELv6SmeuQfNY0FafbtjCcJ+U7lZ1195Oc=;
 b=l4DoPghY/7GsxHwynh7gR76RiueBH1p25EDUIlUaIHEwAFPUxwxUB5Lg
 DndHQnB3V535r1VUZFdTEKyvRIr87ICqM1JolLZO8fV5etZgGz3i8S1gG
 c5wbcWWmyI3sdafslrwqFW2L1vO/Axm+0EvIYoOccAgaAGrFg8SoUb6/N
 tk+ipysE5I9riKvEPuZMq0WVGoKgG3sifynxoB/6MfqKxmpiqIuA9ff0R
 ALWf0shEG60BrAQ8X+nDUVoMztK38AvdV68b/YHrz8KDs/CV4x9oLpf0m
 RO62PXhT4NF+r43lWSEEXnNGRb3RhMYn9doZJIoDwdQdmtbi57sZHsjeW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="434602152"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="434602152"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 01:09:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801244018"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="801244018"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2023 01:09:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 01:09:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 01:09:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 01:09:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 01:09:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cmy/OujJjCEn+SU1MboGB15SAiE5FZoWkNGtM/8mIMIyusIOMb9BHpPA9F1aQ64FdkNRLGCBJGJxqjX8R7BVN1JWYXQvBZ4kYK/PSX1wAjDMZxvExb9MEu+P/ShraHo3x9PLNL0AvmKnK97T4M4QYpNTmKgxNnRXVTF+uqV4vRY/R9K7Ciabrv6RmgKwgGWqhvecljPTbW2H8gwt+KKbb/gR2MrQa4WsfaP5atLWzLdfyDIeoSTz+/KuS7wKJGqVKI9RaMa0+KO+p1xOULDCtQD34A32DU86hS5hCJjtubMOcmVJ8AXNU8PJFUHr30KLJyJfoRmW2NoUF8N2A88Oag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RPtEuEf+mEX6ZkTlIeE4c5wfdiSzrs0rkL3QQEYyPrc=;
 b=O2Ty3b/XWCHkEDGUVyop486++tlljpc5oAYz9MEG31K260cAKvyk/pxcz8OyssQ/20+F8FNqGRgnLWGjvAzi2riH9HO4v4FrptfOl0Jl3H0Cfs8lHOCHoPj4UvmbQrxTjIB0rv1xSjc+fGSkkJQ1Gn0kLIzcDm502bflK0VcKYsO+zsJ/8fZOgU15Y4MPZL3kRJabf6L6zzM0qh3uPpH70e1Sjn9a/KOxxILTbeshtKD0NWj99DZT0bPUdjj3x1GgnZYXjwQWX1OW4C1thwCsCG0S9+3WZLdCqIAnsS56we8eN10QK0H19TIhAf9fiZJLwP0r9ZSEzaykefez18uuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6666.namprd11.prod.outlook.com (2603:10b6:303:1eb::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 08:09:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 08:09:22 +0000
Message-ID: <cdbb8362-cc65-bed8-a431-e1273a6d06f2@intel.com>
Date: Tue, 8 Aug 2023 13:39:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230803130337.3784597-1-suraj.kandpal@intel.com>
 <20230803130337.3784597-4-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230803130337.3784597-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0221.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6666:EE_
X-MS-Office365-Filtering-Correlation-Id: 197fd2b3-6615-404f-fe32-08db97e6c607
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HD1b7JDeya/BTmPLy0+uT4Sl3dZbo0jq20IBcOONht+ED9I154sxEjbgx4O4vTXZAXRCt8uAtWyGjI73DYVp33m35sjzKrk6/NzgfqRpLCyMwln6BpgNTzSLPO/WeVUx0nhaFCr9p0VKw9pyGTWa5O07HoY8dwxG1dqBxj2zQnhTKHU28mD6AKLYDodiLEteunKBPZtzbOGGdoTF/r0etvzDt5hezqhDgP43RrJrMbHOU4esMEJo+ukdDK5BZCpuImVlmn3Rnym5b61CQjEfdRafzbO5GeNTByNoyXOXJ+sTO/aWmVtcomJuIAIqcj9etZk/0s4Rx4pB2fYeqL+aGYDY10UcNmVV17Su9bfz7mgXphuhfFfLr1K39mv6KU+z8TtRYGPEgUt+5tnURUFZbk6tZF3gkVeq+WRF4aZmF7a4T8IoyRuvqKtiiq0JslFsHpqhAwtjorkHTC4EunBupbNatcLSnMgOEzgvgIke3F1iGn7ldV+/c03Tw1pAmIwNpJevZKlreTf0ixzTS41bG5iCdOb4spJEf8k7H58I6okeeNBTR4j5c20Nl6S15hQXTJSs7JtTXIMSYvFxS2gEuHWETgXm7zPORM34AjKnteYBNdJ/2ImBcO8PWgmGGGFzYagG1EGlYAYV6YRggNDmosGdXWxWsbietSnkl4Fh0Cny0cB1LpRM5SOq0mgZfkWrG06eLWzSzrqnXj76QDCU7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(396003)(39860400002)(366004)(376002)(186006)(1800799003)(90021799007)(90011799007)(451199021)(2616005)(26005)(53546011)(6506007)(6512007)(6486002)(6666004)(31686004)(478600001)(82960400001)(38100700002)(36756003)(66476007)(66556008)(66946007)(316002)(41300700001)(8936002)(8676002)(5660300002)(30864003)(2906002)(83380400001)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVdsU2NPVXkrSzdrWUM1TjJxTE1mZjhwL1FwUm4vQkt2L2FYWW9SUXFYR2xK?=
 =?utf-8?B?eDgzZEI1czdvM2xiblZVajhqTTl2VUVGRlNKeE9kMG1qT2c3U2NJWS9Dd3R6?=
 =?utf-8?B?c2xzZWpYWlBncEkrTmZia0ZRS2V6R2RpMHc2WWVqN2VvdUNwTlFFa2taQ1o5?=
 =?utf-8?B?dS85cnBIUU1ubTJ4Yldnc1c1OWY2MjFubFJXdlhTQ2V6WU8vZ3FsSlVkVHYy?=
 =?utf-8?B?cmsxY041Y29ZSlVYSHFhRXhDaTNCdS9URVVtQmN4Z3R0cmlFWUhwRVYxNmxo?=
 =?utf-8?B?blF3VEpCOEFFeUVEZTBtRDgxVDFqM1lpZ2JIR1hZbFBXeCtaVExXb2xIUC9W?=
 =?utf-8?B?OEV3dVd5dUQxU2hRRlJicTY1dEl3MHVJbnRLZ2puUTlqTTdYS0tZK3dBQS9n?=
 =?utf-8?B?Vk1MeSszbkExOGI3V1VRcVJoMW5VZmJPRDZJUHM0cytTMTh5My8vTGJLc1Fi?=
 =?utf-8?B?eDBKaHBoZDVWa3ZHZVIzWTNnNEZRbi8raGZWYWwvL0QwYWVWaXp5MlVvRTJX?=
 =?utf-8?B?S0NvNVV1by9EQ1h6MGgvSldVSnZBYjBwVnhkTk9pVnpnRUg1QWJQUHRBSnNJ?=
 =?utf-8?B?eE9oMitCZUNWNVRDcVAveUwyMllnUlRIREdHMVZ2V3lpd3pKQWRkZXZ2OUhq?=
 =?utf-8?B?TTcvMElmWWgyRU5NRXJ1TEFRdkphZ3JOdDhpQ2h1ZW1RMEpWQkpkZ2Uyc1Np?=
 =?utf-8?B?dUlKSTBrWUdYSzh1cTNoYS8wem1IbEVSV0p3ZGlpU1ZKV21kRXdqa1ZkY2gw?=
 =?utf-8?B?UncxaFB2M2RtWWNBU01HblRkWEN2N2s1UEdxb21ZZlUvaFNvRDJVSnR5ZnNh?=
 =?utf-8?B?NUU4ZFFMaHgrMjZrZkJsS1hGeWw1Zi96OEYvQ1ZZaE56STE0eVRtcDZNTldj?=
 =?utf-8?B?MDZPRUh5YU1SMzlBQVVUbHZwNkRWRTU0WHc0cTd2UndEMGE3cUNZOHg2d20r?=
 =?utf-8?B?enRVejlyY0RnTGxRV1FRRU1QNWx1SGtKZWlDN3dXNTFNai81MFdlK3lxNWUr?=
 =?utf-8?B?b1JaNk1tdXdLRGUrQUdWbml6VVQ1TFZYSjZuUGYxL0UzWEZlbWIwZEY4bWsz?=
 =?utf-8?B?cFo0SmFSbmVxYTN3bUYrYVV5ckpjS2VyWlgxck9kZEVmTy9wSU9KeVpLRVZD?=
 =?utf-8?B?d1Q3UG50dzJHT2thdThKclAvWCttVkEyZS9samtPTEJPL1RFSllKZmhvbDA0?=
 =?utf-8?B?bkdOZ1pJYWNldnFZWGFZcFlQWDAxQUVOZ3B6VldWaFA4QTVJUHk0enN6N1hC?=
 =?utf-8?B?MEZoMEpJT1hxc2FvSTdtSGF2dnU0clRvcEJPd0JOdDFPZmV5cUphZXFWby9L?=
 =?utf-8?B?ZWdKMjFoSWxDSXFwVUhHek5xeDVwWm9wN2hiSEU3S3F1NzFJQk45UmhOZXlV?=
 =?utf-8?B?cHBDc2hJa0twNFZ4L2wyQzZPN1pNemFlcjhIeUMreW11YUZ0ZXVYaXZ2TFUx?=
 =?utf-8?B?RjhYWnNPbHdmL3JIbmwva0hHWTI5cklnclZUclIzSE9aU3VUaDdQNUhKemta?=
 =?utf-8?B?WXRQdENZQ3M0Z0E2Qll5MVR5K2lKTm5maHNiN1UzMU1TM2ZsRWlLV2g0Slpo?=
 =?utf-8?B?ZTFwNkdkVGdOUmo4a3l2d2pMNlpOUGthQzd5ampEMXR6ZXA1clpIL2llVFMy?=
 =?utf-8?B?VWZXSFdrZzVEMHU3cEZRbUtXM2F3Y2JCbjlXQzBOVnhQZXFBWmF1bGZNRFdx?=
 =?utf-8?B?UCszRGZxRGpUSTBoS3dPKzdXQzRGeUJ1SFR3STZ3RWVyVTJ1YXQvVHJWRExG?=
 =?utf-8?B?RHhBdm5NWldzRFprVmt2Z3h6ay9CMWxIZFhWU0xCRnBWa245ZlVrSFVFalZK?=
 =?utf-8?B?YVhobVNFRXoxdzhkOEtKMWFjUzNrR2kvWHVsRFVRZlNhSEU0R1VEMWFLUHM3?=
 =?utf-8?B?TzladTBmTmtvRnZoQ3BaUWZJMTZ5cUplM1BOUEVDWUkzNWMraDdnNTR0TlRo?=
 =?utf-8?B?OFpCeVJQM1VHV3YyYjBJOEFFVUpLcDJwZ2htcURmTkNkeUs5cDRSWDk2d1V3?=
 =?utf-8?B?T1g1N2hPT0NzM2tPQWtWZnk4UnNFQVhkUTBGQWxPZlgyRUs3aHBieXBCR2kv?=
 =?utf-8?B?bkxrTmI0UzcvSkIraG1RanpCckthczV1L2Z6WGFkT3NicmxReUNMd1Bic3lX?=
 =?utf-8?B?Zysxc2hIWG1LQXJjV0NxQmZ6ZFhBa0NvRkdqbEUyUzdvaTExb2xYdmppbXgz?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 197fd2b3-6615-404f-fe32-08db97e6c607
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 08:09:22.7408 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZSXXjNGUoXVVF0ohjeO+KLq+JBohyV6iYlGKEH688H3ffcQUAha1fymfuXpM+f5hvkUY4FyPLylkNfKVOqalkZFOlFKOms6KvCALBHFdjhc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6666
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 3/8] drm/i915/vdsc: Add func to get no.
 of vdsc instances per pipe
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

Perhaps we can have shorter name for the helper and variable.

something like intel_dsc_get_vdsc_per_pipe, vdsc_instanances_per_pipe?

With that fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


On 8/3/2023 6:33 PM, Suraj Kandpal wrote:
> We have a function that gets us the total of the vdsc engines being
> used but not the no. of vdsc instances being used by each pipe.
>
> --v6
> -Change function to static
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 78 +++++++++++++----------
>   1 file changed, 44 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 4437ade8fa87..cd7b7b00be44 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -350,9 +350,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>   }
>   
> +static int intel_dsc_get_no_vdsc_inst_per_pipe(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->dsc.dsc_split ? 2 : 1;
> +}
> +
>   int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   {
> -	int num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
> +	int num_vdsc_instances = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
>   
>   	if (crtc_state->bigjoiner_pipes)
>   		num_vdsc_instances *= 2;
> @@ -372,6 +377,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   	u32 rc_range_params_dword[8];
>   	int i = 0;
>   	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> +	int no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
>   
>   	/* Populate PICTURE_PARAMETER_SET_0 registers */
>   	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> @@ -401,14 +407,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
>   				       pps_val);
> @@ -425,14 +431,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
>   				       pps_val);
> @@ -450,14 +456,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
>   				       pps_val);
> @@ -475,14 +481,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
>   				       pps_val);
> @@ -500,14 +506,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
>   				       pps_val);
> @@ -525,14 +531,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
>   				       pps_val);
> @@ -552,14 +558,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
>   				       pps_val);
> @@ -577,14 +583,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
>   				       pps_val);
> @@ -602,14 +608,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
>   				       pps_val);
> @@ -627,14 +633,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
>   				       pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
>   				       pps_val);
> @@ -654,14 +660,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
>   				       pps_val);
> @@ -682,14 +688,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		 * If 2 VDSC instances are needed, configure PPS for second
>   		 * VDSC
>   		 */
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
>   	} else {
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
>   				       pps_val);
> @@ -703,7 +709,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		intel_de_write(dev_priv,
>   			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
>   				       pps_val);
> @@ -716,7 +722,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		intel_de_write(dev_priv,
>   			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
>   			       pps_val);
> -		if (crtc_state->dsc.dsc_split)
> +		if (no_vdsc_instances_per_pipe > 1)
>   			intel_de_write(dev_priv,
>   				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
>   				       pps_val);
> @@ -740,7 +746,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   			       rc_buf_thresh_dword[2]);
>   		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1_UDW,
>   			       rc_buf_thresh_dword[3]);
> -		if (crtc_state->dsc.dsc_split) {
> +		if (no_vdsc_instances_per_pipe > 1) {
>   			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0,
>   				       rc_buf_thresh_dword[0]);
>   			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0_UDW,
> @@ -759,7 +765,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   			       rc_buf_thresh_dword[2]);
>   		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
>   			       rc_buf_thresh_dword[3]);
> -		if (crtc_state->dsc.dsc_split) {
> +		if (no_vdsc_instances_per_pipe > 1) {
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_RC_BUF_THRESH_0(pipe),
>   				       rc_buf_thresh_dword[0]);
> @@ -805,7 +811,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   			       rc_range_params_dword[6]);
>   		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3_UDW,
>   			       rc_range_params_dword[7]);
> -		if (crtc_state->dsc.dsc_split) {
> +		if (no_vdsc_instances_per_pipe > 1) {
>   			intel_de_write(dev_priv, DSCC_RC_RANGE_PARAMETERS_0,
>   				       rc_range_params_dword[0]);
>   			intel_de_write(dev_priv,
> @@ -848,7 +854,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		intel_de_write(dev_priv,
>   			       ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
>   			       rc_range_params_dword[7]);
> -		if (crtc_state->dsc.dsc_split) {
> +		if (no_vdsc_instances_per_pipe > 1) {
>   			intel_de_write(dev_priv,
>   				       ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
>   				       rc_range_params_dword[0]);
> @@ -954,6 +960,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 dss_ctl1_val = 0;
>   	u32 dss_ctl2_val = 0;
> +	int no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
>   
>   	if (!crtc_state->dsc.compression_enable)
>   		return;
> @@ -961,7 +968,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   	intel_dsc_pps_configure(crtc_state);
>   
>   	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
> -	if (crtc_state->dsc.dsc_split) {
> +	if (no_vdsc_instances_per_pipe > 1) {
>   		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
>   		dss_ctl1_val |= JOINER_ENABLE;
>   	}
> @@ -997,6 +1004,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	enum intel_display_power_domain power_domain;
>   	intel_wakeref_t wakeref;
>   	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
> +	int no_vdsc_instances_per_pipe;
>   
>   	if (!intel_dsc_source_support(crtc_state))
>   		return;
> @@ -1019,10 +1027,12 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   
>   	/* FIXME: add more state readout as needed */
>   
> +	no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
> +
>   	/* PPS0 & PPS1 */
>   	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>   		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> -		if (crtc_state->dsc.dsc_split) {
> +		if (no_vdsc_instances_per_pipe > 1) {
>   			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
>   			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
>   		}
> @@ -1031,7 +1041,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>   		pps1 = intel_de_read(dev_priv,
>   				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -		if (crtc_state->dsc.dsc_split) {
> +		if (no_vdsc_instances_per_pipe > 1) {
>   			pps_temp0 = intel_de_read(dev_priv,
>   						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
>   			pps_temp1 = intel_de_read(dev_priv,
