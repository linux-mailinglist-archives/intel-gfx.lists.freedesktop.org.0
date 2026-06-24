Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S+8fHcYMPGoHjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F56B6C02B2
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ZbnFk5MI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E554110EFDA;
	Wed, 24 Jun 2026 16:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011036.outbound.protection.outlook.com [52.101.57.36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05CA010EFE3;
 Wed, 24 Jun 2026 16:58:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tsdTQA/3CgI/6dIRBywcxAo0JFDS7a+oY0G/xiqcTN9O0H/CTMRtr4prXyOnrnev+CbHpmpv70VW+a6nKwjH9CBe42Wfe7TCPX/ih41qUNzTl2CtnOXeP4xO1XwC8SFFs2A1KRGoUMGQuKIzpMiIHN2PJ1dWEOXieJp+VA0jex8qiXg2hTx0aEnS4+MdhV+hBAV8TL6kja++NlRhyVTR7KHHhzwDC2k+Dcbz8tArElNk7ZSlS/y2njqX6oHyq6zlerz2s+TmM7zKh6fzmrniH2eHtiYzkUTKLLeXQDUZQ1OKpdLtSXJjVHouCufqnrdpdFBXAJ7/nhKYXH5fnX5e4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZRkBp84xylz3RjvXtVqbQAW9vv3byWTVxpgKl/LnkmY=;
 b=oIOQe1NQK/mUj0UlQ6Xio7Zo12O0TmRhcc8Rvf7XhG3IVp3l5O0giqIg0Guwj94ymkvN/U6g2iSnbb9IVQ0Z+K+Z2inTuKWm2Qca0rSLwPhHauBONb3TEn41vTyyJXA2Utfn/s58oht31ytBB/griFrpnbh8QlnyWun4U6lTOxo9hnrIQ6zaQogsBQ8V98TV+WydSG9F58c7vQMXkMQ5RTy+gXR8S1bBwa+aBV4zqLAkLHM6VbQ4lgxuUbtgPYTJ69dFH8gUtjamyxfYZuKJl68Ie52q9bOZeHDLQaU45W0THGytOQ1yacDmZuskYLfJgdnCHq0ACR42GIc1k9MUcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZRkBp84xylz3RjvXtVqbQAW9vv3byWTVxpgKl/LnkmY=;
 b=ZbnFk5MIz7PP4lshv7mykOg+2RP9Qf/qgg/nojJCJi0SwnJcygiT1uCzEgBf1+GsDfE/sn1ifaahJBiHNpfjyaKLpXXwF/m/Tj2bi2k/rlqlgAsIfONcGiI/PWRLxOgZLLYnU3qt8yEBDbtFY4lpm+2I1xqQIlLPabMeWd+telE=
Received: from CY5PR19CA0074.namprd19.prod.outlook.com (2603:10b6:930:69::23)
 by LV9PR12MB9831.namprd12.prod.outlook.com (2603:10b6:408:2e7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Wed, 24 Jun
 2026 16:58:32 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::8c) by CY5PR19CA0074.outlook.office365.com
 (2603:10b6:930:69::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.15 via Frontend Transport; Wed,
 24 Jun 2026 16:58:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:31 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:29 -0500
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
 <superm1@kernel.org>, Simon Ser <contact@emersion.fr>
Subject: [PATCH v6 07/10] drm/amd/display: use drm backlight
Date: Wed, 24 Jun 2026 09:57:47 -0700
Message-ID: <20260624165751.2014759-8-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|LV9PR12MB9831:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b190cdd-9454-49bc-14c5-08ded211d278
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|376014|7416014|36860700016|1800799024|23010399003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: Mg49lgsg/AyOvQdDmbLWs1AH35FsoCFPV3BRP6LS6v9qM7S1al3vlU6c7IhHAMlyYf3nfevp8b3f68TUSz2qYZRd1BLNuON2xJ4ZJXIKHMzj0rEWX94/KTlhz++lmnXkcXARbLOC+g7hyMQHLnlPzmO3WjTMzKYejHUBrXu2J6nbUu86PCYUldIARKcDh0f082s1zdpyrfpB2lEMAC4AFnANZ8v4K/BfSB8AkTavK5ObBw2dgQ4ucGmrI6ZX8gPhmJ0/t1Jah1dQNqb2VW1X6lZkLnV15QM61wtVnYsI6kq0WF0mBuiFd5C3LudmQwgJGX5zx2FN6eB0D17HEVIoYGJY3/23sN2ojDTasw53OadkbhVyoWuXXptfoutxr0TDUsLmVy+1i1AvSgY9GcF8HnwtNgBtvUeiRVLL/hGdFzKn8zR76LsSvTxpvN+kWRcrOiuiX1CdH++wlIid4vfMgBqNfbrBXWT9+7FnNjQ+ihmC2Im+eH4SST1PvfhSr2BvFpYybAF9t1kxMmW0B0MRQHtMUfJNUcKgIyI1HVlH53gXN6/4Kv8OxRHeCuAb3y+Eq1cgojCPq1jadjmlmfT660dGdE8nvdhMsRDU/Q2klfYURAYyguKPufCnaIqL80IAOnG4BHdA+uF6eHAJKE5vPDSGM4oBKcrXaKXf4ibzxAF8/QsI8ppWpi6KjqENlj/lSwmdWlaaMCLC2Wh27Yb6Cw==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(82310400026)(376014)(7416014)(36860700016)(1800799024)(23010399003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Uf9HCq428HzVzMkB6g9ijsIILGvwDH6bZxBhCcvOC3LBkM1NexUmVFDLeRSuQK/cEeBQfQnZL5E2oB3qdE7qDBVUJKsJKflHMt6j9vqGcyuGREgAGL9gdMRyBlniNmemiDtICke4LkMKxg4wuZ0IazezofGwoQGL9P3GpMUrOzeZI0gwleTMUdlGoSQEPuUvJBfQ2VPt5ylqGbpeBSZIL/zhaeaa+FUU/jtfbavqzfDkni110KLI368M7MQojRDy24AtAmiJN5RiD4ztLBL86OcN6pnZXWUUrhcG8UyHI5lzusaqWRQ3FijSP/4xozBINnxpFUVv+rhgRhCzIv7l/nuk0E+21Qs16y0mRjQ9yHGaoMQ/CdLyrPL2XrdfX5S8CXApsMmsrn7isFlPvaeTea83z1yvSTU9byFuI+LmAj33sHQpDrUz6GKfnD+ZwPVR
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:31.9993 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b190cdd-9454-49bc-14c5-08ded211d278
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV9PR12MB9831
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
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,kernel.org,emersion.fr];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,emersion.fr:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F56B6C02B2

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

Convert AMD display driver to use the new DRM backlight infrastructure.
This allows brightness control via DRM connector properties.

Includes fixes for backlight resource lifecycle management.

Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
Tested-by: Simon Ser <contact@emersion.fr>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 2f87940aaea42..9653cfd99c6ad 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -86,6 +86,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_uapi.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_backlight.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_fixed.h>
 #include <drm/drm_fourcc.h>
@@ -5614,6 +5615,15 @@ amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 		dm->actual_brightness[aconnector->bl_idx] = real_brightness;
 		dm->brightness[aconnector->bl_idx] = real_brightness;
 	}
+
+	/* Link the registered backlight device to the DRM connector. If
+	 * drm_backlight_alloc() failed earlier in init_helper,
+	 * aconnector->base.backlight is NULL and drm_backlight_link() is a
+	 * no-op.
+	 */
+	drm_backlight_link(aconnector->base.backlight,
+			   dm->backlight_dev[aconnector->bl_idx]);
+
 	drm_dbg_driver(drm, "DM: Registered Backlight device: %s\n", bl_name);
 
 	return 0;
@@ -8140,6 +8150,7 @@ static void amdgpu_dm_connector_destroy(struct drm_connector *connector)
 	}
 
 	if (aconnector->bl_idx != -1) {
+		drm_backlight_link(aconnector->base.backlight, NULL);
 		backlight_device_unregister(dm->backlight_dev[aconnector->bl_idx]);
 		dm->backlight_dev[aconnector->bl_idx] = NULL;
 	}
@@ -8152,6 +8163,10 @@ static void amdgpu_dm_connector_destroy(struct drm_connector *connector)
 	aconnector->dc_sink = NULL;
 
 	drm_dp_cec_unregister_connector(&aconnector->dm_dp_aux.aux);
+	/* DRM core will handle drm_backlight cleanup via:
+	 * drm_connector_unregister() -> drm_backlight_unregister()
+	 * drm_connector_cleanup() -> drm_backlight_free()
+	 */
 	drm_connector_unregister(connector);
 	drm_connector_cleanup(connector);
 	kfree(aconnector->dm_dp_aux.aux.name);
@@ -9402,6 +9417,12 @@ void amdgpu_dm_connector_init_helper(struct amdgpu_display_manager *dm,
 	aconnector->base.state->max_bpc = 16;
 	aconnector->base.state->max_requested_bpc = aconnector->base.state->max_bpc;
 
+	if (connector_type == DRM_MODE_CONNECTOR_eDP) {
+		int r = drm_backlight_alloc(&aconnector->base);
+
+		if (r)
+			drm_err(dm->ddev, "Failed to allocate backlight: %d\n", r);
+	}
 	if (connector_type == DRM_MODE_CONNECTOR_HDMIA) {
 		/* Content Type is currently only implemented for HDMI. */
 		drm_connector_attach_content_type_property(&aconnector->base);
-- 
2.43.0

