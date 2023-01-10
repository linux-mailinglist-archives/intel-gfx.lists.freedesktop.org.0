Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B27FD663C55
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 10:10:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06FD410E571;
	Tue, 10 Jan 2023 09:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CA910E56F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rNWvtXigw+2fgOXzD3V8HutEFKvArAwyByUizidQEMg=; b=mZayYMmChdc1cy6IKO4/yF4IXt
 L0S6KuIGiicO2XwimsTDfHLBG2OcXRJAFeVNLlbjGHx+NEqpgXSz4nS9RQ0OOEdagTSmo8LfPfism
 nezns8n82dCcft9ZTm+wRAwRcgVSoiQsalYGU/kVB32iWxhKbB8myKCe+pZh0WAjETzI1w/5fgC86
 RWliMXSo1WgDhXAiadXHrl8lnl/Y/NgXbYfDLKXcvEz87QttbmaX7JIoVc3JrEIDU3aYMigZYLzCJ
 fwV/KjZ+7lrpFnA9EdzLAb9y5OW2HEgX29R8OPSjaCIm8tJ+TcSRskDDULMjT3HM+pkbSTqZO/Khz
 BcPWTDJw==;
Received: from [2001:4bb8:181:656b:cb3a:c552:3fcc:12a6] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pFAeE-0060cr-OJ; Tue, 10 Jan 2023 09:10:23 +0000
From: Christoph Hellwig <hch@lst.de>
To: Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Tue, 10 Jan 2023 10:10:09 +0100
Message-Id: <20230110091009.474427-5-hch@lst.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230110091009.474427-1-hch@lst.de>
References: <20230110091009.474427-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 4/4] vfio-mdev: remove an non-existing driver
 from vfio-mediated-device
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

The nvidia mdev driver does not actually exist anywhere in the tree.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 Documentation/driver-api/vfio-mediated-device.rst | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/Documentation/driver-api/vfio-mediated-device.rst b/Documentation/driver-api/vfio-mediated-device.rst
index d4267243b4f525..bbd548b66b4255 100644
--- a/Documentation/driver-api/vfio-mediated-device.rst
+++ b/Documentation/driver-api/vfio-mediated-device.rst
@@ -60,7 +60,7 @@ devices as examples, as these devices are the first devices to use this module::
      |   mdev.ko     |
      | +-----------+ |  mdev_register_parent() +--------------+
      | |           | +<------------------------+              |
-     | |           | |                         |  nvidia.ko   |<-> physical
+     | |           | |                         | ccw_device.ko|<-> physical
      | |           | +------------------------>+              |    device
      | |           | |        callbacks        +--------------+
      | | Physical  | |
@@ -69,12 +69,6 @@ devices as examples, as these devices are the first devices to use this module::
      | |           | |                         |  i915.ko     |<-> physical
      | |           | +------------------------>+              |    device
      | |           | |        callbacks        +--------------+
-     | |           | |
-     | |           | |  mdev_register_parent() +--------------+
-     | |           | +<------------------------+              |
-     | |           | |                         | ccw_device.ko|<-> physical
-     | |           | +------------------------>+              |    device
-     | |           | |        callbacks        +--------------+
      | +-----------+ |
      +---------------+
 
-- 
2.35.1

