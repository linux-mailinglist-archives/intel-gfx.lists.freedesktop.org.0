Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB624AD52D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 10:49:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5923E10E64B;
	Tue,  8 Feb 2022 09:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD50F10E64B;
 Tue,  8 Feb 2022 09:49:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB3C3A73C9;
 Tue,  8 Feb 2022 09:49:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hsin-Yi Wang" <hsinyi@chromium.org>
Date: Tue, 08 Feb 2022 09:49:07 -0000
Message-ID: <164431374774.22535.6502284038248225432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208084234.1684930-1-hsinyi@chromium.org>
In-Reply-To: <20220208084234.1684930-1-hsinyi@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv8=2C1/3=5D_gpu=3A_drm=3A_separate_?=
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

Series: series starting with [v8,1/3] gpu: drm: separate panel orientation property creating and value setting
URL   : https://patchwork.freedesktop.org/series/99828/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a832dc08d88f gpu: drm: separate panel orientation property creating and value setting
-:132: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#132: FILE: drivers/gpu/drm/drm_connector.c:2418:
+ * ^Icreate the connector's panel orientation property$

-:143: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#143: FILE: drivers/gpu/drm/drm_connector.c:2429:
+int drm_connector_init_panel_orientation_property(

-:149: ERROR:SPACING: space required before the open parenthesis '('
#149: FILE: drivers/gpu/drm/drm_connector.c:2435:
+	if(dev->mode_config.panel_orientation_property)

-:153: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#153: FILE: drivers/gpu/drm/drm_connector.c:2439:
+	prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
+			"panel orientation",

-:178: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#178: FILE: include/drm/drm_connector.h:1801:
+int drm_connector_init_panel_orientation_property(

total: 1 errors, 1 warnings, 3 checks, 101 lines checked
73d060c30153 drm/mediatek: init panel orientation property
d313feab36a3 arm64: dts: mt8183: Add panel rotation


