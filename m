Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1R/PCNAMPGoWjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE8E6C02F1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b="IFXj/TDY";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C92510EFF3;
	Wed, 24 Jun 2026 16:58:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010037.outbound.protection.outlook.com [52.101.56.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4084110EFF6;
 Wed, 24 Jun 2026 16:58:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SwKwjWhJjHPSep3J0kKIWNt6+hSdmOk24b4U7ru4Ek2hgxtaQKHNezYalG1/+iX/ZeyWDtvPoJ3arbokEIPVU6zRvYVm5OFuPFsllfz93CQE1+tLp5rAG2NnoW3akLFrSKnxzG8RhmbgRQxNT/xFgRuGPA62GZ7YSkjA8ZRC+Oax6Pop0FDYdKi02AfTQ+8Gt0cNlCDCWrMc6iK6F9v5DyYauyHY1y75MKPLTQ86bBhRHKq7LiDaB8QljzsUFnHrWiGnxBYge1+RqKoISIDmASY6/kYz1jjOgtoG/j/3sD9bJ+au1wOxu9B1B94wlMH2fwNObCRUaA10Be+LFS+PfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gnBLMMW8Wdr3ubqJ7D1oGwy7MEXRL29HqjIJjs9ohJ0=;
 b=I852K/QVGKFYTT3fLiU88LUPUjkJc/FlS/a8Vti8IoK29cXJ9ONzStIQ1N/1PD0cAkRhlwdKTd1pw/JvvcH/Tc0LJtqwyQwA2o9kUnnXL56aEkEFvrPdqmn9A9RxbW6f3rmDK1urb39561gimZK4vz2P163+adf8Fdt6WcwoSbDM6e36emH9zpfydngavQTAXVfK9Wj/JYQfE80yVOy7y9G/9fsHOrDh/aUattKcsv6SfxR05tihjQn+sp6HRq4nnm61QcB7cBsWua00FyAOGmCKAVXN1A63oP2qw8w75TQ8W/ObOedqAAJrAa4mryKWikgZYXsMReyPVJd8LWBauw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnBLMMW8Wdr3ubqJ7D1oGwy7MEXRL29HqjIJjs9ohJ0=;
 b=IFXj/TDYxnX8jJcKBkLdDeLEBXO3ICi0k+ktY7Fh+XwMuRxLu8ApwXnEAME2jA76g+uFa1W+mT8sHBcssq1uokwk/ycRB2ulF7UOqkXbqwMg5ACbV7T5L45RCNoLmXcznQ4FfSLru0eAELVfrgQDrPVUSl1u1ODnBXIiw8MrjR4=
Received: from CY5PR19CA0066.namprd19.prod.outlook.com (2603:10b6:930:69::12)
 by DM4PR12MB6424.namprd12.prod.outlook.com (2603:10b6:8:be::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 24 Jun
 2026 16:58:27 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::24) by CY5PR19CA0066.outlook.office365.com
 (2603:10b6:930:69::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.14 via Frontend Transport; Wed,
 24 Jun 2026 16:58:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:27 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:24 -0500
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
Subject: [PATCH v6 04/10] DRM: Add support for client indicating support for
 luminance
Date: Wed, 24 Jun 2026 09:57:44 -0700
Message-ID: <20260624165751.2014759-5-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|DM4PR12MB6424:EE_
X-MS-Office365-Filtering-Correlation-Id: 421c0d46-6b47-45cd-0dee-08ded211cf9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|36860700016|1800799024|82310400026|376014|7416014|3023799007|6133799003|5023799004|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: ZTUsgSu8Ahog9n0TpLdx/epzl+FqwccheNZZBF1PvxsZ/3Sib0Oxb1OzcdGv8lntxgf3hDdbrd/ncfDxxmRo2nWU1C5L+/guiiVpQyjW7zYnaIvSKS2Y734gJdmYhYYv3PoPyplCvjYsA/XXMASAoLU2vKH71zp9K8FgvsBis296pILTXP7v56E3tTnQHnzBR4Co8L/KSiDzVedgc9/uF9UXJPh6EVOmftCG6NImu7+GGhwvoYLW+sCdIgVEiuW3GwKOB0xdpck7tJ453PEEPsBVK2H+e4sB1vUqQkEjhxRojjOkGIb20Qn1rF9np57O68nSK1OCvRDkKQqS2+R3nCwOydloAX9r9sO9IWJ/pW89FWV7eDzww+/H4O6r4CaglJ46Uh3nyY9QJmawNVQB5y73v3g7JWOADm1+9kWh1AP18LKb1PUuiZ5vRV6+kp+Boa3F5PiMhVb0igV8WtSKuZYiZEThKYdxdPdX1U7NCRjcXh1K7rwqWiUT7mqz80SjJ/FD6DLz0PtcyaupSdjRMLiFAN5o4fAovYY/2rbO7T8P9HgrpbWufSEbTtJN16nNubhKWJB4axDJuo4O//TdcvaOeAO8iDLlJ3FjzHaZfWzRAM6+E3gkzaSlHvAtfw0fQm9JhCZsbDX8mr8h07aNlEBxXG0xmx+oGSkPc8cn2Qc11RBwlMr/XEW1gH1JPGCAKpAuEjosWA22yRMGtmzXRA==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(23010399003)(36860700016)(1800799024)(82310400026)(376014)(7416014)(3023799007)(6133799003)(5023799004)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Sdt7pldEuqAAeFMcuVBSK3c9WiuZnMN5iSl0Ru5kP8zioYHW4PiHMpQiTRZiXmCJsNtwoScsBpos5a1+ivF4+GZcIiB0+opj6JbCcQ0pTwYfc+gaXu0hAvw8BM84mABJWgWQbTY/QCVamVUsDvhIyAYm9sDujsjKFhsxHJajlQQGVWY1rc9wVBsE67/yk0y/DJhEIqjrh5GpsDOVGW7vsV4WOe81TPyUgKSmUb5a3V9pu2/1NLG5cbagxjdDQrG5hPuyGfzayHf863Bfm7qiKSxEV9qhiWdA4+jUOX3dw9KuKhZ9O9yynPFQS7/rRqviXi6W6wELoDmlgvh0ucrOh9nVjmu4ksGf2TzFG/ibc9gceHsxyn1RYCuHSZpFqSiCKA5G5GQmKEKh15NNVXAJMeGx4hjFJxnN5zjr5tyCS/wsxdr1OW+PMc7Uy3xOo6ab
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:27.2157 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 421c0d46-6b47-45cd-0dee-08ded211cf9e
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6424
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BE8E6C02F1

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

The legacy backlight control interface can only be disabled when both
the client and driver has connector support that the luminance can be
set during a modeset. Add capability for the client to register.

When a luminance-aware client sets DRM_CLIENT_CAP_LUMINANCE, each
DRM-connected backlight on the device is marked as taken over. Writes
to the legacy /sys/class/backlight/<dev>/brightness attribute then
return -EBUSY until the last luminance-aware client clears the cap or
closes its DRM file. The takeover follows the active backlight_device
when drm_backlight_link() retargets the link.

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # SM8150-HDK
Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
---
 drivers/gpu/drm/drm_atomic_helper.c |  7 +++
 drivers/gpu/drm/drm_atomic_uapi.c   | 59 +++++++++++++++++++-
 drivers/gpu/drm/drm_backlight.c     | 86 +++++++++++++++++++++++++++--
 drivers/gpu/drm/drm_connector.c     | 51 +++++++++++++++++
 drivers/gpu/drm/drm_file.c          |  5 ++
 drivers/gpu/drm/drm_ioctl.c         | 15 +++++
 drivers/gpu/drm/drm_property.c      |  6 ++
 drivers/video/backlight/backlight.c |  7 +++
 include/drm/drm_backlight.h         |  2 +-
 include/drm/drm_connector.h         |  5 ++
 include/drm/drm_file.h              |  8 +++
 include/linux/backlight.h           | 15 +++++
 include/uapi/drm/drm.h              | 22 ++++++++
 13 files changed, 280 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 51f39edc31edc..17492ff6c5579 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -32,6 +32,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_colorop.h>
@@ -1224,6 +1225,8 @@ drm_atomic_helper_commit_encoder_bridge_disable(struct drm_device *dev,
 		 * it away), so we won't call disable hooks twice.
 		 */
 		bridge = drm_bridge_chain_get_first_bridge(encoder);
+		if (connector->backlight)
+			drm_backlight_set_luminance(connector->backlight, 0);
 		drm_atomic_bridge_chain_disable(bridge, state);
 		drm_bridge_put(bridge);
 
@@ -1738,6 +1741,10 @@ drm_atomic_helper_commit_encoder_bridge_enable(struct drm_device *dev, struct dr
 
 		drm_atomic_bridge_chain_enable(bridge, state);
 		drm_bridge_put(bridge);
+
+		if (connector->backlight && connector->state)
+			drm_backlight_set_luminance(connector->backlight,
+						    connector->state->luminance);
 	}
 }
 EXPORT_SYMBOL(drm_atomic_helper_commit_encoder_bridge_enable);
diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 6441b55cc2740..ebf434bbd963b 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -30,6 +30,8 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_backlight.h>
+#include <drm/drm_connector.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_print.h>
 #include <drm/drm_drv.h>
@@ -935,6 +937,14 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
 		state->privacy_screen_sw_state = val;
 	} else if (property == connector->broadcast_rgb_property) {
 		state->hdmi.broadcast_rgb = val;
+	} else if (property == config->luminance_property) {
+		state->luminance = val;
+		/* Update hardware backlight only when DPMS is ON.
+		 * Property value is always updated to remember the user's
+		 * desired brightness.
+		 */
+		if (connector->dpms == DRM_MODE_DPMS_ON)
+			drm_backlight_set_luminance(connector->backlight, val);
 	} else if (connector->funcs->atomic_set_property) {
 		return connector->funcs->atomic_set_property(connector,
 				state, property, val);
@@ -1020,6 +1030,8 @@ drm_atomic_connector_get_property(struct drm_connector *connector,
 		*val = state->privacy_screen_sw_state;
 	} else if (property == connector->broadcast_rgb_property) {
 		*val = state->hdmi.broadcast_rgb;
+	} else if (property == config->luminance_property) {
+		*val = state->luminance;
 	} else if (connector->funcs->atomic_get_property) {
 		return connector->funcs->atomic_get_property(connector,
 				state, property, val);
@@ -1104,6 +1116,31 @@ static struct drm_pending_vblank_event *create_vblank_event(
 	return e;
 }
 
+static void drm_atomic_connector_set_backlight(struct drm_connector *connector,
+						       unsigned int luminance)
+{
+	if (!connector->backlight)
+		return;
+
+	drm_backlight_set_luminance(connector->backlight, luminance);
+}
+
+static void drm_atomic_crtc_set_backlight(struct drm_crtc *crtc, bool active)
+{
+	struct drm_connector_list_iter conn_iter;
+	struct drm_connector *connector;
+
+	drm_connector_list_iter_begin(crtc->dev, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		if (!connector->state || connector->state->crtc != crtc)
+			continue;
+
+		drm_atomic_connector_set_backlight(connector,
+						  active ? connector->state->luminance : 0);
+	}
+	drm_connector_list_iter_end(&conn_iter);
+}
+
 int drm_atomic_connector_commit_dpms(struct drm_atomic_commit *state,
 				     struct drm_connector *connector,
 				     int mode)
@@ -1126,9 +1163,29 @@ int drm_atomic_connector_commit_dpms(struct drm_atomic_commit *state,
 	if (connector->dpms == mode)
 		goto out;
 
+	crtc = connector->state ? connector->state->crtc : NULL;
+
+	/* Handle backlight brightness coordination with DPMS state changes */
+	if (old_mode != DRM_MODE_DPMS_OFF && mode == DRM_MODE_DPMS_OFF) {
+		/* DPMS ON -> OFF: dim all connectors driven by this CRTC. */
+		if (crtc)
+			drm_atomic_crtc_set_backlight(crtc, false);
+		else
+			drm_atomic_connector_set_backlight(connector, 0);
+	}
+
 	connector->dpms = mode;
 
-	crtc = connector->state->crtc;
+	/* DPMS OFF -> ON: restore brightness to property value */
+	if (old_mode == DRM_MODE_DPMS_OFF && mode == DRM_MODE_DPMS_ON &&
+	    connector->state) {
+		if (crtc)
+			drm_atomic_crtc_set_backlight(crtc, true);
+		else
+			drm_atomic_connector_set_backlight(connector,
+						  connector->state->luminance);
+	}
+
 	if (!crtc)
 		goto out;
 	ret = drm_atomic_add_affected_connectors(state, crtc);
diff --git a/drivers/gpu/drm/drm_backlight.c b/drivers/gpu/drm/drm_backlight.c
index b1ec470be86ca..2cddf209d5088 100644
--- a/drivers/gpu/drm/drm_backlight.c
+++ b/drivers/gpu/drm/drm_backlight.c
@@ -71,6 +71,7 @@ static bool __drm_backlight_is_registered(struct drm_backlight *b)
 /* caller must hold @drm_backlight_lock */
 static void __drm_backlight_real_changed(struct drm_backlight *b, uint64_t v)
 {
+	struct drm_connector *connector = b->connector;
 	unsigned int max, set;
 
 	lockdep_assert_held(&drm_backlight_lock);
@@ -85,6 +86,15 @@ static void __drm_backlight_real_changed(struct drm_backlight *b, uint64_t v)
 	set = v;
 	if (set >= max)
 		set = max;
+
+	/* Update the atomic state directly.
+	 * For atomic drivers, the luminance value is stored in
+	 * connector->state->luminance, not in the legacy property array.
+	 * We update it unconditionally to reflect the hardware state,
+	 * regardless of DPMS.
+	 */
+	if (connector->state)
+		connector->state->luminance = set;
 }
 
 /**
@@ -100,18 +110,22 @@ static void __drm_backlight_update_prop_range(struct drm_backlight *b)
 	struct drm_device *dev = b->connector->dev;
 	struct drm_property *prop = dev->mode_config.luminance_property;
 	unsigned int max = 0;
+	bool can_disable = false;
 
 	lockdep_assert_held(&drm_backlight_lock);
 
-	if (b->link && b->link->props.max_brightness > 0)
+	if (b->link && b->link->props.max_brightness > 0) {
 		max = b->link->props.max_brightness;
+		can_disable = b->link->props.can_disable;
+	}
 
 	/* Update property range to match hardware capabilities.
 	 * Range of 0-0 indicates no backing device.
-	 * Range of 1-max for normal operation (0 reserved for display off).
+	 * Range of 1-max for normal operation.
+	 * Range of 0-max means that the display would turn off at 0
 	 */
 	if (prop->values[1] != max) {
-		prop->values[0] = max ? 1 : 0;
+		prop->values[0] = max ? (can_disable ? 0 : 1) : 0;
 		prop->values[1] = max;
 	}
 }
@@ -123,6 +137,16 @@ static bool __drm_backlight_link(struct drm_backlight *b,
 	if (bd == b->link)
 		return false;
 
+	/* Transfer any DRM legacy-sysfs takeover from the old link to the
+	 * new one so the inhibit follows the active backlight_device.
+	 */
+	if (b->luminance_clients) {
+		if (b->link)
+			atomic_sub(b->luminance_clients, &b->link->drm_takeover);
+		if (bd)
+			atomic_add(b->luminance_clients, &bd->drm_takeover);
+	}
+
 	backlight_device_unref(b->link);
 	b->link = bd;
 	backlight_device_ref(b->link);
@@ -177,6 +201,7 @@ void drm_backlight_free(struct drm_connector *connector)
 
 	WARN_ON(__drm_backlight_is_registered(b));
 	WARN_ON(b->link);
+	WARN_ON(b->luminance_clients);
 
 	kfree(b);
 	connector->backlight = NULL;
@@ -228,11 +253,18 @@ EXPORT_SYMBOL(drm_backlight_unregister);
  */
 void drm_backlight_link(struct drm_backlight *b, struct backlight_device *bd)
 {
+	static const char * const ep[] = { "BACKLIGHT=1", NULL };
+	bool send_uevent = false;
+
 	if (!b)
 		return;
 
 	guard(spinlock)(&drm_backlight_lock);
-	__drm_backlight_link(b, bd);
+	send_uevent = __drm_backlight_link(b, bd);
+
+	if (send_uevent)
+		kobject_uevent_env(&b->connector->kdev->kobj, KOBJ_CHANGE,
+				   (char **)ep);
 }
 EXPORT_SYMBOL(drm_backlight_link);
 
@@ -269,6 +301,11 @@ void drm_backlight_inhibit_legacy(struct drm_backlight *b)
 {
 	if (!b)
 		return;
+
+	guard(spinlock)(&drm_backlight_lock);
+	b->luminance_clients++;
+	if (b->link)
+		atomic_inc(&b->link->drm_takeover);
 }
 EXPORT_SYMBOL(drm_backlight_inhibit_legacy);
 
@@ -283,6 +320,13 @@ void drm_backlight_uninhibit_legacy(struct drm_backlight *b)
 {
 	if (!b)
 		return;
+
+	guard(spinlock)(&drm_backlight_lock);
+	if (WARN_ON(b->luminance_clients == 0))
+		return;
+	b->luminance_clients--;
+	if (b->link)
+		atomic_dec(&b->link->drm_takeover);
 }
 EXPORT_SYMBOL(drm_backlight_uninhibit_legacy);
 
@@ -324,8 +368,38 @@ EXPORT_SYMBOL(drm_backlight_uninhibit_legacy_all);
 
 void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int value)
 {
-	guard(spinlock)(&drm_backlight_lock);
-	__drm_backlight_real_changed(b, value);
+	struct backlight_device *bd = NULL;
+	unsigned int set = 0;
+	unsigned long flags;
+	unsigned int max = 0;
+
+	spin_lock_irqsave(&drm_backlight_lock, flags);
+	if (b && b->link) {
+		struct backlight_device *link = b->link;
+
+		max = b->link->props.max_brightness;
+
+		if (max == 0)
+			goto out;
+
+		set = min(value, max);
+		if (set == link->props.brightness)
+			goto out;
+
+		bd = link;
+		backlight_device_ref(bd);
+	}
+out:
+	spin_unlock_irqrestore(&drm_backlight_lock, flags);
+
+	if (bd) {
+		int rc = backlight_set_brightness(bd, set, BACKLIGHT_UPDATE_DRM);
+
+		WARN_ON(rc);
+		if (rc)
+			backlight_set_brightness(bd, max, BACKLIGHT_UPDATE_DRM);
+		backlight_device_unref(bd);
+	}
 }
 EXPORT_SYMBOL(drm_backlight_set_luminance);
 
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 128d431f0d6b0..70afe3d579f38 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1512,6 +1512,57 @@ EXPORT_SYMBOL(drm_hdmi_connector_get_output_format_name);
  * 	Summarizing: Only set "DPMS" when the connector is known to be enabled,
  * 	assume that a successful SETCONFIG call also sets "DPMS" to on, and
  * 	never read back the value of "DPMS" because it can be incorrect.
+ * LUMINANCE:
+ * 	Atomic property for controlling the backlight brightness level of the
+ * 	connector's display. This property provides unified access to the display
+ * 	backlight, replacing the legacy sysfs interface for brightness control.
+ *
+ * 	The property value is an unsigned integer representing the brightness level.
+ * 	The valid range is dynamically determined by the capabilities of the
+ * 	connected backlight hardware and is exposed through the property's minimum
+ * 	and maximum values:
+ *
+ * 	- Range 0-0: No backlight device is available for this connector.
+ * 	- Range 1-N: Normal operation. Values from 1 to N (max_brightness) are
+ * 	  valid brightness levels, where 1 is the minimum visible brightness and
+ * 	  N is the maximum brightness the hardware supports.
+ * 	- Value 0: Special value to turn off the display backlight completely.
+ * 	  This value is accepted even when the normal range starts at 1.
+ *
+ * 	The range may change during runtime if a new backlight device is linked
+ * 	or unlinked. The kernel will send a change uevent when this occurs.
+ *
+ * 	Setting LUMINANCE to 0 turns off the backlight, which may turn off the
+ * 	display completely depending on the hardware. Setting it to any value
+ * 	from 1 to N adjusts the brightness accordingly. Reading this property
+ * 	returns the current brightness level that was last set (or the hardware's
+ * 	current state for drivers that support reading actual brightness).
+ *
+ * 	For atomic drivers, the luminance value is stored in
+ * 	&drm_connector_state.luminance. The actual hardware update only occurs
+ * 	when the connector is active (DPMS is ON). When DPMS transitions to OFF,
+ * 	the kernel automatically sets luminance to 0 to turn off the backlight.
+ * 	When DPMS transitions back to ON, the kernel restores the previously
+ * 	set luminance value.
+ *
+ * 	This property is only available on connectors that have an associated
+ * 	backlight device.  The property is created by calling drm_backlight_alloc()
+ * 	during connector initialization.
+ *
+ * 	Client Capability:
+ * 		User-space must set the DRM_CLIENT_CAP_LUMINANCE client capability
+ * 		to 1 before using this property. When this capability is enabled,
+ * 		the legacy sysfs backlight interface is inhibited to prevent
+ * 		conflicts between multiple clients trying to control the same
+ * 		backlight. This ensures that only luminance-aware clients control
+ * 		the backlight through the DRM atomic interface.
+ *
+ * 		Legacy clients that do not set this capability will not see the
+ * 		LUMINANCE property and should continue using the sysfs interface
+ * 		(if available).
+ *
+ * 	Note: This property can be set through MODE_ATOMIC ioctl as part of the
+ * 	atomic state.
  * panel_type:
  * 	Immutable enum property to indicate the type of connected panel.
  * 	Possible values are "unknown" (default) and "OLED".
diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index ec820686b3021..4d2520de7614c 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -41,6 +41,7 @@
 #include <linux/slab.h>
 #include <linux/vga_switcheroo.h>
 
+#include <drm/drm_backlight.h>
 #include <drm/drm_client_event.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
@@ -252,6 +253,10 @@ void drm_file_free(struct drm_file *file)
 	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
 		drm_fb_release(file);
 		drm_property_destroy_user_blobs(dev, file);
+		if (file->supports_luminance_control) {
+			drm_backlight_uninhibit_legacy_all(dev);
+			file->supports_luminance_control = false;
+		}
 	}
 
 	if (drm_core_check_feature(dev, DRIVER_SYNCOBJ))
diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
index ff193155129e7..fdae36b13300a 100644
--- a/drivers/gpu/drm/drm_ioctl.c
+++ b/drivers/gpu/drm/drm_ioctl.c
@@ -28,12 +28,14 @@
  * OTHER DEALINGS IN THE SOFTWARE.
  */
 
+#include "drm/drm.h"
 #include <linux/export.h>
 #include <linux/nospec.h>
 #include <linux/pci.h>
 #include <linux/uaccess.h>
 
 #include <drm/drm_auth.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
@@ -380,6 +382,19 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
 			return -EINVAL;
 		file_priv->plane_color_pipeline = req->value;
 		break;
+	case DRM_CLIENT_CAP_LUMINANCE:
+		if (!file_priv->atomic)
+			return -EINVAL;
+		if (req->value > 1)
+			return -EINVAL;
+		if (req->value == file_priv->supports_luminance_control)
+			break;
+		if (req->value)
+			drm_backlight_inhibit_legacy_all(dev);
+		else
+			drm_backlight_uninhibit_legacy_all(dev);
+		file_priv->supports_luminance_control = req->value;
+		break;
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/gpu/drm/drm_property.c b/drivers/gpu/drm/drm_property.c
index f38f2c5437e68..4475896c963b4 100644
--- a/drivers/gpu/drm/drm_property.c
+++ b/drivers/gpu/drm/drm_property.c
@@ -952,6 +952,12 @@ bool drm_property_change_valid_get(struct drm_property *property,
 	*ref = NULL;
 
 	if (drm_property_type_is(property, DRM_MODE_PROP_RANGE)) {
+		/* Special case for luminance property: allow 0 to turn off display
+		 * even when the normal range starts at 1.
+		 */
+		if (property == property->dev->mode_config.luminance_property &&
+		    value == 0 && property->values[1] > 0)
+			return true;
 		if (value < property->values[0] || value > property->values[1])
 			return false;
 		return true;
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index 13954c2220b7e..40cfc2296445c 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -217,6 +217,13 @@ static ssize_t brightness_store(struct device *dev,
 	struct backlight_device *bd = to_backlight_device(dev);
 	unsigned long brightness;
 
+	/* A luminance-aware DRM client has taken over this backlight; the
+	 * legacy sysfs interface is disabled until the last such client
+	 * goes away.
+	 */
+	if (atomic_read(&bd->drm_takeover) > 0)
+		return -EBUSY;
+
 	rc = kstrtoul(buf, 0, &brightness);
 	if (rc)
 		return rc;
diff --git a/include/drm/drm_backlight.h b/include/drm/drm_backlight.h
index e0e09e38f7c06..2af48be3aa372 100644
--- a/include/drm/drm_backlight.h
+++ b/include/drm/drm_backlight.h
@@ -43,9 +43,9 @@ void drm_backlight_unregister(struct drm_backlight *b);
 
 void drm_backlight_link(struct drm_backlight *b, struct backlight_device *bd);
 struct backlight_device *drm_backlight_get_device(struct drm_backlight *b);
-void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int value);
 void drm_backlight_inhibit_legacy(struct drm_backlight *b);
 void drm_backlight_uninhibit_legacy(struct drm_backlight *b);
 void drm_backlight_inhibit_legacy_all(struct drm_device *dev);
 void drm_backlight_uninhibit_legacy_all(struct drm_device *dev);
+void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int value);
 #endif /* __DRM_BACKLIGHT_H__ */
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index d78ac1068d12e..5e32b6063d228 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1209,6 +1209,11 @@ struct drm_connector_state {
 	 * @drm_atomic_helper_connector_hdmi_check().
 	 */
 	struct drm_connector_hdmi_state hdmi;
+
+	/**
+	 * @luminance: Luminance for the connector
+	 */
+	unsigned int luminance;
 };
 
 struct drm_connector_hdmi_audio_funcs {
diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index 6ee70ad65e1fd..0bb1e53f36bec 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -248,6 +248,14 @@ struct drm_file {
 	 */
 	bool supports_virtualized_cursor_plane;
 
+	/**
+	 * @supports_luminance_control:
+	 *
+	 * This client is capable of setting the luminance for connectors.
+	 *
+	 */
+	bool supports_luminance_control;
+
 	/**
 	 * @master:
 	 *
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 26a7281d179c1..b03737ee8dacd 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -197,6 +197,13 @@ struct backlight_properties {
 	 */
 	int brightness;
 
+	/**
+	 * @can_disable: Minimum brightness would turn off the panel.
+	 *
+	 * Setting minimum brightness turns off the panel.
+	 */
+	bool can_disable;
+
 	/**
 	 * @max_brightness: The maximum brightness value.
 	 *
@@ -314,6 +321,14 @@ struct backlight_device {
 	 * @use_count: The number of unblanked displays.
 	 */
 	int use_count;
+
+	/**
+	 * @drm_takeover: Number of luminance-aware DRM clients that have
+	 * taken over brightness control of this device. When non-zero,
+	 * writes to the legacy sysfs ``brightness`` attribute return
+	 * ``-EBUSY``. Managed by the DRM backlight helpers.
+	 */
+	atomic_t drm_takeover;
 };
 
 /* Forward declaration for backlight_update_status */
diff --git a/include/uapi/drm/drm.h b/include/uapi/drm/drm.h
index bc7ef7684099b..a3141d46d7d66 100644
--- a/include/uapi/drm/drm.h
+++ b/include/uapi/drm/drm.h
@@ -903,6 +903,28 @@ struct drm_get_cap {
  */
 #define DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE	7
 
+/**
+ * DRM_CLIENT_CAP_LUMINANCE
+ *
+ * If set to 1, the client declares support for the LUMINANCE connector property
+ * and will control backlight brightness through the DRM atomic interface. This
+ * enables the kernel to expose the LUMINANCE property on connectors that have
+ * an associated backlight device.
+ *
+ * When this capability is enabled:
+ *  - The LUMINANCE property becomes visible on supported connectors
+ *  - Legacy sysfs writes to /sys/class/backlight/{*}/brightness will return
+ *    -EBUSY to prevent conflicts with DRM-based brightness control
+ *  - The client should include luminance values as part of atomic commits
+ *  - Brightness changes are synchronized with display power state (DPMS)
+ *
+ * The LUMINANCE property accepts values from 0 to max_brightness, where 0 turns
+ * off the backlight, and 1 to max_brightness control the brightness level.
+ *
+ * This capability is supported starting in kernel 7.2.
+ */
+#define DRM_CLIENT_CAP_LUMINANCE		8
+
 /* DRM_IOCTL_SET_CLIENT_CAP ioctl argument type */
 struct drm_set_client_cap {
 	__u64 capability;
-- 
2.43.0

