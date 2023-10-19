Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 425017CF22A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 10:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A3210E0AC;
	Thu, 19 Oct 2023 08:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDB210E0AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 08:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697703257; x=1729239257;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9H7q7tAfSTw3Pv54h40/CmSI7UhApbV8s0Ctik/E4To=;
 b=DKJnrGYPVWc92bJ5LogZQgrymMqonchqswc9y15jkVx638a56G0nMFKf
 SyULq105dyGD5bYGK7BG7ZcUDTHO0PHYHs5eMPRRyNiZHupARP24MpB1L
 1OsAPPUbMNH12vMHl9caBZ275ZHUrq0RCiO/c87Fbon4rCcAgQd4aJr0B
 5J++1DMZajucQUWjoSRUl9cq5jh6XUhM7D+dUQ/sPeCi/kz3z5go1bOe+
 5GyV01E+05pZP1wTdhTXMjBf8LKew6g5a1/3wGxTaDr3E48rz8f40hFxf
 52ZK/Oy/wrwhYwKBSrU++0oq1XgFskfp8/ifqUGxdwzIiJ8CdNmWhn1nt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="7753637"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="7753637"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 01:14:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="786268233"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="786268233"
Received: from vgowrish-mobl1.ger.corp.intel.com (HELO [10.213.218.20])
 ([10.213.218.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 01:14:14 -0700
Message-ID: <22223706-fdcc-d9d7-80e8-bdeb847bc8ef@linux.intel.com>
Date: Thu, 19 Oct 2023 09:14:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20231017195309.2476088-1-vinay.belgaumkar@intel.com>
 <169759328299.15109.5802304051647309440@emeril.freedesktop.org>
 <ZTALROwYzZNo4Jll@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZTALROwYzZNo4Jll@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/10/2023 17:43, Andi Shyti wrote:
> Hi Vinay,
> 
>> Possible regressions
>>
>>    • igt@gem_exec_nop@basic-series:
>>
>>        □ shard-glk: PASS -> INCOMPLETE +1 other test incomplete
>>    • igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>>
>>        □ shard-dg2: PASS -> TIMEOUT
>>    • igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-d-hdmi-a-1:
>>
>>        □ shard-tglu: PASS -> INCOMPLETE
>>    • igt@kms_psr@psr2_suspend:
>>
>>        □ shard-mtlp: NOTRUN -> FAIL
> 
> these failures look unrelated and besides they are not related to
> MTL.

There is something new on the shards which _seems_ to be implicating this patch.

This previously all green test started failing in a bad way:

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13775/shard-mtlp-6/igt@sysfs_preempt_timeout@timeout@vecs0.html

<5> [97.816201] Fence expiration time out i915-0000:00:02.0:sysfs_preempt_t[1166]:2!
<3> [187.682308] INFO: task kworker/0:3:165 blocked for more than 61 seconds.
<3> [187.689294]       Tainted: G        W          6.6.0-rc6-CI_DRM_13775-ge69e078f7bef+ #1
<3> [187.697375] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
<6> [187.705354] task:kworker/0:3     state:D stack:13504 pid:165   ppid:2      flags:0x00004000
<6> [187.705375] Workqueue: i915-unordered intel_gt_watchdog_work [i915]
<6> [187.705671] Call Trace:
<6> [187.705675]  <TASK>
<6> [187.705683]  __schedule+0x3a0/0xd70
<6> [187.705704]  schedule+0x5c/0xd0
<6> [187.705713]  guc_context_cancel_request+0x45e/0x9f0 [i915]
<6> [187.706078]  ? __pfx_autoremove_wake_function+0x10/0x10
<6> [187.706091]  ? intel_gt_watchdog_work+0x20/0x260 [i915]
<6> [187.706377]  intel_gt_watchdog_work+0xd1/0x260 [i915]
<6> [187.706624]  ? process_scheduled_works+0x264/0x530
<6> [187.706635]  process_scheduled_works+0x2db/0x530
<6> [187.706650]  ? __pfx_worker_thread+0x10/0x10
<6> [187.706656]  worker_thread+0x18c/0x350
<6> [187.706664]  ? __pfx_worker_thread+0x10/0x10
<6> [187.706670]  kthread+0xfe/0x130
<6> [187.706678]  ? __pfx_kthread+0x10/0x10
<6> [187.706687]  ret_from_fork+0x2c/0x50
<6> [187.706696]  ? __pfx_kthread+0x10/0x10
<6> [187.706704]  ret_from_fork_asm+0x1b/0x30
<6> [187.706724]  </TASK>

I am not claiming it is at fault but the transition from green to timing out looks clear.

Regards,

Tvrtko
