Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i5y0DM4MPGoUjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B556C02EA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=x8l0jusU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D87710E0CE;
	Wed, 24 Jun 2026 16:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010025.outbound.protection.outlook.com
 [40.93.198.25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C1E10EFEB;
 Wed, 24 Jun 2026 16:58:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mZm2Yds6EJ4eiUUB6L87rVOeoo4WSsmWdAe0+035FhkVgydAXqKVCVneKwCUOqbtF8bwyO1Dhk/bUiB9SjRrWiFA+03BJZj3ZDX/3EnqVzWozszh+vPDUNJ7XUKT+/artpR1sFPSJVF++a3ynSnXnQY7W3Lls8TYmAIQITssjgqS05mH8nnCmbNPaO+TG5pt7sDVqB5vUHxMw9vRJ3u8Otl29afx1U1IaOvMpW9AB3KcV/16o6Ewhl7GW4l43j9OcX0L1CE2lU8ONirJDU8o1qoeBdgyD4d7PM3XJfurQo4GXfxdT9ZxDyV/4UoDDDBfbyxNGqarQtkLMenSQNcXfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9aKIqW95decKtwRMUGVX8UCSu1umPH1fv/fqXw+nshM=;
 b=OdNZHlnZCY51o+MywIYRARjTKlNBvI1IRqO3kzecDluq2/X05nLATmJjVfL66dpvLhCABgFZhSZh67qDW+LYe7A28WqCFvHpFxnmzFdQdj5TIW0+zQoV9KP27aGWq51S0959zMFHwDtRkpQbIECT3CyazvPKUkJXkGOjrKVta4EgBVkA25Z8QbPD1jywXFR73/s8Xc9MoVgUNz3+wVphwVs/sXpWLXYjMERGkHw0ifz9HeExmKHSWm5alKK6nwJlsYQZRmgGzknF539cn/e+qkjzjrnOzA1H7rRkJXMjlWwASCSvXnCnGuUAfuON1PPJs3g0qd9tCN2zVzuGRXsxrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9aKIqW95decKtwRMUGVX8UCSu1umPH1fv/fqXw+nshM=;
 b=x8l0jusUduiSpDfce5aS/6hTxFAFi9nxmEhx09zwlbw7peMAeI7xJgFN4/WOy/f7FejUtgGhg9rBe9FbShqU0q7iVv5aUzxC9XbNzweFmqfu7FU4nwnyIOsdBG3bRzbM6zgMReOvPngdLZiuka9M87fi24+zn6jfmwU2ILpWh1M=
Received: from CY5PR19CA0081.namprd19.prod.outlook.com (2603:10b6:930:69::27)
 by DS0PR12MB6391.namprd12.prod.outlook.com (2603:10b6:8:cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 24 Jun
 2026 16:58:33 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::3f) by CY5PR19CA0081.outlook.office365.com
 (2603:10b6:930:69::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.15 via Frontend Transport; Wed,
 24 Jun 2026 16:58:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:32 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:30 -0500
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
Subject: [PATCH v6 08/10] drm/amd/display: Drop brightness caching in amdgpu_dm
Date: Wed, 24 Jun 2026 09:57:48 -0700
Message-ID: <20260624165751.2014759-9-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|DS0PR12MB6391:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e6c15ca-6c39-491f-8eeb-08ded211d2ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700016|82310400026|23010399003|1800799024|7416014|376014|56012099006|11063799006|18092099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: d01ukAt4l9gdnhRxauuvD7UK/uKDz64nx1OByBlLWdd1YISDcjxvWrQUmnuDXi0rwTZkc+Ro/In1ZtZOr0CL2L7SdzoGj5jR7OC3e/aYGOfESuor2hu9opRTqS+7I/MNztBOx3z5U8M90zLNoKlTwhzUhfWKP5KCxeqa5q1uC7x7LnbOijSOwqMuaI/H4EfozN/vMKKPv4nKdnSSSjWzWAzoxIwwdsAijBwtP7qHanWNOdvmdW/SXkqJclvZrxMjQXG6C0UMv7F/O59wzPIT5T5yJktoWHksbR3uEbr70ImK5cBwi7PueqfUUgmXEwrUpBMSCL0q76YojpHR4REh9KT7tFChVkqPzlxyw6q0jTd4tWJMHfyloUetT8+S4cuUxICYy/aGyUKC0+KbRGRJEWDLkg5X5sfYsnGpjFHWQX0z6rwKvdRjclu8Qa/QOSVPpezygqXG6a9Z/6agJZwLqj9/YlKhkacSoMYPdN7Twn9OU+aBOZNV6OPymL7L79jNlLgGg2zzEgApxro1FJJvzzZ0UoeuJd4IGW/SIltQVvSot+xbEUVhGehATaEp8++aZeiCIT2LK1bHKfZ+4mTNK43hYxb67nnXFC37yeZFGb1bIA08d2SHRdegIGPB2+OLTTBmNkctzots0on7Or/zLBeIv0D97Ie0fwVcFy1WKx6ECA3J5oR8k+LE+Ihe4uY2vk/7kay9OeCHJXiqdqhzWg==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(36860700016)(82310400026)(23010399003)(1800799024)(7416014)(376014)(56012099006)(11063799006)(18092099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: RKpXQCQbdP0NHRwnDaVZsenl13vKBx00jSwLr92EcMAy1JrwTIGu60PiahZrDqWrvRjQMU5SUNuXTPDR9GY7gXHQuNKaDqQIZLJ9RrUHQhblHVSIDHnfRu3Dzk3Vrrgd0mjvLfKNXfSZWiwAaSb7trJZKZxeGNSt5V1tEpOry3rsGzx9ZIgCnFMjcNghM+prpzA1TFgiwoDYvHaZs0v6/Qpx7cLQ2vc1KqvOrNl00RhNXSOKZUFHFeLbdOcKbFpoiFXJqHaW55Gwz2d8y+NwZdZUMzFroxrA9o5bCN/0bhJA4+rTsF+p0b4vhmU2xa7ITgQT3Ckk+3NhzBPYqplt6CWp+LVnglLILL6aRVqKkR5S9pRLQjG9Vpr+VPIrMrqR+d/L9CW3GbfKWNfEO1D8fUj04Bbv0k4ftM45M5nCRH1PwJ/onshitCFUNPhV03IW
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:32.8875 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e6c15ca-6c39-491f-8eeb-08ded211d2ff
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6391
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
X-Rspamd-Queue-Id: D0B556C02EA

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

[Why]
Brightness caching isn't necessary when the core is changing brightness
as part of the connector state.

[How]
Drop all brightness and actual brightness caching

Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 72 +++----------------
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h | 13 ----
 2 files changed, 9 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 9653cfd99c6ad..43b22ab9180e8 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -3798,12 +3798,6 @@ static int dm_resume(struct amdgpu_ip_block *ip_block)
 
 		mutex_unlock(&dm->dc_lock);
 
-		/* set the backlight after a reset */
-		for (i = 0; i < dm->num_of_edps; i++) {
-			if (dm->backlight_dev[i])
-				amdgpu_dm_backlight_set_level(dm, i, dm->brightness[i]);
-		}
-
 		return 0;
 	}
 	/* Recreate dc_state - DC invalidates it when setting power state to S3. */
@@ -5388,7 +5382,7 @@ static void amdgpu_dm_backlight_set_level(struct amdgpu_display_manager *dm,
 	struct amdgpu_dm_backlight_caps *caps;
 	struct dc_link *link;
 	u32 brightness = 0;
-	bool rc = false, reallow_idle = false;
+	bool reallow_idle = false;
 	struct drm_connector *connector;
 	struct dc_stream_state *stream;
 	unsigned int min, max;
@@ -5399,10 +5393,8 @@ static void amdgpu_dm_backlight_set_level(struct amdgpu_display_manager *dm,
 		if (aconnector->bl_idx != bl_idx)
 			continue;
 
-		/* if connector is off, save the brightness for next time it's on */
+		/* if connector is off, DRM core will restore it next time it's on */
 		if (!aconnector->base.encoder) {
-			dm->brightness[bl_idx] = user_brightness;
-			dm->actual_brightness[bl_idx] = 0;
 			return;
 		}
 	}
@@ -5410,11 +5402,10 @@ static void amdgpu_dm_backlight_set_level(struct amdgpu_display_manager *dm,
 	amdgpu_dm_update_backlight_caps(dm, bl_idx);
 	caps = &dm->backlight_caps[bl_idx];
 
-	dm->brightness[bl_idx] = user_brightness;
 	/* update scratch register */
 	if (bl_idx == 0)
-		amdgpu_atombios_scratch_regs_set_backlight_level(dm->adev, dm->brightness[bl_idx]);
-	brightness = convert_brightness_from_user(caps, dm->brightness[bl_idx]);
+		amdgpu_atombios_scratch_regs_set_backlight_level(dm->adev, user_brightness);
+	brightness = convert_brightness_from_user(caps, user_brightness);
 	link = (struct dc_link *)dm->backlight_link[bl_idx];
 
 	/* Apply brightness quirk */
@@ -5440,14 +5431,14 @@ static void amdgpu_dm_backlight_set_level(struct amdgpu_display_manager *dm,
 	}
 
 	if (caps->aux_support) {
-		rc = mod_power_set_backlight_nits(dm->power_module, stream, brightness,
+		mod_power_set_backlight_nits(dm->power_module, stream, brightness,
 			AUX_BL_DEFAULT_TRANSITION_TIME_MS, false, true);
 	} else {
 		/* power module uses millipercent */
 		get_brightness_range(caps, &min, &max);
 		brightness = DIV_ROUND_CLOSEST(brightness * 100, (max - min)) * 1000;
-		rc = mod_power_set_backlight_percent(dm->power_module, stream,
-						     brightness, 0, false);
+		mod_power_set_backlight_percent(dm->power_module, stream,
+						brightness, 0, false);
 	}
 
 	/*
@@ -5472,9 +5463,6 @@ static void amdgpu_dm_backlight_set_level(struct amdgpu_display_manager *dm,
 		dc_allow_idle_optimizations(dm->dc, true);
 
 	mutex_unlock(&dm->dc_lock);
-
-	if (rc)
-		dm->actual_brightness[bl_idx] = user_brightness;
 }
 
 static int amdgpu_dm_backlight_update_status(struct backlight_device *bd)
@@ -5522,7 +5510,7 @@ static int amdgpu_dm_backlight_get_level(struct amdgpu_display_manager *dm,
 static int amdgpu_dm_backlight_get_brightness(struct backlight_device *bd)
 {
 	struct amdgpu_display_manager *dm = bl_get_data(bd);
-	int i, ret;
+	int i;
 
 	for (i = 0; i < dm->num_of_edps; i++) {
 		if (bd == dm->backlight_dev[i])
@@ -5531,11 +5519,7 @@ static int amdgpu_dm_backlight_get_brightness(struct backlight_device *bd)
 	if (i >= AMDGPU_DM_MAX_NUM_EDP)
 		i = 0;
 
-	ret = amdgpu_dm_backlight_get_level(dm, i);
-	if (ret < 0)
-		return dm->brightness[i];
-
-	return ret;
+	return amdgpu_dm_backlight_get_level(dm, i);
 }
 
 static const struct backlight_ops amdgpu_dm_backlight_ops = {
@@ -5553,8 +5537,6 @@ amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 	struct amdgpu_dm_backlight_caps *caps;
 	char bl_name[16];
 	int min, max;
-	int real_brightness;
-	int init_brightness;
 	int r;
 
 	if (aconnector->bl_idx == -1)
@@ -5580,8 +5562,6 @@ amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 	} else
 		props.brightness = props.max_brightness = MAX_BACKLIGHT_LEVEL;
 
-	init_brightness = props.brightness;
-
 	if (caps->data_points && !(amdgpu_dc_debug_mask & DC_DISABLE_CUSTOM_BRIGHTNESS_CURVE)) {
 		drm_info(drm, "Using custom brightness curve\n");
 		props.scale = BACKLIGHT_SCALE_NON_LINEAR;
@@ -5595,7 +5575,6 @@ amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 	dm->backlight_dev[aconnector->bl_idx] =
 		backlight_device_register(bl_name, aconnector->base.kdev, dm,
 					  &amdgpu_dm_backlight_ops, &props);
-	dm->brightness[aconnector->bl_idx] = props.brightness;
 
 	if (IS_ERR(dm->backlight_dev[aconnector->bl_idx])) {
 		r = PTR_ERR(dm->backlight_dev[aconnector->bl_idx]);
@@ -5604,18 +5583,6 @@ amdgpu_dm_register_backlight_device(struct amdgpu_dm_connector *aconnector)
 		return r;
 	}
 
-	/*
-	 * dm->brightness[x] can be inconsistent just after startup until
-	 * ops.get_brightness is called.
-	 */
-	real_brightness =
-		amdgpu_dm_backlight_ops.get_brightness(dm->backlight_dev[aconnector->bl_idx]);
-
-	if (real_brightness != init_brightness) {
-		dm->actual_brightness[aconnector->bl_idx] = real_brightness;
-		dm->brightness[aconnector->bl_idx] = real_brightness;
-	}
-
 	/* Link the registered backlight device to the DRM connector. If
 	 * drm_backlight_alloc() failed earlier in init_helper,
 	 * aconnector->base.backlight is NULL and drm_backlight_link() is a
@@ -10894,7 +10861,6 @@ static void amdgpu_dm_commit_streams(struct drm_atomic_commit *state,
 	bool mode_set_reset_required = false;
 	u32 i;
 	struct dc_commit_streams_params params = {dc_state->streams, dc_state->stream_count};
-	bool set_backlight_level = false;
 
 	/* Disable writeback */
 	for_each_old_connector_in_state(state, connector, old_con_state, i) {
@@ -11016,7 +10982,6 @@ static void amdgpu_dm_commit_streams(struct drm_atomic_commit *state,
 			acrtc->hw_mode = new_crtc_state->mode;
 			crtc->hwmode = new_crtc_state->mode;
 			mode_set_reset_required = true;
-			set_backlight_level = true;
 		} else if (modereset_required(new_crtc_state)) {
 			drm_dbg_atomic(dev,
 				       "Atomic commit: RESET. crtc id %d:[%p]\n",
@@ -11085,18 +11050,6 @@ static void amdgpu_dm_commit_streams(struct drm_atomic_commit *state,
 		}
 	}
 
-	/* During boot up and resume the DC layer will reset the panel brightness
-	 * to fix a flicker issue.
-	 * It will cause the dm->actual_brightness is not the current panel brightness
-	 * level. (the dm->brightness is the correct panel level)
-	 * So we set the backlight level with dm->brightness value after set mode
-	 */
-	if (set_backlight_level) {
-		for (i = 0; i < dm->num_of_edps; i++) {
-			if (dm->backlight_dev[i])
-				amdgpu_dm_backlight_set_level(dm, i, dm->brightness[i]);
-		}
-	}
 }
 
 static void dm_set_writeback(struct amdgpu_display_manager *dm,
@@ -11604,13 +11557,6 @@ static void amdgpu_dm_atomic_commit_tail(struct drm_atomic_commit *state)
 	/* Update audio instances for each connector. */
 	amdgpu_dm_commit_audio(dev, state);
 
-	/* restore the backlight level */
-	for (i = 0; i < dm->num_of_edps; i++) {
-		if (dm->backlight_dev[i] &&
-		    (dm->actual_brightness[i] != dm->brightness[i]))
-			amdgpu_dm_backlight_set_level(dm, i, dm->brightness[i]);
-	}
-
 	/*
 	 * send vblank event on all events not handled in flip and
 	 * mark consumed event for drm_atomic_helper_commit_hw_done
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
index dd199e0b79226..1aeb223256fa7 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
@@ -645,19 +645,6 @@ struct amdgpu_display_manager {
 	struct completion dmub_aux_transfer_done;
 	struct workqueue_struct *delayed_hpd_wq;
 
-	/**
-	 * @brightness:
-	 *
-	 * cached backlight values.
-	 */
-	u32 brightness[AMDGPU_DM_MAX_NUM_EDP];
-	/**
-	 * @actual_brightness:
-	 *
-	 * last successfully applied backlight values.
-	 */
-	u32 actual_brightness[AMDGPU_DM_MAX_NUM_EDP];
-
 	/**
 	 * @aux_hpd_discon_quirk:
 	 *
-- 
2.43.0

