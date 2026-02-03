Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICVzKed9gWnkGgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 05:47:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DADD4789
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 05:47:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F22E10E517;
	Tue,  3 Feb 2026 04:47:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egZOY+bl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EA410E214;
 Tue,  3 Feb 2026 04:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770094051; x=1801630051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yb7Kh//NmjdFcfqStpuwOPbOWCfCrjntjq+6zfRo7JI=;
 b=egZOY+blp1gvtijl+i/+c2btlCPpWICxRMzAqBw8IZukNIDnbCgX51Fh
 rmj6lCD8psVXp6ToQODSYn3H5gcpDmXF3YXo/XVb1uE8ceavzXMqJGkLm
 v4iTfHptuEijtoj7XMCO98JDppaoJlD7surPBP9vhG/d5jLFlW9fciAQn
 Ox95Mlkw0kS3nakxbrqJXwMjvCwZQ4C5xIFmh98ycRf5OC+z6EzKqhM/i
 /27PnhmRtxz2+2RYqZzShcElBQo1xImT01YzVj5QWlrX0wcIOyjwOhnww
 P0wVKNEGuZAEr0yCH+y3eK35l0FHetMBXynM9LJ9XNlN1N1ZW6YBauz28 A==;
X-CSE-ConnectionGUID: y/lc43JVTR2KuwLloXSdXA==
X-CSE-MsgGUID: EX4FtN/oT/WEGttRmaTTog==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="73854698"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="73854698"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 20:47:29 -0800
X-CSE-ConnectionGUID: UbKGFW0dTIeQ/eBvw9Q2Pw==
X-CSE-MsgGUID: uj5wkCxDR1umTSFhHMCZAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209501834"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 02 Feb 2026 20:47:28 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Rahul Bukte <rahul.bukte@sony.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/gt: Check set_default_submission() before deferencing
Date: Tue,  3 Feb 2026 10:17:23 +0530
Message-Id: <20260203044723.1554875-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115015454.3226069-1-rahul.bukte@sony.com>
References: <20260115015454.3226069-1-rahul.bukte@sony.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sony.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 15DADD4789
X-Rspamd-Action: no action

From: Rahul Bukte <rahul.bukte@sony.com>

When the i915 driver firmware binaries are not present, the
set_default_submission pointer is not set. This pointer is
dereferenced during suspend anyways.

Add a check to make sure it is set before dereferencing.

[   23.289926] PM: suspend entry (deep)
[   23.293558] Filesystems sync: 0.000 seconds
[   23.298010] Freezing user space processes
[   23.302771] Freezing user space processes completed (elapsed 0.000 seconds)
[   23.309766] OOM killer disabled.
[   23.313027] Freezing remaining freezable tasks
[   23.318540] Freezing remaining freezable tasks completed (elapsed 0.001 seconds)
[   23.342038] serial 00:05: disabled
[   23.345719] serial 00:02: disabled
[   23.349342] serial 00:01: disabled
[   23.353782] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[   23.358993] sd 1:0:0:0: [sdb] Synchronizing SCSI cache
[   23.361635] ata1.00: Entering standby power mode
[   23.368863] ata2.00: Entering standby power mode
[   23.445187] BUG: kernel NULL pointer dereference, address: 0000000000000000
[   23.452194] #PF: supervisor instruction fetch in kernel mode
[   23.457896] #PF: error_code(0x0010) - not-present page
[   23.463065] PGD 0 P4D 0
[   23.465640] Oops: Oops: 0010 [#1] SMP NOPTI
[   23.469869] CPU: 8 UID: 0 PID: 211 Comm: kworker/u48:18 Tainted: G S      W           6.19.0-rc4-00020-gf0b9d8eb98df #10 PREEMPT(voluntary)
[   23.482512] Tainted: [S]=CPU_OUT_OF_SPEC, [W]=WARN
[   23.496511] Workqueue: async async_run_entry_fn
[   23.501087] RIP: 0010:0x0
[   23.503755] Code: Unable to access opcode bytes at 0xffffffffffffffd6.
[   23.510324] RSP: 0018:ffffb4a60065fca8 EFLAGS: 00010246
[   23.515592] RAX: 0000000000000000 RBX: ffff9f428290e000 RCX: 000000000000000f
[   23.522765] RDX: 0000000000000000 RSI: 0000000000000282 RDI: ffff9f428290e000
[   23.529937] RBP: ffff9f4282907070 R08: ffff9f4281130428 R09: 00000000ffffffff
[   23.537111] R10: 0000000000000000 R11: 0000000000000001 R12: ffff9f42829070f8
[   23.544284] R13: ffff9f4282906028 R14: ffff9f4282900000 R15: ffff9f4282906b68
[   23.551457] FS:  0000000000000000(0000) GS:ffff9f466b2cf000(0000) knlGS:0000000000000000
[   23.559588] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   23.565365] CR2: ffffffffffffffd6 CR3: 000000031c230001 CR4: 0000000000f70ef0
[   23.572539] PKRU: 55555554
[   23.575281] Call Trace:
[   23.577770]  <TASK>
[   23.579905]  intel_engines_reset_default_submission+0x42/0x60
[   23.585695]  __intel_gt_unset_wedged+0x191/0x200
[   23.590360]  intel_gt_unset_wedged+0x20/0x40
[   23.594675]  gt_sanitize+0x15e/0x170
[   23.598290]  i915_gem_suspend_late+0x6b/0x180
[   23.602692]  i915_drm_suspend_late+0x35/0xf0
[   23.607008]  ? __pfx_pci_pm_suspend_late+0x10/0x10
[   23.611843]  dpm_run_callback+0x78/0x1c0
[   23.615817]  device_suspend_late+0xde/0x2e0
[   23.620037]  async_suspend_late+0x18/0x30
[   23.624082]  async_run_entry_fn+0x25/0xa0
[   23.628129]  process_one_work+0x15b/0x380
[   23.632182]  worker_thread+0x2a5/0x3c0
[   23.635973]  ? __pfx_worker_thread+0x10/0x10
[   23.640279]  kthread+0xf6/0x1f0
[   23.643464]  ? __pfx_kthread+0x10/0x10
[   23.647263]  ? __pfx_kthread+0x10/0x10
[   23.651045]  ret_from_fork+0x131/0x190
[   23.654837]  ? __pfx_kthread+0x10/0x10
[   23.658634]  ret_from_fork_asm+0x1a/0x30
[   23.662597]  </TASK>
[   23.664826] Modules linked in:
[   23.667914] CR2: 0000000000000000
[   23.671271] ------------[ cut here ]------------

Signed-off-by: Rahul Bukte <rahul.bukte@sony.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 98a3a7a9de50..b9111c47bf3d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1967,7 +1967,8 @@ void intel_engines_reset_default_submission(struct intel_gt *gt)
 		if (engine->sanitize)
 			engine->sanitize(engine);
 
-		engine->set_default_submission(engine);
+		if (engine->set_default_submission)
+			engine->set_default_submission(engine);
 	}
 }
 
-- 
2.34.1

