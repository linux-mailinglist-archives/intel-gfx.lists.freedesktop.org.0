Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FCA7A096C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 17:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1F610E580;
	Thu, 14 Sep 2023 15:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC33810E144
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 15:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694705756; x=1726241756;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gqs2Sr6dLgzfWEs7TfW/RO6RFDB4VUlp4mNg0ysXxc4=;
 b=jjgcLsnqq2IPIYsJLcmf4Ak4ucSyJvYHChYxjBV803SXTagB6fNUs77Y
 bcPcOB452UsM5Oq/L6sbkeblH3PhWqo4LflFw1U+Wvg6it4c41OhNxcl8
 wIpuq/A+yZbPjCm3G52aTUq+itujWNV3/QC1GBecM1EwShWnLAGrhK9Er
 OBpY1uZj0j3JF4/vWOZtt9C4HlDClkKRxVU4lg2xqS48clMHNSJ7hGxl6
 vU/HhsnA1dk3bTxvHllxamLvQd05ke7QbzGpWWwkKaOHbGBvp2S1V5NnY
 ebcmGbYVJCofJpTOQrwkYTNZ8YzM/jQBntVqozJCndm7hCXaFyeGf0FWR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="364035630"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="364035630"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 08:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694343656"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="694343656"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 08:35:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 08:35:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 08:35:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 08:35:00 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 08:34:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D7cpWaaUxN/iJwFjGkXotiV28KmxupvotIVXjDsHBOD/RG2dH+CDlcIK142XlQz8xTht2tF8To9uMJlytw3PS/XNsILy33k63L4M9V6HuRQLsdMgQlcQDz93MH95TIgUYZKPc2uVwK3Mc7Rc97GSUrcAA4T0Wl5sibv5Bl/9gsjnMylJjRFIhwM5vx/s83FPCTCBFDti868IFkTf8dUIsiA+6xrlY/jvegeDT2gX3NHWhXiNlkOsa+1L4qijd+LJJfUnoPNv+IO2I4f6jVEiUniIhX4BGKNXL88XZ9G5qGc3dlzMIUUfHH9beEdNlCWrtlnnGPaMMlxfDz0B23BI/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=88V8DRHSg7p41+znv2S5IVzb0q1wNcpEiV9dqLn9WTo=;
 b=FzFUeTrY+xNs/KFQ1QPKWNOxFCs2kvfQMzx/EDiUCPenhXsJsS9cbxOOeo1ZPpERknKXvpFpt0Sf2JeKXjvG5NM1SIRC7gBn4nKR2mYvtx3OVJCKknVD7F/t/Vx56x30dhj8RP8jmcj4zriSnFzMnUtESYLe8o8B58eEAyuL1VGXl2EY2hDg0qpbZ4usrUYtoXXk9SlmWyRfNufJZ9Wmc32jPGnnYVP74p0wUIsPGoCX94o1jtaPPu485FNmC6S51vCwh7zZVqqo9roEszWJTr1nBOa2PfzxgHsmtogixf9/on2bijoGA10577xZcqpHwg3POV167p+wHMBBWobgxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7202.namprd11.prod.outlook.com (2603:10b6:610:142::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Thu, 14 Sep
 2023 15:34:55 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Thu, 14 Sep 2023
 15:34:55 +0000
Date: Thu, 14 Sep 2023 11:34:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <ZQMoG9nW+3lVj60j@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
 <20230910035846.493766-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230910035846.493766-3-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: SJ0PR05CA0118.namprd05.prod.outlook.com
 (2603:10b6:a03:334::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB7202:EE_
X-MS-Office365-Filtering-Correlation-Id: f60d6dc3-00bc-4055-f94c-08dbb538258d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vcUqWq1ZD4J9a5BbmUbwbq623/Ig8GoGM3BTi3T2EAfznrY0hIW5SdykOEy92EpILhJAgRV/qs73jxFYFmsZ1JH7xJ3WxBYZkg+1h3RNcBk2oAHwjXi8yInu1rC+FB/zMJp52VLhaB3nrkpi6X+cwmKbMx+jfnd/s092qXIjIrK0FwzVfiuihimJBD+qw+K0O9tDyctZeUoHu0oJ72GWSveEMfuMQ9ORWIuVrGk/LHdhXleA6EX8SgEw4TN4Nilq3MUd3lVGd7flmdg0k5V0J2VsIkH/Vrcf839+JqFolCme590CXrKkvS8E18FuzbE0RW/yc+ByIghgvUVr+HXpK0+MDa7kTWgEyNn88MbXcPi7en9gBDJm22a3zDWvDfneMID6lLxILi8THSIUYDAWJi8aGl3g3eyM7niMQDhxqOcKriS9eHYdkevgjKA8+tAuC2b2U3KY9zktm5J67JD1FGgbroObNhgHxWsQCP7JZOV9w7C1SWZDbqwrwjxrU4X0GNw5GO/mOC8Eh8kGworFGBvc4v7b7r7ctJf02xkjgShuZfEIQPgNNNIYXy1ZKvphiZSH0Db9/nmNXKx4S5P+d+HyYb+UT2nQ9GkawU3oe20=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(451199024)(186009)(1800799009)(83380400001)(8676002)(478600001)(82960400001)(6506007)(6486002)(6666004)(6636002)(6512007)(2906002)(316002)(66946007)(44832011)(4326008)(26005)(37006003)(41300700001)(5660300002)(66476007)(66556008)(2616005)(8936002)(36756003)(86362001)(6862004)(38100700002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S/pLLsx1sItgclKvE9dmblbLxqTljSSTEpbo53lI0O/7ZN2iAZsuzz1K+89W?=
 =?us-ascii?Q?HxygyCJXoDLGdcID6/ZfxfDvDO/M3UZ3OQYvzZ1UYnJsSpmy3lQgy91CTHT/?=
 =?us-ascii?Q?t+LXNJFOYB7mWgmtuKNOIuC3vlb4dGWpq9ZrUVwCTUBKZvIryyVuBzdIFNTf?=
 =?us-ascii?Q?JNsfK18AYLscJehIwnwLqDShqTd7boNn0o8gl9atAwY6fJOpFN26zIbHdjbx?=
 =?us-ascii?Q?NL/aXLHQAwl9Jk9hYV00HH+SQ01U+5fjIYYrmW17JpZoKAHpfzH6ObcRPkBI?=
 =?us-ascii?Q?pe4m16FaIj11KY575v+ADiTug/UKpRvVJioYRRQk58hs7UiJgwV0mjn7yYlT?=
 =?us-ascii?Q?o+ccBSava5taePAXMENLx465ZUS67/nluimAY/rkqWSV4rBaSTnkxhwJlpn4?=
 =?us-ascii?Q?DCofURYSVgrf1/fMf8gAuxHFEnWDfHPVY+RkVRN3qthgNgubkqqJ046qQXhn?=
 =?us-ascii?Q?4/+EcEJh/UhnEnuSQPG0DkjEgU/8JT/8XpTfZXKZUrX/xAs+n69PpNkTA8Qv?=
 =?us-ascii?Q?f0ZKATd8OMQR5Uxyl1PbIreSPD2otvuJUXU3P1eTwrLYuXQKxhpM/ABeRl6a?=
 =?us-ascii?Q?WA0zaUNbU2LxsZvpb0bD/unMgoSXZDXGb03AO6HXOjbDv9PLmqD2NJ8XH4q1?=
 =?us-ascii?Q?lxFAyxkLrx2U9upcFORzvpITHPi3ZuGD69UaODEcKyAdFoahopZ55+iTpP5/?=
 =?us-ascii?Q?NcMRbC1S718cPLL1ieCQ84lF3I7PZITwGiHQYeoseCAbtCLMldRy01Z1V+DP?=
 =?us-ascii?Q?35mKGO2e5XencD0w6r+MfK5UZfN79guAdfgwbzB3MoeFbY+vTeVJlrldRYzj?=
 =?us-ascii?Q?xCinzACKjiGZPYYiHkUvTRBN+I/VzIahpYASJInKlRnFcYonvNC9waj3fH96?=
 =?us-ascii?Q?U8MOrbCr06E9WsWqwKmTPSR6J391S1xCA7ZEIqW5lMFJUdqfVByoeuHMSUXL?=
 =?us-ascii?Q?UOoLa5sxacOmu8Uo15Y4ehFaYDkS+wdrevOJQ13T0vc6HX1bMAYGuI4K/n3X?=
 =?us-ascii?Q?uEBLYakZ/DxbYXbhG5caZ38OKVT32jI+m4P5iAkJIGqgcn9GdqM715V7JxJ7?=
 =?us-ascii?Q?PH1ohvjWZV5SqGlcIRwVR4qRPltbZ6dWkBJj4Eop/5n/hHgv8YAprkhzePtD?=
 =?us-ascii?Q?bjSr/YyuIxtp4mobvH51rMq6TJySY8POz493KL7cGBHX2aNoUhrLPMyZGUiv?=
 =?us-ascii?Q?Lod1rdZDhIJYIEI2GT66iOasBzg7mTotR/fLP90EDrkBUb8N89sXXmwhT8AY?=
 =?us-ascii?Q?kNRPU3LBT4rmOmPmhsWr31T/NH1pYIyn9iJPcXE+wAROTxbdlZaEdngYwgSX?=
 =?us-ascii?Q?NoD8jI4WnwtRhEnpD1idFy/1TUGrhNFc8r8ZicxHhZAYd35KoMoJkH59Veqv?=
 =?us-ascii?Q?BOFXBEgWVuGY8t8U6njNr6fGRJKMOTRcxwMNmxixyTbpcb9jAy36Iy95pV36?=
 =?us-ascii?Q?jfHa0EU2EIqEbHRec6uEcSxkbfGZOQVM4zJefUUg+LMBd6PPNBUhsV+EA11Y?=
 =?us-ascii?Q?k/U7j5rN42muH4wRvTtHXO1KtogsHk0WdkQcea1YTFztVqNbqa6UjY3g6aID?=
 =?us-ascii?Q?71Y7RoARohSDXlrFu6WcAwG0yQP2QLuylyNItyo4+8FGmc7lxN5QavI9Nru1?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f60d6dc3-00bc-4055-f94c-08dbb538258d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 15:34:55.8601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d8HWMcMovB7EDfQso7h32TjgGl3APC5XbRSV32+EeQ4woAVRBW3xfJtd4yHnlbjdtHWTeaIZBaztgfecEOfPiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7202
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/guc: Close
 deregister-context race against CT-loss
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

On Sat, Sep 09, 2023 at 08:58:45PM -0700, Alan Previn wrote:
> If we are at the end of suspend or very early in resume
> its possible an async fence signal could lead us to the
> execution of the context destruction worker (after the
> prior worker flush).
> 
> Even if checking that the CT is enabled before calling
> destroyed_worker_func, guc_lrc_desc_unpin may still fail
> because in corner cases, as we traverse the GuC's
> context-destroy list, the CT could get disabled in the mid
> of it right before calling the GuC's CT send function.
> 
> We've witnessed this race condition once every ~6000-8000
> suspend-resume cycles while ensuring workloads that render
> something onscreen is continuously started just before
> we suspend (and the workload is small enough to complete
> and trigger the queued engine/context free-up either very
> late in suspend or very early in resume).
> 
> In such a case, we need to unroll the unpin process because
> guc-lrc-unpin takes a gt wakeref which only gets released in
> the G2H IRQ reply that never comes through in this corner
> case. That will cascade into a kernel hang later at the tail
> end of suspend in this function:
> 
>    intel_wakeref_wait_for_idle(&gt->wakeref)
>    (called by) - intel_gt_pm_wait_for_idle
>    (called by) - wait_for_suspend
> 
> Doing this unroll and keeping the context in the GuC's
> destroy-list will allow the context to get picked up on
> the next destroy worker invocation or purged as part of a
> major GuC sanitization or reset flow.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Tested-by: Mousumi Jana <mousumi.jana@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 76 ++++++++++++++++---
>  1 file changed, 65 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 0ed44637bca0..db7df1217350 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -235,6 +235,13 @@ set_context_destroyed(struct intel_context *ce)
>  	ce->guc_state.sched_state |= SCHED_STATE_DESTROYED;
>  }
>  
> +static inline void
> +clr_context_destroyed(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state &= ~SCHED_STATE_DESTROYED;
> +}
> +
>  static inline bool context_pending_disable(struct intel_context *ce)
>  {
>  	return ce->guc_state.sched_state & SCHED_STATE_PENDING_DISABLE;
> @@ -612,6 +619,8 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
>  					 u32 g2h_len_dw,
>  					 bool loop)
>  {
> +	int ret;
> +
>  	/*
>  	 * We always loop when a send requires a reply (i.e. g2h_len_dw > 0),
>  	 * so we don't handle the case where we don't get a reply because we
> @@ -622,7 +631,11 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
>  	if (g2h_len_dw)
>  		atomic_inc(&guc->outstanding_submission_g2h);
>  
> -	return intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
> +	ret = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
> +	if (ret)
> +		atomic_dec(&guc->outstanding_submission_g2h);
> +
> +	return ret;
>  }
>  
>  int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
> @@ -3173,12 +3186,13 @@ static void guc_context_close(struct intel_context *ce)
>  	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  }
>  
> -static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> +static inline int guc_lrc_desc_unpin(struct intel_context *ce)
>  {
>  	struct intel_guc *guc = ce_to_guc(ce);
>  	struct intel_gt *gt = guc_to_gt(guc);
>  	unsigned long flags;
>  	bool disabled;
> +	int ret;
>  
>  	GEM_BUG_ON(!intel_gt_pm_is_awake(gt));
>  	GEM_BUG_ON(!ctx_id_mapped(guc, ce->guc_id.id));
> @@ -3188,19 +3202,33 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
>  	/* Seal race with Reset */
>  	spin_lock_irqsave(&ce->guc_state.lock, flags);
>  	disabled = submission_disabled(guc);
> -	if (likely(!disabled)) {
> -		__intel_gt_pm_get(gt);
> -		set_context_destroyed(ce);
> -		clr_context_registered(ce);
> -	}
> -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  	if (unlikely(disabled)) {
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  		release_guc_id(guc, ce);
>  		__guc_context_destroy(ce);
> -		return;
> +		return 0;
>  	}
>  
> -	deregister_context(ce, ce->guc_id.id);
> +	/* GuC is active, lets destroy this context,
> +	 * but at this point we can still be racing with
> +	 * suspend, so we undo everything if the H2G fails
> +	 */
> +
> +	/* Change context state to destroyed and get gt-pm */
> +	__intel_gt_pm_get(gt);
> +	set_context_destroyed(ce);
> +	clr_context_registered(ce);
> +
> +	ret = deregister_context(ce, ce->guc_id.id);
> +	if (ret) {
> +		/* Undo the state change and put gt-pm if that failed */
> +		set_context_registered(ce);
> +		clr_context_destroyed(ce);
> +		intel_gt_pm_put(gt);

This is a might_sleep inside a spin_lock! Are you 100% confident no WARN
was seeing during the tests indicated in the commit msg?

> +	}
> +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +
> +	return 0;

If you are always returning 0, there's no pointing in s/void/int...

>  }
>  
>  static void __guc_context_destroy(struct intel_context *ce)
> @@ -3268,7 +3296,22 @@ static void deregister_destroyed_contexts(struct intel_guc *guc)
>  		if (!ce)
>  			break;
>  
> -		guc_lrc_desc_unpin(ce);
> +		if (guc_lrc_desc_unpin(ce)) {
> +			/*
> +			 * This means GuC's CT link severed mid-way which could happen
> +			 * in suspend-resume corner cases. In this case, put the
> +			 * context back into the destroyed_contexts list which will
> +			 * get picked up on the next context deregistration event or
> +			 * purged in a GuC sanitization event (reset/unload/wedged/...).
> +			 */
> +			spin_lock_irqsave(&guc->submission_state.lock, flags);
> +			list_add_tail(&ce->destroyed_link,
> +				      &guc->submission_state.destroyed_contexts);
> +			spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> +			/* Bail now since the list might never be emptied if h2gs fail */
> +			break;
> +		}
> +
>  	}
>  }
>  
> @@ -3279,6 +3322,17 @@ static void destroyed_worker_func(struct work_struct *w)
>  	struct intel_gt *gt = guc_to_gt(guc);
>  	int tmp;
>  
> +	/*
> +	 * In rare cases we can get here via async context-free fence-signals that
> +	 * come very late in suspend flow or very early in resume flows. In these
> +	 * cases, GuC won't be ready but just skipping it here is fine as these
> +	 * pending-destroy-contexts get destroyed totally at GuC reset time at the
> +	 * end of suspend.. OR.. this worker can be picked up later on the next
> +	 * context destruction trigger after resume-completes

who is triggering the work queue again?
I mean, I'm wondering if it is necessary to re-schedule it from inside...
but also wonder if this is safe anyway...

> +	 */
> +	if (!intel_guc_is_ready(guc))
> +		return;
> +
>  	with_intel_gt_pm(gt, tmp)
>  		deregister_destroyed_contexts(guc);
>  }
> -- 
> 2.39.0
> 
