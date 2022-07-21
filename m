Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BD6589CD9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 15:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC1798BC9;
	Thu,  4 Aug 2022 13:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 939 seconds by postgrey-1.36 at gabe;
 Thu, 21 Jul 2022 06:39:53 UTC
Received: from mail-m973.mail.163.com (mail-m973.mail.163.com [123.126.97.3])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA78F113D66
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=JU89J
 36GF9qGZOl7Xq6oLoAVJwT8cghcIvZdxBIak1s=; b=W1jRFAtMf3CjJAPBmsTSy
 LE7ICAEABQ+mW5cdyN5BXA65dNFY2i3hR5czcehMXvX9JZS4FNZ0e0KzXhCSaIcN
 ApQbXUsKUd5sHE21BznGS/Jpt0YpH5grFc8BTDC5c6FIisoL0ZBGHTNU+drD/ur3
 O8xKTRM89mn4nBrhkMADeE=
Received: from localhost.localdomain (unknown [112.97.57.47])
 by smtp3 (Coremail) with SMTP id G9xpCgBnYpvz8Nhi5euzQQ--.1300S2;
 Thu, 21 Jul 2022 14:23:52 +0800 (CST)
From: Slark Xiao <slark_xiao@163.com>
To: airlied@linux.ie, daniel@ffwll.ch, linus.walleij@linaro.org,
 thierry.reding@gmail.com, sam@ravnborg.org, imre.deak@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com
Date: Thu, 21 Jul 2022 14:23:45 +0800
Message-Id: <20220721062345.46842-1-slark_xiao@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: G9xpCgBnYpvz8Nhi5euzQQ--.1300S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZFyDCryrJrWDJF15Ary3twb_yoW8tFyDpF
 47GFy2vrZ8AF1jqay7A3Wjka43CanFqFyfKFWkCwsxZr45AF1jy34rGFWUJFyDJr4xAw12
 yr9xKrWI9a4jyr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0z_c_TAUUUUU=
X-Originating-IP: [112.97.57.47]
X-CM-SenderInfo: xvod2y5b0lt0i6rwjhhfrp/1tbivxhFZFWB0i3GQgAAsp
X-Mailman-Approved-At: Thu, 04 Aug 2022 13:37:56 +0000
Subject: [Intel-gfx] [PATCH] drm: Fix typo 'the the' in comment
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
Cc: Slark Xiao <slark_xiao@163.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace 'the the' with 'the' in the comment.

Signed-off-by: Slark Xiao <slark_xiao@163.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c       | 2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 2 +-
 drivers/gpu/drm/panel/panel-novatek-nt35510.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index e5bab236b3ae..32b295003f49 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -1597,7 +1597,7 @@ static int drm_dp_aux_reply_duration(const struct drm_dp_aux_msg *msg)
 
 /*
  * Calculate the length of the i2c transfer in usec, assuming
- * the i2c bus speed is as specified. Gives the the "worst"
+ * the i2c bus speed is as specified. Gives the "worst"
  * case estimate, ie. successful while as long as possible.
  * Doesn't account the "MOT" bit, and instead assumes each
  * message includes a START, ADDRESS and STOP. Neither does it
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 73cebc6aa650..783a6ca41a61 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -65,7 +65,7 @@
 
 /*
  * Interrupt statistic for PMU. Increments the counter only if the
- * interrupt originated from the the GPU so interrupts from a device which
+ * interrupt originated from the GPU so interrupts from a device which
  * shares the interrupt line are not accounted.
  */
 static inline void pmu_irq_stats(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/panel/panel-novatek-nt35510.c b/drivers/gpu/drm/panel/panel-novatek-nt35510.c
index 40ea41b0a5dd..4085822f619a 100644
--- a/drivers/gpu/drm/panel/panel-novatek-nt35510.c
+++ b/drivers/gpu/drm/panel/panel-novatek-nt35510.c
@@ -231,7 +231,7 @@ struct nt35510_config {
 	 * bits 0..2 in the lower nibble controls HCK, the booster clock
 	 * frequency, the values are the same as for PCK in @bt1ctr.
 	 * bits 4..5 in the upper nibble controls BTH, the boosting
-	 * amplification for the the step-up circuit.
+	 * amplification for the step-up circuit.
 	 * 0 = AVDD + VDDB
 	 * 1 = AVDD - AVEE
 	 * 2 = AVDD - AVEE + VDDB
-- 
2.25.1

