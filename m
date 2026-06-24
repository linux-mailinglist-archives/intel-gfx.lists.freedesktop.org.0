Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3Lc+OsoMPGoOjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 986FC6C02CE
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=3F8avGkh;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E0210EFEE;
	Wed, 24 Jun 2026 16:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BYAPR05CU005.outbound.protection.outlook.com
 (mail-westusazon11010016.outbound.protection.outlook.com [52.101.85.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD93410EFC5;
 Wed, 24 Jun 2026 16:58:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ii9wQgQQPw2H1BVe3/xBOLUXs34mmBbzNa9jdtJf1hLiEgy3pZzaGdQT40iBQxUgFnf3s9e8YNbcWe9/GwW5oZIZ6thHTdxEt7ppN9O8uaxIu4TP0eB2LhPiv6CvPB76wZojLgDj+a/388v3TsQJ3gFxEHtNMbsvKAIGSl5BvXNq2zSNLpN06LcYikPgR1Z4Kwy5hD4/2nHw4gkDpPHzkSqw7DQcJ7vPQdpodGXodk0GLie03soTU8tRMaDYVda8eclPItiMfMFtHJalIQuq5ZO/G37qUFnkjsINPc15iU+89J7L9P5rE1rS6tUQpH5Vge/fKRIuZlCaW0R2xqur6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6OIbZHfTBKwFUMya7n7oUwBsnJaVnJkM8JuVmybeUgM=;
 b=X4u5QueZl8WbAehJzSSfuzJIe0yQwlKO6BmZv9N+Uib7L1Hn/zD38RP4XqHcedCGyCO2YBqBIwAdO5YErhovt9WF33ddSMtwbAQ4dQjUTA3aCZjDF4JjVUzU95iBZaG/MbyDisEfytokcC5/S+IkFFuMGzP0yfEopiKFkgjMABDolD3gkoazlxn6daDnRg3PEPgmCyRIt7pjRQZiWMy592wDtaSE8chmQ5uBLqysgsHnhLzKcRhDkI9C83/J84EtHgiiS+Nnq8Rcm3sR4qTrAl4Id+EN5egcIirhTja8b5FvIELrDXauV3PtbRd7WMiu9WKEXzCFAcZIgg+GhAeYKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6OIbZHfTBKwFUMya7n7oUwBsnJaVnJkM8JuVmybeUgM=;
 b=3F8avGkhX5cyI/iI9B3B62Bh5Uv2pXNlObr/HnO9OWxE6rgSrSLVNkBrz+mf2iORszitw6PHbiCnyDpiDzrW/tJy2LiUqpE6mZIrn0RPk9VfiIK56EJIAC69RY8wgwEeXSTC5lNXVcv1fn0LvaOOAn3X+/4szhim9pvFKIiPkXQ=
Received: from CY5PR19CA0076.namprd19.prod.outlook.com (2603:10b6:930:69::22)
 by BY5PR12MB4146.namprd12.prod.outlook.com (2603:10b6:a03:20d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 24 Jun
 2026 16:58:35 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::20) by CY5PR19CA0076.outlook.office365.com
 (2603:10b6:930:69::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.15 via Frontend Transport; Wed,
 24 Jun 2026 16:58:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:35 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:34 -0500
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
 <superm1@kernel.org>
Subject: [PATCH v6 10/10] drm/i915/display: use drm backlight
Date: Wed, 24 Jun 2026 09:57:50 -0700
Message-ID: <20260624165751.2014759-11-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|BY5PR12MB4146:EE_
X-MS-Office365-Filtering-Correlation-Id: b6d31ca7-d174-4b96-77c4-08ded211d4aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|7416014|376014|36860700016|82310400026|56012099006|11063799006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: dMM/BUwMbG8jfsLZQGFiiH5hkqRa4gAFGa5rJLHcj6KeFTSx+vz/bThWkYK5QR/1Q2EmJ6fS7M5vQBrf6+y483cvGEpF2VX2C2cu4YkmiYegDkxsSXG9DrQJqszP10dBqCAQF3dXsdVCIp4+n8f8dqxluY9wQuSObvc+czGhn9K7E7JXHOTZyUpzNTySc/YUwCK5Lj6TE5phcMtI3kAmHWSOtXEkfciFb5FYM38mcFpHJ/94Zj4fJwCgKBQmO9aotyO4OOLuwnsAAQ0/+vTbpW14aZ+ew87vfupP1jeAM5UQv2Dkcb2pjrr8o5Cy/tjEDV2+SK7KyNbWOlfxgc2Dbdz9lysCnekHLSYlwQW9nfLd88HFw8v982gv7cfu2lI8RtWwZ2xxFFD72EiLqQN7in2z9Elhlvm1UlNAy7QbAKA9LxsPsDDx4mC3cyr8BKcc4ExZpvbc3wXpgYsNYDJb8/GC6dcLzhKAGseSzu7FsT6j+sG2T3SJUsDgbE0ELuzW6V1qjk5p6BeHHld5l8XAu/oiaXGb6T9d5s4/oLjkXaXxtA2PHoYgp9d52R2w1I2fEbwpLlSaNFDeYWyWohTy95HupZmgOW5Uocxf6vU2N30pnrpnN179ANdeOzfioaqrHYZSR+TE99CaMYVwLF+bDLpD7NqsTO8LZ2ebLx3oUkvdpRkpm5i++acWzyG8ckF2pES2HLIL+4EWUhlWY1O5/g==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(7416014)(376014)(36860700016)(82310400026)(56012099006)(11063799006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: O3B4JBFCrcPhdikb/Ap45pJz48DaIpeIhEyVv5dVrk8KQhDxfA6gXoQ/UpslyYgm6pvDfDDp2jaBBs/5hJD/nsVEPnKXvn2MvX0/0oFRIxgJ9X9HjowQB79nngOhNTaDm1bKarOxuMJZIev+c9yV591aEMI/8YDSLdZjXDJlO56T6/4BvFsx8PPgHtCcuv4ZRuJL9EH3gdkrDrQphc9Iz7Z+5fM4lpqKdq0A6biHjqT3pllf7w61eux6t92/l/I+ucWfLPgRULzD1f9YSNvlqcQdMfBdL6atma0IzZqwgUe7l+G4LY+hAn3DyJTwrk3x1qCmzn6wr3UNTmH6zrnn89c7Xzga4tuAk1N+w3i6ld4fnapk0SYsXyNwXeoYAyRu16yaRBxVNNChPZ9ZSkOx2scIQCFHoxTRFsUfn/vqV2MNVt/i7O4S14TWYit2Midf
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:35.7083 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6d31ca7-d174-4b96-77c4-08ded211d4aa
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4146
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
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FREEMAIL_TO(0.00)[lists.freedesktop.org,amd.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 986FC6C02CE

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

Convert Intel display drivers (i915 and xe) to use the new DRM backlight
infrastructure. This allows brightness control via DRM connector
properties.

Allocate DRM backlight for eDP connectors during initialization, link the
backlight device to the connector during registration, and unlink during
unregistration.

Assisted-by: Sonnet:4
Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dp.c        | 8 ++++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index b128896cb1c2d..4543c2a8f3568 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -9,6 +9,7 @@
 #include <linux/string_helpers.h>
 #include <acpi/video.h>
 
+#include <drm/drm_backlight.h>
 #include <drm/drm_file.h>
 #include <drm/drm_print.h>
 #include <drm/intel/pci_config.h>
@@ -1004,6 +1005,8 @@ int intel_backlight_device_register(struct intel_connector *connector)
 		    "[CONNECTOR:%d:%s] backlight device %s registered\n",
 		    connector->base.base.id, connector->base.name, name);
 
+	drm_backlight_link(connector->base.backlight, bd);
+
 out:
 	kfree(name);
 
@@ -1015,6 +1018,7 @@ void intel_backlight_device_unregister(struct intel_connector *connector)
 	struct intel_panel *panel = &connector->panel;
 
 	if (panel->backlight.device) {
+		drm_backlight_link(connector->base.backlight, NULL);
 		backlight_device_unregister(panel->backlight.device);
 		panel->backlight.device = NULL;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ce0c09835f6d..cd35cce329a55 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -44,6 +44,7 @@
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fixed.h>
@@ -7421,6 +7422,13 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 				    type, &intel_dp->aux.ddc);
 	drm_connector_helper_add(&connector->base, &intel_dp_connector_helper_funcs);
 
+	if (type == DRM_MODE_CONNECTOR_eDP) {
+		int r = drm_backlight_alloc(&connector->base);
+
+		if (r)
+			drm_err(display->drm, "Failed to allocate backlight: %d\n", r);
+	}
+
 	if (!HAS_GMCH(display) && DISPLAY_VER(display) < 12)
 		connector->base.interlace_allowed = true;
 
-- 
2.43.0

