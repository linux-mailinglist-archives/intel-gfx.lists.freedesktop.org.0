Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2045ED21A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201D110E1F5;
	Wed, 28 Sep 2022 00:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E787510E1EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325622; x=1695861622;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qrullq7cUZFrBEYa+HyHky+O0vVDp5zPem0c43qe38k=;
 b=FrcHqLlcqApGilS2kNVr5euBcakS6aLsDubk5tfJddmPgjY+u0FhHzKC
 7phSsrm5o3ViZOj+01L0M30OaGcjgdvg/6GVDKz3jv0O7q1GuA/ti3KtN
 deBNkVHLDWa0zGy8yoJ6q4AeKWPtgE926RbRz/SNiNznOTj1Dma1trN1j
 6C1nQ9lD2zSdnmjPBHubRZr2kBZHxeQ6n8fzqg6kqtinUqyzXhuYN20s5
 NSd4Y0dF+X4sQfh22mWHotza5q3OvAdOSz2cr+d41JhsQo/1EjaHecWrL
 cl5D9+fbKoqD3v7CbTQ0OnhvqSK0Tgr+aLlvU6PjD/d8NvU76AWCffRDA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752062"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752062"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841166"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841166"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:22 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:35 -0700
Message-Id: <20220928004145.745803-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 05/15] mei: pxp: add command streamer API to the
 PXP driver
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vitaly Lubart <vitaly.lubart@intel.com>

The discrete graphics card with GSC firmware
using command streamer API hence it requires to enhance
pxp module with the new gsc_command() handler.

The handler is implemented via mei_pxp_gsc_command() which is
just a thin wrapper around mei_cldev_send_gsc_command()

Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/misc/mei/pxp/mei_pxp.c       | 25 +++++++++++++++++++++++++
 include/drm/i915_pxp_tee_interface.h |  5 +++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_pxp.c
index 5c39457e3f53..f221464c4009 100644
--- a/drivers/misc/mei/pxp/mei_pxp.c
+++ b/drivers/misc/mei/pxp/mei_pxp.c
@@ -77,10 +77,35 @@ mei_pxp_receive_message(struct device *dev, void *buffer, size_t size)
 	return byte;
 }
 
+/**
+ * mei_pxp_gsc_command() - sends a gsc command, by sending
+ * a sgl mei message to gsc and receiving reply from gsc
+ *
+ * @dev: device corresponding to the mei_cl_device
+ * @client_id: client id to send the command to
+ * @fence_id: fence id to send the command to
+ * @sg_in: scatter gather list containing addresses for rx message buffer
+ * @total_in_len: total length of data in 'in' sg, can be less than the sum of buffers sizes
+ * @sg_out: scatter gather list containing addresses for tx message buffer
+ *
+ * Return: bytes sent on Success, <0 on Failure
+ */
+static ssize_t mei_pxp_gsc_command(struct device *dev, u8 client_id, u32 fence_id,
+				   struct scatterlist *sg_in, size_t total_in_len,
+				   struct scatterlist *sg_out)
+{
+	struct mei_cl_device *cldev;
+
+	cldev = to_mei_cl_device(dev);
+
+	return mei_cldev_send_gsc_command(cldev, client_id, fence_id, sg_in, total_in_len, sg_out);
+}
+
 static const struct i915_pxp_component_ops mei_pxp_ops = {
 	.owner = THIS_MODULE,
 	.send = mei_pxp_send_message,
 	.recv = mei_pxp_receive_message,
+	.gsc_command = mei_pxp_gsc_command,
 };
 
 static int mei_component_master_bind(struct device *dev)
diff --git a/include/drm/i915_pxp_tee_interface.h b/include/drm/i915_pxp_tee_interface.h
index af593ec64469..a702b6ec17f7 100644
--- a/include/drm/i915_pxp_tee_interface.h
+++ b/include/drm/i915_pxp_tee_interface.h
@@ -8,6 +8,7 @@
 
 #include <linux/mutex.h>
 #include <linux/device.h>
+struct scatterlist;
 
 /**
  * struct i915_pxp_component_ops - ops for PXP services.
@@ -23,6 +24,10 @@ struct i915_pxp_component_ops {
 
 	int (*send)(struct device *dev, const void *message, size_t size);
 	int (*recv)(struct device *dev, void *buffer, size_t size);
+	ssize_t (*gsc_command)(struct device *dev, u8 client_id, u32 fence_id,
+			       struct scatterlist *sg_in, size_t total_in_len,
+			       struct scatterlist *sg_out);
+
 };
 
 /**
-- 
2.37.3

