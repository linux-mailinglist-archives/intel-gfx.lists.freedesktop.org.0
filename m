Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE62664825
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 19:06:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B410710E120;
	Tue, 10 Jan 2023 18:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 445 seconds by postgrey-1.36 at gabe;
 Fri, 06 Jan 2023 09:17:25 UTC
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC74010E83F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 09:17:25 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.138.125])
 by APP-05 (Coremail) with SMTP id zQCowAAnR8xP5bdjCJ9pCw--.28698S2;
 Fri, 06 Jan 2023 17:09:36 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@gmail.com,
 daniel@ffwll.ch, ville.syrjala@linux.intel.com, manasi.d.navare@intel.com,
 stanislav.lisovskiy@intel.com, lucas.demarchi@intel.com
Date: Fri,  6 Jan 2023 17:09:34 +0800
Message-Id: <20230106090934.6348-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: zQCowAAnR8xP5bdjCJ9pCw--.28698S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Zr1fAw45uFyxCr1xWw45ZFb_yoW5JF45pr
 45WFyYvFWrJF4Ika97Ja1jvFy7WayFy3W5CF17C3WDu3W5Aw4qq3WFva45CFyDGF4fJF1r
 JFZ2krW29F1qkaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkK14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
 jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr
 1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxa
 n2IY04v7MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrV
 AFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCI
 c40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267
 AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_
 Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb0D73
 UUUUU==
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Mailman-Approved-At: Tue, 10 Jan 2023 18:06:21 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Add missing check and destroy for
 alloc_workqueue
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
Cc: intel-gfx@lists.freedesktop.org, Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add checks for the return value of alloc_workqueue and
alloc_ordered_workqueue as they may return NULL pointer and cause NULL
pointer dereference.
Moreover, destroy them when fails later in order to avoid memory leak.
Because in `drivers/gpu/drm/i915/i915_driver.c`, if
intel_modeset_init_noirq fails, its workqueues will not be destroyed.

Fixes: c26a058680dc ("drm/i915: Use a high priority wq for nonblocking plane updates")
Fixes: 757fffcfdffb ("drm/i915: Put all non-blocking modesets onto an ordered wq")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6c2686ecb62a..58f6840d6bd8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8655,26 +8655,35 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	intel_dmc_ucode_init(i915);
 
 	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
+	if (!i915->display.wq.modeset) {
+		ret = -ENOMEM;
+		goto cleanup_vga_client_pw_domain_dmc;
+	}
+
 	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
 						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
+	if (!i915->display.wq.flip) {
+		ret = -ENOMEM;
+		goto cleanup_modeset;
+	}
 
 	intel_mode_config_init(i915);
 
 	ret = intel_cdclk_init(i915);
 	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
+		goto cleanup_flip;
 
 	ret = intel_color_init(i915);
 	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
+		goto cleanup_flip;
 
 	ret = intel_dbuf_init(i915);
 	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
+		goto cleanup_flip;
 
 	ret = intel_bw_init(i915);
 	if (ret)
-		goto cleanup_vga_client_pw_domain_dmc;
+		goto cleanup_flip;
 
 	init_llist_head(&i915->display.atomic_helper.free_list);
 	INIT_WORK(&i915->display.atomic_helper.free_work,
@@ -8686,6 +8695,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 
 	return 0;
 
+cleanup_flip:
+	destroy_workqueue(i915->display.wq.flip);
+cleanup_modeset:
+	destroy_workqueue(i915->display.wq.modeset);
 cleanup_vga_client_pw_domain_dmc:
 	intel_dmc_ucode_fini(i915);
 	intel_power_domains_driver_remove(i915);
-- 
2.25.1

