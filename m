Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 332EF7CFE8C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 17:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A754C10E512;
	Thu, 19 Oct 2023 15:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758DF10E512
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 15:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697730296; x=1729266296;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UbyvODxAbZq0s9RGc8JAD3ptrhMJbc6xzX3jt36flek=;
 b=fPugzGDXjBS1BRu5xT4Ml3gpZva1AbUey/POGxKk15ZTIClvHY7rDvNx
 NODL8lp8GtbDqRSHiapun8fTAuoUp7qb6PiBhZrgkDIijxW4wnY1PJcQ5
 VvsAtwz9ilvVpyyTzkQL8jVMLw+Tc6T6KEG9T4NrBtMpLR4cAtCcSLykT
 9kp4D6aKul8TQF+5k1MZqVudUmsma+3h69UiTR+2lvT5q00Yck0xSqfPz
 Fi8SfhHK6A1CidsZrVFqocaK68gvT6fN4UpSyb76ZVcDXa5x9xujkWJ1w
 xri2BcX4e95MFSwRXv/yi8Ul+xPPBsk4imkqrjkWtOr+RCrj18TZBIerv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="390173094"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="390173094"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 08:44:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="900788142"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="900788142"
Received: from jiaminka-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.251.143])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 08:42:43 -0700
Date: Thu, 19 Oct 2023 17:44:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Message-ID: <ZTFO6cfcCjzKxNhm@ashyti-mobl2.lan>
References: <20231017195309.2476088-1-vinay.belgaumkar@intel.com>
 <169759328299.15109.5802304051647309440@emeril.freedesktop.org>
 <ZTALROwYzZNo4Jll@ashyti-mobl2.lan>
 <22223706-fdcc-d9d7-80e8-bdeb847bc8ef@linux.intel.com>
 <31c65705-6e9b-add3-93ee-84a5d9fc2f8c@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <31c65705-6e9b-add3-93ee-84a5d9fc2f8c@linux.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Don=27t_set_PIPE=5FCONTROL=5FFLUSH=5FL3_=28rev5=29?=
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

Hi Nirmoy,

> > > > Possible regressions
> > > > 
> > > >    • igt@gem_exec_nop@basic-series:
> > > > 
> > > >        □ shard-glk: PASS -> INCOMPLETE +1 other test incomplete
> > > >    •
> > > > igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> > > > 
> > > >        □ shard-dg2: PASS -> TIMEOUT
> > > >    • igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-d-hdmi-a-1:
> > > > 
> > > >        □ shard-tglu: PASS -> INCOMPLETE
> > > >    • igt@kms_psr@psr2_suspend:
> > > > 
> > > >        □ shard-mtlp: NOTRUN -> FAIL
> > > 
> > > these failures look unrelated and besides they are not related to
> > > MTL.
> > 
> > There is something new on the shards which _seems_ to be implicating
> > this patch.
> > 
> > This previously all green test started failing in a bad way:
> > 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13775/shard-mtlp-6/igt@sysfs_preempt_timeout@timeout@vecs0.html
> > 
> > 
> > <5> [97.816201] Fence expiration time out
> > i915-0000:00:02.0:sysfs_preempt_t[1166]:2!
> > <3> [187.682308] INFO: task kworker/0:3:165 blocked for more than 61
> > seconds.
> > <3> [187.689294]       Tainted: G        W
> > 6.6.0-rc6-CI_DRM_13775-ge69e078f7bef+ #1
> > <3> [187.697375] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
> > disables this message.
> > <6> [187.705354] task:kworker/0:3     state:D stack:13504 pid:165  
> > ppid:2      flags:0x00004000
> > <6> [187.705375] Workqueue: i915-unordered intel_gt_watchdog_work [i915]
> > <6> [187.705671] Call Trace:
> > <6> [187.705675]  <TASK>
> > <6> [187.705683]  __schedule+0x3a0/0xd70
> > <6> [187.705704]  schedule+0x5c/0xd0
> > <6> [187.705713]  guc_context_cancel_request+0x45e/0x9f0 [i915]
> > <6> [187.706078]  ? __pfx_autoremove_wake_function+0x10/0x10
> > <6> [187.706091]  ? intel_gt_watchdog_work+0x20/0x260 [i915]
> > <6> [187.706377]  intel_gt_watchdog_work+0xd1/0x260 [i915]
> > <6> [187.706624]  ? process_scheduled_works+0x264/0x530
> > <6> [187.706635]  process_scheduled_works+0x2db/0x530
> > <6> [187.706650]  ? __pfx_worker_thread+0x10/0x10
> > <6> [187.706656]  worker_thread+0x18c/0x350
> > <6> [187.706664]  ? __pfx_worker_thread+0x10/0x10
> > <6> [187.706670]  kthread+0xfe/0x130
> > <6> [187.706678]  ? __pfx_kthread+0x10/0x10
> > <6> [187.706687]  ret_from_fork+0x2c/0x50
> > <6> [187.706696]  ? __pfx_kthread+0x10/0x10
> > <6> [187.706704]  ret_from_fork_asm+0x1b/0x30
> > <6> [187.706724]  </TASK>
> > 
> > I am not claiming it is at fault but the transition from green to timing
> > out looks clear.
> 
> https://jira.devtools.intel.com/browse/VLK-52300 This happening for a while
> as per the filter.
> 
> (machines are broken so cibuglog will not work till Tuesday)

Thanks, that's what I thought, but I haven't had the chance to
verify it.

Andi
