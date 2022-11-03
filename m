Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6020C6176C2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 07:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D50F010E5A6;
	Thu,  3 Nov 2022 06:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA79C10E5A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 06:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667457108; x=1698993108;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4q779iiy0tmb+nzGRLnuWThb/ke9oc0H5Po3YnK7oU8=;
 b=Zq91K+72lDroATrG4JDN2q895klAcEBtsM7C6OnthLXtkCB2W3eZd1mm
 l7QforJR2acHf3nH2uBncBt+cuQbC3VbAbWsL4XeZ2G3z8tJf5h2O+3H/
 3QK3PQRdws6c1p6L+BHF9vW7f7YxRk8+3LsNz4SL1SHfNh5PIJc+XZlEG
 345C31/XWzTcyVM2drPpcgxOvuVPksbDcSun7IpYMjxEtggskvr4KCPA8
 WBV/13uhM+JeNNNi3h3Cqt54dfry72Zccv4VMCqb1vUJ8bgZYQthLdzhP
 Ds3rliae7eNLaA/7xcCeIhGNxkhSGp1kWXzgOhMxPlU6GSEyiO9azc447 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="310712559"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="310712559"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 23:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879762600"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="879762600"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 02 Nov 2022 23:31:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 23:31:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 23:31:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 23:31:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gRZCwzqnWXHnVkUYalXEck4xh4J48QDA7gHV1Y5KdZu23mIlXQVmuHEw6tBPI3icUKuL4iZsAw6Ep9pA7fv9/sYNq9AEv7y/sc7aZ0j9fKLWuEZAm4SfcpFmfNGoE5HdAyP84xgzJ5H4Xo7YxwtLg7zQemU/3A4QLlBLfoTFshHLVoHaxzgxJFSpyboJq6Ph7aQchao3OSaNVfyh3BFEWWhRLTLWosILTdRGlhwGGSzV2HNycG9K7NHYyrJi5jixOcNdwpkU3LUBDw+oLTMh6TEeokzo6dii/a7NTkDspzB1si4kZqjRly9G3Y16kvrGhK6yPWRgdmFu6Nr7TdHXeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IS/G/5K+tIm3L9O2EC9SB2eoIq1DkeenEuFFu0Nif7g=;
 b=M2NblGIHC78LTrwA+DyR/iIZP7Qpr1r6dz14ukhI5pgg3Ryr+JbOxSZv9rF5Is/9V9XgSAabcC+Yqcvxek7UnouSomRWNzMuQCydZiVPqj364JXE7u2lsKNV1S+ZwGeHQiNA4ZMSvPCM9Zpj1lyHEvzzQiDsOY7v6fH2Jx4E9AmRWg68eRGuS9wm1zJynN1ORLkaTVIaTnEZtQNNCMZ4d2PlBn9mrpuJntu/3NTumzeavyqajRKK4Lh1AS5PH8HZlKAjC7+IYWtSexZko4zS1p7WCXmiwNgRaMoW8xdtPyUsBe4w9IT1OwfOSJVfNsq3qpG2yLR17VuvpofXuhxYOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5792.namprd11.prod.outlook.com (2603:10b6:a03:425::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 06:31:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 06:31:45 +0000
Message-ID: <41c902e0-672d-4e5d-0348-f9831abde731@intel.com>
Date: Thu, 3 Nov 2022 12:01:35 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-6-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0193.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5792:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c1af910-3e01-4c12-3b02-08dabd65141a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rsI7dWU/i5eNNxbzHan/eK8mHNiGxM2Svn9qVeY0T+Lo7FkOavnSqFENZFVS+PV9W9/lmr3EjuTyijff+ocRj4b2P4Vs/giAPsAUL5Dq/YHrUXvr2A1j1qDL237kungACmmXIAR8asY0kvkUr9viNq9d4QjHn+9gtGRpC7JUi1matd0Iq49+M/Z6FjwrzDEXv5QPULq78jDBU6HtYguSTb3TNefahAwABhU76b2mLJED+oB51VyFDR0nkIyZCnpCooRGSOzr2s2WLQ0JzxIe6nI5jMVoql6H3yHVTKPGFJdY+YCLmzbbAUIPI1vdBU9YAnFek/yXz8w76mSRzY1dss2blAKXymPajLG6Hl2H98Tx23hK7/uDamIgAtRnZBEm/XxIq6Pjssfs9mPuh7/HZdW5+QOrpv1W2e7OaGXLYNO1WSmPz6LKS/wIvGFAdnn6hgBwU7QmUC3Sc5uzkUy0SINtSkj14LH0KORE0VfD2LqD0ZABPh3c3864Kq6whP7zYblQIWQj8X9muy2JdZ5tURqgH545ex70bmyLS+x1+pH4L4dEFmasWMB/TnCWg9TF6FlFTJvSRsu9vIpPOxQx5SV707c+rTn57e+gFTDep64lpiNt+oRdejVwWobn5LgXYH4wiC8vKjSWwg2PTdpQmIi83QUN0cbBHHBJcWazyMxUdR7Gdl4KjAlM/v5kkW5ZpIcxR3gs2X79R31yOSGJZpHH6qzrD7aUeSVCKephTeGrsG+9YOFK6i7GIHWpcKwFmjPq6vCOv0zjqvNjJZXnMX14DoC6itvP6O8HYNm40WM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199015)(5660300002)(478600001)(8936002)(66556008)(6486002)(66946007)(66476007)(31696002)(2616005)(186003)(8676002)(38100700002)(316002)(2906002)(41300700001)(83380400001)(36756003)(82960400001)(53546011)(55236004)(6506007)(31686004)(6666004)(86362001)(6512007)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGhGOXNWQXovTitJNzVkdC9WaG41QlRBeUI1cDAwVndmKzFRbkN4ZlFqbzI4?=
 =?utf-8?B?YUF0aDdHeGFVR1kyV1A0aHkxK2duVm9POEg3cGtnZzh5NTVTS3lZUHB2bno2?=
 =?utf-8?B?TkJyTjJYcFh3clkyTEdTWC9TRU9WQ29SYTd4bytWTm5lK05Pbi9iUzc0U2tF?=
 =?utf-8?B?MkJPS2NrTm80ZkdYc0hMTjUrTGFpbE5jTWI2Rm9Xck9UQlowbHh2bGx6YmYv?=
 =?utf-8?B?cHRUVTN1STN4Y2xHYXRJTGxlWnczYm5HRW5SU0ZuUmdvaDNMZUpybDdNNjhG?=
 =?utf-8?B?VklzT0szeDVMcGJnQWMrL1N6MTV5cDRqdUxTRnhpNnR1NVpac3JrcWpveXdG?=
 =?utf-8?B?QTdib29sM0JZdlN4WVlYdVI1ZWJDQUpkbmswSGlNblNaR1NEQ01PTS9GYXJK?=
 =?utf-8?B?QmEyOHR4dTNHcjE0ZzFna0NDb3BWRS9NcVhDbkNZUVBnUHBXQWV0Unh5alBQ?=
 =?utf-8?B?bmFDM1NCVmhDRmpvOENwdVJzaityYk1VZGZmZFZLYThKeVA0SzlSZ3VFTU9a?=
 =?utf-8?B?Y0xxVUZibExCdWlPNXFUMkxESlpkejlLWTQ3Tk1wczRmaFpQL0Vpazk0VjhS?=
 =?utf-8?B?MDYvdG5NNU1waUc4cU9VOUIrd043Mm5ncnMyWFEvcWxoQU51dndYd0wxa29T?=
 =?utf-8?B?TUpUSzBTSXUzM0Y1NnhzTEdsMXJ5Ynp2SlkrUDBOVDl3eFI0dzA1emRsYmdD?=
 =?utf-8?B?dW83bnN5NGM4RitCNEo4V1FkMEZPek9rcE9pK2syQXo5MTJ2MHYyNnBqMVpv?=
 =?utf-8?B?K3NQUHVlKzNRUnVRYWtoYUZ4U0x5RHZ5UGlqMForY0ZGMHJKYnR6cjJvbHRT?=
 =?utf-8?B?aHVncWMydWI3KzJJd05pMmRFRWVOZW85SWRqdlN1TmVrU0JvZW45WHJ3M0or?=
 =?utf-8?B?eDRETlFwM0lDdXZZbTcyQU5JYW9wcW5tWjNKMyt2QkVtVTFRU2M1aGNTeFRQ?=
 =?utf-8?B?UWJqQWdZR01nWHFxekYrUFFDMW1oeEVHSlRHVGZLUmYvYmZidkg2ZkR5cjhB?=
 =?utf-8?B?RnJseTR5bE9acXVQSzBqSUt0M0VmYWFsbmVCVndJWW5BWFpvR3E1dGNIMjIx?=
 =?utf-8?B?dGdhZm5abkk1OThtcWpXWTd2TnMrL3l0NExEcUw4QTJ5QXJqbDVFTmpZdEtL?=
 =?utf-8?B?VTcxOHpkdFVkZzlCZVJCb2djcEFmQmplSmlVSEVCbmJZRFFkL3lndW9VMTM1?=
 =?utf-8?B?aDFHT252Z29iQ3F3SHNjSUdhZzFTN1dBV2ROTEtsMHZ4S2RGQjE0aSswZlBG?=
 =?utf-8?B?clZZQUsyL1NORENqU0NNNVB3SmdiejNiNzRYZjVVdTNkTm1lLzhrM0I2WWpR?=
 =?utf-8?B?dDFoMmV6SkkvLzNDYWxrb1BmSVBsbGJzeWpiU3pEbVZ3aWlVN3RERjhkbmMw?=
 =?utf-8?B?cjB2QkRndzErZGRpUGw2VTkvUndVQ2NmdUJIRmtGY3dRZU9FUWZVc2krc1ZG?=
 =?utf-8?B?U3VFYmMzckk0NFIyeHdOUWZ6UWcyaWVFWWR4UExZeGdqMXVmTVI4RzFETGc5?=
 =?utf-8?B?OFVTbVp5WlZ4ZlU5dkJiM093cVQrOUx2N0dWOS9uSlhkczZWdlU3WUlvOWtn?=
 =?utf-8?B?UWI0ZGNUdU55d3Z1endOblRrRnZKU0o3azJIKzdWVmF4dEIzZDlBUUlQQW9U?=
 =?utf-8?B?NWROL2ZCcTFLTyswVElyUzUwRkIxWDM3bXlNZVprejNERGhCUHkremI1Mmxt?=
 =?utf-8?B?NThHTzdPQXpxWjFLSkp4QUdHS0VIQXZjOHJlOUQ5aWJlWmpDVGNNS2JhYlcw?=
 =?utf-8?B?YnhyTU5PbkxVZEF1VTFJYjVtbDRrdTBNaEFyTXA0ZEJTaDQ1NHkzNzlMT0xI?=
 =?utf-8?B?cFo3S042dnk0YjFYWTlwQVVFUlVaVUNoSEFIeE1POFAyQ2lsZkc2MGZFYmMy?=
 =?utf-8?B?aUJKclBLZFN5bXQ0clNiTW5rS0ZjZHUzZzFhS0dFNG5NdmpJemU3eWFjckdL?=
 =?utf-8?B?bGlOcWJlZlRRWFk1ZEVMbU5GbzVDZ2JOSkpESW5adWE4S1hESTl3MUFMTFZH?=
 =?utf-8?B?NlVsNjVvYWh4Zng1c0pXWXVnRUJ2QXJYdXA0VkthTEYxMEVPNW4vY3ZCekNM?=
 =?utf-8?B?eXJEa0tqTk9haVh3Yzhabys5bFkreEVJUDNjRm9pQk9sdGNVYWlPM0xrTlVh?=
 =?utf-8?B?K012SGpZaWFnVmlhTVhCVkZrNGFrYXU4TFlRMldjenlGWUZOZXJKbW5vWjFn?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1af910-3e01-4c12-3b02-08dabd65141a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 06:31:45.4217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NncDNqfnTlHY4E5iX5RB74B+L4GCH++6AmCHTQDfjQYbYE52XwhlBjyoHe5CP43rPGjT2JlotPBIFwiotlJWs2ETI5xgKStcgIFYHU285n0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5792
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: Split
 ivb_load_lut_ext_max() into two parts
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

Small typos in commit message (inline below)

Otherwise the change looks good to me

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Split the EXT2_MAX register progrmaming into its own funciton.

nitpick : 'programming' , 'function' typos.

Regards,

Ankit


> More in line with the whole "cobble together stuff from small
> pieces" approach used in this code.
>
> The EXT(2)_MAX registers are also not really part of the
> multi-segment section of the LUT, so hoise the calls to a
> higher level, just like we do in other gamma modes as well.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 29 +++++++++++-----------
>   1 file changed, 14 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index e73e6ea6f82f..3b78b882e0c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -764,27 +764,23 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   
>   	/* Program the max register to clamp values > 1.0. */
>   	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
>   	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
>   	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
> +}
>   
> -	/*
> -	 * Program the gc max 2 register to clamp values > 1.0.
> -	 * ToDo: Extend the ABI to be able to program values
> -	 * from 3.0 to 7.0
> -	 */
> -	if (DISPLAY_VER(i915) >= 10) {
> -		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
> -				    1 << 16);
> -		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
> -				    1 << 16);
> -		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2),
> -				    1 << 16);
> -	}
> +static void glk_load_lut_ext2_max(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	/* Program the max register to clamp values > 1.0. */	
> +	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0), 1 << 16);
> +	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1), 1 << 16);
> +	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2), 1 << 16);
>   }
>   
>   static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
> @@ -913,6 +909,7 @@ static void glk_load_luts(const struct intel_crtc_state *crtc_state)
>   	case GAMMA_MODE_MODE_10BIT:
>   		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
>   		ivb_load_lut_ext_max(crtc_state);
> +		glk_load_lut_ext2_max(crtc_state);
>   		break;
>   	default:
>   		MISSING_CASE(crtc_state->gamma_mode);
> @@ -1029,7 +1026,6 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>   	/* The last entry in the LUT is to be programmed in GCMAX */
>   	entry = &lut[256 * 8 * 128];
>   	ivb_load_lut_max(crtc_state, entry);
> -	ivb_load_lut_ext_max(crtc_state);
>   }
>   
>   static void icl_load_luts(const struct intel_crtc_state *crtc_state)
> @@ -1048,10 +1044,13 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>   	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
>   		icl_program_gamma_superfine_segment(crtc_state);
>   		icl_program_gamma_multi_segment(crtc_state);
> +		ivb_load_lut_ext_max(crtc_state);
> +		glk_load_lut_ext2_max(crtc_state);
>   		break;
>   	case GAMMA_MODE_MODE_10BIT:
>   		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
>   		ivb_load_lut_ext_max(crtc_state);
> +		glk_load_lut_ext2_max(crtc_state);
>   		break;
>   	default:
>   		MISSING_CASE(crtc_state->gamma_mode);
