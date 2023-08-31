Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B68E78EFE3
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 17:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A142F10E0C1;
	Thu, 31 Aug 2023 15:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 766FC10E0C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 15:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693494092; x=1725030092;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sXoEnGVmq2PfKTWqWK9oCRcFUG4t1r/6ps7+jyR6Sz0=;
 b=HAt7JmUs7q8YmMc2F8ftED1t6/KWSQsehVxJqbDjNhuKmBKwyiXNdGNF
 846tx2eHBnaZcK+hkRJYKeyDP3ulURHc8wU38iV5qh2DHL/ilagiBUOoy
 zMWuy307LeHy6aZOH70Ytd28NlAhBH+SewaWUAC67MB4GOqeYBoC9qn38
 e+1kqXko9/3hKfCC7ecN0WVWcL+v1qG/2kAsSIMX2ORZZwMxJlTTR5B8I
 GxAca4RCUV8H3vw9aO/lPuoQpR8YAZCCNz7qCvpuAHknb+TchfPoCPfUH
 gN7weWnwEXj5fI4V4P0KuFcHZ0i+Qx0YTAvPDYcdZfJO9h12bh8mSX8hw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="406961160"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="406961160"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 08:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="716376275"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="716376275"
Received: from dineshba-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 08:01:27 -0700
Date: Thu, 31 Aug 2023 17:01:23 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZPCrQxO6EJaqVXDu@ashyti-mobl2.lan>
References: <20230828192852.2894671-1-jonathan.cavitt@intel.com>
 <20230828192852.2894671-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828192852.2894671-2-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/gt: Wait longer for tasks in
 migrate selftest
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Mon, Aug 28, 2023 at 12:28:52PM -0700, Jonathan Cavitt wrote:
> The thread_global_copy subtest of the live migrate selftest creates a
> large number of threads and waits 10ms for them all to start.  This is
> not enough time to wait for the threaded tasks to start, as some may
> need to wait for additional ring space to be granted.  Threads that do
> so are at risk of getting stopped (signaled) in the middle of waiting
> for additional space, which can result in ERESTARTSYS getting reported
> erroneously by i915_request_wait.
> 
> Instead of waiting a flat 10ms for the threads to start, wait 10ms per
> thread.  This grants enough of a buffer for each thread to wait for
> additional ring space when needed.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> ---
>  drivers/gpu/drm/i915/gt/selftest_migrate.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> index 3def5ca72dec..1a34cbe04fb6 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -710,7 +710,7 @@ static int threaded_migrate(struct intel_migrate *migrate,
>  		thread[i].tsk = tsk;
>  	}
>  
> -	msleep(10); /* start all threads before we kthread_stop() */
> +	msleep(10 * n_cpus); /* start all threads before we kthread_stop() */
>  
>  	for (i = 0; i < n_cpus; ++i) {
>  		struct task_struct *tsk = thread[i].tsk;
> -- 
> 2.25.1
