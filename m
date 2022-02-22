Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB8E4BFFA0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 18:05:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CDA10E9D7;
	Tue, 22 Feb 2022 17:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A5310E9E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 17:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645549509; x=1677085509;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9iMzYBzsTP6D6ZI1Fs1+tSpVBRlQ7NM2dqV2kZZ95uU=;
 b=MgtsCYtpLW/SlepOgc/PJvv1ogzV0+JbjFhRtBK8It1G0LUTNEH9T6/f
 8pwsUkuQi3fWquhQzQIdq+Uponr1sExqF8jJHGffn9ggsvrrUbSjiFYb5
 KLpCIueHATK5aVb+1NABJiY6x7mjz/2wba82opyQ0pRonzscQ0xAQTvHv
 ZmlnDyFAy3KV5cxZZ/6K6JvgA7L3aCPKjk/LPCpFT+m7gxaOolG+yWlzj
 EUSRrgQRre/oY5mgWBROb7sNdd0vm7VbONrBBQ2t8/bGYH1q2rWbNOunt
 gDF75L+/F65tjbKiQxf4trG1GwAS30erkRATWK+UIi7qieANidPbspXdr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239145000"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="239145000"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:03:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="706679882"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:03:54 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue, 22 Feb 2022 22:34:13 +0530
Message-Id: <20220222170413.5579-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] sound/hda/hdac_i915: reduce the timeout for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To avoid the kernel taint for kworker being blocked for more than 30sec
lets reduce the wait to 30Sec.

<3>[   60.946316] INFO: task kworker/11:1:104 blocked for more than 30
seconds.
<3>[   60.946479]       Tainted: G        W
5.17.0-rc5-CI-CI_DRM_11265+ #1
<3>[   60.946580] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
disables this message.
<6>[   60.946688] task:kworker/11:1    state:D stack:14192 pid:  104
ppid:     2 flags:0x00004000
<6>[   60.946713] Workqueue: events azx_probe_work [snd_hda_intel]
<6>[   60.946740] Call Trace:
<6>[   60.946745]  <TASK>
<6>[   60.946763]  __schedule+0x42c/0xa80
<6>[   60.946797]  schedule+0x3f/0xc0
<6>[   60.946811]  schedule_timeout+0x1be/0x2e0
<6>[   60.946829]  ? del_timer_sync+0xb0/0xb0
<6>[   60.946849]  ? 0xffffffff81000000
<6>[   60.946864]  ? wait_for_completion_timeout+0x79/0x120
<6>[   60.946879]  wait_for_completion_timeout+0xab/0x120
<6>[   60.946906]  snd_hdac_i915_init+0xa5/0xb0 [snd_hda_core]
<6>[   60.946943]  azx_probe_work+0x71/0x84c [snd_hda_intel]
<6>[   60.946974]  process_one_work+0x275/0x5c0
<6>[   60.947010]  worker_thread+0x37/0x370
<6>[   60.947028]  ? process_one_work+0x5c0/0x5c0
<6>[   60.947038]  kthread+0xef/0x120
<6>[   60.947047]  ? kthread_complete_and_exit+0x20/0x20
<6>[   60.947065]  ret_from_fork+0x22/0x30
<6>[   60.947110]  </TASK>

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 sound/hda/hdac_i915.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index fbca4bf53a47..d20a450a9a15 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -184,7 +184,7 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
 		    !request_module("i915")) {
 			/* 60s timeout */
 			wait_for_completion_timeout(&acomp->master_bind_complete,
-						    msecs_to_jiffies(60 * 1000));
+						    msecs_to_jiffies(30 * 1000));
 		}
 	}
 	if (!acomp->ops) {
-- 
2.20.1

