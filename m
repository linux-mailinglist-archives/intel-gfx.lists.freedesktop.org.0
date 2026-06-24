Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QJqQKcoMPGoNjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4296C02CD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=tHjmgsjF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2A210EFEB;
	Wed, 24 Jun 2026 16:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010002.outbound.protection.outlook.com
 [40.93.198.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C8310EFE3;
 Wed, 24 Jun 2026 16:58:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZaLEIXlhc8eu9c9xwhf84+6052FGODMZDIRFJH3mcc47pj8Mycl06RFWAA5wdOqsApRtMFqO4bZ6S/aPMtZcRY5+3QxF6b8N9FkLswlzqwZ7RKDVaTvtfmq7XlQfh+QyvM28JVyKTbN6d9fQzwDcwEoeEXF7nIIu0xV1sakk0HI9Cgo0VCtFttzBSnAUZkDGBawDOYrR4e2yWr5Z1yIteykniyZxYL+AnOaB8woXk2JEHBPltZmsVODx6unbbobxOm/oQWUrXCIz3AmauKD1Yja2jxMBaRzz4e7+elEYHB1V4FtafWgtcVhTWnu5TyRYtp4RlGmAX2gCw1VwMwZCUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kjPUt10GdbRnxbPbN8KjbILNpbxHg+hcwezhhE8WrvU=;
 b=S7APLDJaK/beZgsDHb9JaFB7fyogbMZkenewHW5stCGALH9t83hnrMSuZGEnoLJCNn9CHxNHckaJ0dozz5S/zRUdTpkPIJE7ViW2EHDf9w8dmAIDkLiRrEmDpUf7H+KjB+6s65zXmwmFPfljD21F79UGhrfB9qXpMhSB77mqoq/VPlhfHA7/5keS/nlryvtT+SVgHvn9+cYmnZyOM5cWogmrNzqAld7lj32bL+0ERi8CLnNaHe1hs5j3Muhygll8OKEfZ1nX2fRczllJ8/ECwVKUB/ZrUZcCgwmd/aCQV3DkaRIPr2V6/IiPw8mb5H0eStDVPoTz9/8jReP7oSluNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjPUt10GdbRnxbPbN8KjbILNpbxHg+hcwezhhE8WrvU=;
 b=tHjmgsjF+si5XMBtSdxNw6fFQOmf8/NDvzej+UyH3cf+oAUiE1bR+uOkdfAGZvRACblyl2k5IA3GN4lvFamM6zYWP9Kv3nNDmeFIupvPIWgqD1vW55ZZHZ1t59IXV0dXJqRnH31obQVfehpQPHEAfieEczq+zaVHUq38lvej7wg=
Received: from CY5PR19CA0084.namprd19.prod.outlook.com (2603:10b6:930:69::20)
 by DS0PR12MB9322.namprd12.prod.outlook.com (2603:10b6:8:1bd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 16:58:34 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::6d) by CY5PR19CA0084.outlook.office365.com
 (2603:10b6:930:69::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.14 via Frontend Transport; Wed,
 24 Jun 2026 16:58:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:34 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:32 -0500
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
 <superm1@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Simon Ser <contact@emersion.fr>
Subject: [PATCH v6 09/10] drm/bridge: auto-link panel backlight in bridge
 connector
Date: Wed, 24 Jun 2026 09:57:49 -0700
Message-ID: <20260624165751.2014759-10-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|DS0PR12MB9322:EE_
X-MS-Office365-Filtering-Correlation-Id: 1821946d-db5c-41c8-fc9b-08ded211d3ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|23010399003|36860700016|376014|82310400026|6133799003|56012099006|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: c8Ayy25gVNZa/VTtbALTseL2tnDpT6fNwPNwq3TM/fA+TFsFi9owZ47zE7vrWqUALQ2QEwfdKJP+eFTN4ni7ZclYgO5w9AwOyPAguWl25d94Btb/geLDnQ6XU5OEny+MKO0GTb0CUUhiWFfsPKbCPS9cbzY0+RrScadgQW5ZP+ha8S/ZY99onuEZQfQmNKerGBFqWFvw5LciDpumGdS3J9NUL1dlFKNyXfcLnGT8emokHEXWeGCLYxWwTOTFP7eMrQZy61sBoRkQXQ1ZISpBN7erMjPyWcTopOyXD+uL7j9oV0LmXO/ugosYzXncwsAVDP5Kklhn7tZVwMMH2YtLHfsHcmaxZZyc53gfpyUuBrvmtj7TMGTiSsmCMcVqldbRAFZTgruwBaGBdm/pnj9i6PqrheaJ4y1fRyCkHaQSAaGkGZCvxgsq5DzGZ0crL9wkSiNSWU/6Wi4aFip2kO9CocbznLSNtE1H3ZjP8RKsuyMuF+YnedQ9tFQq4QD1F+f4fSqrvoDCJYcQrn7dY0LN0u4CEXAoMEvnLW0XZ7I7hLTaRbMwPq87Q+qeL3d6A5rkye85RXC4TsbaWl3Jn0gx8k8DMQJ3Q92IPCPQtTLAfanuSblTSP3W0QbKSMAfwud9ymSQ3VrPxkh/OHfjBp4UXoPTHtEIsyNL+aY6/wwvIlsJBaYScDqcLNQP0sAVKlLKaHuCmG3Z3egAhqAu2CYp3Q==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(23010399003)(36860700016)(376014)(82310400026)(6133799003)(56012099006)(22082099003)(18002099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 3zqHtHNrwC/CGVoOfEhpWS3WggTdOOYloO8+O1Y720gtkQ8q5dsKUwTwt3POreKA4fPtzUukQ1cKuLLphFisSqHQIJuXazWqZBYvNN0YdpCtThDrbfPfwA7Kmc536l9RPzcg/aM11/Oy92Bcif1S6ZKMXA9yx8EMCji6mCXS2IIxcfet1/3TOEJdy+jvDwRZ6mKQBeSLEf6qubf6L4lYidnbIH7WxN1tZAPgs6e6q2OxICKTNj1Jz2zx91PF5HWKT6mv4pdNkEhJMyjc8i2FR+N9MGH1N4kK+8Tja3NJ3U7MuEDyAEtv0r8qTSicYJIKOBjflspvJhSBm9NQWL4SSOKXeIQ0HVyU3QZD03Oop0rYyjlMGxrp5U2WBwa5ANkQaYGUChKJ/xG6G4zdOsSlbF0Ko9O4tdXvzcaMQI5H0YxV+U3D1Ihy2nNZmkFRAjAI
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:34.4440 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1821946d-db5c-41c8-fc9b-08ded211d3ec
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB9322
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
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,kernel.org,oss.qualcomm.com,emersion.fr];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[emersion.fr:email,qualcomm.com:email,amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F4296C02CD

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

The link should allow clients to change luminance property.

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # SM8150-HDK
Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
Tested-by: Simon Ser <contact@emersion.fr>
---
 drivers/gpu/drm/bridge/panel.c                 | 15 +++++++++++++++
 drivers/gpu/drm/display/drm_bridge_connector.c | 15 ++++++++++++++-
 include/drm/drm_bridge.h                       |  1 +
 3 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
index 4978ec98a0828..2fa15278faf87 100644
--- a/drivers/gpu/drm/bridge/panel.c
+++ b/drivers/gpu/drm/bridge/panel.c
@@ -233,6 +233,21 @@ bool drm_bridge_is_panel(const struct drm_bridge *bridge)
 }
 EXPORT_SYMBOL(drm_bridge_is_panel);
 
+/**
+ * drm_panel_bridge_to_panel - get the drm_panel wrapped by a panel bridge
+ * @bridge: the panel bridge
+ *
+ * Returns the &drm_panel wrapped by @bridge, or NULL if @bridge is not a
+ * panel bridge.
+ */
+struct drm_panel *drm_panel_bridge_to_panel(struct drm_bridge *bridge)
+{
+	if (!drm_bridge_is_panel(bridge))
+		return NULL;
+	return drm_bridge_to_panel_bridge(bridge)->panel;
+}
+EXPORT_SYMBOL(drm_panel_bridge_to_panel);
+
 /**
  * drm_panel_bridge_add - Creates a &drm_bridge and &drm_connector that
  * just calls the appropriate functions from &drm_panel.
diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 649969fca1413..23a3802294625 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -11,7 +11,9 @@
 #include <linux/slab.h>
 
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_panel.h>
 #include <drm/drm_bridge_connector.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_device.h>
@@ -1051,9 +1053,20 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 		connector->polled = DRM_CONNECTOR_POLL_CONNECT
 				  | DRM_CONNECTOR_POLL_DISCONNECT;
 
-	if (panel_bridge)
+	if (panel_bridge) {
+		struct drm_panel *panel;
+
 		drm_panel_bridge_set_orientation(connector, panel_bridge);
 
+		panel = drm_panel_bridge_to_panel(panel_bridge);
+		if (panel && panel->backlight) {
+			ret = drm_backlight_alloc(connector);
+			if (!ret)
+				drm_backlight_link(connector->backlight,
+						   panel->backlight);
+		}
+	}
+
 	if (support_hdcp && IS_REACHABLE(CONFIG_DRM_DISPLAY_HELPER) &&
 	    IS_ENABLED(CONFIG_DRM_DISPLAY_HDCP_HELPER))
 		drm_connector_attach_content_protection_property(connector, true);
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 4ba3a5deef9a6..6311ca726b45f 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -1586,6 +1586,7 @@ void drm_bridge_hpd_notify(struct drm_bridge *bridge,
 
 #ifdef CONFIG_DRM_PANEL_BRIDGE
 bool drm_bridge_is_panel(const struct drm_bridge *bridge);
+struct drm_panel *drm_panel_bridge_to_panel(struct drm_bridge *bridge);
 struct drm_bridge *drm_panel_bridge_add(struct drm_panel *panel);
 struct drm_bridge *drm_panel_bridge_add_typed(struct drm_panel *panel,
 					      u32 connector_type);
-- 
2.43.0

