Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NjPCNbwMPGr2jAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ADD6C0278
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b="L3tgL+/P";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17ABB10E0D3;
	Wed, 24 Jun 2026 16:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012037.outbound.protection.outlook.com [52.101.48.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21AAF10E0BE;
 Wed, 24 Jun 2026 16:58:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DfBeO/5VHzKgMA6mL6Uysh/maa6CmV348x+kQWB8iTjirkg23DtX11nc6EyHaFN085ao5CiNbw5r9bgf3aryANgD0uecNp0eS3gX/2iZb/Bw2ahGa/klFTRCSTmBtYy2IKCjb+4hjVrk0OTFYWipz+iePQqBuwxn9Jz4T4azRU+Wjk60hHb8HQPVd+cu/41un8CjewVtzYXVhY5gjPisMPWGynThzAklZY8nRzBnqLSi5xY993Ooc6XYJcI/vaveTTZuF4gyFvche5zpi5Pia1t4nBBAb/75NJsGqNoVn+AVtyha9/7UOw5DqVNBRe8cri6xBohJEdhg1ivNVkB9Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HEJlIAkEeICQM3FNhzcfokaVtwGIvMHIIRleWlXSdRM=;
 b=ZmChr07d2FK6M63hqFW840WjKJ/avvdUqUbIpouDnZickwGhXamZSYQyd3msn+4BNLfbk9SullAa5YGpWIFm5CCS6L1Nb7Cm3TrDgctNYra7B7VwASohg+VdViUpOXxPzCb6cUfQZDY7ycM/AUXJsEFq93lUgO72LRj5ooukjbAu66t2Vr2Z8BqlWjXfyqpd4pFGf8Buupuq48rT3gldCs8Q20iy1BBThZoioiiZBwwV5iBoYM2vkEvHW6tm/Kruh1e/TEqDd5+MQNu6w70N8XavCE45o1cgEo88DBJzOuZWbZgi3gtmczJXqEbpf16qvIQShlefz/OWOxbpLRBlmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HEJlIAkEeICQM3FNhzcfokaVtwGIvMHIIRleWlXSdRM=;
 b=L3tgL+/P8duPZU84c/sPAJqy1Ao60uvYvv8iknGEWoFAk44KrNiFjWRN0bTgnzZndc2KrydlZmMdZiX4EdmwT/gdLtaISeW6nr4mOj0tn90trF59kQsm4hjZ+eQx/LtRw6kJoTdBtjpa9mgp+lzH6pJ1IR2Mj+6ToTWgqqiFXbo=
Received: from CY5PR19CA0065.namprd19.prod.outlook.com (2603:10b6:930:69::13)
 by SJ1PR12MB6028.namprd12.prod.outlook.com (2603:10b6:a03:489::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 24 Jun
 2026 16:58:25 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::88) by CY5PR19CA0065.outlook.office365.com
 (2603:10b6:930:69::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.14 via Frontend Transport; Wed,
 24 Jun 2026 16:58:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:24 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:19 -0500
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
Subject: [PATCH v6 01/10] Revert "backlight: Remove notifier"
Date: Wed, 24 Jun 2026 09:57:41 -0700
Message-ID: <20260624165751.2014759-2-mario.limonciello@amd.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|SJ1PR12MB6028:EE_
X-MS-Office365-Filtering-Correlation-Id: 90ba342b-8f85-4980-5ed0-08ded211cdff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|82310400026|376014|36860700016|7416014|56012099006|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: k2XRfSZ8xggPUoW49FRiy0+P+q1ay+XKnQTWxtuUK+YLuLDGh0wlP74I8v7liTz9NhsUdQtjZ59Ng5Ap8+TIjRFuqusg8hzqJI6PsqEPERttL/SpN3JApvBgs7Xh7MP9/Q0dS7/aBn3rmnj6Ov1EUgE9aBTSc8mrI/RBl2wB1H9HVSkZ1igBSDa1LfkrRptVgzef7zVydlx5kLuCU9vsIWpcF2/agH5+extTttidPGdklhxIUdovoINXG/nLOOolyiplrdOg0W14CEJeIIAspHMS1bC6STez/MIEIY/KRWjtxQQkf5Jy4MGiHzxngBVgP67R6YMHSfMXdXV0PiDmUbx+S88k0RboVQSixL/eRLPuLVDMLMB2fs4bs7NIVhDtsbdHp46ziq5vFq8bPPdeXpCsgaYuNl00fgnIPYtUxI610GTH8GNqljEiNvBYQT2dLohckgy8dXU7KSML6U9w9+oXeQQ/Y+ux14xpHm8hRI2pUW/eOFRN1wkWjHUTtxcCbPg+fxmgWw+BIgx2sUP63PD1m3+NkyeV3Krf+nA90A9pQtB1PmW58tXD1Dlgzp35xp2M/GqSwR9VQc3c6xnjQPepzmoSJ8VooCWD5zjNNVwCTL2vx//7TD5wE9JOC3/hjA8QPXomKQmSKe/A+m4YXNkgoUeP0LJc0JFWHZpx1owKy5gcx3R2kwxzOhawmMkeAuglkRS2Bxw5365XAOOatA==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(82310400026)(376014)(36860700016)(7416014)(56012099006)(22082099003)(18002099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 3e5mzgDF1GBxQrVM2Pl1EvGkGw2UnprBmBpW+tbyiGwMeQrGiHfdC1ePt4c4VR8NglUmTMdn2lphLetVxmTCAF0nugItMGVzisNedN3YJclp01d+1ahy3ajjY8YkA/ogBYNzhdi8JZqMtHvdBpN0Uvp1ZG3FuJbWuC3cBP/RKZa3aYwlmx53nlsb8IpP4EyjXej+96M+5CJ5gJFhh2M3N4CRiUpAUSQ2NzI6CMSiIiQCkWw9F6+ehOr9Z/TBgUxkd21Cgq/rg629VYWY/ZHlfM1Qg40PeL5BfGl2ldxGwruWLqIB8JVxDvFzuff521L79stp562j6sIMs3DzfIhBsZIFUJ452JsJTG/SEHZIbKojsK/NTQlLJy5VVn7UtF7hpGFJY+W40RhzTRKJoPkDQtVF5m8HwHteiKIzBeE4qMunvpiz5BRkGN+Ue9N6AzeB
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:24.4981 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 90ba342b-8f85-4980-5ed0-08ded211cdff
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6028
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,emersion.fr:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46ADD6C0278

From: "Mario Limonciello (AMD)" <superm1@kernel.org>

This reverts commit 5461f3fd74a89757f95f351eb0bc26aafc2a2e91.
The backlight notifier support is needed in order to add backlight
control support into DRM connectors.

Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
Tested-by: Simon Ser <contact@emersion.fr>
---
 drivers/video/backlight/backlight.c | 42 +++++++++++++++++++++++++++++
 include/linux/backlight.h           | 20 ++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index a22d0bbb6e639..ff2c2084c73a4 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -65,6 +65,7 @@
 
 static struct list_head backlight_dev_list;
 static struct mutex backlight_dev_list_mutex;
+static struct blocking_notifier_head backlight_notifier;
 
 static const char *const backlight_types[] = {
 	[BACKLIGHT_RAW] = "raw",
@@ -415,6 +416,9 @@ struct backlight_device *backlight_device_register(const char *name,
 	list_add(&new_bd->entry, &backlight_dev_list);
 	mutex_unlock(&backlight_dev_list_mutex);
 
+	blocking_notifier_call_chain(&backlight_notifier,
+				     BACKLIGHT_REGISTERED, new_bd);
+
 	return new_bd;
 }
 EXPORT_SYMBOL(backlight_device_register);
@@ -484,6 +488,9 @@ void backlight_device_unregister(struct backlight_device *bd)
 	mutex_unlock(&pmac_backlight_mutex);
 #endif
 
+	blocking_notifier_call_chain(&backlight_notifier,
+				     BACKLIGHT_UNREGISTERED, bd);
+
 	mutex_lock(&bd->ops_lock);
 	bd->ops = NULL;
 	mutex_unlock(&bd->ops_lock);
@@ -507,6 +514,40 @@ static int devm_backlight_device_match(struct device *dev, void *res,
 	return *r == data;
 }
 
+/**
+ * backlight_register_notifier - get notified of backlight (un)registration
+ * @nb: notifier block with the notifier to call on backlight (un)registration
+ *
+ * Register a notifier to get notified when backlight devices get registered
+ * or unregistered.
+ *
+ * RETURNS:
+ *
+ * 0 on success, otherwise a negative error code
+ */
+int backlight_register_notifier(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&backlight_notifier, nb);
+}
+EXPORT_SYMBOL(backlight_register_notifier);
+
+/**
+ * backlight_unregister_notifier - unregister a backlight notifier
+ * @nb: notifier block to unregister
+ *
+ * Register a notifier to get notified when backlight devices get registered
+ * or unregistered.
+ *
+ * RETURNS:
+ *
+ * 0 on success, otherwise a negative error code
+ */
+int backlight_unregister_notifier(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_unregister(&backlight_notifier, nb);
+}
+EXPORT_SYMBOL(backlight_unregister_notifier);
+
 /**
  * devm_backlight_device_register - register a new backlight device
  * @dev: the device to register
@@ -674,6 +715,7 @@ static int __init backlight_class_init(void)
 
 	INIT_LIST_HEAD(&backlight_dev_list);
 	mutex_init(&backlight_dev_list_mutex);
+	BLOCKING_INIT_NOTIFIER_HEAD(&backlight_notifier);
 
 	return 0;
 }
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index f29a9ef1052e7..d905173c7f73c 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -64,6 +64,24 @@ enum backlight_type {
 	BACKLIGHT_TYPE_MAX,
 };
 
+/**
+ * enum backlight_notification - the type of notification
+ *
+ * The notifications that is used for notification sent to the receiver
+ * that registered notifications using backlight_register_notifier().
+ */
+enum backlight_notification {
+	/**
+	 * @BACKLIGHT_REGISTERED: The backlight device is registered.
+	 */
+	BACKLIGHT_REGISTERED,
+
+	/**
+	 * @BACKLIGHT_UNREGISTERED: The backlight revice is unregistered.
+	 */
+	BACKLIGHT_UNREGISTERED,
+};
+
 /** enum backlight_scale - the type of scale used for brightness values
  *
  * The type of scale used for brightness values.
@@ -388,6 +406,8 @@ void devm_backlight_device_unregister(struct device *dev,
 				      struct backlight_device *bd);
 void backlight_force_update(struct backlight_device *bd,
 			    enum backlight_update_reason reason);
+int backlight_register_notifier(struct notifier_block *nb);
+int backlight_unregister_notifier(struct notifier_block *nb);
 struct backlight_device *backlight_device_get_by_name(const char *name);
 struct backlight_device *backlight_device_get_by_type(enum backlight_type type);
 int backlight_device_set_brightness(struct backlight_device *bd,
-- 
2.43.0

