Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0550A812F82
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8DD10E0A1;
	Thu, 14 Dec 2023 11:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A92B10E0A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702555015; x=1734091015;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lxVfflO5s0YN7QiLd+qSVJCtLPwsjSnK6uLOuZE5OBk=;
 b=jQUjmOZw/r9sJq/vjo4HO1M7hDgk8uzc6Qeq1JJTDiBUXV+iNN3fU67X
 FSNT1FYrTwpXNNRpp5v0Z5lilPGkfV2+6p7cgHEvajBbxPNKQQJdledvo
 ALbkma8Zd9SurL2Ff/SOq1fa+nNUFfDke4FzqlU8D4QFTDCdIgpNseBGM
 V98lC4LlzGCiwOnjTdEvrQih2cuK3i+f+7JCXg1LOIDp9H7RvXc6qqmcW
 pXSIRyPhRzDeNzNJxOTOQKc8wxDBoRw/Ap/YGb8AZy8FA9Bkh0y7GV26x
 GgdfKaMtJDRHyNSzPJQryFOMJnP3msL+q6CiSrSw8txzYuq2tQ65sO49l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="461573274"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="461573274"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="17715239"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:56:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Karthik Poosa <karthik.poosa@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe: Add wait for completion after gt force reset
In-Reply-To: <20231214100641.2479582-1-karthik.poosa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231214100641.2479582-1-karthik.poosa@intel.com>
Date: Thu, 14 Dec 2023 13:56:50 +0200
Message-ID: <87r0jpuhdp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Karthik Poosa <karthik.poosa@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 14 Dec 2023, Karthik Poosa <karthik.poosa@intel.com> wrote:
> Wait for gt reset to complete before returning from force_reset
> sysfs call. Without this igt test freq_reset_multiple fails
> sporadically in case xe_guc_pc is not started.

Please send xe changes to intel-xe mailing list.

Thanks,
Jani.

>
> Testcase: igt@xe_guc_pc@freq_reset_multiple
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_gt.c         |  3 +++
>  drivers/gpu/drm/xe/xe_gt_debugfs.c | 10 ++++++++++
>  drivers/gpu/drm/xe/xe_gt_types.h   |  3 +++
>  3 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
> index dfd9cf01a5d5..eb7552b6dfa5 100644
> --- a/drivers/gpu/drm/xe/xe_gt.c
> +++ b/drivers/gpu/drm/xe/xe_gt.c
> @@ -65,6 +65,7 @@ struct xe_gt *xe_gt_alloc(struct xe_tile *tile)
>  
>  	gt->tile = tile;
>  	gt->ordered_wq = alloc_ordered_workqueue("gt-ordered-wq", 0);
> +	init_completion(&gt->reset_done);
>  
>  	return gt;
>  }
> @@ -647,6 +648,8 @@ static int gt_reset(struct xe_gt *gt)
>  	xe_device_mem_access_put(gt_to_xe(gt));
>  	XE_WARN_ON(err);
>  
> +	complete(&gt->reset_done);
> +
>  	xe_gt_info(gt, "reset done\n");
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/xe/xe_gt_debugfs.c b/drivers/gpu/drm/xe/xe_gt_debugfs.c
> index c4b67cf09f8f..49b30937a28b 100644
> --- a/drivers/gpu/drm/xe/xe_gt_debugfs.c
> +++ b/drivers/gpu/drm/xe/xe_gt_debugfs.c
> @@ -23,6 +23,8 @@
>  #include "xe_uc_debugfs.h"
>  #include "xe_wa.h"
>  
> +#define XE_GT_RESET_TIMEOUT_MS	(msecs_to_jiffies(5*1000))
> +
>  static struct xe_gt *node_to_gt(struct drm_info_node *node)
>  {
>  	return node->info_ent->data;
> @@ -58,9 +60,17 @@ static int hw_engines(struct seq_file *m, void *data)
>  static int force_reset(struct seq_file *m, void *data)
>  {
>  	struct xe_gt *gt = node_to_gt(m->private);
> +	struct xe_device *xe = gt_to_xe(gt);
> +	unsigned long timeout;
>  
>  	xe_gt_reset_async(gt);
>  
> +	timeout = wait_for_completion_timeout(&gt->reset_done, XE_GT_RESET_TIMEOUT_MS);
> +	if (timeout == 0) {
> +		drm_err(&xe->drm, "gt reset timed out");
> +		return -ETIMEDOUT;
> +	}
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/xe/xe_gt_types.h b/drivers/gpu/drm/xe/xe_gt_types.h
> index f74684660475..6f2fb9e3cfea 100644
> --- a/drivers/gpu/drm/xe/xe_gt_types.h
> +++ b/drivers/gpu/drm/xe/xe_gt_types.h
> @@ -358,6 +358,9 @@ struct xe_gt {
>  		/** @oob: bitmap with active OOB workaroudns */
>  		unsigned long *oob;
>  	} wa_active;
> +
> +	/** @reset_done : Completion of GT reset */
> +	struct completion reset_done;
>  };
>  
>  #endif

-- 
Jani Nikula, Intel
