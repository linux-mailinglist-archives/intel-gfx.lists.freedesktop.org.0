Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z8bjJLsMPGr0jAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1626C0272
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b="3ONI+/oq";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C1210E0C7;
	Wed, 24 Jun 2026 16:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013066.outbound.protection.outlook.com
 [40.107.201.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B5610E0A7;
 Wed, 24 Jun 2026 16:58:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tEARgkqcOPQSxM78/M42U3GzCopeAuN+WIelxHLFdCvKwx0v0hW+p71G6mRHR/BC/3BGjf7OCXIHxQMt+nQNDWz0H9Gdq15ao1TlHLkmtAQcAAv8T/IlHaPEn20i4PURgRBoqgf+4KgqxTR2g5C8R34WGOxhwBmH22Xchc4xdHYqxM4j2m40I2oCJcLN77WrzeaeEc5Gxx4/qC1eccAvSOJyKYGNxJKWl/FMegLuZixjeeeqZRxOgF2NSU66Dk1LvQ8N0xrRFJUNkEcn3wxs2TqrplEPloB+i9FPfDnH2BxyZhgDTFhr4gNtCpG2vOsXZIDmAZTsV1EwS6kEYZRASA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=puAwfhqjf6RKZvYVWgJRiugpwyTbIxU+nIB22zqmZDg=;
 b=Y4bSl0rf+v21yyEPWEpwK8Q2mKXZnoq5G5r7MfAjDzB99AWWcgTiJAs07gMHH/0mEnL4vbRhoiDTeQvEhv3YMVOJkzYAgZIo2BjH+Z3+kEW/u/jHzlRl8FMbM9A8IAMnvXljaA1l4+VPoEpUPckI2PXTLiozuy6O4SrVHEcGiTlJ/ZfwW5TXShDFm7nAlZ/Qwo4++XN90/Y7VLwla/Q55J8SNiBcqlZO0yTU3cBU7xPF6h8ZDWE7yno+8nFKdUCytg468jqxA/2aSFfhfxHNqC0ygyzTwjXIfa6npbxJ0z+fRFuFOIa1HYuCdmQ9bkTp43IBlmx0tZebk6nooHNSUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=puAwfhqjf6RKZvYVWgJRiugpwyTbIxU+nIB22zqmZDg=;
 b=3ONI+/oquosBVam7fm3FcE5tqOYIFTtJIuh6CfIHx46sa1X1PB21ixJf4YkbFizqPM5QxONTe8yTdQpZe1wT8FAgwcZd3n5nmO9t7TrXEk/E6LQ68dPJ+uYXD/skEtTkfK3CRsv68GzxgYrA+ZMqzkWXJ6J3ogKgN20g+/oE3HM=
Received: from CY5PR19CA0068.namprd19.prod.outlook.com (2603:10b6:930:69::8)
 by DS4PR12MB9795.namprd12.prod.outlook.com (2603:10b6:8:29e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 24 Jun
 2026 16:58:26 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::4b) by CY5PR19CA0068.outlook.office365.com
 (2603:10b6:930:69::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.15 via Frontend Transport; Wed,
 24 Jun 2026 16:58:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:25 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:20 -0500
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
 <superm1@kernel.org>, David Herrmann <dh.herrmann@gmail.com>, Marta Lofstedt
 <marta.lofstedt@intel.com>
Subject: [PATCH v6 02/10] backlight: add kernel-internal backlight API
Date: Wed, 24 Jun 2026 09:57:42 -0700
Message-ID: <20260624165751.2014759-3-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|DS4PR12MB9795:EE_
X-MS-Office365-Filtering-Correlation-Id: ddc855e5-21fb-4d59-54bc-08ded211ceb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|7416014|376014|36860700016|82310400026|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: OA9Cg+y+gZ9Unsb2QMfkt6HjTDEZtnosOA3x8147jLofWiaLBjqP3n97QqxOKYHGcWmMs3Q7esRr6PihcrqIpoZehcC3TUDS2v25EJqThVwaijO2+qYZJ9lH0/kzTVM2QhyRHB4BVwN6VZ+im2arfkq1jPxVmRcTMHQSEp7o1LHvs4vuIjHSnb8KvsOpRQF1axr6CT7wihcFfNWNcn1uSemYfpR0Ll2b/Ofzot0yhLYs/Y+jvqStRUBfmVYLqAe3RtTzGgL5cGGQW+nxscmN4vUkRRqhyScLK+bsoXcaZXz4MbS55DEkNC8iV1jz7GdJPfKfeCe5Rel3CwwlSsAz+uleykoBuPWHvQkXiaxZoMCpS6AHypk0Bu7EOdkYdG8QsSsLE74H9BsBJSm7WxPkhQ3SNCxwJYmoEMwIK7c5iYdoZwb0pQGVC+5ymCq/7DlTAjiqdqK7UlORhCAkUqNYcoZXd1c6ZOdS5dt6Z1F+xm6j/uv03i9kNomCTiQRzUYoVQYW2Ie4FoLXC3vtcmK2Z0tVC1gLyfAWFp9kp5tcvGk1V359bU1n9mG3b4X1mgyhdoSpklmU2Hmp0nQVjcflDp8PAXhH+oVLVEsaKQWv8EFMKwDDfhvkstsdkitTLrRAxm7fngErYodvmdHEpsGDUVMjm3Gi6kiWVO+f9MwBPmAPc3sRSpSJt0zI1TBXnWKqfbtlUefyTersVn5aheQuaA==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(7416014)(376014)(36860700016)(82310400026)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: NpGW6l47Mxdh/tZ7hhIQM7xxGtlxfnkU84z+GkjuNRlGyyYw/GoYDloplAf3VPffzeFsQcuCxfZ/YaO/8bY6fUpK/fVQmK516DzIQ9yNzcr9GZuchEDXzNJDqj26tIs3mGqYPZ46MTLNbwE0LUkz+2P/f3JfCkOyVFf9YeqoJCZkOEgI1bvecnkwaP9D6OY/MWSDpK+9gneSd6TZ390zE2l93kIRGfPbdntJLwh7RlfF53lbJZhialLNMD+sBXakagBF98FtdiOmJbxE5DJyl7uPWRiaMRkOorReuJipNjkEDzEaYL4oB6IhMktbO4rkIT4jGpwh6gTSA+9pjsiAc0r2z64QNXAuJ2j4hfOiGe2oAPa+OqWcXH3yH+6sbU/lx0mjcRwvP+eekXiNwN6f4Q60S0xhjpx4A3ynmX4+iLsUXltdwcPzbYZzH12XMyav
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:25.6704 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ddc855e5-21fb-4d59-54bc-08ded211ceb2
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9795
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
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FREEMAIL_TO(0.00)[lists.freedesktop.org,amd.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,kernel.org,intel.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D1626C0272

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

So far backlights have only been controlled via sysfs. However, sysfs is
not a proper user-space API for runtime modifications, and never was
intended to provide such. The DRM drivers are now prepared to provide
such a backlight link so user-space can control backlight via DRM
connector properties. This allows us to employ the same access-management
we use for mode-setting.

This patch adds few kernel-internal backlight helpers so we can modify
backlights from within DRM.

Signed-off-by: David Herrmann <dh.herrmann@gmail.com>

V2: Marta Lofstedt <marta.lofstedt@intel.com>
- rebase
- minor edit for checkpatch warning

Signed-off-by: Marta Lofstedt <marta.lofstedt@intel.com>

V3: Mario Limonciello (AMD) <superm1@kernel.org>
 - rebase
 - Use guard(mutex)

V4: Mario Limonciello (AMD) <superm1@kernel.org>
 - Adjust return type for backlight_set_brightness() to return errors
 - Stop clamping in backlight_set_brightness()
 - Drop backlight_device_lookup()

V5: Mario Limonciello (AMD) <superm1@kernel.org>
 - Drop unnecessary dynamic debug message as backlight_generate_event()
   sends a netlink event.

Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
---
 drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++
 include/linux/backlight.h           | 15 ++++++++++++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index ff2c2084c73a4..cd1a161ae7bc6 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -514,6 +514,37 @@ static int devm_backlight_device_match(struct device *dev, void *res,
 	return *r == data;
 }
 
+/**
+ * backlight_set_brightness - set brightness on a backlight device
+ * @bd: backlight device to operate on
+ * @value: brightness value to set on the device
+ * @reason: backlight-change reason to use for notifications
+ *
+ * This is the in-kernel API equivalent of writing into the 'brightness' sysfs
+ * file. It calls into the underlying backlight driver to change the brightness
+ * value.
+ * A uevent notification is sent with the reason set to @reason.
+ * Return: 0 if successfully notified, -EINVAL for invalid values
+ */
+int backlight_set_brightness(struct backlight_device *bd, unsigned int value,
+			      enum backlight_update_reason reason)
+{
+	int rc = 0;
+
+	guard(mutex)(&bd->ops_lock);
+	if (bd->ops) {
+		if (value > bd->props.max_brightness)
+			return -EINVAL;
+		bd->props.brightness = value;
+		rc = backlight_update_status(bd);
+	}
+	if (rc == 0)
+		backlight_generate_event(bd, reason);
+
+	return rc;
+}
+EXPORT_SYMBOL_GPL(backlight_set_brightness);
+
 /**
  * backlight_register_notifier - get notified of backlight (un)registration
  * @nb: notifier block with the notifier to call on backlight (un)registration
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index d905173c7f73c..204eea9256fd7 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -429,6 +429,21 @@ static inline void backlight_notify_blank_all(struct device *display_dev,
 { }
 #endif
 
+int backlight_set_brightness(struct backlight_device *bd, unsigned int value,
+			      enum backlight_update_reason reason);
+
+static inline void backlight_device_ref(struct backlight_device *bd)
+{
+	if (bd)
+		get_device(&bd->dev);
+}
+
+static inline void backlight_device_unref(struct backlight_device *bd)
+{
+	if (bd)
+		put_device(&bd->dev);
+}
+
 #define to_backlight_device(obj) container_of(obj, struct backlight_device, dev)
 
 /**
-- 
2.43.0

