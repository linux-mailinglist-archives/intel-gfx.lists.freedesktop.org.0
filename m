Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED03198662
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 23:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CAF06E1F8;
	Mon, 30 Mar 2020 21:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F80F6E1F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 21:23:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20745220-1500050 
 for multiple; Mon, 30 Mar 2020 22:22:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 22:22:54 +0100
Message-Id: <20200330212254.18236-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Cleanup kerneldoc warnings
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:205: warning: Excess function parameter 'supported' description in 'intel_uc_fw_init_early'
drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:205: warning: Excess function parameter 'platform' description in 'intel_uc_fw_init_early'
drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:205: warning: Excess function parameter 'rev' description in 'intel_uc_fw_init_early'

drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:696: warning: Function parameter or member 'log' not described in 'intel_guc_log_info'
drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:696: warning: Excess function parameter 'guc' description in 'intel_guc_log_info'

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c   | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 5b11a6d8e27f..fb10f3597ea5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -687,7 +687,7 @@ stringify_guc_log_type(enum guc_log_buffer_type type)
 
 /**
  * intel_guc_log_info - dump information about GuC log relay
- * @guc: the GuC
+ * @log: the GuC log
  * @p: the &drm_printer
  *
  * Pretty printer for GuC log info
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index fa893dd1823c..1f5d25f15340 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -193,9 +193,6 @@ static void __uc_fw_user_override(struct intel_uc_fw *uc_fw)
  * intel_uc_fw_init_early - initialize the uC object and select the firmware
  * @uc_fw: uC firmware
  * @type: type of uC
- * @supported: is uC support possible
- * @platform: platform identifier
- * @rev: hardware revision
  *
  * Initialize the state of our uC object and relevant tracking and select the
  * firmware to fetch and load.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
