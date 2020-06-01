Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 525EB1EA7B6
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 18:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F6389CC1;
	Mon,  1 Jun 2020 16:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B367A89CC1
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 16:20:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21363012-1500050 
 for multiple; Mon, 01 Jun 2020 17:19:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 17:19:42 +0100
Message-Id: <20200601161942.30854-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Whitelist context-local timestamp in
 the gen9 cmdparser
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allow batch buffers to read their own _local_ cumulative HW runtime of
their logical context.

Fixes: 0f2f39758341 ("drm/i915: Add gen9 BCS cmdparsing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.4+
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 189b573d02be..372354d33f55 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -572,6 +572,9 @@ struct drm_i915_reg_descriptor {
 #define REG32(_reg, ...) \
 	{ .addr = (_reg), __VA_ARGS__ }
 
+#define REG32_IDX(_reg, idx) \
+	{ .addr = _reg(idx) }
+
 /*
  * Convenience macro for adding 64-bit registers.
  *
@@ -669,6 +672,7 @@ static const struct drm_i915_reg_descriptor gen9_blt_regs[] = {
 	REG64_IDX(RING_TIMESTAMP, BSD_RING_BASE),
 	REG32(BCS_SWCTRL),
 	REG64_IDX(RING_TIMESTAMP, BLT_RING_BASE),
+	REG32_IDX(RING_CTX_TIMESTAMP, BLT_RING_BASE),
 	REG64_IDX(BCS_GPR, 0),
 	REG64_IDX(BCS_GPR, 1),
 	REG64_IDX(BCS_GPR, 2),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
