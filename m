Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB996D929B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA85D10EB42;
	Thu,  6 Apr 2023 09:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7B710EB42
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680773105; x=1712309105;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xOxAigZpbF05GwfUpZxUikZKFM6YYoH7NkZ6KvNlT04=;
 b=FJoUuzaSYp5swu/ncwb5OgqkCp7nlDZZhhXEG/Uw1gkUxCzGwCp/pF4W
 qwvbY19/UqcqrQ0Co1Pqh8LpijJ/9GoWqCDOU58+rhsWuWZEqOeuw8hHb
 2w5lm0gBzNGg6tOREJ5buIpkRj/EtMC16WZTQaphrAIGDChUkJNdMTsd8
 w29Mfxnw7/Sfj6a9yV1nYGC+EXBREfuwV3SoP+zub2v/nuCGpsTTJ9amw
 6iZ6g6des8y6w90Lk0QecYdKsgiU/eTsJSEr39xAZQ1zd0Cy8eFGkpieZ
 A7l5FBmnZ/ZgFcnJwLF84YPZej5gsm7G/ieU4K+0iEloovf8vu4H3QwVq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="345288309"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="345288309"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:25:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="1016808877"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="1016808877"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 06 Apr 2023 02:25:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:25:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:25:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:25:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:25:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gUEYgTV5CP0sRhetsAE1Q0qemkmSMM99hTokSRtpIEgc/G+6PhJVbr3OZEoUNT7Z9uKXkiotJYqxdCGyfHvaQwsWlg/wm/eYM6cYeUzhMqeWH59wnJNDh4nR0CNV/ZBjpCtU3H7m+Pc8UNuKJK8bB0QupooYg4wFjI5mpGFoN4pIM16yQKivRq95TUqPFBq72HytIqj8xinYWY92id1VgeYoIN7pNCYQzVBprB4FMjapHV26bk2CV56gWnJsg/QzmoXbgCKaOWecAdHQkNDAF/rksDcpa4kHNLlYkJEjt/wmDVI21Avy2zQvZ4yd+4A0c0qvsJHzFsvoSulsD12NTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mG9a2bUqmJzht55g/l9ovMeCi+/MnaudpFmdu8mbWWY=;
 b=E3dAY28rRwJjCkeuNovjaOPJgU6P0HNneYSmVpyWVK3u66LDrUwt5CjJ2oZ80VEMbm5MACI5Ch8pSvOsTz9gs97AKNpeayu8F6AsQ2pfCnnLHJj7955dEAXFTi3i04vLMjHtKSa3qxgumlXZu1UDQ9UGWp9QX3SECqVRQfiub5dnZ/3IDjvMS9ogbu/LaTeq0vTSe2bwP3luSHPzmRzll2UgdOxpQ0aNz7nbNBnYich8vrldWMUpUnbVz9Rk8QZ8azZ/5FElBIKegOFv9ptsGXrNFxypGnGgq4V/OVzpT6ejcyjSsv+bIQhfceqVp+I62KgzHUY2sZL7ABFH/pnREg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Thu, 6 Apr
 2023 09:25:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:25:00 +0000
Message-ID: <09d52bb1-86ab-885d-59c5-bbb7d0e92b1f@intel.com>
Date: Thu, 6 Apr 2023 14:54:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-8-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5105:EE_
X-MS-Office365-Filtering-Correlation-Id: 457bc68f-3023-40d7-f1bf-08db3680cb30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LpXBDShMHL59Bo9tdGIhP2WjmHmqlu0yTA/1oelqIzGex8BI1UAxjzx/6mc/gftbMhO16R8Oa2hGYywhqSYzMTm3+AQmRWb1Cr8SEfgiftwXUIliTe+3q9aGzId224MPMwHPgH75XjEtzZSIEBX4cAMktOXlnCJ5hq8LiW5V6jUcEpEkAHC3cMXVr3BkkSNkFbEbSBnr7mLco2BT4sS4pAw2Ti+7oXiSYchC1yQ3NY1fplVWOzDOOCq7v7dkCCUTjj2RxMHpL0x1eBLQxlHvVCFwyHSZb5Oe8ZYLzjkGB2yx4gYGq053fYhlDEyKSAp/LH+wnjs02g6sChRPOZV71kQsp1oPDRllMTVINig4U6TUP1cJXnDy+0cxxZSp4Q2r7hTXLp3uKqVGkLBfXINqUUUAEXzcZ0DvzPoINbWlTu5264XuRMggymImXwTtpbnANoxSFSbF2cVIdph5+2pkPtGPBPZIkuly9R9nBK0JS+eJzMuAhdNROZICToA5ogqOK9rWRZOtWAXjGGzjWLmleMO3Up6aumO0wc3tYIUCpCEfe3LfuqrOsshwt9QRXN40fAhQI7hRy78KhFliSQk3rIz3uddynVNSFB4M41dRwCrwALZW0tZLH9FtHJY/YP5931kXT1QQ8w51Fq2UEqZtug==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(66946007)(478600001)(66476007)(66556008)(8676002)(316002)(8936002)(5660300002)(38100700002)(41300700001)(82960400001)(186003)(83380400001)(55236004)(53546011)(2616005)(6486002)(6666004)(6506007)(26005)(6512007)(36756003)(86362001)(31696002)(2906002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTRiM2t1SnVqRUN5VEtSaXFFRFpYMkJKVjQxOXhycTFZVFFMYXQvRm5KaUtI?=
 =?utf-8?B?b0MyUjJId0RCVmtub3cwbVFDbjNaOW9oM28xOHd1Uk9IV1ZmQzhLS1lqaWFy?=
 =?utf-8?B?eUlpTnladllMa0ZwWk5YQ1NWRmZzTVpEME1CQWg0U1RTcW02K0NmL01xOEpV?=
 =?utf-8?B?cE92R1NVZGprRFRhc1RiWjNYQXU0YWJZQ01vSC83eng1eHdFMGp6RCsvWU1N?=
 =?utf-8?B?anF2KzR3Umw2VE8rTFN0RzBsaXUreGpaMDM1RUhKM2RubjcvVDlYaFF2T0pj?=
 =?utf-8?B?ZDg3STllemZ1RWxHUHBqcldqa2FpRDBFWUxjUVBQbU9ubW1ZY1JYa3piL3l0?=
 =?utf-8?B?NXdia29OZFcxR3UrR2pZcDRBblN2U0tsazV0aVRBUDBvck9SUDRsMHhkeHUy?=
 =?utf-8?B?L0dBL2JPeElUYWszeTdsSloyaWpxbjZOT2VvdHpCNE1ja2RJUTh2TzBKZlgx?=
 =?utf-8?B?blpjck1wbFIzMmV2c0JwRFRBMWFzMXZmNWp6OGdpenREcUg5MjlrakoxN1lT?=
 =?utf-8?B?VzJUS0UvUHAwbWxxM1BSM0ZzeWx0K25LM0syY2RpaHZjUGZuQks2MFk5M2tv?=
 =?utf-8?B?NlIrU1ZXRGxwQUlPRk5VRUkrNzU4bDlkTFFBZFJ5MktEN2NLMExGcWFqY3la?=
 =?utf-8?B?dFp1UVhuWnpONjdKQ3dzNlV2QjhFTit2dXN1OWw0M2pYLzZvM1ZVUUlHZUVu?=
 =?utf-8?B?MjVNK1hlZ3psbERDSzJmWk5tOWQ5UHBPVTNRRFhTcitsYTVYMjFjUjBXQ3Mx?=
 =?utf-8?B?RGo3YmpsWGRoOURoaEdCWk1sUzMxVlpiQjkvRDU5U1MyQXZnYjFYMnBrOFll?=
 =?utf-8?B?R0lIUE42N09oWm84dDdmanErMndSUyszQmVDNmwzSzQ1WFdNNm02bFoyT3Bv?=
 =?utf-8?B?Q0JKVThvOU55RG5mcnN1MkxDNTJKNUVDa3NjNG14VVZJNzB1STI5UnhTT21N?=
 =?utf-8?B?YnV0aDJpbXNPZU9nWGhXdG9sRWt2dEJNOGZRb24yUVloQ3ZuZ1NKMGxvakYw?=
 =?utf-8?B?MFlKRitCUFhKaTJzalpPU1VOMzRrS1dCcko2RHJRSWJnc2hSZlMxSENlN0s0?=
 =?utf-8?B?cC9FUm9FWmdmUW1uTy9NSW0ycENXVHVKdUM5ZWU5TXp2WHQ5dGRmeUxrd09D?=
 =?utf-8?B?emUwdzQ0YnRtbnVVVjcvZnd3a2owVytXOVhTaG8xM0ZjZkNyNUpkNDZOVVdm?=
 =?utf-8?B?UW1FV3VJUmNtWE9odG5xRWxjck9FTlc2cjE0SmtlZlFjemxYTk50WTZSb3Vw?=
 =?utf-8?B?dTlVOU9vaDBVSEFvYlgvK2NJTXJHTnpPOEN1bzVucUovYitYMVZqaXFGU3hB?=
 =?utf-8?B?aTBYM1RsYzdCWWwyVmlGQjUrUjBqVnY2UFEwUVo1bVZRclNscnNZZ2lXaStN?=
 =?utf-8?B?cXcyZXA4Uy9YNDZEczVsc2xQeHBQUzMySVZzNUYvbnRVSmFRc1NXRWdsMytq?=
 =?utf-8?B?ZGxUbnNwampXSFNZQklBWXlOTEV6dDRqYkJmQWQvSWpWS0cyeGJ2ZVN4VHNP?=
 =?utf-8?B?K2ZaSG51aTZEeURWbHFLakNnRXVQUmJSaWEycW9BWDdHS2ZUbGhRbkVWQVJC?=
 =?utf-8?B?SEM4aDhVc2k0dGoxbFhFZzVpRnpkQTFNbjVhd1JxREVzVlRHMWNPSHJoOCtm?=
 =?utf-8?B?RVdXNDBCWE1UVjdYV3NQUFdaRDNDK2czS3g4ZUlrMytRalJUKzMzVGVVbksx?=
 =?utf-8?B?di80RWFxRWRRYkxsWGs1MTFQc1d5cTlZM2pDb2pSdmJIdlRRZjM4YjB6MThz?=
 =?utf-8?B?NG9TMEU0VVBZcW1EN1h1Q2lTZkdlNVZRcXJQaDAvcTVkRUxtb2xYdG1NZ1RS?=
 =?utf-8?B?c0ErR3lhaVRMcVZQa3RRV0c0UmN1R1BPeGZIblRmZUw3SWllYjZhdFhqZFF0?=
 =?utf-8?B?L2VvVFA2SWlCeEpPL01YVzh6cm12UWVvcWgzZlFzbXB3UHR2WStRY2Vzd0JQ?=
 =?utf-8?B?NE5nbWpXSHBOQ01kWitoSVowcVgwNC84WkZNeTM4Q3N3Z05adWJsemxlMHJI?=
 =?utf-8?B?R2RDR1dFRnhFcDdDa29TNHRyOXNJNG5VbWdyQ0hPaUhWVGNoR1dXQ2t4aE03?=
 =?utf-8?B?ZUZCaXpwYnJUWWxaNFppYmNIS2QzNkJxbW5wRFV3aVRPdnhpM2pXTGg4dEFu?=
 =?utf-8?B?a2diVzhwVVRtekFVRlpzN0FyVmx6SUNud05NSHJyeUpsWGJPdm13aVJxTnhI?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 457bc68f-3023-40d7-f1bf-08db3680cb30
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:24:59.9419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mX2JqhJlbxcHPQUS7lciTPDPUbWs0lHqRJRQX5WHGZNNU8COQF1qWeCv9a1Ov2NE2ySUaUpeMpF0YsVTU8GJMIBvqj+k9rVv9Knlm2dO894=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915: Sprinke a few sanity check
 WARNS during csc assignment
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

On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Make sure the csc enable bit(s) match the way we're about to
> fill the csc matrices.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 7e8820583942..2988c91d8ff6 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -373,10 +373,16 @@ static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
>   	bool limited_color_range = ilk_csc_limited_range(crtc_state);
>   
>   	if (crtc_state->hw.ctm) {
> +		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
> +
>   		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, limited_color_range);
>   	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> +		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
> +
>   		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_rgb_to_ycbcr);
>   	} else if (limited_color_range) {
> +		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
> +
>   		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_limited_range);
>   	} else if (crtc_state->csc_enable) {
>   		/*
> @@ -406,16 +412,26 @@ static void icl_assign_csc(struct intel_crtc_state *crtc_state)
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
>   	if (crtc_state->hw.ctm) {
> +		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) == 0);
> +
>   		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, false);
>   	} else {
> +		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) != 0);
> +
>   		intel_csc_clear(&crtc_state->csc);
>   	}
>   
>   	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> +		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
> +
>   		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_rgb_to_ycbcr);
>   	} else if (crtc_state->limited_color_range) {
> +		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
> +
>   		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_limited_range);
>   	} else {
> +		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) != 0);
> +
>   		intel_csc_clear(&crtc_state->output_csc);
>   	}
>   }
> @@ -476,9 +492,15 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
>   
>   static void chv_assign_csc(struct intel_crtc_state *crtc_state)
>   {
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
>   	if (crtc_state->hw.ctm) {
> +		drm_WARN_ON(&i915->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) == 0);
> +
>   		chv_cgm_csc_convert_ctm(crtc_state, &crtc_state->csc);
>   	} else {
> +		drm_WARN_ON(&i915->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) != 0);
> +
>   		intel_csc_clear(&crtc_state->csc);
>   	}
>   }
