Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D4714C365
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 00:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1266C6F445;
	Tue, 28 Jan 2020 23:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4B46F445
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 23:08:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20041571-1500050 
 for multiple; Tue, 28 Jan 2020 23:07:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 23:07:41 +0000
Message-Id: <20200128230741.340859-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Trim default context register
 state for gen9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that it appears we have tamed the mystery hang on module reload, we
can relax some of the counter-measures we employed to help stabilise and
debug gen9. As we have aggressive poisoning of the context image, we can
confidently reduce the default context state in gen9 to match the limits
of the ring regs as laid out on other platforms.

References: 9c6527116e8f ("drm/i915: Restore the kernel context after verifying the w/a")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 98 +----------------------------
 1 file changed, 2 insertions(+), 96 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index cf6c43bd540a..7470dad9afff 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -631,54 +631,7 @@ static const u8 gen9_xcs_offsets[] = {
 	LRI(1, POSTED),
 	REG16(0x200),
 
-	NOP(13),
-	LRI(44, POSTED),
-	REG(0x028),
-	REG(0x09c),
-	REG(0x0c0),
-	REG(0x178),
-	REG(0x17c),
-	REG16(0x358),
-	REG(0x170),
-	REG(0x150),
-	REG(0x154),
-	REG(0x158),
-	REG16(0x41c),
-	REG16(0x600),
-	REG16(0x604),
-	REG16(0x608),
-	REG16(0x60c),
-	REG16(0x610),
-	REG16(0x614),
-	REG16(0x618),
-	REG16(0x61c),
-	REG16(0x620),
-	REG16(0x624),
-	REG16(0x628),
-	REG16(0x62c),
-	REG16(0x630),
-	REG16(0x634),
-	REG16(0x638),
-	REG16(0x63c),
-	REG16(0x640),
-	REG16(0x644),
-	REG16(0x648),
-	REG16(0x64c),
-	REG16(0x650),
-	REG16(0x654),
-	REG16(0x658),
-	REG16(0x65c),
-	REG16(0x660),
-	REG16(0x664),
-	REG16(0x668),
-	REG16(0x66c),
-	REG16(0x670),
-	REG16(0x674),
-	REG16(0x678),
-	REG16(0x67c),
-	REG(0x068),
-
-	END(176)
+	END(80)
 };
 
 static const u8 gen12_xcs_offsets[] = {
@@ -784,54 +737,7 @@ static const u8 gen9_rcs_offsets[] = {
 	LRI(1, 0),
 	REG(0xc8),
 
-	NOP(13),
-	LRI(44, POSTED),
-	REG(0x28),
-	REG(0x9c),
-	REG(0xc0),
-	REG(0x178),
-	REG(0x17c),
-	REG16(0x358),
-	REG(0x170),
-	REG(0x150),
-	REG(0x154),
-	REG(0x158),
-	REG16(0x41c),
-	REG16(0x600),
-	REG16(0x604),
-	REG16(0x608),
-	REG16(0x60c),
-	REG16(0x610),
-	REG16(0x614),
-	REG16(0x618),
-	REG16(0x61c),
-	REG16(0x620),
-	REG16(0x624),
-	REG16(0x628),
-	REG16(0x62c),
-	REG16(0x630),
-	REG16(0x634),
-	REG16(0x638),
-	REG16(0x63c),
-	REG16(0x640),
-	REG16(0x644),
-	REG16(0x648),
-	REG16(0x64c),
-	REG16(0x650),
-	REG16(0x654),
-	REG16(0x658),
-	REG16(0x65c),
-	REG16(0x660),
-	REG16(0x664),
-	REG16(0x668),
-	REG16(0x66c),
-	REG16(0x670),
-	REG16(0x674),
-	REG16(0x678),
-	REG16(0x67c),
-	REG(0x68),
-
-	END(176)
+	END(80)
 };
 
 static const u8 gen11_rcs_offsets[] = {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
