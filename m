Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 585863A69B3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 17:09:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEFAA89AB5;
	Mon, 14 Jun 2021 15:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B77489AB5;
 Mon, 14 Jun 2021 15:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=jldv6FKLr3ujn9AqD0OISzLxNQCDa9L+elc7GcM/r/E=; b=QBddYAiQL7mPco7LQwmPuhItX/
 6V+viZSQNB08r+SJOp2tNOqj93yKOsSiLyslvkyIX5d+7Ghckck7wNnLpnahSWXVJmByh5xRvKoYv
 Ox9x5lmNfHXJ7KXsAXC3FSRC+4MGmZ+ISB7FTZV6YVZLt7ffC5lfMEVnLKX5HaJCAlXs/B04q0pqq
 AVq5N5wSMX6F+kH32htLgSXmKQiEyp4RKXQF62h8OL22jhaYUVrcq20UyecrRRQ82XYyCGkRlF6Si
 TOo0cBZOBLp93jKf9clKOA7z1vfn9qUIEEKQtsuwmXjYf0VVHbhLs3nYzBmQMX/HTpD8COVgb/1Uo
 b/5rz8Hw==;
Received: from [2001:4bb8:19b:fdce:4b1a:b4aa:22d8:1629] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsoD0-00EfhP-Gs; Mon, 14 Jun 2021 15:09:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Mon, 14 Jun 2021 17:08:40 +0200
Message-Id: <20210614150846.4111871-5-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210614150846.4111871-1-hch@lst.de>
References: <20210614150846.4111871-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 04/10] driver core: Don't return EPROBE_DEFER to
 userspace during sysfs bind
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
Cc: Tony Krowiak <akrowiak@linux.ibm.com>, Jason Herne <jjherne@linux.ibm.com>,
 kvm@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-doc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

EPROBE_DEFER is an internal kernel error code and it should not be leaked
to userspace via the bind_store() sysfs. Userspace doesn't have this
constant and cannot understand it.

Further, it doesn't really make sense to have userspace trigger a deferred
probe via bind_store(), which could eventually succeed, while
simultaneously returning an error back.

Resolve this by splitting driver_probe_device so that the version used
by the sysfs binding that turns EPROBE_DEFER into -EAGAIN, while the one
used for internally binding keeps the error code, and calls
driver_deferred_probe_add where needed.  This call is now a little later,
which harmless, and the trigger reinjection check now also happens for the
always_defer case, which is not required but otherwise harmless.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/base/dd.c | 72 +++++++++++++++++++++++++----------------------
 1 file changed, 39 insertions(+), 33 deletions(-)

diff --git a/drivers/base/dd.c b/drivers/base/dd.c
index 4c6af8c062c8..8c65673e344c 100644
--- a/drivers/base/dd.c
+++ b/drivers/base/dd.c
@@ -491,15 +491,6 @@ EXPORT_SYMBOL_GPL(device_bind_driver);
 static atomic_t probe_count = ATOMIC_INIT(0);
 static DECLARE_WAIT_QUEUE_HEAD(probe_waitqueue);
 
-static void driver_deferred_probe_add_trigger(struct device *dev,
-					      int local_trigger_count)
-{
-	driver_deferred_probe_add(dev);
-	/* Did a trigger occur while probing? Need to re-trigger if yes */
-	if (local_trigger_count != atomic_read(&deferred_trigger_count))
-		driver_deferred_probe_trigger();
-}
-
 static ssize_t state_synced_show(struct device *dev,
 				 struct device_attribute *attr, char *buf)
 {
@@ -545,10 +536,9 @@ static int call_driver_probe(struct device *dev, struct device_driver *drv)
 
 static int really_probe(struct device *dev, struct device_driver *drv)
 {
-	int local_trigger_count = atomic_read(&deferred_trigger_count);
 	bool test_remove = IS_ENABLED(CONFIG_DEBUG_TEST_DRIVER_REMOVE) &&
 			   !drv->suppress_bind_attrs;
-	int ret = -EPROBE_DEFER, probe_ret = 0;
+	int ret, probe_ret = 0;
 
 	if (defer_all_probes) {
 		/*
@@ -557,13 +547,10 @@ static int really_probe(struct device *dev, struct device_driver *drv)
 		 * wait_for_device_probe() right after that to avoid any races.
 		 */
 		dev_dbg(dev, "Driver %s force probe deferral\n", drv->name);
-		driver_deferred_probe_add(dev);
-		return ret;
+		return -EPROBE_DEFER;
 	}
 
 	ret = device_links_check_suppliers(dev);
-	if (ret == -EPROBE_DEFER)
-		driver_deferred_probe_add_trigger(dev, local_trigger_count);
 	if (ret)
 		return ret;
 
@@ -679,8 +666,6 @@ static int really_probe(struct device *dev, struct device_driver *drv)
 		dev->pm_domain->dismiss(dev);
 	pm_runtime_reinit(dev);
 	dev_pm_set_driver_flags(dev, 0);
-	if (probe_ret == -EPROBE_DEFER)
-		driver_deferred_probe_add_trigger(dev, local_trigger_count);
 done:
 	atomic_dec(&probe_count);
 	wake_up_all(&probe_waitqueue);
@@ -737,21 +722,7 @@ void wait_for_device_probe(void)
 }
 EXPORT_SYMBOL_GPL(wait_for_device_probe);
 
-/**
- * driver_probe_device - attempt to bind device & driver together
- * @drv: driver to bind a device to
- * @dev: device to try to bind to the driver
- *
- * This function returns -ENODEV if the device is not registered, -EBUSY if it
- * already has a driver, 0 if the device is bound successfully and a positive
- * (inverted) error code for failures from the ->probe method.
- *
- * This function must be called with @dev lock held.  When called for a
- * USB interface, @dev->parent lock must be held as well.
- *
- * If the device has a parent, runtime-resume the parent before driver probing.
- */
-static int driver_probe_device(struct device_driver *drv, struct device *dev)
+static int __driver_probe_device(struct device_driver *drv, struct device *dev)
 {
 	int ret = 0;
 
@@ -782,6 +753,39 @@ static int driver_probe_device(struct device_driver *drv, struct device *dev)
 	return ret;
 }
 
+/**
+ * driver_probe_device - attempt to bind device & driver together
+ * @drv: driver to bind a device to
+ * @dev: device to try to bind to the driver
+ *
+ * This function returns -ENODEV if the device is not registered, -EBUSY if it
+ * already has a driver, 0 if the device is bound successfully and a positive
+ * (inverted) error code for failures from the ->probe method.
+ *
+ * This function must be called with @dev lock held.  When called for a
+ * USB interface, @dev->parent lock must be held as well.
+ *
+ * If the device has a parent, runtime-resume the parent before driver probing.
+ */
+static int driver_probe_device(struct device_driver *drv, struct device *dev)
+{
+	int trigger_count = atomic_read(&deferred_trigger_count);
+	int ret;
+
+	ret = __driver_probe_device(drv, dev);
+	if (ret == -EPROBE_DEFER || ret == EPROBE_DEFER) {
+		driver_deferred_probe_add(dev);
+
+		/*
+		 * Did a trigger occur while probing? Need to re-trigger if yes
+		 */
+		if (trigger_count != atomic_read(&deferred_trigger_count) &&
+		    !defer_all_probes)
+			driver_deferred_probe_trigger();
+	}
+	return ret;
+}
+
 static inline bool cmdline_requested_async_probing(const char *drv_name)
 {
 	return parse_option_str(async_probe_drv_names, drv_name);
@@ -1049,12 +1053,14 @@ int device_driver_attach(struct device_driver *drv, struct device *dev)
 	int ret;
 
 	__device_driver_lock(dev, dev->parent);
-	ret = driver_probe_device(drv, dev);
+	ret = __driver_probe_device(drv, dev);
 	__device_driver_unlock(dev, dev->parent);
 
 	/* also return probe errors as normal negative errnos */
 	if (ret > 0)
 		ret = -ret;
+	if (ret == -EPROBE_DEFER)
+		return -EAGAIN;
 	return ret;
 }
 
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
