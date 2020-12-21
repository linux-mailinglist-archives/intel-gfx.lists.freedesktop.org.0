Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CC62DFC1F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 14:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827AD6E094;
	Mon, 21 Dec 2020 13:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 279976E094
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 13:01:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23391431-1500050 
 for multiple; Mon, 21 Dec 2020 13:01:06 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Dec 2020 13:01:05 +0000
Message-Id: <20201221130105.5519-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Add a comment about how to use
 udev for configuring engines
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

We expose engine properties under sysfs so that the sysadmin can
configure the driver according to their requirements. We can also use
udev rules to then apply that configuration anytime a device is
reloaded. Include a udev snippet provided by Joonas as an example.

v2: Update the snippet

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/sysfs_engines.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 9cf943b6a44b..37f078e69a42 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -11,6 +11,22 @@
 #include "intel_engine_heartbeat.h"
 #include "sysfs_engines.h"
 
+/*
+ * The sysfs provides a means for configuring each engine for the intended
+ * usecase, and by utilising a udev the configuration can be made persistent
+ * across reboots and device rebinding.
+ *
+ * An example udev rule to run a custom sysadmin script would be,
+ * /etc/udev/rules.d/50-intel-gpu.rules:
+ *
+ * ACTION=="bind|add",SUBSYSTEM=="pci",DRIVER=="i915",RUN+="/usr/local/libexec/i915-disable-preempt-timeout.sh"
+ *
+ * where the script receives the device name and can open the sysfs, e.g.:
+ * for ENGINE in $(find /sys/$DEVPATH/drm/card?/engine -maxdepth 1) do
+ *   echo 0 > $ENGINE/preempt_timeout_ms # Disable reset on preemption failure
+ * done
+ */
+
 struct kobj_engine {
 	struct kobject base;
 	struct intel_engine_cs *engine;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
