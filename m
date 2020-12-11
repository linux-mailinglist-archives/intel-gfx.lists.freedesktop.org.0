Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF3E2D7288
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 10:05:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 472096ECEE;
	Fri, 11 Dec 2020 09:05:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A9746ECC5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 09:05:36 +0000 (UTC)
IronPort-SDR: yroOddawr26iwGRBVvRadcXbO+JbNVODMEN+qakqqq0R1w406DqARcmbuxYLhmn/DWQv1Jl2gy
 P/lBcYzmJtUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="162159119"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="162159119"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 01:05:32 -0800
IronPort-SDR: bX0NHRWpa4p8JYFNV/4HcbGKuzfEXqv10qrKvTbJPmaKtM+vNZaKnM/yM15TDGjqptfYszc8/b
 TIWZ1BDSWWVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="553804564"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2020 01:05:32 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 01:04:56 -0800
Message-Id: <20201211090457.32674-23-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201211090457.32674-1-sean.z.huang@intel.com>
References: <20201211090457.32674-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v8 22/23] mei: pxp: add vtag parameter to
 mei_pxp_send/receive interface
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
Cc: Tomas Winkler <tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Added vtag parameter to mei_pxp_send_message and
mei_pxp_receive_message functions.

Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c |  4 ++--
 drivers/misc/mei/pxp/mei_pxp.c           | 10 ++++++----
 include/drm/i915_pxp_tee_interface.h     |  4 ++--
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index e0815b2ee9ab..002275ff9c71 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -31,13 +31,13 @@ static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 		print_hex_dump(KERN_DEBUG, "TEE input message binaries:",
 			       DUMP_PREFIX_OFFSET, 4, 4, msg_in, msg_in_size, true);
 
-	ret = pxp_tee_master->ops->send(pxp_tee_master->tee_dev, msg_in, msg_in_size);
+	ret = pxp_tee_master->ops->send(pxp_tee_master->tee_dev, msg_in, msg_in_size, 1);
 	if (ret) {
 		drm_err(&i915->drm, "Failed to send TEE message\n");
 		return -EFAULT;
 	}
 
-	ret = pxp_tee_master->ops->receive(pxp_tee_master->tee_dev, msg_out, msg_out_buf_size);
+	ret = pxp_tee_master->ops->receive(pxp_tee_master->tee_dev, msg_out, msg_out_buf_size, 1);
 	if (ret < 0) {
 		drm_err(&i915->drm, "Failed to receive TEE message\n");
 		return -EFAULT;
diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_pxp.c
index 5bd61fe445e3..55d4cb772367 100644
--- a/drivers/misc/mei/pxp/mei_pxp.c
+++ b/drivers/misc/mei/pxp/mei_pxp.c
@@ -27,10 +27,11 @@
  * @dev: device corresponding to the mei_cl_device
  * @message: a message buffer to send
  * @size: size of the message
+ * @vtag: the vtag of the connection (use 0 for default)
  * Return: 0 on Success, <0 on Failure
  */
 static int
-mei_pxp_send_message(struct device *dev, const void *message, size_t size)
+mei_pxp_send_message(struct device *dev, const void *message, size_t size, u8 vtag)
 {
 	struct mei_cl_device *cldev;
 	ssize_t byte;
@@ -41,7 +42,7 @@ mei_pxp_send_message(struct device *dev, const void *message, size_t size)
 	cldev = to_mei_cl_device(dev);
 
 	/* temporary drop const qualifier till the API is fixed */
-	byte = mei_cldev_send(cldev, (u8 *)message, size);
+	byte = mei_cldev_send_vtag(cldev, (u8 *)message, size, vtag);
 	if (byte < 0) {
 		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
 		return byte;
@@ -55,10 +56,11 @@ mei_pxp_send_message(struct device *dev, const void *message, size_t size)
  * @dev: device corresponding to the mei_cl_device
  * @buffer: a message buffer to contain the received message
  * @size: size of the buffer
+ * @vtag: the vtag of the connection (use 0 for default)
  * Return: bytes sent on Success, <0 on Failure
  */
 static int
-mei_pxp_receive_message(struct device *dev, void *buffer, size_t size)
+mei_pxp_receive_message(struct device *dev, void *buffer, size_t size, u8 vtag)
 {
 	struct mei_cl_device *cldev;
 	ssize_t byte;
@@ -68,7 +70,7 @@ mei_pxp_receive_message(struct device *dev, void *buffer, size_t size)
 
 	cldev = to_mei_cl_device(dev);
 
-	byte = mei_cldev_recv(cldev, buffer, size);
+	byte = mei_cldev_recv_vtag(cldev, buffer, size, &vtag);
 	if (byte < 0) {
 		dev_dbg(dev, "mei_cldev_recv failed. %zd\n", byte);
 		return byte;
diff --git a/include/drm/i915_pxp_tee_interface.h b/include/drm/i915_pxp_tee_interface.h
index 3999e255e145..cacde01058fc 100644
--- a/include/drm/i915_pxp_tee_interface.h
+++ b/include/drm/i915_pxp_tee_interface.h
@@ -24,8 +24,8 @@ struct i915_pxp_component_ops {
 	 */
 	struct module *owner;
 
-	int (*send)(struct device *dev, const void *message, size_t size);
-	int (*receive)(struct device *dev, void *buffer, size_t size);
+	int (*send)(struct device *dev, const void *message, size_t size, u8 vtag);
+	int (*receive)(struct device *dev, void *buffer, size_t size, u8 vtag);
 };
 
 /**
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
