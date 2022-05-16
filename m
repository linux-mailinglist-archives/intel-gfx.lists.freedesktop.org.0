Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 844B3528092
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 11:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A723310EF06;
	Mon, 16 May 2022 09:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9C710EF96
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 09:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652692299; x=1684228299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dnDiPG4Q0pKwEolwo6PJ97j8us9m+1obvRTzlDnNUmQ=;
 b=MojteK4R4zSjD5V5ymi/Ixs/3Cx3qtmcA8PUuP3CzipZXO/FoqpakOBR
 LZ3T2E0FUw6rvzrQi5xHkJnU3YhyZ3SbMyVdhzlSHlcl1/vyIU/DNfDMW
 gTTbzzWOqzDvBRFzUa61L1K5hJqIBJ9eT/Z3D7S5TsqAerP1eZ/DyqqXq
 uRmna+72N9+/6zG98gcAUbUM+jf9ej1bRoTU6yRf0ipCLVqrVslmW1Imi
 4TGkoBx91m2aTyVwxjJmgPjMHv/MbR14tfbiAmnTYpll4NEFOFwGORLGD
 ek8Jr/Oz1JBMc4F6k8lEn9pC/Qtc+HSaDv4ejiYOoPkM/dGmqjDdbsLRp g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="269602329"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="269602329"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:11:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="522370444"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:11:38 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 May 2022 01:54:01 -0700
Message-Id: <20220516085402.3591249-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/2] drm/i915/tc: Don't default disconnected
 legacy Type-C ports to TBT mode
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

Commit 30e114ef4b16 ("drm/i915/tc: Check for DP-alt, legacy sinks before
taking PHY ownership") defaults any disconnected Type-C ports to TBT-alt
mode which presents a problem (which could most likely result in a system
hang) when userspace forces a modeset on a Type-C port that is wired for
legacy HDMI. The following warning is seen when Weston forces a modeset
on a disconnected legacy Type-C port (HDMI) on a TGL based Gigabyte system:
(https://www.gigabyte.com/Mini-PcBarebone/GB-BSi3-1115G4-rev-10#ov)

Missing case (clock == 173000)
WARNING: CPU: 1 PID: 438 at drivers/gpu/drm/i915/display/intel_ddi.c:245
icl_ddi_tc_enable_clock.cold+0x16a/0x1cf [i915]
CPU: 1 PID: 438 Comm: kworker/u8:3 Tainted: G     U  W   E
5.18.0-rc5-drm-tip+ #20
Hardware name: GIGABYTE GB-BSi3-1115G4/GB-BSi3-1115G4, BIOS F9
10/16/2021
Workqueue: i915_modeset intel_atomic_commit_work [i915]
RIP: 0010:icl_ddi_tc_enable_clock.cold+0x16a/0x1cf [i915]
Code: 74 6c 7f 10 81 fd d0 78 02 00 74 6d 81 fd b0 1e 04 00 74 70 48 63
d5 48 c7 c6 c0 7b ab c0 48 c7 c7 20 75 ab c0 e8 b8 b5 c1 f0 <0f> 0b 45
31 ed e9 fb fe ff ff 49 63 d5
 48 c7 c6 80 7b ab c0 48 c7
RSP: 0018:ffff8882522c78f0 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
RDX: 0000000000000027 RSI: 0000000000000004 RDI: ffffed104a458f10
RBP: 0000000000011558 R08: ffffffffb078de4e R09: ffff888269ca748b
R10: ffffed104d394e91 R11: 0000000000000000 R12: ffff888255a318f8
R13: 0000000000000002 R14: ffff888255a30000 R15: ffff88823ef00348
FS:  0000000000000000(0000) GS:ffff888269c80000(0000)
knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fd7afa42000 CR3: 0000000255c02004 CR4: 00000000007706e0
PKRU: 55555554
Call Trace:
<TASK>
intel_ddi_pre_enable.cold+0x96/0x5bf [i915]
intel_encoders_pre_enable+0x10e/0x140 [i915]
hsw_crtc_enable+0x207/0x99d [i915]
? ilk_crtc_enable.cold+0x2a/0x2a [i915]
? prepare_to_wait_exclusive+0x120/0x120
intel_enable_crtc+0x9a/0xf0 [i915]
skl_commit_modeset_enables+0x466/0x820 [i915]
? intel_commit_modeset_enables+0xd0/0xd0 [i915]
? intel_mbus_dbox_update+0x1ed/0x250 [i915]
intel_atomic_commit_tail+0xf2d/0x3040 [i915]
_raw_spin_lock_irqsave+0x87/0xe0
_raw_read_unlock_irqrestore+0x40/0x40
__update_load_avg_cfs_rq+0x70/0x5c0
__i915_sw_fence_complete+0x85/0x3b0 [i915]
? intel_get_crtc_new_encoder+0x190/0x190 [i915]
? sysvec_irq_work+0x13/0x90
? asm_sysvec_irq_work+0x12/0x20
? _raw_spin_lock_irq+0x82/0xd0
? read_word_at_a_time+0xe/0x20
? process_one_work+0x393/0x690
process_one_work+0x393/0x690
worker_thread+0x2b7/0x620
? process_one_work+0x690/0x690
kthread+0x15a/0x190
? kthread_complete_and_exit+0x20/0x20
ret_from_fork+0x1f/0x30

Continuing with the modeset without setting the DDI clock results in
more warnings and eventually a system hang. This does not seem to
happen with disconnected legacy or DP-alt DP ports because the clock
rate defaults to 162000 (which is a valid TBT clock) during the link
training process. Therefore, to fix this issue, this patch avoids
setting disconnected Type-C legacy ports to TBT-alt mode which prevents
the selection of TBT PLL when a modeset is forced.

Cc: Imre Deak <imre.deak@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b8b822ea3755..0c3304be0602 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -494,7 +494,8 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	}
 
 	live_status_mask = tc_port_live_status_mask(dig_port);
-	if (!(live_status_mask & (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY)))) {
+	if (!(live_status_mask & BIT(TC_PORT_DP_ALT)) &&
+	    !dig_port->tc_legacy_port) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY ownership not required (live status %02x)\n",
 			    dig_port->tc_port_name, live_status_mask);
 		goto out_set_tbt_alt_mode;
-- 
2.35.1

