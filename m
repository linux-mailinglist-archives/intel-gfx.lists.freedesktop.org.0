Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E191554588A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351C312B032;
	Thu,  9 Jun 2022 23:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CBD12B032
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816864; x=1686352864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xajT0slXXV8lWNvgRQctZQhhsHAmsiObpseI8a5A0CE=;
 b=Wyg0F5aIoO7tUp0MhKqoQFmAff44Fc4mqPu4PNl1izCWHhDk3LKnY8Sn
 yDB0LXOpJFu84W5RZXsCpLzgjFEXl4UG+NZHspBWDm9LnQpmWmC/v0KtH
 8os74U+el7TqlAPnKFkI5lflE9qcLanHrp5FQ+dej9EOwRPfp22Gtmo0m
 pSBptqeVZHGSvkvuWhWKuqqHQ5bZO0Fjne4YrZY1Sfhe6oNw6eTjVomaL
 qxT1WF1zi2hy+LaFqgS5AbHWt1Sd0+gQP79KAe6hMrogM5jLe2t7ipjqv
 D24uG93lNJLMtnWxnZ/Qs2qIza5GzSKBcasy+eQYlIT+jgJVjNHyjJbHV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="302824379"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="302824379"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:04 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586422"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:04 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:44 -0700
Message-Id: <20220609231955.3632596-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] mei: bus: extend bus API to support
 command streamer API
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vitaly Lubart <vitaly.lubart@intel.com>

Add gsc command to the mei client bus API.

Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/misc/mei/bus.c     | 125 +++++++++++++++++++++++++++++++++++++
 include/linux/mei_cl_bus.h |   6 ++
 2 files changed, 131 insertions(+)

diff --git a/drivers/misc/mei/bus.c b/drivers/misc/mei/bus.c
index 225f0b04c021..fc885ba94b36 100644
--- a/drivers/misc/mei/bus.c
+++ b/drivers/misc/mei/bus.c
@@ -838,6 +838,131 @@ int mei_cldev_disable(struct mei_cl_device *cldev)
 }
 EXPORT_SYMBOL_GPL(mei_cldev_disable);
 
+/**
+ * mei_cldev_send_gsc_command - sends a gsc command, by sending
+ * a gsl mei message to gsc and receiving reply from gsc
+ *
+ * @cldev: me client device
+ * @client_id: client id to send the command to
+ * @fence_id: fence id to send the command to
+ * @sg_in: scatter gather list containing addresses for rx message buffer
+ * @total_in_len: total length of data in 'in' sg, can be less than the sum of buffers sizes
+ * @sg_out: scatter gather list containing addresses for tx message buffer
+ *
+ * Return:
+ *  * written size in bytes
+ *  * < 0 on error
+ */
+ssize_t mei_cldev_send_gsc_command(struct mei_cl_device *cldev,
+				   u8 client_id, u32 fence_id,
+				   struct scatterlist *sg_in,
+				   size_t total_in_len,
+				   struct scatterlist *sg_out)
+{
+	struct mei_cl *cl;
+	struct mei_device *bus;
+	ssize_t ret = 0;
+
+	struct mei_ext_hdr_gsc_h2f *ext_hdr;
+	size_t buf_sz = sizeof(struct mei_ext_hdr_gsc_h2f);
+	int sg_out_nents, sg_in_nents;
+	int i;
+	struct scatterlist *sg;
+	struct mei_ext_hdr_gsc_f2h rx_msg;
+	unsigned int sg_len;
+
+	if (!cldev || !sg_in || !sg_out)
+		return -EINVAL;
+
+	cl = cldev->cl;
+	bus = cldev->bus;
+
+	dev_dbg(bus->dev, "client_id %u, fence_id %u\n", client_id, fence_id);
+
+	if (!bus->hbm_f_gsc_supported)
+		return -EOPNOTSUPP;
+
+	sg_out_nents = sg_nents(sg_out);
+	sg_in_nents = sg_nents(sg_in);
+	/* at least one entry in tx and rx sgls must be present */
+	if (sg_out_nents <= 0 || sg_in_nents <= 0)
+		return -EINVAL;
+
+	buf_sz += (sg_out_nents + sg_in_nents) * sizeof(struct mei_gsc_sgl);
+	ext_hdr = kzalloc(buf_sz, GFP_KERNEL);
+	if (!ext_hdr)
+		return -ENOMEM;
+
+	/* construct the GSC message */
+	ext_hdr->hdr.type = MEI_EXT_HDR_GSC;
+	ext_hdr->hdr.length = buf_sz / sizeof(u32); /* length is in dw */
+
+	ext_hdr->client_id = client_id;
+	ext_hdr->addr_type = GSC_ADDRESS_TYPE_PHYSICAL_SGL;
+	ext_hdr->fence_id = fence_id;
+	ext_hdr->input_address_count = sg_in_nents;
+	ext_hdr->output_address_count = sg_out_nents;
+	ext_hdr->reserved[0] = 0;
+	ext_hdr->reserved[1] = 0;
+
+	/* copy in-sgl to the message */
+	for (i = 0, sg = sg_in; i < sg_in_nents; i++, sg++) {
+		ext_hdr->sgl[i].low = lower_32_bits(sg_dma_address(sg));
+		ext_hdr->sgl[i].high = upper_32_bits(sg_dma_address(sg));
+		sg_len = min_t(unsigned int, sg_dma_len(sg), PAGE_SIZE);
+		ext_hdr->sgl[i].length = (sg_len <= total_in_len) ? sg_len : total_in_len;
+		total_in_len -= ext_hdr->sgl[i].length;
+	}
+
+	/* copy out-sgl to the message */
+	for (i = sg_in_nents, sg = sg_out; i < sg_in_nents + sg_out_nents; i++, sg++) {
+		ext_hdr->sgl[i].low = lower_32_bits(sg_dma_address(sg));
+		ext_hdr->sgl[i].high = upper_32_bits(sg_dma_address(sg));
+		sg_len = min_t(unsigned int, sg_dma_len(sg), PAGE_SIZE);
+		ext_hdr->sgl[i].length = sg_len;
+	}
+
+	/* send the message to GSC */
+	ret = __mei_cl_send(cl, (u8 *)ext_hdr, buf_sz, 0, MEI_CL_IO_SGL);
+	if (ret < 0) {
+		dev_err(bus->dev, "__mei_cl_send failed, returned %zd\n", ret);
+		goto end;
+	}
+	if (ret != buf_sz) {
+		dev_err(bus->dev, "__mei_cl_send returned %zd instead of expected %zd\n",
+			ret, buf_sz);
+		ret = -EIO;
+		goto end;
+	}
+
+	/* receive the reply from GSC, note that at this point sg_in should contain the reply */
+	ret = __mei_cl_recv(cl, (u8 *)&rx_msg, sizeof(rx_msg), NULL, MEI_CL_IO_SGL, 0);
+
+	if (ret != sizeof(rx_msg)) {
+		dev_err(bus->dev, "__mei_cl_recv returned %zd instead of expected %zd\n",
+			ret, sizeof(rx_msg));
+		if (ret >= 0)
+			ret = -EIO;
+		goto end;
+	}
+
+	/* check rx_msg.client_id and rx_msg.fence_id match the ones we send */
+	if (rx_msg.client_id != client_id || rx_msg.fence_id != fence_id) {
+		dev_err(bus->dev, "received client_id/fence_id  %u/%u  instead of %u/%u sent\n",
+			rx_msg.client_id, rx_msg.fence_id, client_id, fence_id);
+		ret = -EFAULT;
+		goto end;
+	}
+
+	dev_dbg(bus->dev, "gsc command: successfully written %u bytes\n",  rx_msg.written);
+	ret = rx_msg.written;
+
+end:
+	kfree(ext_hdr);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(mei_cldev_send_gsc_command);
+
 /**
  * mei_cl_device_find - find matching entry in the driver id table
  *
diff --git a/include/linux/mei_cl_bus.h b/include/linux/mei_cl_bus.h
index df1fab44ea5c..308dc9155ad6 100644
--- a/include/linux/mei_cl_bus.h
+++ b/include/linux/mei_cl_bus.h
@@ -8,6 +8,7 @@
 #include <linux/device.h>
 #include <linux/uuid.h>
 #include <linux/mod_devicetable.h>
+#include <linux/scatterlist.h>
 
 struct mei_cl_device;
 struct mei_device;
@@ -116,6 +117,11 @@ void mei_cldev_set_drvdata(struct mei_cl_device *cldev, void *data);
 int mei_cldev_enable(struct mei_cl_device *cldev);
 int mei_cldev_disable(struct mei_cl_device *cldev);
 bool mei_cldev_enabled(const struct mei_cl_device *cldev);
+ssize_t mei_cldev_send_gsc_command(struct mei_cl_device *cldev,
+				   u8 client_id, u32 fence_id,
+				   struct scatterlist *sg_in,
+				   size_t total_in_len,
+				   struct scatterlist *sg_out);
 
 void *mei_cldev_dma_map(struct mei_cl_device *cldev, u8 buffer_id, size_t size);
 int mei_cldev_dma_unmap(struct mei_cl_device *cldev);
-- 
2.25.1

