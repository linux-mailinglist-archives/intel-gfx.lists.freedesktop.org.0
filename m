Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBAC68A4EC
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 22:50:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4ED89664;
	Fri,  3 Feb 2023 21:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C76489130;
 Fri,  3 Feb 2023 21:50:40 +0000 (UTC)
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 313Ln85P005631; Fri, 3 Feb 2023 21:50:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=FBB8Cn7y9DuJ6A81j72Fv4lk9fW6BPvwNv7dAe4ZXSo=;
 b=HpRfWI5u5oEcQWJnQ9mA/kC4EDkGrB/68Qnvol74sV57N2fn9AlX+lFCqJ4XpYQD30mn
 YmwJjsWoRsHgkrOGqyt+0LE7ksHHfe6FE0I6Qxl3zZFgEzMhscixCsuVzQMCuYc3bRJH
 SDIyiAcJHJmSpnmkvCqpuaN3f8Hom+XoqP/JGPHR4Q4R/ttLmh8kTPfKC7kHl0XDPgc/
 FOW8ojspELat74sw97BWFk/2XYTVLmrttH1MXCsxDTikyxieOD4M2pcZeu7IgBZnbj2F
 BtLd3CZLC/o/IhLTvzI1VVBijSBdh/GWzwh7JcHrV3852fMT5zdjBfty0vsdRBk1WmrJ eQ== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3nhah4r102-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Feb 2023 21:50:36 +0000
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 313LoMDp011813;
 Fri, 3 Feb 2023 21:50:36 GMT
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.11])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3nhah4r0yp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Feb 2023 21:50:36 +0000
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
 by ppma03dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 313KAB2H025419;
 Fri, 3 Feb 2023 21:50:35 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([9.208.130.97])
 by ppma03dal.us.ibm.com (PPS) with ESMTPS id 3ncvtsbjr2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Feb 2023 21:50:35 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com
 [10.241.53.103])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 313LoY5A43844128
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 3 Feb 2023 21:50:34 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0CDE658056;
 Fri,  3 Feb 2023 21:50:34 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3337058052;
 Fri,  3 Feb 2023 21:50:32 +0000 (GMT)
Received: from li-2311da4c-2e09-11b2-a85c-c003041e9174.ibm.com.com (unknown
 [9.65.253.123]) by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Fri,  3 Feb 2023 21:50:32 +0000 (GMT)
From: Matthew Rosato <mjrosato@linux.ibm.com>
To: alex.williamson@redhat.com, pbonzini@redhat.com, yi.l.liu@intel.com,
 jgg@nvidia.com
Date: Fri,  3 Feb 2023 16:50:27 -0500
Message-Id: <20230203215027.151988-3-mjrosato@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230203215027.151988-1-mjrosato@linux.ibm.com>
References: <20230203215027.151988-1-mjrosato@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: CpOA_XrigkE-sXNCkcn5Q5Ubbwsh3eQy
X-Proofpoint-GUID: Tx3h4YY7YrqjINEvIMVPstC5jZjJvS4Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-03_19,2023-02-03_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 mlxlogscore=999
 malwarescore=0 bulkscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302030194
Subject: [Intel-gfx] [PATCH v4 2/2] vfio: no need to pass kvm pointer during
 device open
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
Cc: akrowiak@linux.ibm.com, jjherne@linux.ibm.com, farman@linux.ibm.com,
 borntraeger@linux.ibm.com, frankja@linux.ibm.com, pmorel@linux.ibm.com,
 david@redhat.com, seanjc@google.com, intel-gfx@lists.freedesktop.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pasic@linux.ibm.com,
 kvm@vger.kernel.org, linux-s390@vger.kernel.org, imbrenda@linux.ibm.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Nothing uses this value during vfio_device_open anymore so it's safe
to remove it.

Signed-off-by: Matthew Rosato <mjrosato@linux.ibm.com>
---
 drivers/vfio/group.c     | 2 +-
 drivers/vfio/vfio.h      | 3 +--
 drivers/vfio/vfio_main.c | 7 +++----
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
index 98621ac082f0..0e9036e2b9c4 100644
--- a/drivers/vfio/group.c
+++ b/drivers/vfio/group.c
@@ -187,7 +187,7 @@ static int vfio_device_group_open(struct vfio_device *device)
 	if (device->open_count == 0)
 		vfio_device_group_get_kvm_safe(device);
 
-	ret = vfio_device_open(device, device->group->iommufd, device->kvm);
+	ret = vfio_device_open(device, device->group->iommufd);
 
 	if (device->open_count == 0)
 		vfio_device_put_kvm(device);
diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
index 24d6cd285945..4f39ab549a80 100644
--- a/drivers/vfio/vfio.h
+++ b/drivers/vfio/vfio.h
@@ -18,8 +18,7 @@ struct vfio_container;
 
 void vfio_device_put_registration(struct vfio_device *device);
 bool vfio_device_try_get_registration(struct vfio_device *device);
-int vfio_device_open(struct vfio_device *device,
-		     struct iommufd_ctx *iommufd, struct kvm *kvm);
+int vfio_device_open(struct vfio_device *device, struct iommufd_ctx *iommufd);
 void vfio_device_close(struct vfio_device *device,
 		       struct iommufd_ctx *iommufd);
 
diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
index 28c47cd6a6b5..3a597e799918 100644
--- a/drivers/vfio/vfio_main.c
+++ b/drivers/vfio/vfio_main.c
@@ -397,7 +397,7 @@ static bool vfio_assert_device_open(struct vfio_device *device)
 }
 
 static int vfio_device_first_open(struct vfio_device *device,
-				  struct iommufd_ctx *iommufd, struct kvm *kvm)
+				  struct iommufd_ctx *iommufd)
 {
 	int ret;
 
@@ -444,8 +444,7 @@ static void vfio_device_last_close(struct vfio_device *device,
 	module_put(device->dev->driver->owner);
 }
 
-int vfio_device_open(struct vfio_device *device,
-		     struct iommufd_ctx *iommufd, struct kvm *kvm)
+int vfio_device_open(struct vfio_device *device, struct iommufd_ctx *iommufd)
 {
 	int ret = 0;
 
@@ -453,7 +452,7 @@ int vfio_device_open(struct vfio_device *device,
 
 	device->open_count++;
 	if (device->open_count == 1) {
-		ret = vfio_device_first_open(device, iommufd, kvm);
+		ret = vfio_device_first_open(device, iommufd);
 		if (ret)
 			device->open_count--;
 	}
-- 
2.39.1

