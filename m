Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4D7616596
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 16:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54F510E192;
	Wed,  2 Nov 2022 15:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FE810E49F;
 Wed,  2 Nov 2022 15:02:04 +0000 (UTC)
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2A2DxE5A010448;
 Wed, 2 Nov 2022 15:02:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=VFgn/Qp/MDi9hOSd2PBKgh+pMeduCP9fg1KVGQqtHM8=;
 b=cllBNplu7VhevSAVMbGF3j6Cc4Z2VbFsC7cg2kGDSkWFDNIZB5e+6mWSUA1eukkFk3Z4
 Ny13Qy6WaHQIO3kiIgsgC8MvfOsH6KAvhtoxA7RgptTZ6TR2B/Gprz355NLseBljOsXc
 WBXP9cbGc8H/EPwSOjugh9NJC6fgzbY0ohh7WW4Ln+eLvEF9lR347vzHpQkuTZQ+uuoP
 /d7SOwVdFZ7285HWyW1OaSR9/5rMuQccClIFvI3I2b0Z0px6VO4/nEgW6UKIbmWmw4qJ
 FAVdjZQefBXOGrTS8jjsh2WRRSzUMWy5BAruMldoqWUIVCwkXVzy5B8S2aPynrwdLIvi bg== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3kkqxwqmwa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 02 Nov 2022 15:02:01 +0000
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 2A2C86RN036294;
 Wed, 2 Nov 2022 15:02:00 GMT
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3kkqxwqmty-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 02 Nov 2022 15:02:00 +0000
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 2A2EolNP017390;
 Wed, 2 Nov 2022 15:01:57 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma04ams.nl.ibm.com with ESMTP id 3kgut9706b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 02 Nov 2022 15:01:57 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 2A2F1sBO61342096
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 2 Nov 2022 15:01:54 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 45ED84C04E;
 Wed,  2 Nov 2022 15:01:54 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1C10E4C040;
 Wed,  2 Nov 2022 15:01:54 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  2 Nov 2022 15:01:54 +0000 (GMT)
Received: by tuxmaker.boeblingen.de.ibm.com (Postfix, from userid 4958)
 id D36B6E20D5; Wed,  2 Nov 2022 16:01:53 +0100 (CET)
From: Eric Farman <farman@linux.ibm.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Kevin Tian <kevin.tian@intel.com>, Yi Liu <yi.l.liu@intel.com>
Date: Wed,  2 Nov 2022 16:01:46 +0100
Message-Id: <20221102150152.2521475-2-farman@linux.ibm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102150152.2521475-1-farman@linux.ibm.com>
References: <20221102150152.2521475-1-farman@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: Fiwq6aMi_KTJOz9IF56wXgM2aJF-V1TP
X-Proofpoint-GUID: ntQPOyUzme6ukbme7Bc62XfYQm3AFUVF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-02_12,2022-11-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0
 impostorscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211020097
Subject: [Intel-gfx] [PATCH v2 1/7] vfio/ccw: create a parent struct
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
Cc: kvm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Kirti Wankhede <kwankhede@nvidia.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 linux-s390@vger.kernel.org, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Tony Krowiak <akrowiak@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Abhishek Sahu <abhsahu@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the stuff associated with the mdev parent (and thus the
subchannel struct) into its own struct, and leave the rest in
the existing private structure.

The subchannel will point to the parent, and the parent will point
to the private, for the areas where one or both are needed. Further
separation of these structs will follow.

Signed-off-by: Eric Farman <farman@linux.ibm.com>
---
 drivers/s390/cio/vfio_ccw_drv.c     | 96 ++++++++++++++++++++++++-----
 drivers/s390/cio/vfio_ccw_ops.c     |  8 ++-
 drivers/s390/cio/vfio_ccw_private.h | 20 ++++--
 3 files changed, 100 insertions(+), 24 deletions(-)

diff --git a/drivers/s390/cio/vfio_ccw_drv.c b/drivers/s390/cio/vfio_ccw_drv.c
index 7f5402fe857a..06022fb37b9d 100644
--- a/drivers/s390/cio/vfio_ccw_drv.c
+++ b/drivers/s390/cio/vfio_ccw_drv.c
@@ -36,10 +36,19 @@ debug_info_t *vfio_ccw_debug_trace_id;
  */
 int vfio_ccw_sch_quiesce(struct subchannel *sch)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
 	DECLARE_COMPLETION_ONSTACK(completion);
 	int iretry, ret = 0;
 
+	/*
+	 * Probably an impossible situation, after being called through
+	 * FSM callbacks. But in the event it did, register a warning
+	 * and return as if things were fine.
+	 */
+	if (WARN_ON(!private))
+		return 0;
+
 	iretry = 255;
 	do {
 
@@ -121,7 +130,22 @@ static void vfio_ccw_crw_todo(struct work_struct *work)
  */
 static void vfio_ccw_sch_irq(struct subchannel *sch)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
+
+	/*
+	 * The subchannel should still be disabled at this point,
+	 * so an interrupt would be quite surprising. As with an
+	 * interrupt while the FSM is closed, let's attempt to
+	 * disable the subchannel again.
+	 */
+	if (!private) {
+		VFIO_CCW_MSG_EVENT(2, "sch %x.%x.%04x: unexpected interrupt\n",
+			sch->schid.cssid, sch->schid.ssid, sch->schid.sch_no);
+
+		cio_disable_subchannel(sch);
+		return;
+	}
 
 	inc_irq_stat(IRQIO_CIO);
 	vfio_ccw_fsm_event(private, VFIO_CCW_EVENT_INTERRUPT);
@@ -201,10 +225,19 @@ static void vfio_ccw_free_private(struct vfio_ccw_private *private)
 	mutex_destroy(&private->io_mutex);
 	kfree(private);
 }
+
+static void vfio_ccw_free_parent(struct device *dev)
+{
+	struct vfio_ccw_parent *parent = container_of(dev, struct vfio_ccw_parent, dev);
+
+	kfree(parent);
+}
+
 static int vfio_ccw_sch_probe(struct subchannel *sch)
 {
 	struct pmcw *pmcw = &sch->schib.pmcw;
 	struct vfio_ccw_private *private;
+	struct vfio_ccw_parent *parent;
 	int ret = -ENOMEM;
 
 	if (pmcw->qf) {
@@ -213,41 +246,62 @@ static int vfio_ccw_sch_probe(struct subchannel *sch)
 		return -ENODEV;
 	}
 
+	parent = kzalloc(sizeof(*parent), GFP_KERNEL);
+	if (IS_ERR(parent))
+		return PTR_ERR(parent);
+
+	dev_set_name(&parent->dev, "parent");
+	parent->dev.parent = &sch->dev;
+	parent->dev.release = &vfio_ccw_free_parent;
+	ret = device_register(&parent->dev);
+	if (ret)
+		goto out_free;
+
 	private = vfio_ccw_alloc_private(sch);
-	if (IS_ERR(private))
+	if (IS_ERR(private)) {
+		put_device(&parent->dev);
 		return PTR_ERR(private);
+	}
 
-	dev_set_drvdata(&sch->dev, private);
+	dev_set_drvdata(&sch->dev, parent);
+	dev_set_drvdata(&parent->dev, private);
 
-	private->mdev_type.sysfs_name = "io";
-	private->mdev_type.pretty_name = "I/O subchannel (Non-QDIO)";
-	private->mdev_types[0] = &private->mdev_type;
-	ret = mdev_register_parent(&private->parent, &sch->dev,
+	parent->mdev_type.sysfs_name = "io";
+	parent->mdev_type.pretty_name = "I/O subchannel (Non-QDIO)";
+	parent->mdev_types[0] = &parent->mdev_type;
+	ret = mdev_register_parent(&parent->parent, &sch->dev,
 				   &vfio_ccw_mdev_driver,
-				   private->mdev_types, 1);
+				   parent->mdev_types, 1);
 	if (ret)
-		goto out_free;
+		goto out_unreg;
 
 	VFIO_CCW_MSG_EVENT(4, "bound to subchannel %x.%x.%04x\n",
 			   sch->schid.cssid, sch->schid.ssid,
 			   sch->schid.sch_no);
 	return 0;
 
+out_unreg:
+	device_unregister(&parent->dev);
 out_free:
+	dev_set_drvdata(&parent->dev, NULL);
 	dev_set_drvdata(&sch->dev, NULL);
 	vfio_ccw_free_private(private);
+	put_device(&parent->dev);
 	return ret;
 }
 
 static void vfio_ccw_sch_remove(struct subchannel *sch)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
 
-	mdev_unregister_parent(&private->parent);
+	mdev_unregister_parent(&parent->parent);
 
+	device_unregister(&parent->dev);
 	dev_set_drvdata(&sch->dev, NULL);
 
 	vfio_ccw_free_private(private);
+	put_device(&parent->dev);
 
 	VFIO_CCW_MSG_EVENT(4, "unbound from subchannel %x.%x.%04x\n",
 			   sch->schid.cssid, sch->schid.ssid,
@@ -256,7 +310,11 @@ static void vfio_ccw_sch_remove(struct subchannel *sch)
 
 static void vfio_ccw_sch_shutdown(struct subchannel *sch)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
+
+	if (WARN_ON(!private))
+		return;
 
 	vfio_ccw_fsm_event(private, VFIO_CCW_EVENT_CLOSE);
 	vfio_ccw_fsm_event(private, VFIO_CCW_EVENT_NOT_OPER);
@@ -274,7 +332,8 @@ static void vfio_ccw_sch_shutdown(struct subchannel *sch)
  */
 static int vfio_ccw_sch_event(struct subchannel *sch, int process)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
 	unsigned long flags;
 	int rc = -EAGAIN;
 
@@ -287,8 +346,10 @@ static int vfio_ccw_sch_event(struct subchannel *sch, int process)
 
 	rc = 0;
 
-	if (cio_update_schib(sch))
-		vfio_ccw_fsm_event(private, VFIO_CCW_EVENT_NOT_OPER);
+	if (cio_update_schib(sch)) {
+		if (private)
+			vfio_ccw_fsm_event(private, VFIO_CCW_EVENT_NOT_OPER);
+	}
 
 out_unlock:
 	spin_unlock_irqrestore(sch->lock, flags);
@@ -326,7 +387,8 @@ static void vfio_ccw_queue_crw(struct vfio_ccw_private *private,
 static int vfio_ccw_chp_event(struct subchannel *sch,
 			      struct chp_link *link, int event)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
 	int mask = chp_ssd_get_mask(&sch->ssd_info, link);
 	int retry = 255;
 
diff --git a/drivers/s390/cio/vfio_ccw_ops.c b/drivers/s390/cio/vfio_ccw_ops.c
index 6ae4d012d800..dc084883d872 100644
--- a/drivers/s390/cio/vfio_ccw_ops.c
+++ b/drivers/s390/cio/vfio_ccw_ops.c
@@ -55,7 +55,9 @@ static int vfio_ccw_mdev_init_dev(struct vfio_device *vdev)
 
 static int vfio_ccw_mdev_probe(struct mdev_device *mdev)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(mdev->dev.parent);
+	struct subchannel *sch = to_subchannel(mdev->dev.parent);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
 	int ret;
 
 	if (private->state == VFIO_CCW_STATE_NOT_OPER)
@@ -100,7 +102,9 @@ static void vfio_ccw_mdev_release_dev(struct vfio_device *vdev)
 
 static void vfio_ccw_mdev_remove(struct mdev_device *mdev)
 {
-	struct vfio_ccw_private *private = dev_get_drvdata(mdev->dev.parent);
+	struct subchannel *sch = to_subchannel(mdev->dev.parent);
+	struct vfio_ccw_parent *parent = dev_get_drvdata(&sch->dev);
+	struct vfio_ccw_private *private = dev_get_drvdata(&parent->dev);
 
 	VFIO_CCW_MSG_EVENT(2, "sch %x.%x.%04x: remove\n",
 			   private->sch->schid.cssid,
diff --git a/drivers/s390/cio/vfio_ccw_private.h b/drivers/s390/cio/vfio_ccw_private.h
index bd5fb81456af..1f598d58d969 100644
--- a/drivers/s390/cio/vfio_ccw_private.h
+++ b/drivers/s390/cio/vfio_ccw_private.h
@@ -67,6 +67,21 @@ struct vfio_ccw_crw {
 	struct crw		crw;
 };
 
+/**
+ * struct vfio_ccw_parent
+ *
+ * @dev: embedded device struct
+ * @parent: parent data structures for mdevs created
+ * @mdev_type(s): identifying information for mdevs created
+ */
+struct vfio_ccw_parent {
+	struct device		dev;
+
+	struct mdev_parent	parent;
+	struct mdev_type	mdev_type;
+	struct mdev_type	*mdev_types[1];
+};
+
 /**
  * struct vfio_ccw_private
  * @vdev: Embedded VFIO device
@@ -89,7 +104,6 @@ struct vfio_ccw_crw {
  * @io_work: work for deferral process of I/O handling
  * @crw_work: work for deferral process of CRW handling
  * @release_comp: synchronization helper for vfio device release
- * @parent: parent data structures for mdevs created
  */
 struct vfio_ccw_private {
 	struct vfio_device vdev;
@@ -116,10 +130,6 @@ struct vfio_ccw_private {
 	struct work_struct	crw_work;
 
 	struct completion	release_comp;
-
-	struct mdev_parent	parent;
-	struct mdev_type	mdev_type;
-	struct mdev_type	*mdev_types[1];
 } __aligned(8);
 
 int vfio_ccw_sch_quiesce(struct subchannel *sch);
-- 
2.34.1

