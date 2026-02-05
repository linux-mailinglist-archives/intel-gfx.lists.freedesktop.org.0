Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KEwDUKvhGk14QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:54:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC3EF44A5
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:54:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641B810E91F;
	Thu,  5 Feb 2026 14:54:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XeKHBeVQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E163110E912;
 Thu,  5 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770303294; x=1801839294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=40LHmGXPnhI7xXCw1vCzobKJTgCsAaBWxlFZy8fDIJc=;
 b=XeKHBeVQPVGLEZv0CV9pabSBsa5uVqQ4CfqG6ybVHO1aVW02qQI9GdaS
 XrgW6R6PX6rtkjwXtTt8n1NJkjoesApcxOihq0Cb2y9XZImQTD66mD5u5
 v0IUZNZXDRxfDhsHDvD4HeSfnaFeWJssdPIgl61o45sQ7mTUmL0s/Dw03
 rSfyRRP73riD/iariF2JXRIA6MaTaSHEJa6s3ftBcjaWPZoJxo6RCBFT7
 52hJFn9ZUVIcRROTSv9PxLVhUCOqSqS/am5FB2WUMxtfXf+iPf269tWnG
 arw791uuaZhHx7yPzsnC/1UntFpLnUCcj4Vwnll3YTQvSHDebZwf9aRll A==;
X-CSE-ConnectionGUID: r/7kQFGjRtCLZEWSKBjAhw==
X-CSE-MsgGUID: yWYzmv5lTfyyZzqZL04ouQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="89083601"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89083601"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:54:54 -0800
X-CSE-ConnectionGUID: DZ0pfcpQQ1Sal7h7ua8tEA==
X-CSE-MsgGUID: YI/EP5D7SSeufLSabLw56g==
X-ExtLoop1: 1
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.76])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:54:51 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v5 2/6] lib/igt_device_scan: Split out reusable part of
 update_or_add_parent
Date: Thu,  5 Feb 2026 15:51:51 +0100
Message-ID: <20260205145427.1338534-10-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
References: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AAC3EF44A5
X-Rspamd-Action: no action

Users of Intel discrete graphics adapters are confused with fake
information on PCIe link bandwidth (speed and size) of their GPU devices
reported by sysfs and userspace tools, including our lsgpu utility.  In
order for the lsgpu to show correct link bandwidth information, we need to
identify an upstream port of a PCIe bridge that sits on the GPU card and
get that information from that port.

Since the tool uses our udev based igt_device_scan library for identifying
GPU devices and printing their properties and attributes, modifications
that we need apply to that library.

Refactor the library so a part of it can be reused for processing the
bridge port.

There are no functional changes introduced with this patch.

v4: Also change RETRIES_GET_PARENT to RETRIES_GET_DEVICE for consistency
    with renamed variables (Krzysztof).

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 72 ++++++++++++++++++++++++++-----------------
 1 file changed, 43 insertions(+), 29 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index 7ae64375b5..11b3034639 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -913,33 +913,21 @@ static struct igt_device *igt_device_from_syspath(const char *syspath)
 	return NULL;
 }
 
-#define RETRIES_GET_PARENT 5
-/* For each drm igt_device add or update its parent igt_device to the array.
- * As card/render drm devices mostly have same parent (vkms is an exception)
- * link to it and update corresponding drm_card / drm_render fields.
- */
-static void update_or_add_parent(struct udev *udev,
-				 struct udev_device *dev,
-				 struct igt_device *idev,
-				 bool limit_attrs)
-{
-	struct udev_device *parent_dev;
-	struct igt_device *parent_idev;
-	const char *subsystem, *syspath, *devname;
-	int retries = RETRIES_GET_PARENT;
+#define RETRIES_GET_DEVICE 5
 
-	/*
-	 * Get parent for drm node. It caches parent in udev device
-	 * and will be destroyed along with the node.
-	 */
-	parent_dev = udev_device_get_parent(dev);
-	igt_assert(parent_dev);
+static struct igt_device *find_or_add_igt_device(struct udev *udev,
+						 struct udev_device *dev,
+						 bool limit_attrs)
+{
+	int retries = RETRIES_GET_DEVICE;
+	const char *subsystem, *syspath;
+	struct igt_device *idev;
 
-	subsystem = udev_device_get_subsystem(parent_dev);
-	syspath = udev_device_get_syspath(parent_dev);
+	subsystem = udev_device_get_subsystem(dev);
+	syspath = udev_device_get_syspath(dev);
 
-	parent_idev = igt_device_find(subsystem, syspath);
-	while (!parent_idev && retries--) {
+	idev = igt_device_find(subsystem, syspath);
+	while (!idev && retries--) {
 		/*
 		 * Don't care about previous parent_dev, it is tracked
 		 * by the child node. There's very rare race when driver module
@@ -951,15 +939,41 @@ static void update_or_add_parent(struct udev *udev,
 		 * only udev_device_new*() will scan sys directory and
 		 * return fresh udev device.
 		 */
-		parent_dev = udev_device_new_from_syspath(udev, syspath);
-		parent_idev = igt_device_new_from_udev(parent_dev, limit_attrs);
-		udev_device_unref(parent_dev);
+		dev = udev_device_new_from_syspath(udev, syspath);
+		idev = igt_device_new_from_udev(dev, limit_attrs);
+		udev_device_unref(dev);
 
-		if (parent_idev)
-			igt_list_add_tail(&parent_idev->link, &igt_devs.all);
+		if (idev)
+			igt_list_add_tail(&idev->link, &igt_devs.all);
 		else
 			usleep(100000); /* arbitrary, 100ms should be enough */
 	}
+
+	return idev;
+}
+
+/*
+ * For each drm igt_device add or update its parent igt_device to the array.
+ * As card/render drm devices mostly have same parent (vkms is an exception)
+ * link to it and update corresponding drm_card / drm_render fields.
+ */
+static void update_or_add_parent(struct udev *udev,
+				 struct udev_device *dev,
+				 struct igt_device *idev,
+				 bool limit_attrs)
+{
+	struct udev_device *parent_dev;
+	struct igt_device *parent_idev;
+	const char *devname;
+
+	/*
+	 * Get parent for drm node. It caches parent in udev device
+	 * and will be destroyed along with the node.
+	 */
+	parent_dev = udev_device_get_parent(dev);
+	igt_assert(parent_dev);
+
+	parent_idev = find_or_add_igt_device(udev, parent_dev, limit_attrs);
 	igt_assert(parent_idev);
 
 	devname = udev_device_get_devnode(dev);
-- 
2.52.0

