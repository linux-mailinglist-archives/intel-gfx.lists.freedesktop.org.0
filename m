Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 445B64AD27A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 08:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AC510E13A;
	Tue,  8 Feb 2022 07:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB28710E13A;
 Tue,  8 Feb 2022 07:46:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4FC4AA917;
 Tue,  8 Feb 2022 07:46:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hsin-Yi Wang" <hsinyi@chromium.org>
Date: Tue, 08 Feb 2022 07:46:42 -0000
Message-ID: <164430640277.22537.1346156448692431848@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208073714.1540390-1-hsinyi@chromium.org>
In-Reply-To: <20220208073714.1540390-1-hsinyi@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv7=2C1/3=5D_gpu=3A_drm=3A_separate_?=
 =?utf-8?q?panel_orientation_property_creating_and_value_setting?=
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

Series: series starting with [v7,1/3] gpu: drm: separate panel orientation property creating and value setting
URL   : https://patchwork.freedesktop.org/series/99815/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
da6aee85bf29 gpu: drm: separate panel orientation property creating and value setting
-:143: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#143: FILE: drivers/gpu/drm/drm_connector.c:2417:
+ * ^Icreate the connector's panel orientation property$

-:154: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#154: FILE: drivers/gpu/drm/drm_connector.c:2428:
+int drm_connector_init_panel_orientation_property(

-:161: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#161: FILE: drivers/gpu/drm/drm_connector.c:2435:
+	prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
+			"panel orientation",

-:222: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#222: FILE: include/drm/drm_connector.h:1801:
+int drm_connector_init_panel_orientation_property(

total: 0 errors, 1 warnings, 3 checks, 125 lines checked
8fecb3d43d2d drm/mediatek: init panel orientation property
55c75bd3404f arm64: dts: mt8183: Add panel rotation


