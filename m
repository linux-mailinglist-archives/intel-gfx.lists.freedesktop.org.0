Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD571F1650
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 12:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C6E86E179;
	Mon,  8 Jun 2020 10:06:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B47A6E19C
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 10:06:07 +0000 (UTC)
IronPort-SDR: JVJrblEHdWK+YXjs8uoBiu4GXMzbQFrBVcn4xaxvTMm0FzxRjcg6siRkXLgR+V5JCxakg8E7eJ
 CMwlgF7mtOVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 03:06:06 -0700
IronPort-SDR: ZNLj9PZkxcECUfr/t/gsFQfANBevV6LCMyHXjzt90iPVIcDKUHszt1o1bXu5T+0RjniLO0Nshb
 tLK5CQkur3gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="270462122"
Received: from unknown (HELO linux-akn.iind.intel.com) ([10.223.34.148])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2020 03:06:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jun 2020 15:31:03 +0530
Message-Id: <20200608100103.19472-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200608100103.19472-1-ankit.k.nautiyal@intel.com>
References: <20200608100103.19472-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Add a new debugfs to request
 HDCP version
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
Cc: jani.nikula@intel.com, martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per the current HDCP design, the driver selects the highest
version of HDCP that can be used to satisfy the content-protection
requirements of the user. Due to this, the content-protection
tests cannot test a lower version of HDCP, if the platform and the
display panel, both support higher HDCP version.

To provide some support for testing and debugging, a per-connector
debugfs is required to set the HDCP version via debugfs that the
kernel can consider, while enabling HDCP.

This patch adds a new debugfs entry for each connector that supports
HDCP. For enforcing a particular HDCP version for a connector, the user
can write into the debugfs for that connector.

v2: As suggested by Jani Nikula:
-used kstrtouint_from_user() to directly read as uint from user buffer.
-used 32 bit flag instead of 64 bit for hdcp_ver flag.
-removed unnecessary prints and fixed other minor formatting issues.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 70525623bcdf..c01653d412e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2185,6 +2185,72 @@ static const struct file_operations i915_dsc_fec_support_fops = {
 	.write = i915_dsc_fec_support_write
 };
 
+static int i915_hdcp_ver_request_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+	u32 hdcp_ver_flag;
+
+	if (connector->status != connector_status_connected)
+		return -ENODEV;
+
+	/* HDCP is supported by connector */
+	if (!intel_connector->hdcp.shim)
+		return -EINVAL;
+
+	hdcp_ver_flag = intel_connector->hdcp.debugfs_ver_request;
+	seq_printf(m, "HDCP_VER_FLAGS: %u\n", hdcp_ver_flag);
+
+	return 0;
+}
+
+static int i915_hdcp_ver_request_open(struct inode *inode,
+				      struct file *file)
+{
+	return single_open(file, i915_hdcp_ver_request_show,
+			   inode->i_private);
+}
+
+static ssize_t i915_hdcp_ver_request_write(struct file *file,
+					   const char __user *ubuf,
+					   size_t len, loff_t *offp)
+{
+	unsigned int hdcp_ver = 0;
+	int ret;
+	struct drm_connector *connector =
+		((struct seq_file *)file->private_data)->private;
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_hdcp *hdcp = &intel_connector->hdcp;
+
+	if (!hdcp->shim)
+		return -EINVAL;
+
+	if (len == 0)
+		return 0;
+
+	ret = kstrtouint_from_user(ubuf, len, 0, &hdcp_ver);
+	if (ret < 0)
+		return ret;
+
+	if (hdcp_ver > HDCP_VERSION_MASK)
+		return -EINVAL;
+
+	hdcp->debugfs_ver_request = hdcp_ver;
+
+	*offp += len;
+
+	return len;
+}
+
+static const struct file_operations i915_hdcp_ver_request_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_hdcp_ver_request_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_hdcp_ver_request_write
+};
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered drm_connector
@@ -2215,6 +2281,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
 		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
 				    connector, &i915_hdcp_sink_capability_fops);
+		debugfs_create_file("i915_hdcp_version_request", 0444, root,
+				    connector, &i915_hdcp_ver_request_fops);
 	}
 
 	if (INTEL_GEN(dev_priv) >= 10 &&
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
