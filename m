Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3F765C3F0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 17:32:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F371010E26E;
	Tue,  3 Jan 2023 16:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF46F10E26E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 16:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672763568; x=1704299568;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4flK1QBLPP5TwwR9uVXHg/4YXvz7vWdlR2Sv8NFXAHY=;
 b=i49Qd3phOuyK0rxKLLnyT94Ch6RidTU6zcVj2srt52UzHEHpvNql5Njl
 g20OP16KOV1Z5wP0W7uF/tIDmrHr1enW2m+AvanMgI/QUt61wGENwsbx3
 pBzZTq3lhsxu9wL8zq8oG90xghqkIbINiHdN74XUCyngmcS6ACDt3/yl6
 VkOOXYXNNccoYjU5f36IHZRLBFGyGW3pmdPfks0zNRd7ngDMlB4ItFi4c
 NhkLohXMB220jDK4bnoeqPBEN5D9rDdzLVHggpAl4TNfpnSwEWtj37ANe
 sgKJkpg/8D5oPMnbC1x3WQPJ8d7Z4cpn9Zok1WwURkh8pA+uh9B5nLjhd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="320407656"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="320407656"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 08:32:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="762362474"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="762362474"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jan 2023 08:32:37 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:32:37 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:32:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 08:32:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 08:32:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SB7STLP8VB/BGaN/8eOr3L1qlrgTgiWn33YewRweAQbcbPIqyLCWyZLlzDzkZ1YrupiiYGzlqXu2gPnqRVvaWtnPox0oN24cpL89pRy4yFmLxK6SthFxVaFn26DVm9QmChGRSoev/OVo8Etw48oR7p7yyShqLg7k5mQjzP9gK0c8XPaNmH6dba3ubgz8hucGVDcz5nPyBac5FYzyapo+doZvKsR97lOcuZCSEVlI8n8v9Ovgp8X/41CNkkB5oDCIv58wPLA6/9NGBts2HzbSngeJxJRnaTZ4EM255ZQTAT/hF5Qd2n+AGoyIwUnMopbvdSmooh/3klH7U4h1cBjwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWcSNkr40TBOdgVAvqhYXpbVTco6dSAqBX0c8rv3yAM=;
 b=Pvq5QQ5qF5X8dJlv5yC/mrkNfPvqyY2il9Fi6AtCjyZpdKlaKF/BqV2THXNJJde4NDLdz3gnGc4m6E71xJe6NROXYe/jeKBuRbWqAt4+rvlnTJv/+oclyJ0vQyxSMzRZIlWQvai0lv00HgASdbE3JcjvhgdTNfKlfKqDsWR9DpaRU9NAzrNRkJhopg2bLYs7QX7zTkAa5RqReh0OFSu2629dBW/fUcMKqZzH+4QwyfqzWbo3jYwmhqukQL6HH2jil8gOn7yQyqj6OngeZT2Z5g9ZtvMO4Tij27US0Pd9HYdy4Qy0OFpqayz8PfFjLcEWILFjlxWYJVopgUfiklwnig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB7019.namprd11.prod.outlook.com (2603:10b6:806:2ae::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 16:32:32 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 16:32:32 +0000
Date: Tue, 3 Jan 2023 11:32:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y7RYnHQEFntiPLYV@intel.com>
References: <20230102113937.9263-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230102113937.9263-1-stanislav.lisovskiy@intel.com>
X-ClientProxiedBy: BYAPR11CA0097.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::38) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB7019:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b0eaa99-9ee4-4bca-e338-08daeda81cef
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HCGesRGXjh6beacacfiUGI4AVFSoU/o3HP5RfUZspCxTx72tM/37QE4QHBR/TEBOtr8Y2y7YezFYASk8dMPukOc2AOmeNsJfMFuMfy8juFtM6KTMrwOq79MjsY7e1Ds7aD0jbval5MCwiHH30nQC3YM9nrRyNHUVbo8MO8d5luHbZKg1U18m8KPlg7WeRBuKUx0TGOeOP+RkkB//NNTU32pJkerThkShy8kqU9abb7T861I15Bm3gwffSBQ4iWoTdaVAvud6qxOKpXIqb5J6TZFmeZqbF8IovFdbqHejcOCLL80HrVi76icOr6lUh86TirIPFl2HDOzVPqiiV3STX2ZbBGVFCaXfN3vRIdJdr4ah3Ua7lbWF2hY6e6yKl8v4mmcH6KNCeM/uPxMOP8T+7TRDOAH7f5PMWvU+7xC4z6FwRyqL6crhK+5quE187Jx+hc3fRS6PCW0qdj96fTMGgfFdRm4256lSOvXvR2DgHXkpBugss1XhIUw2GwEI5E23XjK5mSqQ0t/qSMbVtYeUN6lCLk6G2qCotBKiAWbGnCB/IcA7cyUPe75yisQMuNwoaIyBPU/xz8oa0YOGJK9eeXf8lAZlFI+X11IyYMfusI+ZAzouX+HBdLWcQdLk+q2Dh0u167uhIUB3acSRdO3z0BbW9fGEw8TF2K6vLtjsA6Z5/zlDhHFH8PAHssL+OoCjPo35Hubmi5stgIcjgGX8BQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(376002)(136003)(396003)(451199015)(5660300002)(2906002)(44832011)(8936002)(6862004)(4326008)(41300700001)(66476007)(6486002)(316002)(66556008)(66946007)(6636002)(37006003)(478600001)(8676002)(186003)(26005)(6512007)(107886003)(83380400001)(6506007)(6666004)(82960400001)(38100700002)(2616005)(86362001)(36756003)(22166006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lyxPhsk1mVoqdPSIhy+8uHbjQ4XZEeXlO/KELhI6rxAWHEh57rBSnn7NoK2F?=
 =?us-ascii?Q?fGwuSOfAYjd56VTGHF+AwP8gt3wDIdND7fsLjzsQ3f13RSM7Y7Ui0HKWLJYz?=
 =?us-ascii?Q?z5dZPyrbLSA1J6W/cEeKCeeJZuRqkWJ5jBBBfTCGOzCl06lH4UwLWsItXgcj?=
 =?us-ascii?Q?My7O8/q7MyDllbwBV/FEF4qWkn/sOeEATYq3PspjmCSzTYCn/6UkzahvlOyR?=
 =?us-ascii?Q?1U6EKRP8G2v7r7VqjVlm3mEQYyQPMfIFNKbSlPLPKaKZAGYtvcLv3Dw6G/L3?=
 =?us-ascii?Q?PkrzF7pKn0zkrrvdRjp8q4gb4esQvPyaQNTToSGlCHfUiDmC/8tgLdqqtJje?=
 =?us-ascii?Q?ozhK1G7UV+RkinoN4Gfc7nFvdhZSJl/idMC2ySS0gx+KUDy6XNnYHpyC2jOj?=
 =?us-ascii?Q?R9FO9e0uYFM749/PRE+FEiPkRvnPGsm1To83ZLcYTWjKF+H017hv9r/MwCCe?=
 =?us-ascii?Q?HrP4Js8uF1OHOcrx+JZQU8WXLf8uX1uW7dkcmCfnjuz94cL4rlz4n9bT9bG8?=
 =?us-ascii?Q?sn8Nq59Xx3h9gP3wJjpsQGu2wgQatZi/VTPg94VKBBPVeJgsQIfz/1Fsne2m?=
 =?us-ascii?Q?lNflHep0OA/1tlkdo2N6Js494buSa8Do7fth5fUWFn0duWrCAa9dC+7JP+kB?=
 =?us-ascii?Q?nRv3h7LBP6NPdLetzSNf63O3rpV36P7TH7d2B7ov/lCFZaRnOuuIsEGTaDST?=
 =?us-ascii?Q?3RS23y1zGV1KK2ZO2LebKCiU69wgwZXjMTacOS60UvFJ87xvP5Dxjdkp58XK?=
 =?us-ascii?Q?z7i18fG3L7wejYpOJ+P/n/h8zi4bzhevamnN48N2sT+A8hn8U69CZor9rLov?=
 =?us-ascii?Q?Ko5DodF4FkJDLCAMin2v0KVHZ4+fwOygd4YxZrDnXw+++hmStgLNVhr5oPRg?=
 =?us-ascii?Q?y/OSiZvEMWNV73buubs+jCJbNmMecqhrI1GoKS/6dMpsOilqch8y9P/kRPlQ?=
 =?us-ascii?Q?/TO/KpaLIWDgRehFTTiy+4rPC4gGkpi8w5k52cK8e69p2UeCfCB5KYgtp1E3?=
 =?us-ascii?Q?ZbLn/SZilZlHIijjTyzRq5Ng4B81mYb90SgF5RMgc7S90368DgqRKJ3pPa2n?=
 =?us-ascii?Q?g51/rdXlGODCDseLSyoOiLiVyqpjYJn1ox7RmXNVwzkRp9Rff72dGsSEptnN?=
 =?us-ascii?Q?ul1SZDLsGE9eNSgupKkk9ci6SxscbLO7klZASTKIW6bys0MGylKMcMXY0KCF?=
 =?us-ascii?Q?bJ8XIXnqSWicUYqN85O+w7hKgVyeElCrWWE1lS9eHnmujO74UVCS7S+3coGH?=
 =?us-ascii?Q?qaIMGWu26MMTHLMWNGg/QlzMbtI8kgsWyZ01lLYSAipGM8/uSKx7el6zWNLp?=
 =?us-ascii?Q?i6WUncUBLrG3fjgpfqdKrzl98ZWuedxIW0GhGfSbCCt52mPuEKFq+Zyf91lW?=
 =?us-ascii?Q?4qWsNgydwrzjo4baRxXE2vylZrruijoExSCyCEa/h9vC20JkgbXLhx59uTyr?=
 =?us-ascii?Q?av5gDbTKGVjc4poGOk+l4KFtryMnOYQ0d/PkI1xVsjafdJeoaNpaL6Qpd/YG?=
 =?us-ascii?Q?2R51Et1nvDsMYyfSfAcfCf7N/0cD8J2LpTlmxK5+KpIwkSf66oEVSWqljeKN?=
 =?us-ascii?Q?xPhQ06nCIxZ523QBIXrnFqJ3JHpyfQdLDTDL1oTpxVLY5tmadh4cffjodWwl?=
 =?us-ascii?Q?bw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0eaa99-9ee4-4bca-e338-08daeda81cef
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 16:32:32.6224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yX52DKDrEZnVILzQ8B10quPq25ifelzZUWcAWwZtjZhDoTYiyfdSoJKxhexSprIRE7fHZ8pzWAJ3rMbfL4Ag9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7019
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for DP2 UHBR
 bandwidth check
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


on the subject: This is not a hw workaround. Please remove the workaround from
the subject and the wrong comment.

"The HSD given is a 'feature' rather than 'bugeco' so no workaround details are
present here."


On Mon, Jan 02, 2023 at 01:39:37PM +0200, Stanislav Lisovskiy wrote:
> According to spec, we should check if output_bpp * pixel_rate is less
> than DDI clock * 72, if UHBR is used.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index bf80f296a8fdb..13baf3cb5f934 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1582,6 +1582,17 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		drm_dbg_kms(&dev_priv->drm, "DSC: compressed bpp %d slice count %d\n",
>  			    pipe_config->dsc.compressed_bpp,
>  			    pipe_config->dsc.slice_count);
> +
> +		/* wa1406899791 */

even if it was a bugeco, the notation doesn't follow the standard.

But anyway, as I pointed out, this is not a workaround so
you probably just want a

HSDES: 1406899791
BSPEC: 49259

in your commit msg.

Also maybe a "Fixes:" tag pointing to the commit that added the sequence
but didn't added this part of the sequence?

> +		if (intel_dp_is_uhbr(pipe_config)) {
> +			int output_bpp = pipe_config->dsc.compressed_bpp;
> +
> +			if (output_bpp * adjusted_mode->crtc_clock >=
> +			    pipe_config->port_clock * 72) {
> +				drm_dbg_kms(&dev_priv->drm, "DP2 UHBR check failed\n");

some probably dummy question:
do we need to add a check for the DP 2.0 above as well?
or it is unecessary/redundant?

> +				return -EINVAL;
> +			}
> +		}
>  	}
>  	/*
>  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> -- 
> 2.37.3
> 
