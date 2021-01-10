Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AB32F07BB
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jan 2021 16:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24B66E0C5;
	Sun, 10 Jan 2021 15:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B724F6E0AA
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jan 2021 15:04:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23553106-1500050 
 for multiple; Sun, 10 Jan 2021 15:04:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Jan 2021 15:04:04 +0000
Message-Id: <20210110150404.19535-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210110150404.19535-1-chris@chris-wilson.co.uk>
References: <20210110150404.19535-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Mark per-engine-reset as
 supported on gen7
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

The benefit of only resetting a single engine is that we leave other
streams of userspace work intact across a hang; vital for process
isolation. We had wired up individual engine resets for gen6, but only
enabled it from gen8; now let's turn it on for the forgotten gen7. gen6
is still a mystery as how to unravel some global state that appears to
be reset along with an engine (in particular the ppgtt enabling in
GFX_MODE).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 39608381b4a4..020b5f561f07 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -455,6 +455,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.has_llc = 1, \
 	.has_rc6 = 1, \
 	.has_rc6p = 1, \
+	.has_reset_engine = true, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
 	.ppgtt_type = INTEL_PPGTT_ALIASING, \
@@ -513,6 +514,7 @@ static const struct intel_device_info vlv_info = {
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
+	.has_reset_engine = true,
 	.has_rps = true,
 	.display.has_gmch = 1,
 	.display.has_hotplug = 1,
@@ -571,8 +573,7 @@ static const struct intel_device_info hsw_gt3_info = {
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
 	.ppgtt_size = 48, \
-	.has_64bit_reloc = 1, \
-	.has_reset_engine = 1
+	.has_64bit_reloc = 1
 
 #define BDW_PLATFORM \
 	GEN8_FEATURES, \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
