Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 965DC14170B
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 11:52:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3726F9F5;
	Sat, 18 Jan 2020 10:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AFFE6F9F5
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2020 10:52:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19927028-1500050 
 for multiple; Sat, 18 Jan 2020 10:52:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jan 2020 10:52:17 +0000
Message-Id: <20200118105217.3484773-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Clear the whole first page of LRC
 on gen9
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

Try clearing the whole first page of the LRC on gen9, just in case HW
tries peeking at the poisoned data.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 2d6b41e66b16..bf0c5a998428 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -549,7 +549,7 @@ static void set_offsets(u32 *regs,
 	}
 
 	if (clear) {
-		u8 count = *++data;
+		unsigned int count = *++data * 16u;
 
 		/* Clear past the tail for HW access */
 		GEM_BUG_ON(dword_in_page(regs) > count);
@@ -594,7 +594,7 @@ static const u8 gen8_xcs_offsets[] = {
 	REG16(0x200),
 	REG(0x028),
 
-	END(80)
+	END(5)
 };
 
 static const u8 gen9_xcs_offsets[] = {
@@ -678,7 +678,7 @@ static const u8 gen9_xcs_offsets[] = {
 	REG16(0x67c),
 	REG(0x068),
 
-	END(176)
+	END(64)
 };
 
 static const u8 gen12_xcs_offsets[] = {
@@ -710,7 +710,7 @@ static const u8 gen12_xcs_offsets[] = {
 	REG16(0x274),
 	REG16(0x270),
 
-	END(80)
+	END(5)
 };
 
 static const u8 gen8_rcs_offsets[] = {
@@ -747,7 +747,7 @@ static const u8 gen8_rcs_offsets[] = {
 	LRI(1, 0),
 	REG(0x0c8),
 
-	END(80)
+	END(5)
 };
 
 static const u8 gen9_rcs_offsets[] = {
@@ -831,7 +831,7 @@ static const u8 gen9_rcs_offsets[] = {
 	REG16(0x67c),
 	REG(0x68),
 
-	END(176)
+	END(64)
 };
 
 static const u8 gen11_rcs_offsets[] = {
@@ -872,7 +872,7 @@ static const u8 gen11_rcs_offsets[] = {
 	LRI(1, 0),
 	REG(0x0c8),
 
-	END(80)
+	END(5)
 };
 
 static const u8 gen12_rcs_offsets[] = {
@@ -913,7 +913,7 @@ static const u8 gen12_rcs_offsets[] = {
 	LRI(1, 0),
 	REG(0x0c8),
 
-	END(80)
+	END(5)
 };
 
 #undef END
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
