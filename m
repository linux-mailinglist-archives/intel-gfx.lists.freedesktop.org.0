Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFC13AB5DD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 16:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4187F6E8DE;
	Thu, 17 Jun 2021 14:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A6196E8DE;
 Thu, 17 Jun 2021 14:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=SJEmoMzhsxjUGdtDewbUzy949a8+HHWGN2CHWhDvky8=; b=lkJKtj7DJhwo7rcwa4umNG0GhD
 j3fukxHKl43BpZzC7AfHOZRM2Bjeogm4zJP/XyhKx1LH6Snv6p4WICPDnH2MnypFi1A66YfQwpDhi
 tsMaID5YkoAgz/YbYz/b6MQHwVhlxg85KFk5EiLkhs6sUQ/qIWfndJQslOrCcU7G6Z9pUmldeGH1F
 JxqZuj9qkxcS4uZTdsrQaytica+V0DlCisdDIdOv3VWDDiq337vttfK8q00cy7+n8ulXY9+72cu/p
 B1q8NGmiTA5FVsHgLYGhfN10nLT+Ezk+BiydFEkoVTRJsEJeJgl/THPV6LWUML4U9e7N3VMQrmbnX
 hlKyM1rg==;
Received: from [2001:4bb8:19b:fdce:dccf:26cc:e207:71f6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltsw2-009De5-3d; Thu, 17 Jun 2021 14:24:08 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Thu, 17 Jun 2021 16:22:13 +0200
Message-Id: <20210617142218.1877096-6-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210617142218.1877096-1-hch@lst.de>
References: <20210617142218.1877096-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 05/10] driver core: Export device_driver_attach()
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

From: Jason Gunthorpe <jgg@nvidia.com>

This is intended as a replacement API for device_bind_driver(). It has at
least the following benefits:

- Internal locking. Few of the users of device_bind_driver() follow the
  locking rules

- Calls device driver probe() internally. Notably this means that devm
  support for probe works correctly as probe() error will call
  devres_release_all()

- struct device_driver -> dev_groups is supported

- Simplified calling convention, no need to manually call probe().

The general usage is for situations that already know what driver to bind
and need to ensure the bind is synchronized with other logic. Call
device_driver_attach() after device_add().

If probe() returns a failure then this will be preserved up through to the
error return of device_driver_attach().

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Cornelia Huck <cohuck@redhat.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/base/base.h    | 1 -
 drivers/base/dd.c      | 3 +++
 include/linux/device.h | 2 ++
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/base/base.h b/drivers/base/base.h
index e5f9b7e656c3..404db83ee5ec 100644
--- a/drivers/base/base.h
+++ b/drivers/base/base.h
@@ -152,7 +152,6 @@ extern int driver_add_groups(struct device_driver *drv,
 			     const struct attribute_group **groups);
 extern void driver_remove_groups(struct device_driver *drv,
 				 const struct attribute_group **groups);
-int device_driver_attach(struct device_driver *drv, struct device *dev);
 void device_driver_detach(struct device *dev);
 
 extern char *make_class_name(const char *name, struct kobject *kobj);
diff --git a/drivers/base/dd.c b/drivers/base/dd.c
index 1d8012459587..daeb9b5763ae 100644
--- a/drivers/base/dd.c
+++ b/drivers/base/dd.c
@@ -471,6 +471,8 @@ static void driver_sysfs_remove(struct device *dev)
  * (It is ok to call with no other effort from a driver's probe() method.)
  *
  * This function must be called with the device lock held.
+ *
+ * Callers should prefer to use device_driver_attach() instead.
  */
 int device_bind_driver(struct device *dev)
 {
@@ -1065,6 +1067,7 @@ int device_driver_attach(struct device_driver *drv, struct device *dev)
 		return -EAGAIN;
 	return ret;
 }
+EXPORT_SYMBOL_GPL(device_driver_attach);
 
 static void __driver_attach_async_helper(void *_dev, async_cookie_t cookie)
 {
diff --git a/include/linux/device.h b/include/linux/device.h
index f1a00040fa53..d8b9c9e7d493 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -845,6 +845,8 @@ static inline void *dev_get_platdata(const struct device *dev)
  * Manual binding of a device to driver. See drivers/base/bus.c
  * for information on use.
  */
+int __must_check device_driver_attach(struct device_driver *drv,
+				      struct device *dev);
 int __must_check device_bind_driver(struct device *dev);
 void device_release_driver(struct device *dev);
 int  __must_check device_attach(struct device *dev);
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
