Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 668673AB5F8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 16:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7DC6E909;
	Thu, 17 Jun 2021 14:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202E36E907;
 Thu, 17 Jun 2021 14:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ujRFjTI8vtF5cVjWAvU/yHpeu7U6TIHTjoSCC7BIhA0=; b=CW9q0fwPMPgbNtZR0pGclP5A0U
 RDVk12Js6lpyVjuSm/bT4eKO+jC6/FZPPw+u5XiO/VpUe6XL4EHqXn/J0Ileb7fT2Q01/7hWBTgET
 VRwQRwIX8BtJc68VXxv7yEH9Pp1PWCuw4XFzYJaJ+NLa/cvV6Y8wC/5klF6atWbX8XMIZBJ8/KsMM
 DCgJ5Pqns7BOy8JpFjvMOLwYoZxMbA4jqJ2b8V5VUPJmjSsqWXyl0e4KDTRtZ/updE9DJTxCHLshE
 OsxD1XT2lXrE7vOscpSpl/JR6Pq9T0mIKNJIZtypA5UKtYvsmQpQFdY9x9HISXtIzexnGZMAlfo35
 b0Y51YWw==;
Received: from [2001:4bb8:19b:fdce:dccf:26cc:e207:71f6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltsyW-009Dsc-Dp; Thu, 17 Jun 2021 14:26:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Thu, 17 Jun 2021 16:22:18 +0200
Message-Id: <20210617142218.1877096-11-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210617142218.1877096-1-hch@lst.de>
References: <20210617142218.1877096-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 10/10] vfio/mbochs: Convert to use
 vfio_register_group_dev()
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

This is straightforward conversion, the mdev_state is actually serving as
the vfio_device and we can replace all the mdev_get_drvdata()'s and the
wonky dead code with a simple container_of().

Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 samples/vfio-mdev/mbochs.c | 163 +++++++++++++++++++++----------------
 1 file changed, 91 insertions(+), 72 deletions(-)

diff --git a/samples/vfio-mdev/mbochs.c b/samples/vfio-mdev/mbochs.c
index 881ef9a7296f..6c0f229db36a 100644
--- a/samples/vfio-mdev/mbochs.c
+++ b/samples/vfio-mdev/mbochs.c
@@ -130,6 +130,7 @@ static struct class	*mbochs_class;
 static struct cdev	mbochs_cdev;
 static struct device	mbochs_dev;
 static int		mbochs_used_mbytes;
+static const struct vfio_device_ops mbochs_dev_ops;
 
 struct vfio_region_info_ext {
 	struct vfio_region_info          base;
@@ -160,6 +161,7 @@ struct mbochs_dmabuf {
 
 /* State of each mdev device */
 struct mdev_state {
+	struct vfio_device vdev;
 	u8 *vconfig;
 	u64 bar_mask[3];
 	u32 memory_bar_mask;
@@ -425,11 +427,9 @@ static void handle_edid_blob(struct mdev_state *mdev_state, u16 offset,
 		memcpy(buf, mdev_state->edid_blob + offset, count);
 }
 
-static ssize_t mdev_access(struct mdev_device *mdev, char *buf, size_t count,
-			   loff_t pos, bool is_write)
+static ssize_t mdev_access(struct mdev_state *mdev_state, char *buf,
+			   size_t count, loff_t pos, bool is_write)
 {
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
-	struct device *dev = mdev_dev(mdev);
 	struct page *pg;
 	loff_t poff;
 	char *map;
@@ -478,7 +478,7 @@ static ssize_t mdev_access(struct mdev_device *mdev, char *buf, size_t count,
 		put_page(pg);
 
 	} else {
-		dev_dbg(dev, "%s: %s @0x%llx (unhandled)\n",
+		dev_dbg(mdev_state->vdev.dev, "%s: %s @0x%llx (unhandled)\n",
 			__func__, is_write ? "WR" : "RD", pos);
 		ret = -1;
 		goto accessfailed;
@@ -493,9 +493,8 @@ static ssize_t mdev_access(struct mdev_device *mdev, char *buf, size_t count,
 	return ret;
 }
 
-static int mbochs_reset(struct mdev_device *mdev)
+static int mbochs_reset(struct mdev_state *mdev_state)
 {
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
 	u32 size64k = mdev_state->memsize / (64 * 1024);
 	int i;
 
@@ -506,12 +505,13 @@ static int mbochs_reset(struct mdev_device *mdev)
 	return 0;
 }
 
-static int mbochs_create(struct mdev_device *mdev)
+static int mbochs_probe(struct mdev_device *mdev)
 {
 	const struct mbochs_type *type =
 		&mbochs_types[mdev_get_type_group_id(mdev)];
 	struct device *dev = mdev_dev(mdev);
 	struct mdev_state *mdev_state;
+	int ret = -ENOMEM;
 
 	if (type->mbytes + mbochs_used_mbytes > max_mbytes)
 		return -ENOMEM;
@@ -519,6 +519,7 @@ static int mbochs_create(struct mdev_device *mdev)
 	mdev_state = kzalloc(sizeof(struct mdev_state), GFP_KERNEL);
 	if (mdev_state == NULL)
 		return -ENOMEM;
+	vfio_init_group_dev(&mdev_state->vdev, &mdev->dev, &mbochs_dev_ops);
 
 	mdev_state->vconfig = kzalloc(MBOCHS_CONFIG_SPACE_SIZE, GFP_KERNEL);
 	if (mdev_state->vconfig == NULL)
@@ -537,7 +538,6 @@ static int mbochs_create(struct mdev_device *mdev)
 
 	mutex_init(&mdev_state->ops_lock);
 	mdev_state->mdev = mdev;
-	mdev_set_drvdata(mdev, mdev_state);
 	INIT_LIST_HEAD(&mdev_state->dmabufs);
 	mdev_state->next_id = 1;
 
@@ -547,32 +547,38 @@ static int mbochs_create(struct mdev_device *mdev)
 	mdev_state->edid_regs.edid_offset = MBOCHS_EDID_BLOB_OFFSET;
 	mdev_state->edid_regs.edid_max_size = sizeof(mdev_state->edid_blob);
 	mbochs_create_config_space(mdev_state);
-	mbochs_reset(mdev);
+	mbochs_reset(mdev_state);
 
 	mbochs_used_mbytes += type->mbytes;
+
+	ret = vfio_register_group_dev(&mdev_state->vdev);
+	if (ret)
+		goto err_mem;
+	dev_set_drvdata(&mdev->dev, mdev_state);
 	return 0;
 
 err_mem:
 	kfree(mdev_state->vconfig);
 	kfree(mdev_state);
-	return -ENOMEM;
+	return ret;
 }
 
-static int mbochs_remove(struct mdev_device *mdev)
+static void mbochs_remove(struct mdev_device *mdev)
 {
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
+	struct mdev_state *mdev_state = dev_get_drvdata(&mdev->dev);
 
 	mbochs_used_mbytes -= mdev_state->type->mbytes;
-	mdev_set_drvdata(mdev, NULL);
+	vfio_unregister_group_dev(&mdev_state->vdev);
 	kfree(mdev_state->pages);
 	kfree(mdev_state->vconfig);
 	kfree(mdev_state);
-	return 0;
 }
 
-static ssize_t mbochs_read(struct mdev_device *mdev, char __user *buf,
+static ssize_t mbochs_read(struct vfio_device *vdev, char __user *buf,
 			   size_t count, loff_t *ppos)
 {
+	struct mdev_state *mdev_state =
+		container_of(vdev, struct mdev_state, vdev);
 	unsigned int done = 0;
 	int ret;
 
@@ -582,7 +588,7 @@ static ssize_t mbochs_read(struct mdev_device *mdev, char __user *buf,
 		if (count >= 4 && !(*ppos % 4)) {
 			u32 val;
 
-			ret =  mdev_access(mdev, (char *)&val, sizeof(val),
+			ret =  mdev_access(mdev_state, (char *)&val, sizeof(val),
 					   *ppos, false);
 			if (ret <= 0)
 				goto read_err;
@@ -594,7 +600,7 @@ static ssize_t mbochs_read(struct mdev_device *mdev, char __user *buf,
 		} else if (count >= 2 && !(*ppos % 2)) {
 			u16 val;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev_state, (char *)&val, sizeof(val),
 					  *ppos, false);
 			if (ret <= 0)
 				goto read_err;
@@ -606,7 +612,7 @@ static ssize_t mbochs_read(struct mdev_device *mdev, char __user *buf,
 		} else {
 			u8 val;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev_state, (char *)&val, sizeof(val),
 					  *ppos, false);
 			if (ret <= 0)
 				goto read_err;
@@ -629,9 +635,11 @@ static ssize_t mbochs_read(struct mdev_device *mdev, char __user *buf,
 	return -EFAULT;
 }
 
-static ssize_t mbochs_write(struct mdev_device *mdev, const char __user *buf,
+static ssize_t mbochs_write(struct vfio_device *vdev, const char __user *buf,
 			    size_t count, loff_t *ppos)
 {
+	struct mdev_state *mdev_state =
+		container_of(vdev, struct mdev_state, vdev);
 	unsigned int done = 0;
 	int ret;
 
@@ -644,7 +652,7 @@ static ssize_t mbochs_write(struct mdev_device *mdev, const char __user *buf,
 			if (copy_from_user(&val, buf, sizeof(val)))
 				goto write_err;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev_state, (char *)&val, sizeof(val),
 					  *ppos, true);
 			if (ret <= 0)
 				goto write_err;
@@ -656,7 +664,7 @@ static ssize_t mbochs_write(struct mdev_device *mdev, const char __user *buf,
 			if (copy_from_user(&val, buf, sizeof(val)))
 				goto write_err;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev_state, (char *)&val, sizeof(val),
 					  *ppos, true);
 			if (ret <= 0)
 				goto write_err;
@@ -668,7 +676,7 @@ static ssize_t mbochs_write(struct mdev_device *mdev, const char __user *buf,
 			if (copy_from_user(&val, buf, sizeof(val)))
 				goto write_err;
 
-			ret = mdev_access(mdev, (char *)&val, sizeof(val),
+			ret = mdev_access(mdev_state, (char *)&val, sizeof(val),
 					  *ppos, true);
 			if (ret <= 0)
 				goto write_err;
@@ -754,9 +762,10 @@ static const struct vm_operations_struct mbochs_region_vm_ops = {
 	.fault = mbochs_region_vm_fault,
 };
 
-static int mbochs_mmap(struct mdev_device *mdev, struct vm_area_struct *vma)
+static int mbochs_mmap(struct vfio_device *vdev, struct vm_area_struct *vma)
 {
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
+	struct mdev_state *mdev_state =
+		container_of(vdev, struct mdev_state, vdev);
 
 	if (vma->vm_pgoff != MBOCHS_MEMORY_BAR_OFFSET >> PAGE_SHIFT)
 		return -EINVAL;
@@ -963,7 +972,7 @@ mbochs_dmabuf_find_by_id(struct mdev_state *mdev_state, u32 id)
 static int mbochs_dmabuf_export(struct mbochs_dmabuf *dmabuf)
 {
 	struct mdev_state *mdev_state = dmabuf->mdev_state;
-	struct device *dev = mdev_dev(mdev_state->mdev);
+	struct device *dev = mdev_state->vdev.dev;
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 	struct dma_buf *buf;
 
@@ -991,15 +1000,10 @@ static int mbochs_dmabuf_export(struct mbochs_dmabuf *dmabuf)
 	return 0;
 }
 
-static int mbochs_get_region_info(struct mdev_device *mdev,
+static int mbochs_get_region_info(struct mdev_state *mdev_state,
 				  struct vfio_region_info_ext *ext)
 {
 	struct vfio_region_info *region_info = &ext->base;
-	struct mdev_state *mdev_state;
-
-	mdev_state = mdev_get_drvdata(mdev);
-	if (!mdev_state)
-		return -EINVAL;
 
 	if (region_info->index >= MBOCHS_NUM_REGIONS)
 		return -EINVAL;
@@ -1047,15 +1051,13 @@ static int mbochs_get_region_info(struct mdev_device *mdev,
 	return 0;
 }
 
-static int mbochs_get_irq_info(struct mdev_device *mdev,
-			       struct vfio_irq_info *irq_info)
+static int mbochs_get_irq_info(struct vfio_irq_info *irq_info)
 {
 	irq_info->count = 0;
 	return 0;
 }
 
-static int mbochs_get_device_info(struct mdev_device *mdev,
-				  struct vfio_device_info *dev_info)
+static int mbochs_get_device_info(struct vfio_device_info *dev_info)
 {
 	dev_info->flags = VFIO_DEVICE_FLAGS_PCI;
 	dev_info->num_regions = MBOCHS_NUM_REGIONS;
@@ -1063,11 +1065,9 @@ static int mbochs_get_device_info(struct mdev_device *mdev,
 	return 0;
 }
 
-static int mbochs_query_gfx_plane(struct mdev_device *mdev,
+static int mbochs_query_gfx_plane(struct mdev_state *mdev_state,
 				  struct vfio_device_gfx_plane_info *plane)
 {
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
-	struct device *dev = mdev_dev(mdev);
 	struct mbochs_dmabuf *dmabuf;
 	struct mbochs_mode mode;
 	int ret;
@@ -1121,18 +1121,16 @@ static int mbochs_query_gfx_plane(struct mdev_device *mdev,
 done:
 	if (plane->drm_plane_type == DRM_PLANE_TYPE_PRIMARY &&
 	    mdev_state->active_id != plane->dmabuf_id) {
-		dev_dbg(dev, "%s: primary: %d => %d\n", __func__,
-			mdev_state->active_id, plane->dmabuf_id);
+		dev_dbg(mdev_state->vdev.dev, "%s: primary: %d => %d\n",
+			__func__, mdev_state->active_id, plane->dmabuf_id);
 		mdev_state->active_id = plane->dmabuf_id;
 	}
 	mutex_unlock(&mdev_state->ops_lock);
 	return 0;
 }
 
-static int mbochs_get_gfx_dmabuf(struct mdev_device *mdev,
-				 u32 id)
+static int mbochs_get_gfx_dmabuf(struct mdev_state *mdev_state, u32 id)
 {
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
 	struct mbochs_dmabuf *dmabuf;
 
 	mutex_lock(&mdev_state->ops_lock);
@@ -1154,9 +1152,11 @@ static int mbochs_get_gfx_dmabuf(struct mdev_device *mdev,
 	return dma_buf_fd(dmabuf->buf, 0);
 }
 
-static long mbochs_ioctl(struct mdev_device *mdev, unsigned int cmd,
-			unsigned long arg)
+static long mbochs_ioctl(struct vfio_device *vdev, unsigned int cmd,
+			 unsigned long arg)
 {
+	struct mdev_state *mdev_state =
+		container_of(vdev, struct mdev_state, vdev);
 	int ret = 0;
 	unsigned long minsz, outsz;
 
@@ -1173,7 +1173,7 @@ static long mbochs_ioctl(struct mdev_device *mdev, unsigned int cmd,
 		if (info.argsz < minsz)
 			return -EINVAL;
 
-		ret = mbochs_get_device_info(mdev, &info);
+		ret = mbochs_get_device_info(&info);
 		if (ret)
 			return ret;
 
@@ -1197,7 +1197,7 @@ static long mbochs_ioctl(struct mdev_device *mdev, unsigned int cmd,
 		if (outsz > sizeof(info))
 			return -EINVAL;
 
-		ret = mbochs_get_region_info(mdev, &info);
+		ret = mbochs_get_region_info(mdev_state, &info);
 		if (ret)
 			return ret;
 
@@ -1220,7 +1220,7 @@ static long mbochs_ioctl(struct mdev_device *mdev, unsigned int cmd,
 		    (info.index >= VFIO_PCI_NUM_IRQS))
 			return -EINVAL;
 
-		ret = mbochs_get_irq_info(mdev, &info);
+		ret = mbochs_get_irq_info(&info);
 		if (ret)
 			return ret;
 
@@ -1243,7 +1243,7 @@ static long mbochs_ioctl(struct mdev_device *mdev, unsigned int cmd,
 		if (plane.argsz < minsz)
 			return -EINVAL;
 
-		ret = mbochs_query_gfx_plane(mdev, &plane);
+		ret = mbochs_query_gfx_plane(mdev_state, &plane);
 		if (ret)
 			return ret;
 
@@ -1260,19 +1260,19 @@ static long mbochs_ioctl(struct mdev_device *mdev, unsigned int cmd,
 		if (get_user(dmabuf_id, (__u32 __user *)arg))
 			return -EFAULT;
 
-		return mbochs_get_gfx_dmabuf(mdev, dmabuf_id);
+		return mbochs_get_gfx_dmabuf(mdev_state, dmabuf_id);
 	}
 
 	case VFIO_DEVICE_SET_IRQS:
 		return -EINVAL;
 
 	case VFIO_DEVICE_RESET:
-		return mbochs_reset(mdev);
+		return mbochs_reset(mdev_state);
 	}
 	return -ENOTTY;
 }
 
-static int mbochs_open(struct mdev_device *mdev)
+static int mbochs_open(struct vfio_device *vdev)
 {
 	if (!try_module_get(THIS_MODULE))
 		return -ENODEV;
@@ -1280,9 +1280,10 @@ static int mbochs_open(struct mdev_device *mdev)
 	return 0;
 }
 
-static void mbochs_close(struct mdev_device *mdev)
+static void mbochs_close(struct vfio_device *vdev)
 {
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
+	struct mdev_state *mdev_state =
+		container_of(vdev, struct mdev_state, vdev);
 	struct mbochs_dmabuf *dmabuf, *tmp;
 
 	mutex_lock(&mdev_state->ops_lock);
@@ -1306,8 +1307,7 @@ static ssize_t
 memory_show(struct device *dev, struct device_attribute *attr,
 	    char *buf)
 {
-	struct mdev_device *mdev = mdev_from_dev(dev);
-	struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
+	struct mdev_state *mdev_state = dev_get_drvdata(dev);
 
 	return sprintf(buf, "%d MB\n", mdev_state->type->mbytes);
 }
@@ -1398,18 +1398,30 @@ static struct attribute_group *mdev_type_groups[] = {
 	NULL,
 };
 
+static const struct vfio_device_ops mbochs_dev_ops = {
+	.open = mbochs_open,
+	.release = mbochs_close,
+	.read = mbochs_read,
+	.write = mbochs_write,
+	.ioctl = mbochs_ioctl,
+	.mmap = mbochs_mmap,
+};
+
+static struct mdev_driver mbochs_driver = {
+	.driver = {
+		.name = "mbochs",
+		.owner = THIS_MODULE,
+		.mod_name = KBUILD_MODNAME,
+		.dev_groups = mdev_dev_groups,
+	},
+	.probe = mbochs_probe,
+	.remove	= mbochs_remove,
+};
+
 static const struct mdev_parent_ops mdev_fops = {
 	.owner			= THIS_MODULE,
-	.mdev_attr_groups	= mdev_dev_groups,
+	.device_driver		= &mbochs_driver,
 	.supported_type_groups	= mdev_type_groups,
-	.create			= mbochs_create,
-	.remove			= mbochs_remove,
-	.open			= mbochs_open,
-	.release		= mbochs_close,
-	.read			= mbochs_read,
-	.write			= mbochs_write,
-	.ioctl			= mbochs_ioctl,
-	.mmap			= mbochs_mmap,
 };
 
 static const struct file_operations vd_fops = {
@@ -1434,11 +1446,15 @@ static int __init mbochs_dev_init(void)
 	cdev_add(&mbochs_cdev, mbochs_devt, MINORMASK + 1);
 	pr_info("%s: major %d\n", __func__, MAJOR(mbochs_devt));
 
+	ret = mdev_register_driver(&mbochs_driver);
+	if (ret)
+		goto err_cdev;
+
 	mbochs_class = class_create(THIS_MODULE, MBOCHS_CLASS_NAME);
 	if (IS_ERR(mbochs_class)) {
 		pr_err("Error: failed to register mbochs_dev class\n");
 		ret = PTR_ERR(mbochs_class);
-		goto failed1;
+		goto err_driver;
 	}
 	mbochs_dev.class = mbochs_class;
 	mbochs_dev.release = mbochs_device_release;
@@ -1446,19 +1462,21 @@ static int __init mbochs_dev_init(void)
 
 	ret = device_register(&mbochs_dev);
 	if (ret)
-		goto failed2;
+		goto err_class;
 
 	ret = mdev_register_device(&mbochs_dev, &mdev_fops);
 	if (ret)
-		goto failed3;
+		goto err_device;
 
 	return 0;
 
-failed3:
+err_device:
 	device_unregister(&mbochs_dev);
-failed2:
+err_class:
 	class_destroy(mbochs_class);
-failed1:
+err_driver:
+	mdev_unregister_driver(&mbochs_driver);
+err_cdev:
 	cdev_del(&mbochs_cdev);
 	unregister_chrdev_region(mbochs_devt, MINORMASK + 1);
 	return ret;
@@ -1470,6 +1488,7 @@ static void __exit mbochs_dev_exit(void)
 	mdev_unregister_device(&mbochs_dev);
 
 	device_unregister(&mbochs_dev);
+	mdev_unregister_driver(&mbochs_driver);
 	cdev_del(&mbochs_cdev);
 	unregister_chrdev_region(mbochs_devt, MINORMASK + 1);
 	class_destroy(mbochs_class);
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
