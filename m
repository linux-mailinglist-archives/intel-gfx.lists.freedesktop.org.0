Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1FD78DD8A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 20:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B768710E14B;
	Wed, 30 Aug 2023 18:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E6210E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 18:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693421761; x=1724957761;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=TY1mJ29usdKcqE6bUYs7rhlSfyyIauBscwydpG+RkVo=;
 b=aODHjhbUQndWk7/8TXKPAPKFxSwLE8Ar2/s/K4zjggD77DlezMwHrW7A
 IgsZGMoPAlqHh2ZG1hsmPMFwl/gLio+1+v8yGLsXFjgbt3pPz/1E2sOU+
 5qYPvD52fa0FAgtFNkxieDZdbQWH+H9vBIhqRv6LsMfV3dhrT7fneSSe0
 7WCTuiRkcZL90wA8sk8nAxKBbzHVR5GHgK17AJ/0giYiffqA4Y5w3tzK1
 2JQABxJ+1uP78RlJay1HBfdq7FD3BYCThYUHnp3rJiTEG6L92SzfVz6MZ
 05ankVocBlFRlPbwHq2PDdbio0sswD9fBZ6/qGwI20MIbbVgG7/bVNwD3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="355227342"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="355227342"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 11:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882853758"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 11:56:04 -0700
Date: Wed, 30 Aug 2023 21:56:16 +0300
From: Imre Deak <imre.deak@intel.com>
To: Tejun Heo <tj@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <ZO+Q0Oaw/1GkDx6T@ideak-desk.fi.intel.com>
References: <f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com>
 <ZO-BkaGuVCgdr3wc@slm.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZO-BkaGuVCgdr3wc@slm.duckdns.org>
Subject: Re: [Intel-gfx] WQ_UNBOUND warning since recent workqueue
 refactoring
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 30, 2023 at 07:51:13AM -1000, Tejun Heo wrote:
Hi,

> Hello,
> 
> (cc'ing i915 folks)
> 
> On Wed, Aug 30, 2023 at 04:57:42PM +0200, Heiner Kallweit wrote:
> > Recently I started to see the following warning on linux-next and presumably
> > this may be related to the refactoring of the workqueue core code.
> > 
> > [   56.900223] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
> > [   56.923226] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
> > [   97.860430] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
> > [   97.884453] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
> > 
> > Adding WQ_UNBOUND to these queues didn't change the behavior.
> 
> That should have made them go away as the code path isn't active at all for
> WQ_UNBOUND workqueues. Can you please double check?
> 
> > Maybe relevant: I run the affected system headless.
> 
> i915 folks, workqueue recently added debug warnings which trigger when a
> per-cpu work item hogs the CPU for too long - 10ms in this case. This is
> problematic because such work item can stall other per-cpu work items.
> 
> * Is it expected for the above two work functions to occupy the CPU for over
>   10ms repeatedly?

No, this shouldn't happen.

I assume it happens in
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master

after cfd48ad8c4a9 ("drm/i915: Fix HPD polling, reenabling the output poll work as needed")

which could result in the above problem.

Could you give a try to
https://lore.kernel.org/all/20230809104307.1218058-1-imre.deak@intel.com/

and if that doesn't help provide more information/logs, by opening a
ticket at:
https://gitlab.freedesktop.org/drm/intel/-/issues/new

Thanks,
Imre

> * If so, can we make them use an unbound workqueue instead?
> 
> Thanks.
> 
> -- 
> tejun
