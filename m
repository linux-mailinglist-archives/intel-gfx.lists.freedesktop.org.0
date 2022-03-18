Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9964DD6AF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 09:57:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A794E10E7DC;
	Fri, 18 Mar 2022 08:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FAA910E170;
 Fri, 18 Mar 2022 08:57:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C151A9A42;
 Fri, 18 Mar 2022 08:57:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hsin-Yi Wang" <hsinyi@chromium.org>
Date: Fri, 18 Mar 2022 08:57:23 -0000
Message-ID: <164759384354.31587.2581208982180460206@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220318074825.3359978-1-hsinyi@chromium.org>
In-Reply-To: <20220318074825.3359978-1-hsinyi@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Separate_panel_orientation_property_creating_and_value_sett?=
 =?utf-8?q?ing?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Separate panel orientation property creating and value setting
URL   : https://patchwork.freedesktop.org/series/101530/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e49373f13754 gpu: drm: separate panel orientation property creating and value setting
-:130: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#130: FILE: drivers/gpu/drm/drm_connector.c:2423:
+ * ^Icreate the connector's panel orientation property$

-:141: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#141: FILE: drivers/gpu/drm/drm_connector.c:2434:
+int drm_connector_init_panel_orientation_property(

-:147: ERROR:SPACING: space required before the open parenthesis '('
#147: FILE: drivers/gpu/drm/drm_connector.c:2440:
+	if(dev->mode_config.panel_orientation_property)

-:151: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#151: FILE: drivers/gpu/drm/drm_connector.c:2444:
+	prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
+			"panel orientation",

-:176: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#176: FILE: include/drm/drm_connector.h:1808:
+int drm_connector_init_panel_orientation_property(

total: 1 errors, 1 warnings, 3 checks, 99 lines checked
10c78f057d39 drm/mediatek: init panel orientation property
a6a047990b09 drm/msm: init panel orientation property
912fd1736584 arm64: dts: mt8183: Add panel rotation


