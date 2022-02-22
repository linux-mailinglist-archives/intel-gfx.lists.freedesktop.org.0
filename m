Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BB44BFFD7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 18:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48F810EA38;
	Tue, 22 Feb 2022 17:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6BA10E963
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 17:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645549897; x=1677085897;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wQmn/+0/rH/+x7JGfkF9NtjOfeMGfEOe4UzJg000j3c=;
 b=ePADtn+dggln0+8OdjVs/Dt4YHfZTGd0aT6F1Uz9o13r+yPCHKiklsEQ
 7QeA9hQRrdaZqPEK4e1hyI58IJRoe+VOeiunHUAkBdpQzLiwwriX5EYYW
 v01Dm9Z7CtJXZKEEC6dDmS4dkOW2Qkz6CfyiBHCXHBflIv1Gtiwi8Byqa
 vgBVAWCq/SMouW5Ag9AqOzevWS+D6EWHbMjnUmcwVINn2RXQYgq9k+tLS
 18oSV9JEA4PRB6dqzggHD+LpXPIYlLMc2JrVbzYyiRLy6+0mXt0Z7WZ2F
 lvWn3nd9KkoCjLCd3Uok8QgUS8ao28MMgWAF/ibTPArR2oV2sb8fbDQpz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="338197217"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="338197217"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:11:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="683589526"
Received: from ionyenwu-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.126.239])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:11:37 -0800
Date: Tue, 22 Feb 2022 09:11:36 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20220222171136.xzglejs4grqw7ppm@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220222170413.5579-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220222170413.5579-1-ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH] sound/hda/hdac_i915: reduce the timeout for
 component binding
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 22, 2022 at 10:34:13PM +0530, Ramalingam C wrote:
>To avoid the kernel taint for kworker being blocked for more than 30sec
>lets reduce the wait to 30Sec.
>
><3>[   60.946316] INFO: task kworker/11:1:104 blocked for more than 30
>seconds.
><3>[   60.946479]       Tainted: G        W
>5.17.0-rc5-CI-CI_DRM_11265+ #1
><3>[   60.946580] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
>disables this message.
><6>[   60.946688] task:kworker/11:1    state:D stack:14192 pid:  104
>ppid:     2 flags:0x00004000
><6>[   60.946713] Workqueue: events azx_probe_work [snd_hda_intel]
><6>[   60.946740] Call Trace:
><6>[   60.946745]  <TASK>
><6>[   60.946763]  __schedule+0x42c/0xa80
><6>[   60.946797]  schedule+0x3f/0xc0
><6>[   60.946811]  schedule_timeout+0x1be/0x2e0
><6>[   60.946829]  ? del_timer_sync+0xb0/0xb0
><6>[   60.946849]  ? 0xffffffff81000000
><6>[   60.946864]  ? wait_for_completion_timeout+0x79/0x120
><6>[   60.946879]  wait_for_completion_timeout+0xab/0x120
><6>[   60.946906]  snd_hdac_i915_init+0xa5/0xb0 [snd_hda_core]
><6>[   60.946943]  azx_probe_work+0x71/0x84c [snd_hda_intel]
><6>[   60.946974]  process_one_work+0x275/0x5c0
><6>[   60.947010]  worker_thread+0x37/0x370
><6>[   60.947028]  ? process_one_work+0x5c0/0x5c0
><6>[   60.947038]  kthread+0xef/0x120
><6>[   60.947047]  ? kthread_complete_and_exit+0x20/0x20
><6>[   60.947065]  ret_from_fork+0x22/0x30
><6>[   60.947110]  </TASK>
>
>Signed-off-by: Ramalingam C <ramalingam.c@intel.com>

to clarify: this should be in topic/core-for-CI branch. The longer term
fix is more elaborate on the sound/  side. For now, this is ok to use
with Intel CI.  Our main issue is that when we have both integrated and
discreate, but integrated is disabled in the bios, i915 will never bind
to the integrated and the sound driver will wait until timeout.  If the
timeout is greater than the hung_task_timeout, we get the warning above
and taint CI execution on BAT.

With the amended explanation above in the commit message:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
