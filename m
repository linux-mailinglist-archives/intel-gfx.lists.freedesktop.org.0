Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +li2HsUMPGoEjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 267096C02A7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Fz3yMerk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996C810EFDB;
	Wed, 24 Jun 2026 16:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012019.outbound.protection.outlook.com [52.101.53.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80CC310EFD4;
 Wed, 24 Jun 2026 16:58:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r+cTf+tOxI9qFBxLDoxHUon9havnDU8cSgGUt52s4DSjTW8SMWTr6fsXtDDoPpW63Gxsb1/wOTGOdYL03T7eBHMh00bjedidq7joBE7PeVd7UOiVoUBcMs8VRx7peIQJ6xVwKyuc/vimqgPVtFD/D0236Nz2onxXxOGq8CiAKQBFT5QVuhN+0ZvXjijd5fLyoKilU7YnPEhHSdPcw6LXKaKi+kDkaCPe0ZE7Z5ytnkJhpPOuZIwgFRRBqZktFEX4LibaCRKvwHLTkqKPRTMrbIQZXyAIOTcXLQoxHz0nZpwXiuzGpPdqnyVjIPUB4Mk3jMgXeff4MU7FUiHvO2ArcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vufA6knj8tGdsWKXLm3ryeCvI33LfCyu1TxlyPLyfns=;
 b=v61jwm1oi1GUwau8srmtmsy6f55q5yUVrUKP1UpLpWopHL4j9E9LojGeL4iUocWZRZGYOvhp3E4jOVcYJeU+Td/Xe2PYkpKyq9vUjcYdef2v7WZXVZY+wI/7sTdjO/orhFdqdDIFK8kgZT2o2jI5zur3JRbksLE9HnJEQiDOmlF404qL/BbwBEWUgF/XYhK6/pR+MgslunoB2ZQ9BvYyrJsjgDtcK5w0Ft9W5g9MUpo+yj2h5Bw5QMukdF81UfUfQzRCyKhDGhrc04Bz5cmNG7NnQ8WFXSfWODnFrRROEH2JjmPjAgZ+Dnexi6tbIEC9+NPZMMg0bTsj4M4553TxRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vufA6knj8tGdsWKXLm3ryeCvI33LfCyu1TxlyPLyfns=;
 b=Fz3yMerkuMKhQGmuo984QM8NBBvyEZcKPoYg2K1egsznVDxxZfBa8XY4d3jmxnClQPkbVG2yho2+OwC5WvspXC4sFUVOfN8Rp/6geY+VC/ZXpshIta6dfpIPUm1YSVjHzJzHyaxPkZ6dCHsxUWSF7rSYQifo6k1l8CicVcrVLjs=
Received: from CY5PR19CA0063.namprd19.prod.outlook.com (2603:10b6:930:69::6)
 by SA0PR12MB4478.namprd12.prod.outlook.com (2603:10b6:806:9c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 24 Jun
 2026 16:58:31 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::48) by CY5PR19CA0063.outlook.office365.com
 (2603:10b6:930:69::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.15 via Frontend Transport; Wed,
 24 Jun 2026 16:58:31 +0000
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
 2026 11:58:27 -0500
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
Subject: [PATCH v6 06/10] drm/amd/display: Allow backlight registration to fail
Date: Wed, 24 Jun 2026 09:57:46 -0700
Message-ID: <20260624165751.2014759-7-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|SA0PR12MB4478:EE_
X-MS-Office365-Filtering-Correlation-Id: c98220f5-366d-45ee-0dab-08ded211d221
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700016|1800799024|82310400026|7416014|376014|23010399003|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: +TOBXaIx9RGUjDuLTOA52ToQq4V5Nmi1a6kVuOJS10k+UMr+k4kjfX05T6GU8Kb08q3nvHh/mYGL9kbtnezae2UDjV6oChSh8AqtIUyV/5Qy9p4YwhgGhaIM5rrwq0LqdWlUk3/UO8Ih2Heq/icgmd9IEKwLJjf9hceTTPYCCx6Olvfj0HSyWVvmPCWD1nMp03zeTMMNz7OwslMbMVSbnU/b/+JGqGGuswJB+e5bj3IJF9OdAXfdTCMtueGpxYJ8IKvxxXlYMHMsdtmoAvkdzFbdmPqs/gYRnVMo/XH6IH1JyKvgB2bsw6XnKs1ABkyUzBoFqOuxOrgikgGIt7SzvLzfWXsrf6pj4yKH+tUzLMqWw9Oc3qUdiJjNw+qNL9x8Pz3Zwx2HQ4WLamSEkMnHXuQ2PPlN31eQzSG5f3tXJwa79jYBY3siaMHcPLPOXO4c+e8Nf3sqo43scZBYbataqhPZkf9awUVuWY2uZcv2YdcDgM0vbUyuG1665xn4VvwFAfQcHaqLWGWNI1PSwvZMqZyYX/mZ+Dym216HOOi4slBWWCW/VRYLIyUTg3Fm7taEdbrHUog7YswG4BUgSBDNr5R9ZbsxieFGeuib+kBSwnEj0eg0ODX34dHA6kT9sMPADwZO3YlFld9QZH6CgiJ9AFYEk0+boaYbcv4SvL/abSW/GQ/+hk41foEwX+EflBWG6Zm0d1dEntNjm8cD2TJLSQ==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(36860700016)(1800799024)(82310400026)(7416014)(376014)(23010399003)(22082099003)(56012099006)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: IN6LFySsxk5DUjCyuIYDxFUcOxwVt/EFsBBpQNXeTowEuk5NFryGdjhWjrqc2xQcYrezUrf2xXhV4/JP8wQd6R2qmx5Gqajc11Fy/1EkuHBfqWRcGMEfmrrmyJ4e0weZvbWsaGOh6ktE/6nC42+K+G40svCgrpbcLmd9tlZe7NnXIV77griR7s+BeQSqG08h8/J+wlfMxZFNbRZ9cdhQDkQMxLt5qGC/IvJHkyrmgzAK7LyckC2nV0SS89amBmuCrDe/ig24ZeX9z3WF56W/uwnAYZhfkTrMkdrGdN/xxGCz9pZnAgTwGd6z+qIsrNdGD+hWPxZCHvLGWHL3nxEz0F9FQD7ZsqgkxGTj+Xlg38ewZn4agNwlaxApE9oq/pQJ6cmEkAZD/WzL2099Ot2eHULjFofUl5jfKLLMFXuYAP4VWZDC55/LZ8JoCZjyCX3+
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:31.4281 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c98220f5-366d-45ee-0dab-08ded211d221
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4478
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,emersion.fr:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 267096C02A7

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

[Why]
If backlight registration fails then it's ignored. This could hide
a fatal problem to a user.

[How]
Pass error codes up from backlight registration failures.

Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
Tested-by: Simon Ser <contact@emersion.fr>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 41 +++++++++++--------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 9b3e2fc6cef5d..2f87940aaea42 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -5543,7 +5543,7 @@ static const struct backlight_ops amdgpu_dm_backlight_ops = {
 	.update_status	= amdgpu_dm_backlight_update_status,
 };
 
-static void
+static int
 amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 {
 	struct drm_device *drm = aconnector->base.dev;
@@ -5554,15 +5554,16 @@ amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 	int min, max;
 	int real_brightness;
 	int init_brightness;
+	int r;
 
 	if (aconnector->bl_idx == -1)
-		return;
+		return 0;
 
 	if (!acpi_video_backlight_use_native()) {
 		drm_info(drm, "Skipping amdgpu DM backlight registration\n");
 		/* Try registering an ACPI video backlight device instead. */
 		acpi_video_register_backlight();
-		return;
+		return 0;
 	}
 
 	caps = &dm->backlight_caps[aconnector->bl_idx];
@@ -5596,22 +5597,26 @@ amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 	dm->brightness[aconnector->bl_idx] = props.brightness;
 
 	if (IS_ERR(dm->backlight_dev[aconnector->bl_idx])) {
-		drm_err(drm, "DM: Backlight registration failed!\n");
+		r = PTR_ERR(dm->backlight_dev[aconnector->bl_idx]);
+		drm_err(drm, "DM: Backlight registration failed: %d\n", r);
 		dm->backlight_dev[aconnector->bl_idx] = NULL;
-	} else {
-		/*
-		 * dm->brightness[x] can be inconsistent just after startup until
-		 * ops.get_brightness is called.
-		 */
-		real_brightness =
-			amdgpu_dm_backlight_ops.get_brightness(dm->backlight_dev[aconnector->bl_idx]);
+		return r;
+	}
 
-		if (real_brightness != init_brightness) {
-			dm->actual_brightness[aconnector->bl_idx] = real_brightness;
-			dm->brightness[aconnector->bl_idx] = real_brightness;
-		}
-		drm_dbg_driver(drm, "DM: Registered Backlight device: %s\n", bl_name);
+	/*
+	 * dm->brightness[x] can be inconsistent just after startup until
+	 * ops.get_brightness is called.
+	 */
+	real_brightness =
+		amdgpu_dm_backlight_ops.get_brightness(dm->backlight_dev[aconnector->bl_idx]);
+
+	if (real_brightness != init_brightness) {
+		dm->actual_brightness[aconnector->bl_idx] = real_brightness;
+		dm->brightness[aconnector->bl_idx] = real_brightness;
 	}
+	drm_dbg_driver(drm, "DM: Registered Backlight device: %s\n", bl_name);
+
+	return 0;
 }
 
 static int initialize_plane(struct amdgpu_display_manager *dm,
@@ -8225,7 +8230,9 @@ amdgpu_dm_connector_late_register(struct drm_connector *connector)
 			return r;
 	}
 
-	amdgpu_dm_register_backlight_device(amdgpu_dm_connector);
+	r = amdgpu_dm_register_backlight_device(amdgpu_dm_connector);
+	if (r)
+		return r;
 
 	if ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) ||
 	    (connector->connector_type == DRM_MODE_CONNECTOR_eDP)) {
-- 
2.43.0

