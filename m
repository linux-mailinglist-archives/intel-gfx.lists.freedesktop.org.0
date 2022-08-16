Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DE7595DB4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 15:50:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A4B18A259;
	Tue, 16 Aug 2022 13:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 383 seconds by postgrey-1.36 at gabe;
 Tue, 16 Aug 2022 09:31:53 UTC
Received: from mx.swemel.ru (mx.swemel.ru [95.143.211.150])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D59B93315;
 Tue, 16 Aug 2022 09:31:53 +0000 (UTC)
From: Denis Arefev <arefev@swemel.ru>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=swemel.ru; s=mail;
 t=1660641925;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=4pN/HWYNP5Og6NT88D8bQhfdAYmJL0p3JtbVeMHSDU4=;
 b=Ivk+0ti/i5rbLhfDR13Gj4UMSC2U3igGCdFugoWc8EPkhACXCtRR4JODk28pbDVJpywEis
 2VtcV3npfjFwQo2yL/1PYuvYlF0MW/6vgEXe5i5n59RgkAKPpwI1iNZPH2OvyNjjgOsJ3/
 SU+u5ghxEgNErrG6VQphdU8tEUZFgc8=
To: Jani Nikula <jani.nikula@linux.intel.com>
Date: Tue, 16 Aug 2022 12:25:25 +0300
Message-Id: <20220816092525.37670-1-arefev@swemel.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Aug 2022 13:49:17 +0000
Subject: [Intel-gfx] [PATCH 3/3] i915-pmu: Add extra check NULL
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
Cc: ldv-project@linuxtesting.org, trufanov@swemel.ru,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, vfh@swemel.ru,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Denis Arefev <arefev@swemel.ru>
---
 drivers/gpu/drm/i915/i915_pmu.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 34a7f0ef1f67..33db49ffac3d 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -704,8 +704,7 @@ static void i915_pmu_disable(struct perf_event *event)
 		 * Decrement the reference count and clear the enabled
 		 * bitmask when the last listener on an event goes away.
 		 */
-		if(engine != NULL)
-		{
+		if (engine != NULL) {
 		        if (--engine->pmu.enable_count[sample] == 0)
 			        engine->pmu.enable &= ~BIT(sample);
 		}
-- 
2.25.1

