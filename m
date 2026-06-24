Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LMJyBMUMPGoCjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17B46C02A2
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 18:58:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=C1VdDwoa;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C91910EFCA;
	Wed, 24 Jun 2026 16:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010060.outbound.protection.outlook.com [52.101.46.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0E810EFCF;
 Wed, 24 Jun 2026 16:58:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=maU6RCtBoT6aYGWCa0r3HwTHLiJECGBkrRg331vmkVd7WsSqpAAAQ+MguBihj8tXQOSaxmlI10isU6FnLGskb5/zF6U1HE2HNDOVOD4x1dYWbRQSVMVjGrexf4m8jYRbqeNjHUOJZAcr2Y8mWcQ44tEzr9sXv+SetPUFQAKG/u0Y0suZhrptka0wvuDoa9BVSF4pVdV9K6S4Eh5681VuM6S9PtqKQHFoC1DN6zqQicV+vPWeDc4ioTn1dKZwFn95SudbU2nioib4Ahu2tEIi9TXhzYpQeAsuhlIAQaBkM8qMBcDRujtT5wOtiXwFqRQfkdKdQ0szZv9Ov5Ht2YRa1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vsYAuLvGbXaGiNPSi7L0Vqj/AeUYtivMkmHY83TUEN4=;
 b=YrzHBQ0UdAWKch5TrTHdWnFq/ozHe9l9/vHtIInq9TiGTZztrzz9PLT0Gc/6vvy7kOv32PYf48ePLocjGJMTupE4jlkYKh2QO1TqDjONm5pW/CF55reiBBHvsrT598OoMEF/Mfpj90AOvF6G2sMijLJXIGRzRFlyRqFUv08QFC/kOySNDuL6N/WWGA/dNxUqV8y62PQSVltvNKg1iZ9rkAeGBHNMnE6A7fLgs5LgfmOytgzHpIXXIDS0L+KtykvtPm1DWX5eULy9z5Juxo2pUld8+T/1NTaPPgOsn+3UO9vcepEYqT1fY1/n2jNv+bdsbbtgHcKm3iDEQ5dDHtHpuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vsYAuLvGbXaGiNPSi7L0Vqj/AeUYtivMkmHY83TUEN4=;
 b=C1VdDwoayXRm9MzcADI4Y00YedlAh0idqeh7Z2XJmKO7vN/SxfRAi25CG3Q5TUtowi4DictF6bT1/CZA06K7IEyeuSaRJOoc9KETNo0ftwKWRQZyXdvihwtAiC1tT9g1QgHvy82sZIDANu4mdHy92aH6DXuKLjHgWZlDBbM0rfo=
Received: from CY5PR19CA0066.namprd19.prod.outlook.com (2603:10b6:930:69::12)
 by PH7PR12MB7453.namprd12.prod.outlook.com (2603:10b6:510:20a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 16:58:20 +0000
Received: from CH1PEPF0000A346.namprd04.prod.outlook.com
 (2603:10b6:930:69:cafe::42) by CY5PR19CA0066.outlook.office365.com
 (2603:10b6:930:69::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.14 via Frontend Transport; Wed,
 24 Jun 2026 16:58:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A346.mail.protection.outlook.com (10.167.244.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Wed, 24 Jun 2026 16:58:19 +0000
Received: from ausmlimonci-lx1.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 24 Jun
 2026 11:58:18 -0500
From: Mario Limonciello <mario.limonciello@amd.com>
To: <dri-devel@lists.freedesktop.org>, <harry.wentland@amd.com>, Simona Vetter
 <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>
CC: Xaver Hugl <xaver.hugl@gmail.com>, <amd-gfx@lists.freedesktop.org>, "open
 list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>, "open list:INTEL DRM DISPLAY FOR XE AND
 I915 DRIVERS" <intel-xe@lists.freedesktop.org>, Mario Limonciello
 <superm1@kernel.org>
Subject: [PATCH v6 00/10] Add support for a DRM backlight capability
Date: Wed, 24 Jun 2026 09:57:40 -0700
Message-ID: <20260624165751.2014759-1-mario.limonciello@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A346:EE_|PH7PR12MB7453:EE_
X-MS-Office365-Filtering-Correlation-Id: fbbfb4fd-370e-4108-fe22-08ded211cb2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|82310400026|1800799024|23010399003|36860700016|7416014|18002099003|13003099007|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 1+zjh9eF95e7QJw+X7uBDAokr2hJwRH1aTYe8gsGjSgu5tcOVxfjpjmrrwEDGOGuDiAHryVLXfj4fBYlHC7WLAMxRDIHlGbnJbuLKMJ6lCBy2/inHpz9tBTaO9hCOee/o7AnpFvTxW7zYB7ay6hiUo+Y0l41+XRiaxi184aYtvdISy6orzpe4cU30sZJui3peSaRaC+sxhT3LJNmTP15REcQymQT7rD6WChwpfUa37Nv08WIa85JvyIbDTghdflO0dmj6RJCZyXkM4qPwqA3n4QgN9R8rkmJoEbTyDR1xiylB75TcoVu4V7Ah8efNXzEUmjGwdby1EhPNjJF9eVKJ/1rTWHRDvvnfrtl3QNwnYnova9hBJ8Vx+24lQZDpoFj0vrefoRtS7mZkuOk9Ev2BHFV1FjWNQ+XrYjOXxhk0op7pSuKUYH8bh66tkxRZxOGt0Qssf9ZTA4UdYEfBrcOMjyxNtbYy06jCQs2mA3kA8ocwNHvMt741pBGrIpir34+QMDB4TrjdOW/JVLwFXYr3xa+S+yPKg7XwDrZoTaAutj9CJDtijDGF91w9RLv7bF0l0NDJ1X+UiPPARYookXy2Z9zyuLjV2A2v1FCdhp9Rqq6fWctg7esgUJw6m0HPL82Uc+rOycyktp66P57FJxoVg==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(376014)(82310400026)(1800799024)(23010399003)(36860700016)(7416014)(18002099003)(13003099007)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Th+fFf/kzTVVLARsHFS+XlNtnmpu2Sps36DnGdnecVLF4pjmsU0gZXq6nWtySdc95pGCStOKqXkhJHCWRdUk9yEfoGd8zKRQiHaXjHow9Jeo26uboISDUrnWswPF/aF7DJ3n0Pa9i+PaRoTrBNuZsTBYIeEVbn54fnwKRhecMy7+oKRgemjJX+XDsK4ZkjTVN9jbN6dypwFDDrWb6rCA619qEkcVT4QaAIEI45m1gHqGMffneqnSf2H1gohloEcmTLnJJtz0QVYkoTF3DvjCl29hMpO6l2eipfX8M+d3JUDnFLqj4wstf9cLLhyaNbEW/G7n7Z7T0lu0mkZsfirbtg7BrG886deWpRuK/s9dXkvVLGM4ImP29djWFAvIDvJPcamVHNfSrlPb7/ksleKP1hDP0IV2sGQMzaESODmiESVpurEPBEbra1xV0LZmQlJT
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 16:58:19.7703 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fbbfb4fd-370e-4108-fe22-08ded211cb2d
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000A346.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7453
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gnome.org:url,lists.freedesktop.org:from_smtp,amd.com:dkim,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B17B46C02A2

From: Mario Limonciello (AMD) <superm1@kernel.org>

At Display Next Hackfest 2026 we reviewed progress moving brightness
control into the DRM connector properties.

There is a range LUMINANCE property that will default to 0->0.
Once a driver attaches a backlight it will be updated to 1->max.
If the panel supports the minimum backlight turning off the display
the range can later be updated to 0->max instead of 1->max.

The legacy sysfs interface is synchronized with the DRM connector.
When a compositor using this feature is loaded, sysfs writes are disabled
to prevent legacy tools from going out of sync with the compositor.

This has an implementation initially for amdgpu, i915, and Xe with eDP
connectors.  It can be extended to other connectors like DP for displays
that can be controlled via DDC as well later.

The following compositors have implemented matching support:
 * Kwin: https://invent.kde.org/plasma/kwin/-/merge_requests/9298
 * Mutter: https://gitlab.gnome.org/swick/mutter/-/commits/wip/kms-luminance-prop
 * Wlroots: https://gitlab.freedesktop.org/wlroots/wlroots/-/merge_requests/5384

---
v5->v6:
 * Rebase on drm-next
 * Drop patch 7/11 (Move backlight tracing out of the dc lock)

Mario Limonciello (AMD) (10):
  Revert "backlight: Remove notifier"
  backlight: add kernel-internal backlight API
  drm: link connectors to backlight devices
  DRM: Add support for client indicating support for luminance
  drm/amd/display: Pass up errors reading actual brightness
  drm/amd/display: Allow backlight registration to fail
  drm/amd/display: use drm backlight
  drm/amd/display: Drop brightness caching in amdgpu_dm
  drm/bridge: auto-link panel backlight in bridge connector
  drm/i915/display: use drm backlight

 drivers/gpu/drm/Kconfig                       |   1 +
 drivers/gpu/drm/Makefile                      |   1 +
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 111 ++---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h |  13 -
 drivers/gpu/drm/bridge/panel.c                |  15 +
 .../gpu/drm/display/drm_bridge_connector.c    |  15 +-
 drivers/gpu/drm/drm_atomic_helper.c           |   7 +
 drivers/gpu/drm/drm_atomic_uapi.c             |  59 ++-
 drivers/gpu/drm/drm_backlight.c               | 445 ++++++++++++++++++
 drivers/gpu/drm/drm_connector.c               |  63 +++
 drivers/gpu/drm/drm_drv.c                     |   8 +
 drivers/gpu/drm/drm_file.c                    |   5 +
 drivers/gpu/drm/drm_ioctl.c                   |  15 +
 drivers/gpu/drm/drm_mode_config.c             |   7 +
 drivers/gpu/drm/drm_mode_object.c             |  66 ++-
 drivers/gpu/drm/drm_property.c                |   6 +
 drivers/gpu/drm/drm_sysfs.c                   |  28 +-
 .../gpu/drm/i915/display/intel_backlight.c    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   8 +
 drivers/video/backlight/backlight.c           |  97 ++++
 include/drm/drm_backlight.h                   |  51 ++
 include/drm/drm_bridge.h                      |   1 +
 include/drm/drm_connector.h                   |   8 +
 include/drm/drm_file.h                        |   8 +
 include/drm/drm_mode_config.h                 |   5 +
 include/linux/backlight.h                     |  63 +++
 include/uapi/drm/drm.h                        |  22 +
 27 files changed, 1046 insertions(+), 86 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_backlight.c
 create mode 100644 include/drm/drm_backlight.h


base-commit: 0e8233409d4f6def051dd42a432c6815bb780d78
-- 
2.43.0

