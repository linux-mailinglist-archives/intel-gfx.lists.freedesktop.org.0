Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A57A5ED220
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35B110E1EA;
	Wed, 28 Sep 2022 00:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24AD010E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325621; x=1695861621;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pPxxCpQfb59LZ/smw1siW1Hp/IKwju0hdiEVRjtRuHY=;
 b=naJyHgDy6h6TgD8qDyPe/YMvvNtsEuyAr/WVhQbx+T6AmdXnGDNQGjx7
 ANS6Sq1JE2ELcyTo2PN9rE+8GuUloEiZJaadyK5M35znh79+zg9wNOaVq
 Rie+pnAJE53vzLKdVmKtKmW3UMtrTJgVpwijHvFYbXG+i/V7AkNQbB7w6
 gndrajBDkRsJlOJivRmruGJezpS1CuEQNN+V78fbIG8GBNyG2HnEr7oXU
 behBDw8V+AYdJ298bbNmOGUhMA0CHB0CvTESYb8U93MyFyfSCt9necVkK
 K63WtgRYIB7nGzl3xI2wJcd8kL0KgmKwwfzzx8tVLIoKG4udDU9JuVGGs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752047"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752047"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841159"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841159"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:20 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:32 -0700
Message-Id: <20220928004145.745803-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 02/15] mei: bus: enable sending gsc commands
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

From: Tomas Winkler <tomas.winkler@intel.com>

GSC command is and extended header containing a scatter gather
list and without a data buffer. Using MEI_CL_IO_SGL flag,
the caller send the GSC command as a data and the function internally
moves it to the extended header.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
index 31784bbc2d2a..8d8018428d9d 100644
--- a/drivers/misc/mei/mei_dev.h
+++ b/drivers/misc/mei/mei_dev.h
@@ -116,12 +116,16 @@ enum mei_cb_file_ops {
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
2.37.3

