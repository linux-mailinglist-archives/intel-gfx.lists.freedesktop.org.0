Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 201845ADAE3
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 23:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA1610E2A0;
	Mon,  5 Sep 2022 21:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE8910E2A0
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 21:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662413473; x=1693949473;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=ti9JtinZlz11PtTfxneN056U5+hpbjUYI4RSjci1ztk=;
 b=k/SNg+3pDCetzrk2EhGUTQJVLVotJ8WRMLc9cdA+7NJtFO+40mZZKW8P
 a2nZffd9Ah/jWA8TO4LD3llRxdI7qRu835IjPRmFV1W9CqP41baexZ/0x
 pkLnkW8EdnB5Wun/vGA7CmG7hzgaZ7YuLatQTIeZ5uUL2WloBTvDKFvjH
 GAMBghZ7n2BdmTBS0Of4g2kvRYzguFi2WXf/voX/fUU9JIUInTOruuYUy
 iaY3HqTwf+801tAH+uI+E0wq/uQcb0JDJCCwIWEGGyXJ2hq3HuoHEVX+p
 T5P2HlmZPXILtw9LOWbim0zb40Uypo9GDIjqYz/e7E5Hxjftk4XTDszgh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="276849720"
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="276849720"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 14:31:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="739690379"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.223.85])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 14:31:12 -0700
Date: Mon, 05 Sep 2022 14:30:45 -0700
Message-ID: <87mtbdy0e2.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220827002135.139349-1-umesh.nerlige.ramappa@intel.com>
References: <20220827002135.139349-1-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Cancel GuC engine busyness
 worker synchronously
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

On Fri, 26 Aug 2022 17:21:35 -0700, Umesh Nerlige Ramappa wrote:
>
> The worker is canceled in gt_park path, but earlier it was assumed that
> gt_park path cannot sleep and the cancel is asynchronous. This caused a
> race with suspend flow where the worker runs after suspend and causes an
> unclaimed register access warning. Cancel the worker synchronously since
> the gt_park is indeed allowed to sleep.

Indeed, __gt_park already calls cancel_work_sync and synchronize_irq which
can sleep:

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

> v2: Fix author name and sign-off mismatch
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4419
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 0d56b615bf78..e6275380b253 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1438,7 +1438,12 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>	if (!guc_submission_initialized(guc))
>		return;
>
> -	cancel_delayed_work(&guc->timestamp.work);
> +	/*
> +	 * There is a race with suspend flow where the worker runs after suspend
> +	 * and causes an unclaimed register access warning. Cancel the worker
> +	 * synchronously here.
> +	 */
> +	cancel_delayed_work_sync(&guc->timestamp.work);
>
>	/*
>	 * Before parking, we should sample engine busyness stats if we need to.
> --
> 2.25.1
>
