Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 237235ED222
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363D010E211;
	Wed, 28 Sep 2022 00:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905FC10E1EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325620; x=1695861620;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V7gACTIk2OBqHx2I8UrGptu1iDb6cFXY+XrCrqCFEQc=;
 b=OsFVB9a2Dekm09BEplQQe7lY+WTK5al+SpgFCDwcdPAJr+050WQsuOVR
 nwNY+uBKL7FC0aYW1/h+LD2sNITUg5ukNho7PsaEsZPpFCKqF32nH+6+w
 8brphiKV9PctwlIf3CtlIIZeBt12ac8R7ts0jG2pjMGPjhnoYOHv7lfEz
 CBfm/nmwQNXskajL0IKthb1znCcTuVQh6H5zpj+f4M4oEBJQXdfgLN6BB
 1PaM0RruH6ki2kmkBuqQDP0vaeMkonFvy021/NF74mBsz/4OnLtvga2ZX
 IDTnGNNmmvklR6CAQT8Vm2mAIHHUVAFhnRhPc0Pta5UxWe+XYcMA5OUm3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752032"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752032"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841149"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841149"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:19 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:31 -0700
Message-Id: <20220928004145.745803-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 01/15] mei: add support to GSC extended header
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

GSC extend header is of variable size and data
is provided in a sgl list inside the header
and not in the data buffers, need to enable the path.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/misc/mei/client.c    | 55 +++++++++++++++++-------
 drivers/misc/mei/hbm.c       | 13 ++++++
 drivers/misc/mei/hw-me.c     |  7 +++-
 drivers/misc/mei/hw.h        | 81 ++++++++++++++++++++++++++++++++++++
 drivers/misc/mei/interrupt.c | 47 +++++++++++++++++----
 drivers/misc/mei/mei_dev.h   |  4 ++
 6 files changed, 184 insertions(+), 23 deletions(-)

diff --git a/drivers/misc/mei/client.c b/drivers/misc/mei/client.c
index 0b2fbe1335a7..6c8b71ae32c8 100644
--- a/drivers/misc/mei/client.c
+++ b/drivers/misc/mei/client.c
@@ -322,6 +322,7 @@ void mei_io_cb_free(struct mei_cl_cb *cb)
 
 	list_del(&cb->list);
 	kfree(cb->buf.data);
+	kfree(cb->ext_hdr);
 	kfree(cb);
 }
 
@@ -401,6 +402,7 @@ static struct mei_cl_cb *mei_io_cb_init(struct mei_cl *cl,
 	cb->buf_idx = 0;
 	cb->fop_type = type;
 	cb->vtag = 0;
+	cb->ext_hdr = NULL;
 
 	return cb;
 }
@@ -1740,6 +1742,17 @@ static inline u8 mei_ext_hdr_set_vtag(void *ext, u8 vtag)
 	return vtag_hdr->hdr.length;
 }
 
+static inline bool mei_ext_hdr_is_gsc(struct mei_ext_hdr *ext)
+{
+	return ext && ext->type == MEI_EXT_HDR_GSC;
+}
+
+static inline u8 mei_ext_hdr_set_gsc(struct mei_ext_hdr *ext, struct mei_ext_hdr *gsc_hdr)
+{
+	memcpy(ext, gsc_hdr, mei_ext_hdr_len(gsc_hdr));
+	return ext->length;
+}
+
 /**
  * mei_msg_hdr_init - allocate and initialize mei message header
  *
@@ -1752,14 +1765,17 @@ static struct mei_msg_hdr *mei_msg_hdr_init(const struct mei_cl_cb *cb)
 	size_t hdr_len;
 	struct mei_ext_meta_hdr *meta;
 	struct mei_msg_hdr *mei_hdr;
-	bool is_ext, is_vtag;
+	bool is_ext, is_hbm, is_gsc, is_vtag;
+	struct mei_ext_hdr *next_ext;
 
 	if (!cb)
 		return ERR_PTR(-EINVAL);
 
 	/* Extended header for vtag is attached only on the first fragment */
 	is_vtag = (cb->vtag && cb->buf_idx == 0);
-	is_ext = is_vtag;
+	is_hbm = cb->cl->me_cl->client_id == 0;
+	is_gsc = ((!is_hbm) && cb->cl->dev->hbm_f_gsc_supported && mei_ext_hdr_is_gsc(cb->ext_hdr));
+	is_ext = is_vtag || is_gsc;
 
 	/* Compute extended header size */
 	hdr_len = sizeof(*mei_hdr);
@@ -1771,6 +1787,9 @@ static struct mei_msg_hdr *mei_msg_hdr_init(const struct mei_cl_cb *cb)
 	if (is_vtag)
 		hdr_len += sizeof(struct mei_ext_hdr_vtag);
 
+	if (is_gsc)
+		hdr_len += mei_ext_hdr_len(cb->ext_hdr);
+
 setup_hdr:
 	mei_hdr = kzalloc(hdr_len, GFP_KERNEL);
 	if (!mei_hdr)
@@ -1785,10 +1804,20 @@ static struct mei_msg_hdr *mei_msg_hdr_init(const struct mei_cl_cb *cb)
 		goto out;
 
 	meta = (struct mei_ext_meta_hdr *)mei_hdr->extension;
+	meta->size = 0;
+	next_ext = (struct mei_ext_hdr *)meta->hdrs;
 	if (is_vtag) {
 		meta->count++;
-		meta->size += mei_ext_hdr_set_vtag(meta->hdrs, cb->vtag);
+		meta->size += mei_ext_hdr_set_vtag(next_ext, cb->vtag);
+		next_ext = mei_ext_next(next_ext);
+	}
+
+	if (is_gsc) {
+		meta->count++;
+		meta->size += mei_ext_hdr_set_gsc(next_ext, cb->ext_hdr);
+		next_ext = mei_ext_next(next_ext);
 	}
+
 out:
 	mei_hdr->length = hdr_len - sizeof(*mei_hdr);
 	return mei_hdr;
@@ -1812,14 +1841,14 @@ int mei_cl_irq_write(struct mei_cl *cl, struct mei_cl_cb *cb,
 	struct mei_msg_hdr *mei_hdr = NULL;
 	size_t hdr_len;
 	size_t hbuf_len, dr_len;
-	size_t buf_len;
+	size_t buf_len = 0;
 	size_t data_len;
 	int hbuf_slots;
 	u32 dr_slots;
 	u32 dma_len;
 	int rets;
 	bool first_chunk;
-	const void *data;
+	const void *data = NULL;
 
 	if (WARN_ON(!cl || !cl->dev))
 		return -ENODEV;
@@ -1839,8 +1868,10 @@ int mei_cl_irq_write(struct mei_cl *cl, struct mei_cl_cb *cb,
 		return 0;
 	}
 
-	buf_len = buf->size - cb->buf_idx;
-	data = buf->data + cb->buf_idx;
+	if (buf->data) {
+		buf_len = buf->size - cb->buf_idx;
+		data = buf->data + cb->buf_idx;
+	}
 	hbuf_slots = mei_hbuf_empty_slots(dev);
 	if (hbuf_slots < 0) {
 		rets = -EOVERFLOW;
@@ -1858,9 +1889,6 @@ int mei_cl_irq_write(struct mei_cl *cl, struct mei_cl_cb *cb,
 		goto err;
 	}
 
-	cl_dbg(dev, cl, "Extended Header %d vtag = %d\n",
-	       mei_hdr->extended, cb->vtag);
-
 	hdr_len = sizeof(*mei_hdr) + mei_hdr->length;
 
 	/**
@@ -1889,7 +1917,7 @@ int mei_cl_irq_write(struct mei_cl *cl, struct mei_cl_cb *cb,
 	}
 	mei_hdr->length += data_len;
 
-	if (mei_hdr->dma_ring)
+	if (mei_hdr->dma_ring && buf->data)
 		mei_dma_ring_write(dev, buf->data + cb->buf_idx, buf_len);
 	rets = mei_write_message(dev, mei_hdr, hdr_len, data, data_len);
 
@@ -1983,9 +2011,6 @@ ssize_t mei_cl_write(struct mei_cl *cl, struct mei_cl_cb *cb)
 		goto err;
 	}
 
-	cl_dbg(dev, cl, "Extended Header %d vtag = %d\n",
-	       mei_hdr->extended, cb->vtag);
-
 	hdr_len = sizeof(*mei_hdr) + mei_hdr->length;
 
 	if (rets == 0) {
@@ -2030,7 +2055,7 @@ ssize_t mei_cl_write(struct mei_cl *cl, struct mei_cl_cb *cb)
 
 	mei_hdr->length += data_len;
 
-	if (mei_hdr->dma_ring)
+	if (mei_hdr->dma_ring && buf->data)
 		mei_dma_ring_write(dev, buf->data, buf_len);
 	rets = mei_write_message(dev, mei_hdr, hdr_len, data, data_len);
 
diff --git a/drivers/misc/mei/hbm.c b/drivers/misc/mei/hbm.c
index de712cbf5d07..12a62a911e42 100644
--- a/drivers/misc/mei/hbm.c
+++ b/drivers/misc/mei/hbm.c
@@ -340,9 +340,13 @@ static int mei_hbm_capabilities_req(struct mei_device *dev)
 	req.hbm_cmd = MEI_HBM_CAPABILITIES_REQ_CMD;
 	if (dev->hbm_f_vt_supported)
 		req.capability_requested[0] |= HBM_CAP_VT;
+
 	if (dev->hbm_f_cd_supported)
 		req.capability_requested[0] |= HBM_CAP_CD;
 
+	if (dev->hbm_f_gsc_supported)
+		req.capability_requested[0] |= HBM_CAP_GSC;
+
 	ret = mei_hbm_write_message(dev, &mei_hdr, &req);
 	if (ret) {
 		dev_err(dev->dev,
@@ -1200,6 +1204,12 @@ static void mei_hbm_config_features(struct mei_device *dev)
 	     dev->version.minor_version >= HBM_MINOR_VERSION_VT))
 		dev->hbm_f_vt_supported = 1;
 
+	/* GSC support */
+	if (dev->version.major_version > HBM_MAJOR_VERSION_GSC ||
+	    (dev->version.major_version == HBM_MAJOR_VERSION_GSC &&
+	     dev->version.minor_version >= HBM_MINOR_VERSION_GSC))
+		dev->hbm_f_gsc_supported = 1;
+
 	/* Capability message Support */
 	dev->hbm_f_cap_supported = 0;
 	if (dev->version.major_version > HBM_MAJOR_VERSION_CAP ||
@@ -1367,6 +1377,9 @@ int mei_hbm_dispatch(struct mei_device *dev, struct mei_msg_hdr *hdr)
 		if (!(capability_res->capability_granted[0] & HBM_CAP_CD))
 			dev->hbm_f_cd_supported = 0;
 
+		if (!(capability_res->capability_granted[0] & HBM_CAP_GSC))
+			dev->hbm_f_gsc_supported = 0;
+
 		if (dev->hbm_f_dr_supported) {
 			if (mei_dmam_ring_alloc(dev))
 				dev_info(dev->dev, "running w/o dma ring\n");
diff --git a/drivers/misc/mei/hw-me.c b/drivers/misc/mei/hw-me.c
index 9e2f781c6ed5..da4ef0b51954 100644
--- a/drivers/misc/mei/hw-me.c
+++ b/drivers/misc/mei/hw-me.c
@@ -590,9 +590,14 @@ static int mei_me_hbuf_write(struct mei_device *dev,
 	u32 dw_cnt;
 	int empty_slots;
 
-	if (WARN_ON(!hdr || !data || hdr_len & 0x3))
+	if (WARN_ON(!hdr || hdr_len & 0x3))
 		return -EINVAL;
 
+	if (!data && data_len) {
+		dev_err(dev->dev, "wrong parameters null data with data_len = %zu\n", data_len);
+		return -EINVAL;
+	}
+
 	dev_dbg(dev->dev, MEI_HDR_FMT, MEI_HDR_PRM((struct mei_msg_hdr *)hdr));
 
 	empty_slots = mei_hbuf_empty_slots(dev);
diff --git a/drivers/misc/mei/hw.h b/drivers/misc/mei/hw.h
index e7e020dba6b1..70d405c67f0e 100644
--- a/drivers/misc/mei/hw.h
+++ b/drivers/misc/mei/hw.h
@@ -92,6 +92,12 @@
 #define HBM_MINOR_VERSION_VT               2
 #define HBM_MAJOR_VERSION_VT               2
 
+/*
+ * MEI version with GSC support
+ */
+#define HBM_MINOR_VERSION_GSC              2
+#define HBM_MAJOR_VERSION_GSC              2
+
 /*
  * MEI version with capabilities message support
  */
@@ -229,10 +235,12 @@ enum mei_cl_disconnect_status {
  *
  * @MEI_EXT_HDR_NONE: sentinel
  * @MEI_EXT_HDR_VTAG: vtag header
+ * @MEI_EXT_HDR_GSC: gsc header
  */
 enum mei_ext_hdr_type {
 	MEI_EXT_HDR_NONE = 0,
 	MEI_EXT_HDR_VTAG = 1,
+	MEI_EXT_HDR_GSC = 2,
 };
 
 /**
@@ -305,6 +313,60 @@ static inline bool mei_ext_last(struct mei_ext_meta_hdr *meta,
 	return (u8 *)ext >= (u8 *)meta + sizeof(*meta) + (meta->size * 4);
 }
 
+struct mei_gsc_sgl {
+	u32 low;
+	u32 high;
+	u32 length;
+} __packed;
+
+#define GSC_HECI_MSG_KERNEL 0
+#define GSC_HECI_MSG_USER   1
+
+#define GSC_ADDRESS_TYPE_GTT   0
+#define GSC_ADDRESS_TYPE_PPGTT 1
+#define GSC_ADDRESS_TYPE_PHYSICAL_CONTINUOUS 2 /* max of 64K */
+#define GSC_ADDRESS_TYPE_PHYSICAL_SGL 3
+
+/**
+ * struct mei_ext_hdr_gsc_h2f - extended header: gsc host to firmware interface
+ *
+ * @hdr: extended header
+ * @client_id: GSC_HECI_MSG_KERNEL or GSC_HECI_MSG_USER
+ * @addr_type: GSC_ADDRESS_TYPE_{GTT, PPGTT, PHYSICAL_CONTINUOUS, PHYSICAL_SGL}
+ * @fence_id: synchronization marker
+ * @input_address_count: number of input sgl buffers
+ * @output_address_count: number of output sgl buffers
+ * @reserved: reserved
+ * @sgl: sg list
+ */
+struct mei_ext_hdr_gsc_h2f {
+	struct mei_ext_hdr hdr;
+	u8                 client_id;
+	u8                 addr_type;
+	u32                fence_id;
+	u8                 input_address_count;
+	u8                 output_address_count;
+	u8                 reserved[2];
+	struct mei_gsc_sgl sgl[];
+} __packed;
+
+/**
+ * struct mei_ext_hdr_gsc_f2h - gsc firmware to host interface
+ *
+ * @hdr: extended header
+ * @client_id: GSC_HECI_MSG_KERNEL or GSC_HECI_MSG_USER
+ * @reserved: reserved
+ * @fence_id: synchronization marker
+ * @written: number of bytes written to firmware
+ */
+struct mei_ext_hdr_gsc_f2h {
+	struct mei_ext_hdr hdr;
+	u8                 client_id;
+	u8                 reserved;
+	u32                fence_id;
+	u32                written;
+} __packed;
+
 /**
  * mei_ext_next - following extended header on the TLV list
  *
@@ -320,6 +382,21 @@ static inline struct mei_ext_hdr *mei_ext_next(struct mei_ext_hdr *ext)
 	return (struct mei_ext_hdr *)((u8 *)ext + (ext->length * 4));
 }
 
+/**
+ * mei_ext_hdr_len - get ext header length in bytes
+ *
+ * @ext: extend header
+ *
+ * Return: extend header length in bytes
+ */
+static inline u32 mei_ext_hdr_len(const struct mei_ext_hdr *ext)
+{
+	if (!ext)
+		return 0;
+
+	return ext->length * sizeof(u32);
+}
+
 /**
  * struct mei_msg_hdr - MEI BUS Interface Section
  *
@@ -682,6 +759,10 @@ struct hbm_dma_ring_ctrl {
 
 /* virtual tag supported */
 #define HBM_CAP_VT BIT(0)
+
+/* gsc extended header support */
+#define HBM_CAP_GSC BIT(1)
+
 /* client dma supported */
 #define HBM_CAP_CD BIT(2)
 
diff --git a/drivers/misc/mei/interrupt.c b/drivers/misc/mei/interrupt.c
index 0706322154cb..0a0e984e5673 100644
--- a/drivers/misc/mei/interrupt.c
+++ b/drivers/misc/mei/interrupt.c
@@ -98,9 +98,12 @@ static int mei_cl_irq_read_msg(struct mei_cl *cl,
 	struct mei_device *dev = cl->dev;
 	struct mei_cl_cb *cb;
 
+	struct mei_ext_hdr_vtag *vtag_hdr = NULL;
+	struct mei_ext_hdr_gsc_f2h *gsc_f2h = NULL;
+
 	size_t buf_sz;
 	u32 length;
-	int ext_len;
+	u32 ext_len;
 
 	length = mei_hdr->length;
 	ext_len = 0;
@@ -122,18 +125,24 @@ static int mei_cl_irq_read_msg(struct mei_cl *cl,
 	}
 
 	if (mei_hdr->extended) {
-		struct mei_ext_hdr *ext;
-		struct mei_ext_hdr_vtag *vtag_hdr = NULL;
-
-		ext = mei_ext_begin(meta);
+		struct mei_ext_hdr *ext = mei_ext_begin(meta);
 		do {
 			switch (ext->type) {
 			case MEI_EXT_HDR_VTAG:
 				vtag_hdr = (struct mei_ext_hdr_vtag *)ext;
 				break;
+			case MEI_EXT_HDR_GSC:
+				gsc_f2h = (struct mei_ext_hdr_gsc_f2h *)ext;
+				cb->ext_hdr = kzalloc(sizeof(*gsc_f2h), GFP_KERNEL);
+				if (!cb->ext_hdr) {
+					cb->status = -ENOMEM;
+					goto discard;
+				}
+				break;
 			case MEI_EXT_HDR_NONE:
 				fallthrough;
 			default:
+				cl_err(dev, cl, "unknown extended header\n");
 				cb->status = -EPROTO;
 				break;
 			}
@@ -141,12 +150,14 @@ static int mei_cl_irq_read_msg(struct mei_cl *cl,
 			ext = mei_ext_next(ext);
 		} while (!mei_ext_last(meta, ext));
 
-		if (!vtag_hdr) {
-			cl_dbg(dev, cl, "vtag not found in extended header.\n");
+		if (!vtag_hdr && !gsc_f2h) {
+			cl_dbg(dev, cl, "no vtag or gsc found in extended header.\n");
 			cb->status = -EPROTO;
 			goto discard;
 		}
+	}
 
+	if (vtag_hdr) {
 		cl_dbg(dev, cl, "vtag: %d\n", vtag_hdr->vtag);
 		if (cb->vtag && cb->vtag != vtag_hdr->vtag) {
 			cl_err(dev, cl, "mismatched tag: %d != %d\n",
@@ -157,6 +168,28 @@ static int mei_cl_irq_read_msg(struct mei_cl *cl,
 		cb->vtag = vtag_hdr->vtag;
 	}
 
+	if (gsc_f2h) {
+		u32 ext_hdr_len = mei_ext_hdr_len(&gsc_f2h->hdr);
+
+		if (!dev->hbm_f_gsc_supported) {
+			cl_err(dev, cl, "gsc extended header is not supported\n");
+			cb->status = -EPROTO;
+			goto discard;
+		}
+
+		if (length) {
+			cl_err(dev, cl, "no data allowed in cb with gsc\n");
+			cb->status = -EPROTO;
+			goto discard;
+		}
+		if (ext_hdr_len > sizeof(*gsc_f2h)) {
+			cl_err(dev, cl, "gsc extended header is too big %u\n", ext_hdr_len);
+			cb->status = -EPROTO;
+			goto discard;
+		}
+		memcpy(cb->ext_hdr, gsc_f2h, ext_hdr_len);
+	}
+
 	if (!mei_cl_is_connected(cl)) {
 		cl_dbg(dev, cl, "not connected\n");
 		cb->status = -ENODEV;
diff --git a/drivers/misc/mei/mei_dev.h b/drivers/misc/mei/mei_dev.h
index 6bb3e1ba9ded..31784bbc2d2a 100644
--- a/drivers/misc/mei/mei_dev.h
+++ b/drivers/misc/mei/mei_dev.h
@@ -206,6 +206,7 @@ struct mei_cl;
  * @status: io status of the cb
  * @internal: communication between driver and FW flag
  * @blocking: transmission blocking mode
+ * @ext_hdr: extended header
  */
 struct mei_cl_cb {
 	struct list_head list;
@@ -218,6 +219,7 @@ struct mei_cl_cb {
 	int status;
 	u32 internal:1;
 	u32 blocking:1;
+	struct mei_ext_hdr *ext_hdr;
 };
 
 /**
@@ -494,6 +496,7 @@ struct mei_dev_timeouts {
  * @hbm_f_vt_supported  : hbm feature vtag supported
  * @hbm_f_cap_supported : hbm feature capabilities message supported
  * @hbm_f_cd_supported  : hbm feature client dma supported
+ * @hbm_f_gsc_supported : hbm feature gsc supported
  *
  * @fw_ver : FW versions
  *
@@ -585,6 +588,7 @@ struct mei_device {
 	unsigned int hbm_f_vt_supported:1;
 	unsigned int hbm_f_cap_supported:1;
 	unsigned int hbm_f_cd_supported:1;
+	unsigned int hbm_f_gsc_supported:1;
 
 	struct mei_fw_version fw_ver[MEI_MAX_FW_VER_BLOCKS];
 
-- 
2.37.3

