Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E0325AA7D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 13:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8546E47E;
	Wed,  2 Sep 2020 11:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CBBE89973;
 Wed,  2 Sep 2020 11:46:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 64DE5A0BCB;
 Wed,  2 Sep 2020 11:46:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mohammed Khajapasha" <mohammed.khajapasha@intel.com>
Date: Wed, 02 Sep 2020 11:46:50 -0000
Message-ID: <159904721038.24288.9295785108926970887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200902113139.17929-1-mohammed.khajapasha@intel.com>
In-Reply-To: <20200902113139.17929-1-mohammed.khajapasha@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/kms=3A_Add_separate_hotplug_event_call_for_drm_connecto?=
 =?utf-8?q?r_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/kms: Add separate hotplug event call for drm connector (rev2)
URL   : https://patchwork.freedesktop.org/series/81257/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e24fd2c19263 drm/kms: Add separate hotplug event call for drm connector
-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/drm_probe_helper.c:610:
+void drm_kms_connector_hotplug_helper(struct drm_device *dev,
+		struct drm_connector *connector)

-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/drm_sysfs.c:357:
+void drm_sysfs_connector_hotplug_event(struct drm_device *dev,
+		struct drm_connector *connector)

-:75: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#75: FILE: drivers/gpu/drm/drm_sysfs.c:360:
+	char *envp[] = { hotplug_str, conn_id, NULL };

-:78: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#78: FILE: drivers/gpu/drm/drm_sysfs.c:363:
+	snprintf(conn_id, ARRAY_SIZE(conn_id),
+			"CONNECTOR=%u", connector->base.id);

-:98: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#98: FILE: include/drm/drm_probe_helper.h:23:
+void drm_kms_connector_hotplug_helper(struct drm_device *dev,
+		struct drm_connector *connector);

-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: include/drm/drm_sysfs.h:15:
+void drm_sysfs_connector_hotplug_event(struct drm_device *dev,
+		struct drm_connector *connector);

total: 0 errors, 1 warnings, 5 checks, 82 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
