Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0CD6296EE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 12:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3058110E132;
	Tue, 15 Nov 2022 11:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E1A10E132
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 11:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668510891; x=1700046891;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ixibvKAGVDl0+Jl58911WM708GGGPwm0Pi5KOZslWWM=;
 b=artW21hS040G29g/g+zmWNzMQ6WK4EOoG4mraxgZxpTNRmO+qq6IrP7R
 Ji+zPe3pjjV/VFWLcqkFrm7FeexQ7wrL7RKR1kBetJrpiY3EOhn00L1BS
 1lYSrVUVJctLU5NUpKwi3/WjPtGCauLIORkUVvjodZEu4UrrNZISmlDf/
 dGPRQ8EURMHxvsUe/XbtcaVa4kZyyG4H29pQ4+kQ1Tu/PubccD0vT5puE
 6Y/PL5/Q2+oeq+xqCzzHMAAeHTeqC2ATsD378XwkPFj9Tx3q+xfaGRJSX
 xGJ3y0mwyGuf4+EYGmxZSW3EMwDgkX5BWZcFUH2aFO7tyem8b6/q/2+sQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="309855056"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="309855056"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 03:14:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="707699597"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="707699597"
Received: from sannilnx.jer.intel.com ([10.12.26.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 03:14:48 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 15 Nov 2022 13:14:38 +0200
Message-Id: <20221115111438.1639527-1-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] mei: add timeout to send
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When driver wakes up the firmware from the low power state, it is sending
a memory ready message.
The send is done via synchronous/blocking function to ensure that firmware
is in ready state. However, in case of firmware undergoing reset send
might be block forever.
To address this issue a timeout is added to blocking write command on
the internal bus.

Introduce the __mei_cl_send_timeout function to use instead of
__mei_cl_send in cases where timeout is required.
The mei_cl_write has only two callers and there is no need to split
it into two functions.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
V2: address review comments:
 - split __mei_cl_send and __mei_cl_send_timeout
 - add units to timeout KDoc
 - use MAX_SCHEDULE_TIMEOUT to squash wait to one macro

 drivers/misc/mei/bus-fixup.c | 14 +++++++++-----
 drivers/misc/mei/bus.c       | 22 ++++++++++++++++++++--
 drivers/misc/mei/client.c    | 18 ++++++++++++++----
 drivers/misc/mei/client.h    |  2 +-
 drivers/misc/mei/main.c      |  2 +-
 drivers/misc/mei/mei_dev.h   |  2 ++
 6 files changed, 47 insertions(+), 13 deletions(-)

diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
index 71fbf0bc8453..9959b8e8e91d 100644
--- a/drivers/misc/mei/bus-fixup.c
+++ b/drivers/misc/mei/bus-fixup.c
@@ -188,17 +188,20 @@ static int mei_fwver(struct mei_cl_device *cldev)
 	return ret;
 }
 
+#define GFX_MEMORY_READY_TIMEOUT 200
+
 static int mei_gfx_memory_ready(struct mei_cl_device *cldev)
 {
 	struct mkhi_gfx_mem_ready req = {0};
-	unsigned int mode = MEI_CL_IO_TX_INTERNAL;
+	unsigned int mode = MEI_CL_IO_TX_INTERNAL | MEI_CL_IO_TX_BLOCKING;
 
 	req.hdr.group_id = MKHI_GROUP_ID_GFX;
 	req.hdr.command = MKHI_GFX_MEMORY_READY_CMD_REQ;
 	req.flags = MKHI_GFX_MEM_READY_PXP_ALLOWED;
 
 	dev_dbg(&cldev->dev, "Sending memory ready command\n");
-	return __mei_cl_send(cldev->cl, (u8 *)&req, sizeof(req), 0, mode);
+	return __mei_cl_send_timeout(cldev->cl, (u8 *)&req, sizeof(req), 0,
+				     mode, GFX_MEMORY_READY_TIMEOUT);
 }
 
 static void mei_mkhi_fix(struct mei_cl_device *cldev)
@@ -263,12 +266,13 @@ static void mei_gsc_mkhi_fix_ver(struct mei_cl_device *cldev)
 
 	if (cldev->bus->pxp_mode == MEI_DEV_PXP_INIT) {
 		ret = mei_gfx_memory_ready(cldev);
-		if (ret < 0)
+		if (ret < 0) {
 			dev_err(&cldev->dev, "memory ready command failed %d\n", ret);
-		else
+		} else {
 			dev_dbg(&cldev->dev, "memory ready command sent\n");
+			cldev->bus->pxp_mode = MEI_DEV_PXP_SETUP;
+		}
 		/* we go to reset after that */
-		cldev->bus->pxp_mode = MEI_DEV_PXP_SETUP;
 		goto out;
 	}
 
diff --git a/drivers/misc/mei/bus.c b/drivers/misc/mei/bus.c
index 1fbe127ff633..63043e8df980 100644
--- a/drivers/misc/mei/bus.c
+++ b/drivers/misc/mei/bus.c
@@ -32,8 +32,26 @@
  *
  * Return: written size bytes or < 0 on error
  */
-ssize_t __mei_cl_send(struct mei_cl *cl, const u8 *buf, size_t length, u8 vtag,
+inline ssize_t __mei_cl_send(struct mei_cl *cl, const u8 *buf, size_t length, u8 vtag,
 		      unsigned int mode)
+{
+	return __mei_cl_send_timeout(cl, buf, length, vtag, mode, MAX_SCHEDULE_TIMEOUT);
+}
+
+/**
+ * __mei_cl_send_timeout - internal client send (write)
+ *
+ * @cl: host client
+ * @buf: buffer to send
+ * @length: buffer length
+ * @vtag: virtual tag
+ * @mode: sending mode
+ * @timeout: send timeout in milliseconds for blocking writes
+ *
+ * Return: written size bytes or < 0 on error
+ */
+ssize_t __mei_cl_send_timeout(struct mei_cl *cl, const u8 *buf, size_t length, u8 vtag,
+			      unsigned int mode, unsigned long timeout)
 {
 	struct mei_device *bus;
 	struct mei_cl_cb *cb;
@@ -108,7 +126,7 @@ ssize_t __mei_cl_send(struct mei_cl *cl, const u8 *buf, size_t length, u8 vtag,
 		cb->buf.size = 0;
 	}
 
-	rets = mei_cl_write(cl, cb);
+	rets = mei_cl_write(cl, cb, timeout);
 
 	if (mode & MEI_CL_IO_SGL && rets == 0)
 		rets = length;
diff --git a/drivers/misc/mei/client.c b/drivers/misc/mei/client.c
index 6c8b71ae32c8..02c278202ad7 100644
--- a/drivers/misc/mei/client.c
+++ b/drivers/misc/mei/client.c
@@ -1954,10 +1954,11 @@ int mei_cl_irq_write(struct mei_cl *cl, struct mei_cl_cb *cb,
  *
  * @cl: host client
  * @cb: write callback with filled data
+ * @timeout: send timeout in milliseconds for blocking writes
  *
  * Return: number of bytes sent on success, <0 on failure.
  */
-ssize_t mei_cl_write(struct mei_cl *cl, struct mei_cl_cb *cb)
+ssize_t mei_cl_write(struct mei_cl *cl, struct mei_cl_cb *cb, unsigned long timeout)
 {
 	struct mei_device *dev;
 	struct mei_msg_data *buf;
@@ -2081,11 +2082,20 @@ ssize_t mei_cl_write(struct mei_cl *cl, struct mei_cl_cb *cb)
 	if (blocking && cl->writing_state != MEI_WRITE_COMPLETE) {
 
 		mutex_unlock(&dev->device_lock);
-		rets = wait_event_interruptible(cl->tx_wait,
-				cl->writing_state == MEI_WRITE_COMPLETE ||
-				(!mei_cl_is_connected(cl)));
+		rets = wait_event_interruptible_timeout(cl->tx_wait,
+							cl->writing_state == MEI_WRITE_COMPLETE ||
+							(!mei_cl_is_connected(cl)),
+							msecs_to_jiffies(timeout));
 		mutex_lock(&dev->device_lock);
+		/* clean all queue on timeout as something fatal happened */
+		if (rets == 0) {
+			rets = -ETIME;
+			mei_io_tx_list_free_cl(&dev->write_list, cl, NULL);
+			mei_io_tx_list_free_cl(&dev->write_waiting_list, cl, NULL);
+		}
 		/* wait_event_interruptible returns -ERESTARTSYS */
+		if (rets > 0)
+			rets = 0;
 		if (rets) {
 			if (signal_pending(current))
 				rets = -EINTR;
diff --git a/drivers/misc/mei/client.h b/drivers/misc/mei/client.h
index 418056fb1489..9052860bcfe0 100644
--- a/drivers/misc/mei/client.h
+++ b/drivers/misc/mei/client.h
@@ -246,7 +246,7 @@ int mei_cl_connect(struct mei_cl *cl, struct mei_me_client *me_cl,
 int mei_cl_irq_connect(struct mei_cl *cl, struct mei_cl_cb *cb,
 		       struct list_head *cmpl_list);
 int mei_cl_read_start(struct mei_cl *cl, size_t length, const struct file *fp);
-ssize_t mei_cl_write(struct mei_cl *cl, struct mei_cl_cb *cb);
+ssize_t mei_cl_write(struct mei_cl *cl, struct mei_cl_cb *cb, unsigned long timeout);
 int mei_cl_irq_write(struct mei_cl *cl, struct mei_cl_cb *cb,
 		     struct list_head *cmpl_list);
 
diff --git a/drivers/misc/mei/main.c b/drivers/misc/mei/main.c
index 930887e7e38d..632d4ae21e46 100644
--- a/drivers/misc/mei/main.c
+++ b/drivers/misc/mei/main.c
@@ -383,7 +383,7 @@ static ssize_t mei_write(struct file *file, const char __user *ubuf,
 		goto out;
 	}
 
-	rets = mei_cl_write(cl, cb);
+	rets = mei_cl_write(cl, cb, MAX_SCHEDULE_TIMEOUT);
 out:
 	mutex_unlock(&dev->device_lock);
 	return rets;
diff --git a/drivers/misc/mei/mei_dev.h b/drivers/misc/mei/mei_dev.h
index 8d8018428d9d..996b70a988be 100644
--- a/drivers/misc/mei/mei_dev.h
+++ b/drivers/misc/mei/mei_dev.h
@@ -379,6 +379,8 @@ void mei_cl_bus_rescan_work(struct work_struct *work);
 void mei_cl_bus_dev_fixup(struct mei_cl_device *dev);
 ssize_t __mei_cl_send(struct mei_cl *cl, const u8 *buf, size_t length, u8 vtag,
 		      unsigned int mode);
+ssize_t __mei_cl_send_timeout(struct mei_cl *cl, const u8 *buf, size_t length, u8 vtag,
+			      unsigned int mode, unsigned long timeout);
 ssize_t __mei_cl_recv(struct mei_cl *cl, u8 *buf, size_t length, u8 *vtag,
 		      unsigned int mode, unsigned long timeout);
 bool mei_cl_bus_rx_event(struct mei_cl *cl);
-- 
2.34.1

