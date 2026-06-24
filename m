Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eZSyKsEMPGr7jAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F336C028F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b="kjOyVr/j";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0D710EFD0;
	Wed, 24 Jun 2026 16:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010021.outbound.protection.outlook.com
 [40.93.198.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7B310E0CE;
 Wed, 24 Jun 2026 16:58:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AriOxPUZ4lxNv7BaHme/blKMBpHT1uwWcU4VGlS89nrwTugAbMm16G00pbo3rZAGOX0QJse8X9CkSiXjvoU1eYhif9Cjgqkapad6NuPoC4JEwRcf7oZYaElZv9JHbcSyISPRXmWkHwGNiwNwVW4LB1wZDLxeU9aDxJLuu3Hta8UvPBGX5pg5guVSp6SG2HuJvDzEyRh+WyPP/EbKwenaNhSYEwq5RvD27x0+MUbSyqAwHVrAd9vepOjk1HgxaWH1RZ0cL0s9c675gdPR+qE245NeRYCwpGxnjEumUssblyTa0XiwUS2go3oXgGHK3SP2JPyQ0hOpzkOAdS22dNqRSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=daDuomMG0diUO3harAVvrjUNiq8iYVX7yRj49pqsy6Q=;
 b=mqw6PqzjCI9Pr32U9r8Lc3DtfjSl/21bJc8L+uNNQ978Ph57ZCKljS+AGRK01kO1yIU+y6JZDRl941JfGsEBGLQZ4OD4p4USiyAnOongSnRuHsyDvOt0uEj0Pg5W6o6mxpfpqVaypLeModc1pvziIG0G5o7SRrrQTfdzDJhC9p5lEUFqBW7e/9YBaxf94lnKTZghKSBvjZYQlQdMHpjUzqiYSMnBHXTgGZyqKy26RNqq5FWtjlrOIelrUxH5KjvLZ/CwpzGtBsPb30UlrDTewaP2i0HAbaoB8+QS/gDBmjX2mW/smM44X6aZswOF/LX6A3L0dM8iVacoeIUxIwZH3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=daDuomMG0diUO3harAVvrjUNiq8iYVX7yRj49pqsy6Q=;
 b=kjOyVr/j6PO1oJWDR/qAbngQ6iZZY6ZYb47oID45y0nJzIAfhElnEpyr7IV4bfWATlTX0GONNUjiq+D9D7aih1p0J28jTcoBHVaOntwOXO9lGeab2jCXJWS+0PBAcRel8Xeambw2B0fhvj6obxKCbgPeKrUIurPBkI3upvaDSWc=
Received: from CY5PR19CA0068.namprd19.prod.outlook.com (2603:10b6:930:69::8)
 by PHXPR12MB999231.namprd12.prod.outlook.com (2603:10b6:510:3ce::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 24 Jun
 2026 16:58:26 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::44) by CY5PR19CA0068.outlook.office365.com
 (2603:10b6:930:69::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.15 via Frontend Transport; Wed,
 24 Jun 2026 16:58:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:26 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:22 -0500
From: Mario Limonciello <mario.limonciello@amd.com>
To: <dri-devel@lists.freedesktop.org>, <harry.wentland@amd.com>, Simona Vetter
 <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>
CC: Xaver Hugl <xaver.hugl@gmail.com>, <amd-gfx@lists.freedesktop.org>, "open
 list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>, "open list:INTEL DRM DISPLAY FOR XE AND
 I915 DRIVERS" <intel-xe@lists.freedesktop.org>, "Mario Limonciello (AMD)"
 <superm1@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 03/10] drm: link connectors to backlight devices
Date: Wed, 24 Jun 2026 09:57:43 -0700
Message-ID: <20260624165751.2014759-4-mario.limonciello@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624165751.2014759-1-mario.limonciello@amd.com>
References: <20260624165751.2014759-1-mario.limonciello@amd.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|PHXPR12MB999231:EE_
X-MS-Office365-Filtering-Correlation-Id: bdb502cd-56fa-434c-50db-08ded211cf18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|82310400026|23010399003|1800799024|36860700016|11063799006|56012099006|6133799003|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: r++cki+pGyRMhxxwqmwbd7zuMiQdK+gG2l0r7r8VVM1en9tNezKClc3nnVb3UnXhWD1oiwD8bYe4XUmm3EMnrOD5JO4OnQQv62WSZuDTnheQV6/BOusXJlNN0MC1ceBeg6g2Hy2I5/d25HFLw2bnjheHxKIjn68GMQrEPpn15pzFDWtnWg4g6zZriSb3dKz5RgCH9v8A+4Yp+yE1khaCM9CZLU6NoDM+2egbLYQaLEdJ9Lhc7sQygWO8FNZHDF4YROkXJTRTfzTgL0p06bA4VJ4BbZymoBekYEI+vm+16YbdVFv7rNPk8irrzqHkkQiC6refojPzoi7AaPViNqOVJfmdydWhkkpt/cmpUiUNrwIIpCioxG1XDa3YiKW8B+XKavcO/Say+qZoWpF2jic8TcqlQBE5wSuXULs9KLJQjjq6al7WPTOkFiRTPSmZ8bF8SbrmXNk7pJ/QWqyrQqQXJ3XuxvX1Jw1dz7eyjW5dKuf0bsLlHVYatwPislU/NsBAyL8DIXUbQrUbaofK9guAVUk4LIUaWuqj+IL4zzoslsnGsxjKgxwM2xCMlra2fRk7OsxrMqAtD/NLj0D55B7CQ7Jxu1OHge9J77aGRBUn1PCeNvPi2d0OlZ44fzY+RriPh8+9lOm2N5+tn4JgVfOAr3AKbk8PpcHvpm8oNo7Qm585/Tvj+0dPxTvQLp8ZIENwBW62628jQW5N8baXNRhDGg==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(82310400026)(23010399003)(1800799024)(36860700016)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: rsxd9Bi6mPb8Q3bkQiZCZHeyHNA3oOZUl4kEp26SxIWv7ZerFGWSQXM7nXtFei+ge8gWZhIZuxrdKr4JGskmmaFIbvq/EG05dRuuXNKXQB40aJZtZRJjbWL3cu2jar4yEyhRApRvfGhxEVcsU84OeJRBMqU+2MrsL4oRc2qgiiyHGHRu5qIzvaEvbN+NaPA0Zq/tCywJ5hcIiY0/6nDw3JHs0dkgQYrmCi6LtkfvecliuEb/ffEZqkM66/PxGWrhCn7D7NQ4lm243EWpH9MqtRBQmtgiYCilx4EIUKwNIHHg0r8oSW3ePMUQ0XoXSfnmfXE77MCmtbqraPx+cuiuvveWozL8Wtv03qPsLePKigmxmDqlno5yNaRK4i47OrRknsnErC+RW2oeW4qTOYSt36F65s6lAF5l07Zwp7/1rFTVpLUZrd79SLgtco+vhdHm
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:26.3389 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bdb502cd-56fa-434c-50db-08ded211cf18
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PHXPR12MB999231
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FREEMAIL_TO(0.00)[lists.freedesktop.org,amd.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,kernel.org,oss.qualcomm.com];
	DKIM_TRACE(0.00)[amd.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mario.limonciello@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,qualcomm.com:email,amd.com:dkim,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54F336C028F

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

This will show which connector in sysfs matches which backlight.

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # SM8150-HDK
Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
---
 drivers/gpu/drm/Kconfig             |   1 +
 drivers/gpu/drm/Makefile            |   1 +
 drivers/gpu/drm/drm_backlight.c     | 371 ++++++++++++++++++++++++++++
 drivers/gpu/drm/drm_connector.c     |  12 +
 drivers/gpu/drm/drm_drv.c           |   8 +
 drivers/gpu/drm/drm_mode_config.c   |   7 +
 drivers/gpu/drm/drm_mode_object.c   |  66 ++++-
 drivers/gpu/drm/drm_sysfs.c         |  28 ++-
 drivers/video/backlight/backlight.c |  17 ++
 include/drm/drm_backlight.h         |  51 ++++
 include/drm/drm_connector.h         |   3 +
 include/drm/drm_mode_config.h       |   5 +
 include/linux/backlight.h           |  13 +
 13 files changed, 578 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_backlight.c
 create mode 100644 include/drm/drm_backlight.h

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 323422861e8f6..d6035bbbdc83f 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -17,6 +17,7 @@ menuconfig DRM
 # device and dmabuf fd. Let's make sure that is available for our userspace.
 	select KCMP
 	select VIDEO
+	select BACKLIGHT_CLASS_DEVICE
 	help
 	  Kernel-level support for the Direct Rendering Infrastructure (DRI)
 	  introduced in XFree86 4.0. If you say Y here, you need to select
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index e97faabcd7830..bf980a2ac1e6b 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -78,6 +78,7 @@ drm-$(CONFIG_DRM_CLIENT) += \
 	drm_client_event.o \
 	drm_client_modeset.o \
 	drm_client_sysrq.o
+drm-y += drm_backlight.o
 drm-$(CONFIG_COMPAT) += drm_ioc32.o
 drm-$(CONFIG_DRM_PANEL) += drm_panel.o
 drm-$(CONFIG_OF) += drm_of.o
diff --git a/drivers/gpu/drm/drm_backlight.c b/drivers/gpu/drm/drm_backlight.c
new file mode 100644
index 0000000000000..b1ec470be86ca
--- /dev/null
+++ b/drivers/gpu/drm/drm_backlight.c
@@ -0,0 +1,371 @@
+// SPDX-License-Identifier: MIT
+/*
+ * DRM Backlight Helpers
+ * Copyright (c) 2014 David Herrmann
+ * Copyright (c) 2026 Advanced Micro Devices, Inc.
+ */
+
+#include <linux/backlight.h>
+#include <linux/fs.h>
+#include <linux/list.h>
+#include <linux/math64.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/notifier.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <drm/drm_backlight.h>
+#include <drm/drm_connector.h>
+#include <drm/drm_device.h>
+#include <drm/drm_mode_config.h>
+
+/**
+ * DOC: Backlight Devices
+ *
+ * Backlight devices have always been managed as a separate subsystem,
+ * independent of DRM. They are usually controlled via separate hardware
+ * interfaces than the display controller, so the split works out fine.
+ * However, backlight brightness is a property of a display, and thus a
+ * property of a DRM connector. We already manage DPMS states via connector
+ * properties, so it is natural to keep brightness control at the same place.
+ *
+ * This DRM backlight interface implements generic backlight properties on
+ * connectors. It does not handle any hardware backends but simply forwards
+ * the requests to a linked backlight device. The links between connectors and
+ * backlight devices are established by DRM drivers; user-space cannot create
+ * or modify these links. A 'change' uevent is sent whenever the brightness is
+ * updated.
+ *
+ * Drivers have to call drm_backlight_alloc() after allocating a connector via
+ * drm_connector_init(). This will automatically add a backlight device to the
+ * given connector. Drivers must then link a hardware backlight by calling
+ * drm_backlight_link() with the registered backlight_device. If no link is
+ * established, the DRM backlight property reports an empty range and
+ * brightness changes are no-ops.
+ */
+
+struct drm_backlight {
+	struct list_head list;
+	struct drm_connector *connector;
+	struct backlight_device *link;
+	/*
+	 * Number of luminance-aware DRM clients that have taken over this
+	 * connector's backlight. While > 0, legacy sysfs writes to the
+	 * linked backlight_device return -EBUSY. Protected by
+	 * drm_backlight_lock.
+	 */
+	unsigned int luminance_clients;
+};
+
+static LIST_HEAD(drm_backlight_list);
+static DEFINE_SPINLOCK(drm_backlight_lock);
+
+/* caller must hold @drm_backlight_lock */
+static bool __drm_backlight_is_registered(struct drm_backlight *b)
+{
+	lockdep_assert_held(&drm_backlight_lock);
+	/* a device is live if it is linked to @drm_backlight_list */
+	return !list_empty(&b->list);
+}
+
+/* caller must hold @drm_backlight_lock */
+static void __drm_backlight_real_changed(struct drm_backlight *b, uint64_t v)
+{
+	unsigned int max, set;
+
+	lockdep_assert_held(&drm_backlight_lock);
+
+	if (!b->link)
+		return;
+
+	max = b->link->props.max_brightness;
+	if (max < 1)
+		return;
+
+	set = v;
+	if (set >= max)
+		set = max;
+}
+
+/**
+ * __drm_backlight_update_prop_range - update the luminance property range
+ * @b: backlight device
+ *
+ * Updates the luminance property range based on the linked backlight device's
+ * max_brightness. If no device is linked, sets range to 0-0 to indicate
+ * unavailability.
+ */
+static void __drm_backlight_update_prop_range(struct drm_backlight *b)
+{
+	struct drm_device *dev = b->connector->dev;
+	struct drm_property *prop = dev->mode_config.luminance_property;
+	unsigned int max = 0;
+
+	lockdep_assert_held(&drm_backlight_lock);
+
+	if (b->link && b->link->props.max_brightness > 0)
+		max = b->link->props.max_brightness;
+
+	/* Update property range to match hardware capabilities.
+	 * Range of 0-0 indicates no backing device.
+	 * Range of 1-max for normal operation (0 reserved for display off).
+	 */
+	if (prop->values[1] != max) {
+		prop->values[0] = max ? 1 : 0;
+		prop->values[1] = max;
+	}
+}
+
+/* caller must hold @drm_backlight_lock */
+static bool __drm_backlight_link(struct drm_backlight *b,
+				 struct backlight_device *bd)
+{
+	if (bd == b->link)
+		return false;
+
+	backlight_device_unref(b->link);
+	b->link = bd;
+	backlight_device_ref(b->link);
+	if (bd)
+		__drm_backlight_real_changed(b, bd->props.brightness);
+	__drm_backlight_update_prop_range(b);
+
+	return true;
+}
+
+/**
+ * drm_backlight_alloc - add backlight capability to a connector
+ * @connector: connector to add backlight to
+ *
+ * This allocates a new DRM-backlight device and attaches it to @connector.
+ * This *must* be called before registering the connector. The backlight
+ * device will be automatically registered in sync with the connector. It will
+ * also get removed once the connector is removed.
+ *
+ * No hardware backlight is linked by default. Drivers must call
+ * drm_backlight_link() to associate a registered backlight_device with the
+ * connector. User-space cannot create or modify this link.
+ *
+ * Returns: 0 on success, negative error code on failure.
+ */
+int drm_backlight_alloc(struct drm_connector *connector)
+{
+	struct drm_mode_config *config = &connector->dev->mode_config;
+	struct drm_backlight *b;
+
+	b = kzalloc_obj(*b, GFP_KERNEL);
+	if (!b)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&b->list);
+	b->connector = connector;
+	connector->backlight = b;
+
+	drm_object_attach_property(&connector->base,
+				   config->luminance_property, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_backlight_alloc);
+
+void drm_backlight_free(struct drm_connector *connector)
+{
+	struct drm_backlight *b = connector->backlight;
+
+	if (!b)
+		return;
+
+	WARN_ON(__drm_backlight_is_registered(b));
+	WARN_ON(b->link);
+
+	kfree(b);
+	connector->backlight = NULL;
+}
+EXPORT_SYMBOL(drm_backlight_free);
+
+void drm_backlight_register(struct drm_backlight *b)
+{
+	if (!b)
+		return;
+
+	WARN_ON(__drm_backlight_is_registered(b));
+
+	guard(spinlock)(&drm_backlight_lock);
+	list_add(&b->list, &drm_backlight_list);
+}
+EXPORT_SYMBOL(drm_backlight_register);
+
+void drm_backlight_unregister(struct drm_backlight *b)
+{
+	if (!b)
+		return;
+
+	WARN_ON(!__drm_backlight_is_registered(b));
+
+	scoped_guard(spinlock, &drm_backlight_lock) {
+		list_del_init(&b->list);
+		__drm_backlight_link(b, NULL);
+	}
+}
+EXPORT_SYMBOL(drm_backlight_unregister);
+
+/**
+ * drm_backlight_link - link a backlight device to a DRM backlight
+ * @b: DRM backlight to modify
+ * @bd: backlight device to link, or NULL to unlink
+ *
+ * Establish the link between a DRM connector's backlight property and a
+ * registered backlight_device. Drivers must call this with the
+ * backlight_device they registered for the connector. Passing NULL unlinks
+ * any previously linked device.
+ *
+ * The caller is responsible for ensuring @bd remains valid until either it
+ * is unlinked via drm_backlight_link(b, NULL) or the connector is
+ * unregistered.
+ *
+ * Whenever a hardware backlight is linked or unlinked, a uevent with
+ * "BACKLIGHT=1" is generated on the connector.
+ */
+void drm_backlight_link(struct drm_backlight *b, struct backlight_device *bd)
+{
+	if (!b)
+		return;
+
+	guard(spinlock)(&drm_backlight_lock);
+	__drm_backlight_link(b, bd);
+}
+EXPORT_SYMBOL(drm_backlight_link);
+
+/**
+ * drm_backlight_get_device - get the backlight_device linked to a DRM backlight
+ * @b: DRM backlight
+ *
+ * Returns the &backlight_device linked to @b, or NULL if no device is linked
+ * or @b is NULL. The caller must hold the appropriate lock to prevent the
+ * link from changing while the pointer is in use.
+ */
+struct backlight_device *drm_backlight_get_device(struct drm_backlight *b)
+{
+	if (!b)
+		return NULL;
+
+	guard(spinlock)(&drm_backlight_lock);
+	return b->link;
+}
+EXPORT_SYMBOL(drm_backlight_get_device);
+
+/**
+ * drm_backlight_inhibit_legacy - disable legacy sysfs control of the linked bd
+ * @b: DRM backlight to inhibit
+ *
+ * Record that one more luminance-aware DRM client has taken over @b. While
+ * any clients are recorded, writes to the linked backlight_device's legacy
+ * ``brightness`` sysfs attribute return ``-EBUSY``. The takeover follows
+ * @b->link if the link changes.
+ *
+ * Calls must be balanced with drm_backlight_uninhibit_legacy().
+ */
+void drm_backlight_inhibit_legacy(struct drm_backlight *b)
+{
+	if (!b)
+		return;
+}
+EXPORT_SYMBOL(drm_backlight_inhibit_legacy);
+
+/**
+ * drm_backlight_uninhibit_legacy - re-enable legacy sysfs control
+ * @b: DRM backlight to uninhibit
+ *
+ * Balances a previous drm_backlight_inhibit_legacy() call. When the last
+ * luminance-aware client goes away, legacy sysfs writes are allowed again.
+ */
+void drm_backlight_uninhibit_legacy(struct drm_backlight *b)
+{
+	if (!b)
+		return;
+}
+EXPORT_SYMBOL(drm_backlight_uninhibit_legacy);
+
+/**
+ * drm_backlight_inhibit_legacy_all - inhibit legacy sysfs on every connector
+ * @dev: DRM device whose connectors should be inhibited
+ *
+ * Walks all connectors on @dev and calls drm_backlight_inhibit_legacy() on
+ * each connector that has a DRM backlight attached. Used when a client
+ * declares it is luminance-aware via DRM_CLIENT_CAP_LUMINANCE.
+ */
+void drm_backlight_inhibit_legacy_all(struct drm_device *dev)
+{
+	struct drm_connector_list_iter iter;
+	struct drm_connector *connector;
+
+	drm_connector_list_iter_begin(dev, &iter);
+	drm_for_each_connector_iter(connector, &iter)
+		drm_backlight_inhibit_legacy(connector->backlight);
+	drm_connector_list_iter_end(&iter);
+}
+EXPORT_SYMBOL(drm_backlight_inhibit_legacy_all);
+
+/**
+ * drm_backlight_uninhibit_legacy_all - reverse drm_backlight_inhibit_legacy_all()
+ * @dev: DRM device whose connectors should be uninhibited
+ */
+void drm_backlight_uninhibit_legacy_all(struct drm_device *dev)
+{
+	struct drm_connector_list_iter iter;
+	struct drm_connector *connector;
+
+	drm_connector_list_iter_begin(dev, &iter);
+	drm_for_each_connector_iter(connector, &iter)
+		drm_backlight_uninhibit_legacy(connector->backlight);
+	drm_connector_list_iter_end(&iter);
+}
+EXPORT_SYMBOL(drm_backlight_uninhibit_legacy_all);
+
+void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int value)
+{
+	guard(spinlock)(&drm_backlight_lock);
+	__drm_backlight_real_changed(b, value);
+}
+EXPORT_SYMBOL(drm_backlight_set_luminance);
+
+static int drm_backlight_notify(struct notifier_block *self,
+				unsigned long event, void *data)
+{
+	struct backlight_device *bd = data;
+	struct drm_backlight *b;
+
+	guard(spinlock)(&drm_backlight_lock);
+
+	switch (event) {
+	case BACKLIGHT_UNREGISTERED:
+		list_for_each_entry(b, &drm_backlight_list, list)
+			if (b->link == bd)
+				__drm_backlight_link(b, NULL);
+
+		break;
+	case BACKLIGHT_BRIGHTNESS_CHANGED:
+		/* Update DRM property value when hardware backlight changes */
+		list_for_each_entry(b, &drm_backlight_list, list)
+			if (b->link == bd)
+				__drm_backlight_real_changed(b, bd->props.brightness);
+
+		break;
+	}
+
+	return 0;
+}
+
+static struct notifier_block drm_backlight_notifier = {
+	.notifier_call = drm_backlight_notify,
+};
+
+int drm_backlight_init(void)
+{
+	return backlight_register_notifier(&drm_backlight_notifier);
+}
+
+void drm_backlight_exit(void)
+{
+	backlight_unregister_notifier(&drm_backlight_notifier);
+}
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 3fa4d2082cd72..128d431f0d6b0 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -21,6 +21,7 @@
  */
 
 #include <drm/drm_auth.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_edid.h>
@@ -760,6 +761,7 @@ void drm_connector_cleanup(struct drm_connector *connector)
 	struct drm_device *dev = connector->dev;
 	struct drm_display_mode *mode, *t;
 
+	drm_backlight_free(connector);
 	/* The connector should have been removed from userspace long before
 	 * it is finally destroyed.
 	 */
@@ -845,6 +847,8 @@ int drm_connector_register(struct drm_connector *connector)
 	if (connector->registration_state != DRM_CONNECTOR_INITIALIZING)
 		goto unlock;
 
+	drm_backlight_register(connector->backlight);
+
 	ret = drm_sysfs_connector_add(connector);
 	if (ret)
 		goto unlock;
@@ -931,6 +935,8 @@ EXPORT_SYMBOL(drm_connector_dynamic_register);
 void drm_connector_unregister(struct drm_connector *connector)
 {
 	mutex_lock(&connector->mutex);
+	drm_backlight_unregister(connector->backlight);
+
 	if (connector->registration_state != DRM_CONNECTOR_REGISTERED) {
 		mutex_unlock(&connector->mutex);
 		return;
@@ -3252,10 +3258,16 @@ int drm_connector_set_obj_prop(struct drm_mode_object *obj,
 {
 	int ret = -EINVAL;
 	struct drm_connector *connector = obj_to_connector(obj);
+	struct drm_mode_config *config = &connector->dev->mode_config;
 
 	/* Do DPMS ourselves */
 	if (property == connector->dev->mode_config.dpms_property) {
 		ret = (*connector->funcs->dpms)(connector, (int)value);
+	} else if (property == config->luminance_property) {
+		if (connector->backlight && connector->dpms == DRM_MODE_DPMS_ON)
+			drm_backlight_set_luminance(connector->backlight,
+						    value);
+		ret = 0;
 	} else if (connector->funcs->set_property)
 		ret = connector->funcs->set_property(connector, property, value);
 
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 675675480da49..5bf402197867a 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -42,6 +42,7 @@
 #include <linux/xarray.h>
 
 #include <drm/drm_accel.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_cache.h>
 #include <drm/drm_client_event.h>
@@ -1230,6 +1231,7 @@ static void drm_core_exit(void)
 	drm_privacy_screen_lookup_exit();
 	drm_panic_exit();
 	accel_core_exit();
+	drm_backlight_exit();
 	unregister_chrdev(DRM_MAJOR, "drm");
 	drm_debugfs_remove_root();
 	drm_sysfs_destroy();
@@ -1253,6 +1255,12 @@ static int __init drm_core_init(void)
 	drm_debugfs_init_root();
 	drm_debugfs_bridge_params();
 
+	ret = drm_backlight_init();
+	if (ret < 0) {
+		DRM_ERROR("Cannot initialize backlight interface\n");
+		goto error;
+	}
+
 	ret = register_chrdev(DRM_MAJOR, "drm", &drm_stub_fops);
 	if (ret < 0)
 		goto error;
diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index 66f7dc37b5970..25c5d29694624 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -32,6 +32,7 @@
 #include <drm/drm_print.h>
 #include <drm/drm_colorop.h>
 #include <linux/dma-resv.h>
+#include <drm/drm_backlight.h>
 
 #include "drm_crtc_internal.h"
 #include "drm_internal.h"
@@ -407,6 +408,12 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
 		return -ENOMEM;
 	dev->mode_config.size_hints_property = prop;
 
+	prop = drm_property_create_range(dev, DRM_MODE_PROP_ATOMIC,
+					 "LUMINANCE", 0, 0);
+	if (!prop)
+		return -ENOMEM;
+	dev->mode_config.luminance_property = prop;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
index 21fc9deda4371..a50d33af95e8c 100644
--- a/drivers/gpu/drm/drm_mode_object.c
+++ b/drivers/gpu/drm/drm_mode_object.c
@@ -30,6 +30,7 @@
 #include <drm/drm_mode_object.h>
 #include <drm/drm_plane.h>
 #include <drm/drm_print.h>
+#include <drm/drm_backlight.h>
 
 #include "drm_crtc_internal.h"
 
@@ -287,11 +288,72 @@ int drm_object_property_set_value(struct drm_mode_object *obj,
 {
 	int i;
 
-	WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
-		!(property->flags & DRM_MODE_PROP_IMMUTABLE));
+	/* Exempt dpms and luminance properties from the atomic warning, as these
+	 * have special interdependencies managed internally in this function
+	 */
+	if (obj->type == DRM_MODE_OBJECT_CONNECTOR) {
+		struct drm_connector *connector = obj_to_connector(obj);
+		struct drm_mode_config *config = &connector->dev->mode_config;
+
+		if (property != config->dpms_property &&
+		    property != config->luminance_property) {
+			WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
+				!(property->flags & DRM_MODE_PROP_IMMUTABLE));
+		}
+	} else {
+		WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
+			!(property->flags & DRM_MODE_PROP_IMMUTABLE));
+	}
 
 	for (i = 0; i < obj->properties->count; i++) {
+		/* If properties depends on each other
+		 * this is where to resolve that issue
+		 */
 		if (obj->properties->properties[i] == property) {
+			/* Connector-specific property interdependencies */
+			if (obj->type == DRM_MODE_OBJECT_CONNECTOR) {
+				struct drm_connector *connector = obj_to_connector(obj);
+				struct drm_property *dpms_property =
+					connector->dev->mode_config.dpms_property;
+				struct drm_property *luminance_property =
+					connector->dev->mode_config.luminance_property;
+
+				if (property == dpms_property) {
+					/* When DPMS goes from ON -> OFF,
+					 * set the brightness to the minimum possible
+					 * to save power.
+					 */
+					if (obj->properties->values[i] !=
+					    DRM_MODE_DPMS_OFF &&
+					    val == DRM_MODE_DPMS_OFF)
+						drm_backlight_set_luminance(
+							connector->backlight, 0);
+					/* When DPMS OFF -> ON, reset the brightness
+					 * to the original level
+					 */
+					else if (obj->properties->values[i] ==
+						 DRM_MODE_DPMS_OFF &&
+						 val != DRM_MODE_DPMS_OFF) {
+						uint64_t value;
+
+						drm_object_property_get_value(
+							obj, luminance_property,
+							&value);
+						drm_backlight_set_luminance(
+							connector->backlight, value);
+					}
+				} else if (property == luminance_property) {
+					/* Always update the property value to remember
+					 * the user's desired brightness, but only update
+					 * hardware when DPMS is ON.
+					 */
+					obj->properties->values[i] = val;
+					if (connector->dpms == DRM_MODE_DPMS_ON)
+						drm_backlight_set_luminance(
+							connector->backlight, val);
+					return 0;
+				}
+			}
 			obj->properties->values[i] = val;
 			return 0;
 		}
diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
index ef4e923a87284..8609e1660f210 100644
--- a/drivers/gpu/drm/drm_sysfs.c
+++ b/drivers/gpu/drm/drm_sysfs.c
@@ -11,6 +11,7 @@
  */
 
 #include <linux/acpi.h>
+#include <linux/backlight.h>
 #include <linux/component.h>
 #include <linux/device.h>
 #include <linux/err.h>
@@ -27,6 +28,7 @@
 #include <drm/drm_device.h>
 #include <drm/drm_file.h>
 #include <drm/drm_modes.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_print.h>
 #include <drm/drm_property.h>
 #include <drm/drm_sysfs.h>
@@ -391,15 +393,35 @@ int drm_sysfs_connector_add(struct drm_connector *connector)
 
 int drm_sysfs_connector_add_late(struct drm_connector *connector)
 {
-	if (connector->ddc)
-		return sysfs_create_link(&connector->kdev->kobj,
-					 &connector->ddc->dev.kobj, "ddc");
+	if (connector->ddc) {
+		int ret = sysfs_create_link(&connector->kdev->kobj,
+					    &connector->ddc->dev.kobj, "ddc");
+		if (ret)
+			return ret;
+	}
+
+	if (connector->backlight) {
+		struct backlight_device *bd = drm_backlight_get_device(connector->backlight);
+
+		if (bd) {
+			int ret = sysfs_create_link(&connector->kdev->kobj,
+						    &bd->dev.kobj, "backlight");
+			if (ret) {
+				if (connector->ddc)
+					sysfs_remove_link(&connector->kdev->kobj, "ddc");
+				return ret;
+			}
+		}
+	}
 
 	return 0;
 }
 
 void drm_sysfs_connector_remove_early(struct drm_connector *connector)
 {
+	if (connector->backlight && drm_backlight_get_device(connector->backlight))
+		sysfs_remove_link(&connector->kdev->kobj, "backlight");
+
 	if (connector->ddc)
 		sysfs_remove_link(&connector->kdev->kobj, "ddc");
 }
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index cd1a161ae7bc6..13954c2220b7e 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -126,6 +126,9 @@ static void backlight_generate_event(struct backlight_device *bd,
 	case BACKLIGHT_UPDATE_HOTKEY:
 		envp[0] = "SOURCE=hotkey";
 		break;
+	case BACKLIGHT_UPDATE_DRM:
+		envp[0] = "SOURCE=drm";
+		break;
 	default:
 		envp[0] = "SOURCE=unknown";
 		break;
@@ -579,6 +582,20 @@ int backlight_unregister_notifier(struct notifier_block *nb)
 }
 EXPORT_SYMBOL(backlight_unregister_notifier);
 
+/**
+ * backlight_notify_brightness - notify brightness change to listeners
+ * @bd: backlight device that changed
+ *
+ * Notify registered listeners that the backlight brightness has changed.
+ * This is called automatically after successful brightness updates.
+ */
+void backlight_notify_brightness(struct backlight_device *bd)
+{
+	blocking_notifier_call_chain(&backlight_notifier,
+				     BACKLIGHT_BRIGHTNESS_CHANGED, bd);
+}
+EXPORT_SYMBOL(backlight_notify_brightness);
+
 /**
  * devm_backlight_device_register - register a new backlight device
  * @dev: the device to register
diff --git a/include/drm/drm_backlight.h b/include/drm/drm_backlight.h
new file mode 100644
index 0000000000000..e0e09e38f7c06
--- /dev/null
+++ b/include/drm/drm_backlight.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: MIT */
+#ifndef __DRM_BACKLIGHT_H__
+#define __DRM_BACKLIGHT_H__
+
+/*
+ * Copyright (c) 2014 David Herrmann <dh.herrmann at gmail.com>
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice shall be included in
+ * all copies or substantial portions of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
+ * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
+ * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ * OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+#include <linux/kernel.h>
+#include <linux/types.h>
+
+struct backlight_device;
+struct drm_backlight;
+struct drm_connector;
+struct drm_device;
+struct drm_mode_object;
+
+int drm_backlight_init(void);
+void drm_backlight_exit(void);
+
+int drm_backlight_alloc(struct drm_connector *connector);
+void drm_backlight_free(struct drm_connector *connector);
+void drm_backlight_register(struct drm_backlight *b);
+void drm_backlight_unregister(struct drm_backlight *b);
+
+void drm_backlight_link(struct drm_backlight *b, struct backlight_device *bd);
+struct backlight_device *drm_backlight_get_device(struct drm_backlight *b);
+void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int value);
+void drm_backlight_inhibit_legacy(struct drm_backlight *b);
+void drm_backlight_uninhibit_legacy(struct drm_backlight *b);
+void drm_backlight_inhibit_legacy_all(struct drm_device *dev);
+void drm_backlight_uninhibit_legacy_all(struct drm_device *dev);
+#endif /* __DRM_BACKLIGHT_H__ */
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 5ad62c207d009..d78ac1068d12e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -2410,6 +2410,9 @@ struct drm_connector {
 	 * @cec: CEC-related data.
 	 */
 	struct drm_connector_cec cec;
+
+	/* backlight link */
+	struct drm_backlight *backlight;
 };
 
 #define obj_to_connector(x) container_of(x, struct drm_connector, base)
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index e584652ddf676..b6d88319d5d0f 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -852,6 +852,11 @@ struct drm_mode_config {
 	 * the position of the output on the host's screen.
 	 */
 	struct drm_property *suggested_y_property;
+	/**
+	 * @luminance_property: Default connector property to control the
+	 * connector's backlight luminance.
+	 */
+	struct drm_property *luminance_property;
 
 	/**
 	 * @non_desktop_property: Optional connector property with a hint
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 204eea9256fd7..26a7281d179c1 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -29,6 +29,7 @@ enum backlight_update_reason {
 	 * @BACKLIGHT_UPDATE_SYSFS: The backlight was updated using sysfs.
 	 */
 	BACKLIGHT_UPDATE_SYSFS,
+	BACKLIGHT_UPDATE_DRM,
 };
 
 /**
@@ -80,6 +81,11 @@ enum backlight_notification {
 	 * @BACKLIGHT_UNREGISTERED: The backlight revice is unregistered.
 	 */
 	BACKLIGHT_UNREGISTERED,
+
+	/**
+	 * @BACKLIGHT_BRIGHTNESS_CHANGED: The backlight brightness has changed.
+	 */
+	BACKLIGHT_BRIGHTNESS_CHANGED,
 };
 
 /** enum backlight_scale - the type of scale used for brightness values
@@ -310,6 +316,9 @@ struct backlight_device {
 	int use_count;
 };
 
+/* Forward declaration for backlight_update_status */
+void backlight_notify_brightness(struct backlight_device *bd);
+
 /**
  * backlight_update_status - force an update of the backlight device status
  * @bd: the backlight device
@@ -323,6 +332,10 @@ static inline int backlight_update_status(struct backlight_device *bd)
 		ret = bd->ops->update_status(bd);
 	mutex_unlock(&bd->update_lock);
 
+	/* Notify DRM and other listeners that brightness changed */
+	if (ret == 0)
+		backlight_notify_brightness(bd);
+
 	return ret;
 }
 
-- 
2.43.0

