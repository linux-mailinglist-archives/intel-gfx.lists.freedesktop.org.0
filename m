Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BCB663C52
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 10:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064B610E56E;
	Tue, 10 Jan 2023 09:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0EE10E571
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 09:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Lj42chFASi82/LX1TdBGvCiiDRzVl2Xg5BDLAFDy/9M=; b=i5D0hDTwYnj79ZamDZuwSI51vc
 BlSm+Y1842x4Uf+7uEtpeFfSLNPRUcCP+3HAISnEzQ78ruik928I7s8VD1nGoIbfKXR5jRr2NIfTs
 gDzzAI5lNhPLyWW1EJLqF+uQSfjEiOSW/cX4gqlJyBx4LXz4roijEI+FtJA+tEu0tvJprVXe/O0rG
 xPw50vDWgvIEMMi4zHbsP9QpTg0HUXtNqUtHAlqSozq2vTOOKXTS+qAYgrVdNvHBqki5kgmpMZ56C
 Nm9WTXhLXPjxknpjC+EnwC9pRvw3I2pGMfMBUJ9vZD3uYM/6ih1NSfqYbVpAElwrr2RtcRwUeg9lt
 V9mQJnhA==;
Received: from [2001:4bb8:181:656b:cb3a:c552:3fcc:12a6] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pFAe6-0060aT-Uh; Tue, 10 Jan 2023 09:10:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Tue, 10 Jan 2023 10:10:06 +0100
Message-Id: <20230110091009.474427-2-hch@lst.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230110091009.474427-1-hch@lst.de>
References: <20230110091009.474427-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 1/4] vfio-mdev: allow building the samples into
 the kernel
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
 kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Halil Pasic <pasic@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is nothing in the vfio-mdev sample drivers that requires building
them as modules, so remove that restriction.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 samples/Kconfig | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/samples/Kconfig b/samples/Kconfig
index 0d81c00289ee36..f1b8d4ff123036 100644
--- a/samples/Kconfig
+++ b/samples/Kconfig
@@ -184,23 +184,23 @@ config SAMPLE_UHID
 	  Build UHID sample program.
 
 config SAMPLE_VFIO_MDEV_MTTY
-	tristate "Build VFIO mtty example mediated device sample code -- loadable modules only"
-	depends on VFIO_MDEV && m
+	tristate "Build VFIO mtty example mediated device sample code"
+	depends on VFIO_MDEV
 	help
 	  Build a virtual tty sample driver for use as a VFIO
 	  mediated device
 
 config SAMPLE_VFIO_MDEV_MDPY
-	tristate "Build VFIO mdpy example mediated device sample code -- loadable modules only"
-	depends on VFIO_MDEV && m
+	tristate "Build VFIO mdpy example mediated device sample code"
+	depends on VFIO_MDEV
 	help
 	  Build a virtual display sample driver for use as a VFIO
 	  mediated device.  It is a simple framebuffer and supports
 	  the region display interface (VFIO_GFX_PLANE_TYPE_REGION).
 
 config SAMPLE_VFIO_MDEV_MDPY_FB
-	tristate "Build VFIO mdpy example guest fbdev driver -- loadable module only"
-	depends on FB && m
+	tristate "Build VFIO mdpy example guest fbdev driver"
+	depends on FB
 	select FB_CFB_FILLRECT
 	select FB_CFB_COPYAREA
 	select FB_CFB_IMAGEBLIT
@@ -208,8 +208,8 @@ config SAMPLE_VFIO_MDEV_MDPY_FB
 	  Guest fbdev driver for the virtual display sample driver.
 
 config SAMPLE_VFIO_MDEV_MBOCHS
-	tristate "Build VFIO mdpy example mediated device sample code -- loadable modules only"
-	depends on VFIO_MDEV && m
+	tristate "Build VFIO mdpy example mediated device sample code"
+	depends on VFIO_MDEV
 	select DMA_SHARED_BUFFER
 	help
 	  Build a virtual display sample driver for use as a VFIO
-- 
2.35.1

