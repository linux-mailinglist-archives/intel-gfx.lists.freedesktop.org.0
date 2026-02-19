Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +UxWCZBblmkSeQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 01:38:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9920115B304
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 01:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586A210E156;
	Thu, 19 Feb 2026 00:38:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BoVx38QL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54BA110E156
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Feb 2026 00:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771461517; x=1802997517;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qax+XdHsIvJdoI4nk3Bx5s56LMmPe2+B1hNXNerPp+0=;
 b=BoVx38QL/Z1KisECMY+N5JLVoTSlGfnL0YiY6bogQyj4izj5ngSGp3LX
 +xHikHtqPdg9aJV4F96AqP0NmVk+/Kc4OOw05koiGU8PZ0PLs+HkbEz1F
 5HmweHqPGgAw5pgm0vhilfH+9cfFe/B/1C6qevtF7aRskYBxhV7EgWTFe
 /mKsxL2vhLVsUeLkZRYHCr4WJTuRzi9d4yiF0+c5HGOQdnAqkkJzfZsad
 7bk8GmFTPmqMHqtDgerkmhWysOjYpiVrWjGPv21avWNragq9mAYqjJECS
 mTsRVVNTmzNlxV5/C8/QROGy7XCKf6rqEJ34RmtYhvNQpZiEsuCYxJnBG A==;
X-CSE-ConnectionGUID: VpA3JfKSSoe9qzbBobitBA==
X-CSE-MsgGUID: Mb8HTubGQNGpebUsb5S5Kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="76165669"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="76165669"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 16:38:36 -0800
X-CSE-ConnectionGUID: Kp/NsaVmSN6s102TqPke2g==
X-CSE-MsgGUID: Alf3HSUdTbKDkFVrEH0YOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="219363501"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 16:38:36 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [PATCH] drm/xe/guc: Fail immediately on GuC load error
Date: Wed, 18 Feb 2026 16:38:22 -0800
Message-ID: <20260219003821.1219962-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniele.ceraolospurio@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9920115B304
X-Rspamd-Action: no action

By using the same variable for both the return of poll_timeout_us and
the return of the polled function guc_wait_ucode, the return value of
the latter is overwritten and lost after exiting the polling loop. Since
guc_wait_ucode returns -1 on GuC load failure, we lose that information
and always continue as if the GuC had been loaded correctly.

This is fixed by simply using 2 separate variables.

Fixes: a4916b4da448 ("drm/xe/guc: Refactor GuC load to use poll_timeout_us()")
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/xe/xe_guc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
index cbbb4d665b8f..aacf77f09522 100644
--- a/drivers/gpu/drm/xe/xe_guc.c
+++ b/drivers/gpu/drm/xe/xe_guc.c
@@ -1179,6 +1179,7 @@ static int guc_wait_ucode(struct xe_guc *guc)
 	struct xe_guc_pc *guc_pc = &gt->uc.guc.pc;
 	u32 before_freq, act_freq, cur_freq;
 	u32 status = 0, tries = 0;
+	int load_result;
 	ktime_t before;
 	u64 delta_ms;
 	int ret;
@@ -1186,7 +1187,7 @@ static int guc_wait_ucode(struct xe_guc *guc)
 	before_freq = xe_guc_pc_get_act_freq(guc_pc);
 	before = ktime_get();
 
-	ret = poll_timeout_us(ret = guc_load_done(gt, &status, &tries), ret,
+	ret = poll_timeout_us(load_result = guc_load_done(gt, &status, &tries), load_result,
 			      10 * USEC_PER_MSEC,
 			      GUC_LOAD_TIMEOUT_SEC * USEC_PER_SEC, false);
 
@@ -1194,7 +1195,7 @@ static int guc_wait_ucode(struct xe_guc *guc)
 	act_freq = xe_guc_pc_get_act_freq(guc_pc);
 	cur_freq = xe_guc_pc_get_cur_freq_fw(guc_pc);
 
-	if (ret) {
+	if (ret || load_result <= 0) {
 		xe_gt_err(gt, "load failed: status = 0x%08X, time = %lldms, freq = %dMHz (req %dMHz)\n",
 			  status, delta_ms, xe_guc_pc_get_act_freq(guc_pc),
 			  xe_guc_pc_get_cur_freq_fw(guc_pc));
-- 
2.43.0

