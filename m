Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E18607F33
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 21:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7C310E2F7;
	Fri, 21 Oct 2022 19:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4197410E0D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 19:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666381365; x=1697917365;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=31KnKzGE2Ixzgb3HU19/6rFzcdsEomUf1by6vwxKOcM=;
 b=NpN7wwTYnwceAJV0thEQTp/sjo/yrCnw/xZmVd/NNgHLSSyvSVhuyOxv
 eYo3KNdMMIJLzPT6fLZeuYG+gRXjA3UsxGEGSvuTpzYEkaiKCUHlSChJX
 lCDdOQDDotexu+9+6g48KyDe+bD6IOFNmoUFFVouOD6xtFr7W9OSMUxh8
 9ACY7gfZ3W7LrhdiOV3TQHzpKTs6xSGkPh3weEkYZQaD5SPSiPVeiFrh8
 in8RhAbZmrkDRhUxofS+SSwGK2Fp+qOJfrUAiHjErIv461HV/LUfJIXu5
 Hn2w4l+X9ASVCU7dGdOQo61GQ3e4ZwpbNNBtDeXLWgAygCvoR35l78ode g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="287490345"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="287490345"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 12:42:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="633064499"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="633064499"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 21 Oct 2022 12:42:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 12:42:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 12:42:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 12:42:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f6XCmSGKvElka+Mefdf/t+lET7Alltk5y1O+b9jxfeonPqFrop11UzehNQxQGWRGWNnI4NaK7VjhiVirD2nQF5o++f1Yk82YCvotF11SS2wK6BNe+sZPakOt1JQM0DEtoM2V2z9S5h8W514371fEm3ZOdVuvWKJ70BMtmkt+xk9rhgdth79gBtdzkvUV4QEdtlaKSV2zv63Im/jIgwiX2V055aDXZgvQ0ZtDVEBW247XIzFl/gNedU5nlUStFQT9K8O3xcZ4Bx0MI7P0Ho5yj//6vHDVtPdkEXafl7Qz7H/rKA9umOuDftkwL7IOPpa8smb2s85EbdscfGP9pyn+Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xee8pVHJAF0coIGxQ946PzLIwQMkBIZP0ocMETUBixY=;
 b=DA5wpq7PZsg0Frs4g5qoTNPuDDlKLvR2eydP4ziktpKEHUDZv9Vg2nflSnUxf2EIuw8Yu6ZOrAvng8AXmW8t7+ELOgReNn1nyFgQjUSJ7QcjJ8YHH8+97Q/Pl/U/WtzbL4j0lIyqajnk/7ZbicajjnXk0G3kHDEbT8CBLuzHQ6mmtQlhVmgPbxf0ESDBPsBwK/dlEeX24SgGe0AN1choDHLj8MZ9XXWTRCXk18PkVuNRUT37LeCGpDLhNH+AY6BThuU4RrXc1uWPU2RmoKmTyuarylsBTpM/qeJNAz5BcgFZUcHAnZsir0d/DmspF/HZM8reWPsVGt86CSOg3AN8cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SN7PR11MB7640.namprd11.prod.outlook.com (2603:10b6:806:341::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Fri, 21 Oct
 2022 19:42:37 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 19:42:37 +0000
Message-ID: <3a08593b-bcf2-7ebe-7711-37020e7c292c@intel.com>
Date: Fri, 21 Oct 2022 12:42:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20221019072930.17755-1-alan.previn.teres.alexis@intel.com>
 <20221019072930.17755-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221019072930.17755-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::7) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SN7PR11MB7640:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f23248e-dcf4-421b-f4db-08dab39c682b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2WL2eUoXMvNS+VCsoBDli2edKWuoiGOB685DcRcdcEM7gYI98dW4qHXMH/YeKZ2HkltW1TtFtbLX8LG0tMzyAHIbxpxs5KJpxEiuNq1XNWYWbxAKHa5/0Bt0x67AYblSWE8f0+PpE5eV+uZh+65PvuEkgbcPDiQtDMY3nV/5FuqEvdxnXHJCopbAmWqlnI17rKNs2AeHnx3xpVVh4lgs86VxkjOxeaYut2+ot+kYL0PLYkETk6ASDkuHA+vsHGjb2Eh+AVl3t4O38312tIV+1QulfoJWeQ+ONDOJbb5IKrBFWX09zhHMNEdCe5AXjIO1Hon5qSLT0J+zloe8M+ntiBOeAxJCY8h3fyHEtvcTVvr2mgJ15uygt3SHF87rtav7yDXOvx7NPlVvq9XgME/I+omIIPdG3utUG8pAnC0xFqkq4eEf2GpLEXfj+W2cwA4FVTXMhQ64LPBtj8wTj6bl9n9IDIUzLzr0cArtgFQC388Rz0iFK8T0QVnU1zrzGlEmh/sZUcIffpua5sznm3ua+4mh6pU0rhpWVv79S/r8ei4VBHmuFs+XrxHwwtEUnp3hmAEqVTintGgaidtCJtD4ao27CLbvgqmcFCTs0yzMASNJUnIH5pdUpwdcE64tNGnogGzp7A2PSkSwhWDR+06dDrIuylgNPLr2fcLAJ17dEJAy5WC4RpGhLgZDDVuv0HUUQ2opKlV9i3PeknL+u13JYudDR7bvUndtrzkbkoBzGeGLAuM8OP8KP2snb7iPwkBTfP0rIfWcCKBb0geBnoIzXBA6sAg/AeEFueMqay8bhYY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(39860400002)(376002)(346002)(451199015)(2616005)(6512007)(83380400001)(186003)(31696002)(86362001)(38100700002)(82960400001)(6666004)(5660300002)(8936002)(41300700001)(6486002)(26005)(478600001)(6506007)(53546011)(316002)(66946007)(8676002)(66556008)(66476007)(6916009)(36756003)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clFSMncyZ3pmdWNhdlFaSVI5SEorM2NPbG83UjJVR0RGb0NQYVJhRzIxeXA2?=
 =?utf-8?B?VE1ocjdySUlZa3k4cTJjeUZITlRxMFRwYTJBK0ZRbWkrYjVoY3R6cFVEYWNa?=
 =?utf-8?B?QkVxRlJUOHdiR3F5Y2dXVnREUVBTbE9qV1VsUXdMQ0pQYkwrYUlXWFE1ZlBu?=
 =?utf-8?B?L21qZ1JjMjhWb1lWM1NUOW1wZ1lwMG5YMzQwb20xTHREQmVuYkVNSkhBazYz?=
 =?utf-8?B?ZysyZjJCQ3dURjdOU3F2NVM2TzBDT1k3djNMdWF3REN3amt6Z2ZhWDNqRVpH?=
 =?utf-8?B?akdKTWZNTXNoc1BFWHJFM0NJTHp3WklTRVlGK1FkT0NNQ0FRVGs4eVpSbDZj?=
 =?utf-8?B?aVNhQ0dXR1hhQS9EdU50c1FvMXJjQ2crYXo3cUh1YW5oS0MxTDl3SVlIYnpP?=
 =?utf-8?B?RkVWc2hpeWxiOWpTbDNsZmFZd0VPcndBa3lpMDlpNlRwM0VDU0ppNlhpVDVE?=
 =?utf-8?B?SGNZc2xJTHFMak9WVW03MzdIUVp1aFZRUnduMTdDUGxCYXRyVnl2cVlQRDlK?=
 =?utf-8?B?dXZpUFhrWWw1b3p4dGU1N05iSi84WUQ1TkgwS1lpdysyODVnSUFESkkyaEdw?=
 =?utf-8?B?dCtpYnpZZDlKYVRVNmFMZjYzNmdVbDB2ZlUyNWZiNjRPN1ZTZ1grRUkrSC9J?=
 =?utf-8?B?c3crMVl6QWZsVkVpNlpHaXhveUZZcmpQWEFodmpQa01tMUZFeWVyY01uOXF5?=
 =?utf-8?B?d0dBN0FqbDFwdmNjd24zRVNPbkl5cS93alRFVmE4bTJ1YnIrSE81Y01GblFx?=
 =?utf-8?B?ZjM4dFhTOG5rclp2ZzFLajgzckEzR0h1VjV5NDZTMXlUa1dZZ2lKRVlVd0hT?=
 =?utf-8?B?RTZ6T1Y4Tnh5cG03MTJuVG5kZ0tDQ1E0aTF6M1RwV2FLcS9Uc3ZoR2ZiYWRn?=
 =?utf-8?B?SGlQcE1YYWVCMVlrc2lHbDFxQjl5K281SjhhS3VJekNsSllKVnhvSW1oWWFL?=
 =?utf-8?B?dkk0T3hna2V0YkkzNkU4YnczaWVUbWl4c0w5alRDT1h2OGdyQXYxelRxTy9V?=
 =?utf-8?B?TThRL2ZaU3hlUHB3L0hTblRMcEdJK3RSeUwrYnZtS1J4QWQwN3hYVUYzazdy?=
 =?utf-8?B?Z0FlaGpZMUhzbFJWVWt0VzRnNUZyeHZ3LzZLbGxvRlJKWE5tbVpaZmtYT2R1?=
 =?utf-8?B?VE0rY2pBV3llTC9jU1dkUE11TTJwdVBVZzVvM1lneFZjNnhSNHkrcWNEVTJo?=
 =?utf-8?B?QUN5d3ZjVk9mcmdZeWNzdCtuL241dGNJcXM1TG93YlQzbndNYVEyNE5KQzlz?=
 =?utf-8?B?WThZcmRuNjV6VUpQNHhkV3I0bWNXMnVFWHFoYnR1MjVhcE5qUzBFcmN6ZVJT?=
 =?utf-8?B?UUZFSjRHMnQ1WDBLSi9CVVM2bFppZXYvcjQ0a3Q1OUVCNWV5MndQaXVmTjEw?=
 =?utf-8?B?blY4MkwwVlJoYlQ5ZFpQZ1FIVUxvai9Yd1VtYTVrQUdHb2V1MHhSSDI2QTE5?=
 =?utf-8?B?aVJ0UzJQNXBNWG1WcUVNTU1LUkorNDc4aWdha1V0dzJ2VUwzZ014WkpDRmx4?=
 =?utf-8?B?VW5PbmlxT3Uwb1phWVIvN0FvdkdhQ2sxaGhIVUdSRjJWNWxEcGlvQjZjQ3lP?=
 =?utf-8?B?N2svT0Z5MzdkWWZGeVZCSFlnL04rZE9DR0M4d3gxM2tNRktiaW95WUp4Y3Bs?=
 =?utf-8?B?RmdEQWpRa2pJZ09PM2ZMc0tUVzZuNjdEbWU0dmNpMzRNK3dZcUMxaDUwd1VM?=
 =?utf-8?B?UVBQc2RLcEx3TXg5VmEvRzBEaitVY1djRERGaFhwT2RZdFhpbHZLRUVZWVBB?=
 =?utf-8?B?dXZKSDhEU2hsU0tqWHVPWm1TaVoxSTJ5S3lVL25JZmlKTEJISE9DbGdVMG1R?=
 =?utf-8?B?c2JGdTBsMUgxb2NmVWZVNFVQbDMwU2RwV0FJZ2FzdGlDbHEvdjRyNFpMV0dF?=
 =?utf-8?B?SGhSQzRwa1FNa2lBOEF4RnJlY0Q1eVVya0ZJTGQwYzVqOVNtejZrNUh3UEc4?=
 =?utf-8?B?cHI2TThIMHJaN2wydThpOGJqTkx4UFRIbTViMCszcmpsMkVwRjdkZ3NoTDh5?=
 =?utf-8?B?dzlMVkV4VEVqSitvWVBBdWcyd1BPM1RKQ1NySWhNeG9WanMwM0NHWU13MFk0?=
 =?utf-8?B?UTdiOEt2YldrKy9iaDFwTnBGekw5bllyblFNZmN5UVEybWQ1RTVENHpNTHJG?=
 =?utf-8?B?YSsyR2M3bXhYQVFTY1ZwSVRLTnpmTURCbU1aSkdXMWZuK3ZnWlNLUVkrUm5h?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f23248e-dcf4-421b-f4db-08dab39c682b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 19:42:37.1421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: czEEIY0OOCAMAq7WGC5La/14ZpWTjIyOJdslJj9q4xS4YfczCqCA/CwdX2iXaHzjHd17ZtQoMRuJqsYPa6N3iJ0m4co/C8ZTxFWa71HGaZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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

On 10/19/2022 00:29, Alan Previn wrote:
> If GuC is being used and we initialized GuC-error-capture,
> we need to be warning if we don't provide an error-capture
> register list in the firmware ADS, for valid GT engines.
> A warning makes sense as this would impact debugability
> without realizing why a reglist wasn't retrieved and reported
> by GuC.
>
> However, depending on the platform, we might have certain
> engines that have a register list for engine instance error state
> but not for engine class. Thus, add a check only to warn if the
> register list was non existent vs an empty list (use the
> empty lists to skip the warning).
>
> NOTE: if a future platform were to introduce new registers
> in place of what was an empty list on existing / legacy hardware
> engines no warning is provided as the empty list is meant
> to be used intentionally. As an example, if a future hardware
> were to add blitter engine-class-registers (new) on top
> of the legacy blitter engine-instance-register (HEAD, TAIL, etc.),
> no warning is generated.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 78 ++++++++++++++++---
>   1 file changed, 69 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index d5c03e7a7843..abf6e5eb711e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -419,6 +419,44 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
>   	return default_lists;
>   }
>   
> +static const char *
> +__stringify_type(u32 type)
> +{
> +	switch (type) {
> +	case GUC_CAPTURE_LIST_TYPE_GLOBAL:
> +		return "Global";
> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
> +		return "Class";
> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
> +		return "Instance";
> +	default:
> +		break;
> +	}
> +
> +	return "unknown";
> +}
> +
> +static const char *
> +__stringify_engclass(u32 class)
> +{
> +	switch (class) {
> +	case GUC_RENDER_CLASS:
> +		return "Render";
> +	case GUC_VIDEO_CLASS:
> +		return "Video";
> +	case GUC_VIDEOENHANCE_CLASS:
> +		return "VideoEnhance";
> +	case GUC_BLITTER_CLASS:
> +		return "Blitter";
> +	case GUC_COMPUTE_CLASS:
> +		return "Compute";
> +	default:
> +		break;
> +	}
> +
> +	return "unknown";
> +}
> +
>   static int
>   guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>   		      struct guc_mmio_reg *ptr, u16 num_entries)
> @@ -482,23 +520,38 @@ guc_cap_list_num_regs(struct intel_guc_state_capture *gc, u32 owner, u32 type, u
>   	return num_regs;
>   }
>   
> -int
> -intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
> -			      size_t *size)
> +static int
> +guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
> +			size_t *size, bool is_purpose_est)
>   {
>   	struct intel_guc_state_capture *gc = guc->capture;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>   	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
>   	int num_regs;
>   
> -	if (!gc->reglists)
> +	if (!gc->reglists) {
> +		drm_warn(&i915->drm, "GuC-capture: No reglist on this device\n");
>   		return -ENODEV;
> +	}
>   
>   	if (cache->is_valid) {
>   		*size = cache->size;
>   		return cache->status;
>   	}
>   
> +	if (!is_purpose_est && owner == GUC_CAPTURE_LIST_INDEX_PF &&
> +	    !guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
> +		if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
> +			drm_warn(&i915->drm, "Missing GuC-Err-Cap reglist Global!\n");
> +		else
> +			drm_warn(&i915->drm, "Missing GuC-Err-Cap reglist %s(%u):%s(%u)!\n",
> +				 __stringify_type(type), type,
> +				 __stringify_engclass(classid), classid);
> +		return -ENODATA;
> +	}
> +
>   	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
> +	/* intentional empty lists can exist depending on hw config */
>   	if (!num_regs)
>   		return -ENODATA;
>   
> @@ -508,6 +561,13 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
>   	return 0;
>   }
>   
> +int
> +intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
> +			      size_t *size)
> +{
> +	return guc_capture_getlistsize(guc, owner, type, classid, size, false);
> +}
> +
>   static void guc_capture_create_prealloc_nodes(struct intel_guc *guc);
>   
>   int
> @@ -627,15 +687,15 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
>   		worst_min_size += sizeof(struct guc_state_capture_group_header_t) +
>   					 (3 * sizeof(struct guc_state_capture_header_t));
>   
> -		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
> +		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp, true))
>   			num_regs += tmp;
>   
> -		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
> -						   engine->class, &tmp)) {
> +		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
> +					     engine->class, &tmp, true)) {
>   			num_regs += tmp;
>   		}
> -		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
> -						   engine->class, &tmp)) {
> +		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
> +					     engine->class, &tmp, true)) {
>   			num_regs += tmp;
>   		}
>   	}

