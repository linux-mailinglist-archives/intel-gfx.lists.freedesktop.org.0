Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BB87A0972
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 17:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A7410E144;
	Thu, 14 Sep 2023 15:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA2610E144
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 15:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694705848; x=1726241848;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sTP+5GcROLX3Kozx9y95Zv5aNwmNvoQ/UI2tW4I4Jlw=;
 b=Mc+Istak72MGTHXZ5rDo44Th/kiY6gbYgJHdDBi1LJ/+U4ehLOWXBmLC
 snwCq8EM5UXr1Gmro549nrqr9SEAqJEneXotV8VEuLOwgXniFb8Ru97IY
 7WMElhs1OfWXkQwYO3xNPRargiLse2tvu7tZaITP3DyNDWUWrnv+zE5St
 iwoDu78imlyPU4zeb3xVAicrKt0+Jp3p3ZPUnE0zUaSh5UJDGw3K55WgD
 /5g99b9QqIRpMj/Vot5o2lM62AgKzrsmy7lVI44wtXyE2NmG40sBCuOqM
 bZpXYFgbqtQ7etTGjzrh8afyKo3HjEO10LGt0yaCnWGc3xLi/DSA0IhhA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="364035950"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="364035950"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 08:37:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694344936"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="694344936"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 08:35:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 08:35:53 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 08:35:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 08:35:52 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 08:35:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y6FI8qptGu4fhwKyFSKcAmWoQNchIjeVFHljNgzxXZtwdSDvCeni+PPvVr9n1syCfCzCvllL791qpar/uKlbBDmG8te8kfKATQE/CTAy0mkTqj6LyUbzjsA9co/3ZFxNrU4h2N08MHoCBx+qXerC8gutpIW7rWuLVSTwcFdr5pRwLD7UmslGXF8Me5deBTIppYjVwQgsOCrMncvoFXDXTm3ro0fCQg/9hGUxYy8VwPJm8cxOEOoJuCnQjGp3wTCObHdJh3BBViAQ3xr2I4WHG+bpVhxbicQd+eXwBtOjAtuLa9m/B12rg4X9LhGzhZJetZ736OVbXQeCSIh5fsprCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XdYDF8CjFBSA32g2/E4OFKorD5cVbkMTPPYZK4AukAg=;
 b=iXWTeahv4EfG389oxg6kqUQoBntceRw7UbDxWJ6UroOppYsjBRKCD3NFm50S8O9j69OMUOH4B95NsiTDaY9D1w0lqGx0A080sw4jnAoIjVa2vwDjg1xaiMtj/gK+r535WnDL71wdQSVUnD8PP/JEvZ19NW1LqOkaMVLCnoMeWEwJbQ3BER2XmHpIfZdnZg83VFAaVZgmIsp22lRWX3Va90HWsMlpgTX+htZSshTciH1KiuDYMa/P9wCd3xRfNkuq9wtUHRcDngUcflfq9Ti5D7a10AoTrdCHuahr/lWwFah4lSpvzqheEKlpauxwWfo3oy4947izkn/ZLUqFSkFP+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7202.namprd11.prod.outlook.com (2603:10b6:610:142::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Thu, 14 Sep
 2023 15:35:45 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Thu, 14 Sep 2023
 15:35:45 +0000
Date: Thu, 14 Sep 2023 11:35:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <ZQMoTW4iT/9AIJ8Q@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
 <20230910035846.493766-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230910035846.493766-2-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: BY3PR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB7202:EE_
X-MS-Office365-Filtering-Correlation-Id: 52b3b7e0-a660-482a-58aa-08dbb538431e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YTFqDv/IjHYWrkwaKy8m7toh9L4CPcW6dGHDEkH80fQcafbSgc3O+Xs90cTN+UTtE7cbILMzLH/mJdJR7CveiKHJtrRcLCPaehyi9abhZgIacqEOqY+aCXXcY1D3sUiI70kMvvuYuARO14IhfC9mHtT6fGzXhvOtZEY0aOS4wSVPLIpuNa7AvdO7eF6z5ttNea5gHUPZWZQr7g/p8xQBHgHdIR5c4BSGreDhFn4SBMtLx2r9hocv/jGMklbGCkx6o1UmXauvhYzyiyrAZIRH4ljt9n2EnFJS3GkzNw2LzoN4K+JeUZc66qUQIkW1FQaQW+Ui5l4Q59PM7IRQhfMCd5/ecqRlzPcOXflz+r8zdfVGA/jrcf2rXUXZiidksFAMZtrtciUxn70TrJuOi9lxXTGGfO031t5HUgfTg5kSjWep8cmO94I83wn6bUF7Zewn1sQi38mEIMbIJFw4Ea5XkV2GMDSLqx1BtiqLdy+DEOH0ATElWTTV8AJK+/UqE7pzrQ/6ZSusDZrUiKCC0qz9KBL/4T7LnE9XMFijLcGb4KoMvZk1XGFz/sX4sKbaCwvm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(451199024)(186009)(1800799009)(83380400001)(8676002)(478600001)(82960400001)(6506007)(6486002)(6666004)(6636002)(6512007)(15650500001)(2906002)(316002)(66946007)(44832011)(4326008)(26005)(37006003)(41300700001)(5660300002)(66476007)(66556008)(2616005)(8936002)(36756003)(86362001)(6862004)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gFz4jJQv2PXuix3jmll5FIDZlsibj4c1vCCECm8rB1wofyoYgbRP1GpmZjwQ?=
 =?us-ascii?Q?4Zvy7Z68i+i5siq1O2bz+8lDjMfC3fNFPa/pIRHXgeAf7Iem8OTrV/N3Wrv1?=
 =?us-ascii?Q?XtGuJzP/xY0B5HiDFlrYzfJJDZg8+Ey2GXIoInhUzqkKiLxSzQigrfaSGF0E?=
 =?us-ascii?Q?RnwjmPeiwW7pGLyjSyhCSb+cEwLPdB63ciEmFMLisScRHxmVhUuux/ZfsVCh?=
 =?us-ascii?Q?DawNbxMbXEf2fOpVB5BfO+qkjD62EhigJ9SSRgEWoK+DX7RFuNE9LUeB812T?=
 =?us-ascii?Q?HbeV22PaPbSCtaQCcRjtJr80Q8PsQ9G4+G+uYyIQbPKtPEu50c4i6x8IZAmU?=
 =?us-ascii?Q?Pd96ekFQxBbJqqv2c/mP7pE6Om11ZRosVSUzImEJ2Go5aTMxwrISTGi3KF6z?=
 =?us-ascii?Q?Wh6SyFiHHkV3vVBt/dDRaHByeURtFPBvOnYnvPptDWP2HYMNXN8ml2CbTLO5?=
 =?us-ascii?Q?dHB2QbjUMJlqZKRPY8RXS8d7KtChEaI1mw6ap5oMQdibeqOO383Jt7/PHEkn?=
 =?us-ascii?Q?5lYaTPh/+GXd5q8uPk5rzo1naIUi/5Ulo9KLDqCh+vvZoNlL/qaXrYhc4UC0?=
 =?us-ascii?Q?k+uCiWPE0nHjnwr4eGptsStohwCSTN9NjG0yqpNnaOZulNvi7pQPeAmKyU8A?=
 =?us-ascii?Q?+EqIMIPLmW48Ao/4PXc118b8PN0lyEQ1pQ1Cd5HNFOBGgogkCaxRcpyCTbJQ?=
 =?us-ascii?Q?EziLpdw8KMKWKoFNgvPBgO+Fyb5Fy8p0Z+8ziAjkk2fTpLBcITFjS+SX/KjP?=
 =?us-ascii?Q?JcBN7Xtwty7JBjjceOP0VoHOfLmbOE47E3gUullo/vrvh4SWb+6dvj+7WG3x?=
 =?us-ascii?Q?Gmp/PjIDw8S1TbdT8F0tDZL0BL1QC2ajlsnulRdQbxtEpODc9LonUMbkczh2?=
 =?us-ascii?Q?NMeFY4Vw7FIr52S3FzAJdMHmh3PExszmRtJAPJddwjwJ6QCRNvRFV3R+dntL?=
 =?us-ascii?Q?DpAHY/uUsPMPFTtoPRDclSBKiMfaqobIdExw1GAcl4qVCRizbm6ZygIrzGZa?=
 =?us-ascii?Q?A8/lVXpVDjFovM0HQKrDA2zMinBQEKky9SdyuLPxNqNgGbhmpz3o/4+G51NC?=
 =?us-ascii?Q?p/TuflxeIttoDsJfE3XkoJP+IJ1XEjFUL7dhHmJzz6x2NphRgssqIZcRNxQT?=
 =?us-ascii?Q?ZBXe85T/dq58zAF+osgQO2PYd/Ze/onUspFpV/Bi2V6sumh0nVPhIygo9Lva?=
 =?us-ascii?Q?ZDVUklq1OVAOUBuTdLYZ2zctu+doCmYK+d3qMqzQX8dWpxqWqmqVBi1H9cAg?=
 =?us-ascii?Q?1e+y4fdgNn0vqd14xNThbzWlIdCUfwWuvUhPTYf8yLb2WVzuXxFxHtlx2oSL?=
 =?us-ascii?Q?VovD6QGDaANzbkPfo8iHjp7RffTmCDgQrLZtBA/DYIlvNDD6/JO3OCLkkdRN?=
 =?us-ascii?Q?Y5DXDg+XdAnmNbmvB07TOuqyQw3s1veeP7bctBBPejHNJIsMPwAnlpakryZj?=
 =?us-ascii?Q?/HM+aBsK9hCdaBz5c43/y+4hJQRFWOebNCsTIXNImFQ/W38NI4MF24mgTIZ5?=
 =?us-ascii?Q?baFWPt2usJrACVQR7v9xPkP/lnK93SjgCx0rBMHQfVmfGDpPuHgYnOeG7Wg0?=
 =?us-ascii?Q?ZbobgJ75hDELcjQeFllRc4CqkDyFINaJogpC6dZ1wMrgRiTKjHkuY1SYWBsl?=
 =?us-ascii?Q?pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52b3b7e0-a660-482a-58aa-08dbb538431e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 15:35:45.4091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iloH8H97zVIR/TtsLI+Imvex3vTQS6W1FL2/V6ViMe9SO2KDbtWIU6YHyOFp64KRnDgCxnX681ZFIk/1+Qug4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7202
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/guc: Flush context
 destruction worker at suspend
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Sep 09, 2023 at 08:58:44PM -0700, Alan Previn wrote:
> When suspending, flush the context-guc-id
> deregistration worker at the final stages of
> intel_gt_suspend_late when we finally call gt_sanitize
> that eventually leads down to __uc_sanitize so that
> the deregistration worker doesn't fire off later as
> we reset the GuC microcontroller.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Tested-by: Mousumi Jana <mousumi.jana@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 +++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h | 2 ++
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c             | 2 ++
>  3 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index cabdc645fcdd..0ed44637bca0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1578,6 +1578,11 @@ static void guc_flush_submissions(struct intel_guc *guc)
>  	spin_unlock_irqrestore(&sched_engine->lock, flags);
>  }
>  
> +void intel_guc_submission_flush_work(struct intel_guc *guc)
> +{
> +	flush_work(&guc->submission_state.destroyed_worker);
> +}
> +
>  static void guc_flush_destroyed_contexts(struct intel_guc *guc);
>  
>  void intel_guc_submission_reset_prepare(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> index c57b29cdb1a6..b6df75622d3b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> @@ -38,6 +38,8 @@ int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
>  				   bool interruptible,
>  				   long timeout);
>  
> +void intel_guc_submission_flush_work(struct intel_guc *guc);
> +
>  static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
>  {
>  	return guc->submission_supported;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 98b103375b7a..eb3554cb5ea4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -693,6 +693,8 @@ void intel_uc_suspend(struct intel_uc *uc)
>  		return;
>  	}
>  
> +	intel_guc_submission_flush_work(guc);
> +
>  	with_intel_runtime_pm(&uc_to_gt(uc)->i915->runtime_pm, wakeref) {
>  		err = intel_guc_suspend(guc);
>  		if (err)
> -- 
> 2.39.0
> 
