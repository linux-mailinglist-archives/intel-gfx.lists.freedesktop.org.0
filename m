Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05938545891
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F260B12B23B;
	Thu,  9 Jun 2022 23:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CAD12B07D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816870; x=1686352870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JsIC00iMXaTcZYJFrVYx16QvxZEjle9HVzofGKTQkr8=;
 b=M86fmvYUvnV5WnQZTUHgljvy321OQMsaOk0ujBrlslRHsK55D0sSBvSc
 Tz2nrBAp5WcNiY6TMqCgMjSn/AYNX4l2MiqtC1ZfOo7wJuC2mKig6sKK8
 uyF/HW7wiYV4nPrL1SzpzjVDo1NVhRcMZq2eRGrJ/8+UfTs6QLDsidvE4
 oY8lQ1bUwdGV7iVfp60IIldi5/EdjsL52+LoRY2UE0NO+ysHR1X8ZrUat
 diu2t/Dtevnj6hTCfLMAMGcu2ZMUeRBz4vb/bsFA3jbINctQXH3+Tx4tO
 q9BSbKjnq14xGquDN/6584bXXe/mFnuP9q59EXwY3OkvO1jxCYjx9bexq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="363778914"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="363778914"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:04 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586414"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:03 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:43 -0700
Message-Id: <20220609231955.3632596-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] mei: bus: enable sending gsc commands
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

From: Tomas Winkler <tomas.winkler@intel.com>

GSC command is and extended header containing a scatter gather
list and without a data buffer. Using MEI_CL_IO_SGL flag,
the caller send the GSC command as a data and the function internally
moves it to the extended header.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
---
 drivers/misc/mei/bus.c     | 20 ++++++++++++++++++--
 drivers/misc/mei/mei_dev.h |  4 ++++
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/mei/bus.c b/drivers/misc/mei/bus.c
index 46aa3554e97b..225f0b04c021 100644
--- a/drivers/misc/mei/bus.c
+++ b/drivers/misc/mei/bus.c
@@ -100,9 +100,18 @@ ssize_t __mei_cl_send(struct mei_cl *cl, const u8 *buf, size_t length, u8 vtag,
 	cb->internal = !!(mode & MEI_CL_IO_TX_INTERNAL);
 	cb->blocking = !!(mode & MEI_CL_IO_TX_BLOCKING);
 	memcpy(cb->buf.data, buf, length);
+	/* hack we point data to header */
+	if (mode & MEI_CL_IO_SGL) {
+		cb->ext_hdr = (struct mei_ext_hdr *)cb->buf.data;
+		cb->buf.data = NULL;
+		cb->buf.size = 0;
+	}
 
 	rets = mei_cl_write(cl, cb);
 
+	if (mode & MEI_CL_IO_SGL && rets == 0)
+		rets = length;
+
 out:
 	mutex_unlock(&bus->device_lock);
 
@@ -205,9 +214,16 @@ ssize_t __mei_cl_recv(struct mei_cl *cl, u8 *buf, size_t length, u8 *vtag,
 		goto free;
 	}
 
-	r_length = min_t(size_t, length, cb->buf_idx);
-	memcpy(buf, cb->buf.data, r_length);
+	/* for the GSC type - copy the extended header to the buffer */
+	if (cb->ext_hdr && cb->ext_hdr->type == MEI_EXT_HDR_GSC) {
+		r_length = min_t(size_t, length, cb->ext_hdr->length * sizeof(u32));
+		memcpy(buf, cb->ext_hdr, r_length);
+	} else {
+		r_length = min_t(size_t, length, cb->buf_idx);
+		memcpy(buf, cb->buf.data, r_length);
+	}
 	rets = r_length;
+
 	if (vtag)
 		*vtag = cb->vtag;
 
diff --git a/drivers/misc/mei/mei_dev.h b/drivers/misc/mei/mei_dev.h
index 862190b297aa..5e28294d5dca 100644
--- a/drivers/misc/mei/mei_dev.h
+++ b/drivers/misc/mei/mei_dev.h
@@ -109,12 +109,16 @@ enum mei_cb_file_ops {
  * @MEI_CL_IO_TX_INTERNAL: internal communication between driver and FW
  *
  * @MEI_CL_IO_RX_NONBLOCK: recv is non-blocking
+ *
+ * @MEI_CL_IO_SGL: send command with sgl list.
  */
 enum mei_cl_io_mode {
 	MEI_CL_IO_TX_BLOCKING = BIT(0),
 	MEI_CL_IO_TX_INTERNAL = BIT(1),
 
 	MEI_CL_IO_RX_NONBLOCK = BIT(2),
+
+	MEI_CL_IO_SGL         = BIT(3),
 };
 
 /*
-- 
2.25.1

