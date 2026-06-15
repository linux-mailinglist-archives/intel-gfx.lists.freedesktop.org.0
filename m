Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NBlmMCO+L2qGFgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 10:56:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAFD684C4C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 10:56:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Exqmi/oV";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E44710E2D4;
	Mon, 15 Jun 2026 08:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87E810E2CA;
 Mon, 15 Jun 2026 08:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781513760; x=1813049760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RP7pWgxTcf2Odyxq7A3pUeRmgcKzErAV4xBVI4X8gh0=;
 b=Exqmi/oVhrs/ylsVY7NXiF7dkdGlitnVqv7kdUsbe7C4r9X8QNyqie9r
 PGHOodCNFX9qW3Rl4Z0PwN8aLOpV0j21BXuY+Hgm05XiBEh60Fvy6IxIp
 WOplBGrnAP5ilMBpgcZy7wx3hz4QKbRRXwergwXv+Fiypq7nOpvUaAWYf
 ICuDjknXdLboCtYrP8iydFkYpxlBczH3iak6NpzT/akVde+Y/uidbJveR
 CmN/Kmmaie78DULQfYubcBxR5fwx/z+pQaPVcwGGXK2S4k4DL7PI4ScOq
 HyRYJW+RBr7zRH7RUD/95HRTaLZQnoyXSgEyPbdepH41uXzw7PIdHhk6p w==;
X-CSE-ConnectionGUID: t26T9szeQgONJJsAvW2crQ==
X-CSE-MsgGUID: XU8f4QiDSYiASHdOP2xtJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93637650"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="93637650"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 01:56:00 -0700
X-CSE-ConnectionGUID: Bc3Iov3WSEOfXE4qGUXHPg==
X-CSE-MsgGUID: +ryAa4dUQQKuqhD1bdkGnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="251693907"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO mnyman-desk.intel.com)
 ([10.245.244.39])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 01:55:58 -0700
From: Mathias Nyman <mathias.nyman@linux.intel.com>
To: chaitanya.kumar.borah@intel.com,
	gregkh@linuxfoundation.org
Cc: mathias.nyman@linux.intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-usb@vger.kernel.org,
 ravitejax.veesam@intel.com
Subject: [RFT PATCH] xhci: dbc: support runtime suspend while DbC is in
 enabled state
Date: Mon, 15 Jun 2026 11:55:07 +0300
Message-ID: <20260615085508.2096592-1-mathias.nyman@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <79a7df51-a2ac-4206-987a-83737e1d316f@linux.intel.com>
References: <79a7df51-a2ac-4206-987a-83737e1d316f@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathias.nyman@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1CAFD684C4C

Allow xHC to runtime suspend if DbC is in 'enabled' state for over
15 seconds without a connect.

Idea is that every time we go to 'enabled' state we make sure DbC runtime
pm usage is '1' and save a timestamp. if the event loop still finds DbC in
enabled state 15 seconds later then it decrease DbC runtime pm usage by
calling pm_runtime_put().
Enabled state is reached either when DbC is enabled by userspace or a
connected/configured DbC is disconnected.

When a connect is detected we make sure DbC usage count is 1.

If DbC has been in 'enabled' state for 15 seconds and DbC usage is
decreased to 0 by pm_runtime_put, then the whole xHC controller may
runtime suspends to PCI D3 state if no other devices are using it

DbC sysfs file will show 'suspended' when xHC is suspended and will wake up
and enable DbC at cable connect, or when user writes 'enable' to the file.

Signed-off-by: Mathias Nyman <mathias.nyman@linux.intel.com>
---
 .../testing/sysfs-bus-pci-drivers-xhci_hcd    |  2 +-
 drivers/usb/host/xhci-dbgcap.c                | 60 ++++++++++++++++++-
 drivers/usb/host/xhci-dbgcap.h                |  3 +
 3 files changed, 62 insertions(+), 3 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-pci-drivers-xhci_hcd b/Documentation/ABI/testing/sysfs-bus-pci-drivers-xhci_hcd
index 98a8376a83d2..991765d84201 100644
--- a/Documentation/ABI/testing/sysfs-bus-pci-drivers-xhci_hcd
+++ b/Documentation/ABI/testing/sysfs-bus-pci-drivers-xhci_hcd
@@ -22,7 +22,7 @@ Description:
 
 		Reading this attribute gives the state of the DbC. It
 		can be one of the following states: disabled, enabled,
-		initialized, connected or configured.
+		initialized, connected, configured or suspended.
 
 What:		/sys/bus/pci/drivers/xhci_hcd/.../dbc_idVendor
 Date:		March 2023
diff --git a/drivers/usb/host/xhci-dbgcap.c b/drivers/usb/host/xhci-dbgcap.c
index 8ff8ac300927..f228c46293ca 100644
--- a/drivers/usb/host/xhci-dbgcap.c
+++ b/drivers/usb/host/xhci-dbgcap.c
@@ -647,6 +647,31 @@ static int xhci_dbc_enable_dce(struct xhci_dbc *dbc, bool enable)
 
 static void xhci_dbc_set_state(struct xhci_dbc *dbc, enum dbc_state new_state)
 {
+	if (dbc->state == new_state)
+		return;
+
+	switch (new_state) {
+	case DS_ENABLED:
+		/*
+		 * DbC pm usage is 1 here, both when moved from disconnect or
+		 * configured states, or when setting initial DbC enable state.
+		 * Just enable pending put
+		 */
+		dev_dbg(dbc->dev, "DbC set pending_rpm_put = 1\n");
+		dbc->pending_rpm_put = 1;
+		break;
+	case DS_CONNECTED:
+		if (dbc->pending_rpm_put)
+			/* DbC pm usage still 1, just remove pending put */
+			dbc->pending_rpm_put = 0;
+		else
+			/* DbC pm usage was put to 0, call get */
+			pm_runtime_get(dbc->dev);
+		break;
+	default:
+		break;
+	}
+
 	dbc->state_timestamp = jiffies;
 	dbc->state = new_state;
 }
@@ -682,7 +707,7 @@ static int xhci_dbc_start(struct xhci_dbc *dbc)
 
 	WARN_ON(!dbc);
 
-	pm_runtime_get_sync(dbc->dev); /* note this was self.controller */
+	pm_runtime_get(dbc->dev);
 
 	spin_lock_irqsave(&dbc->lock, flags);
 	ret = xhci_do_dbc_start(dbc);
@@ -707,6 +732,7 @@ static int xhci_dbc_start(struct xhci_dbc *dbc)
 static void xhci_dbc_stop(struct xhci_dbc *dbc)
 {
 	unsigned long		flags;
+	bool			need_rpm_put = false;
 
 	WARN_ON(!dbc);
 
@@ -732,12 +758,20 @@ static void xhci_dbc_stop(struct xhci_dbc *dbc)
 
 	spin_lock_irqsave(&dbc->lock, flags);
 	writel(0, &dbc->regs->control);
+
+	if (dbc->state == DS_CONNECTED || dbc->state == DS_CONFIGURED ||
+	    dbc->pending_rpm_put)
+		need_rpm_put = true;
+
+	dbc->pending_rpm_put = 0;
+
 	xhci_dbc_set_state(dbc, DS_DISABLED);
 	spin_unlock_irqrestore(&dbc->lock, flags);
 
 	xhci_dbc_mem_cleanup(dbc);
 
-	pm_runtime_put(dbc->dev); /* note, was self.controller */
+	if (need_rpm_put)
+		pm_runtime_put(dbc->dev);
 }
 
 static void
@@ -911,6 +945,12 @@ static enum evtreturn xhci_dbc_do_handle_events(struct xhci_dbc *dbc)
 			dev_info(dbc->dev, "DbC connected\n");
 		} else if (!(ctrl & DBC_CTRL_DBC_ENABLE)) {
 			dev_err(dbc->dev, "unexpected DbC disable, xHC reset?\n");
+		} else if (dbc->pending_rpm_put &&
+			   time_is_before_jiffies(dbc->state_timestamp +
+				msecs_to_jiffies(DBC_AUTOSUSPEND_DELAY))) {
+			dbc->pending_rpm_put = 0;
+			dev_dbg(dbc->dev, "DbC Enabled state for 15 seconds, allow rpm suspend\n");
+			pm_runtime_put(dbc->dev);
 		}
 
 		return EVT_DONE;
@@ -1099,6 +1139,9 @@ static ssize_t dbc_show(struct device *dev,
 	if (dbc->state >= ARRAY_SIZE(dbc_state_strings))
 		return sysfs_emit(buf, "unknown\n");
 
+	if (dbc->resume_required)
+		return sysfs_emit(buf, "suspended\n");
+
 	return sysfs_emit(buf, "%s\n", dbc_state_strings[dbc->state]);
 }
 
@@ -1113,12 +1156,25 @@ static ssize_t dbc_store(struct device *dev,
 	dbc = xhci->dbc;
 
 	if (sysfs_streq(buf, "enable")) {
+		pm_runtime_get_sync(dbc->dev);
+
 		mutex_lock(&dbc->enable_mutex);
+		/*
+		 * DbC may already be enabled here if xhci was suspended with
+		 * dbc->resume_required set, and resumed by pm_runtime_get_sync()
+		 * above. In this case we end up calling xhci_dbc_start() twice,
+		 * second time returns an error but is harmless
+		 */
 		xhci_dbc_start(dbc);
+
 		mutex_unlock(&dbc->enable_mutex);
+		pm_runtime_put(dbc->dev);
 	} else if (sysfs_streq(buf, "disable")) {
 		mutex_lock(&dbc->enable_mutex);
+
+		dbc->resume_required = 0;
 		xhci_dbc_stop(dbc);
+
 		mutex_unlock(&dbc->enable_mutex);
 	} else {
 		return -EINVAL;
diff --git a/drivers/usb/host/xhci-dbgcap.h b/drivers/usb/host/xhci-dbgcap.h
index df7aca8bfe99..5b18efb2c1ea 100644
--- a/drivers/usb/host/xhci-dbgcap.h
+++ b/drivers/usb/host/xhci-dbgcap.h
@@ -114,6 +114,8 @@ struct dbc_ep {
 #define DBC_POLL_INTERVAL_MAX		5000	/* milliseconds */
 #define DBC_XFER_INACTIVITY_TIMEOUT	10	/* milliseconds */
 #define DBC_ENUMERATION_TIMEOUT		2000	/* milliseconds */
+#define DBC_AUTOSUSPEND_DELAY		15000	/* milliseconds */
+
 /*
  * Private structure for DbC hardware state:
  */
@@ -166,6 +168,7 @@ struct xhci_dbc {
 	unsigned long			xfer_timestamp;
 	unsigned long			state_timestamp;
 	unsigned			resume_required:1;
+	unsigned			pending_rpm_put:1;
 	struct dbc_ep			eps[2];
 
 	const struct dbc_driver		*driver;
-- 
2.43.0

