Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C933B315B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 16:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604D86EC09;
	Thu, 24 Jun 2021 14:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC4676EC09;
 Thu, 24 Jun 2021 14:30:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BCE8A73C7;
 Thu, 24 Jun 2021 14:30:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hsin-Yi Wang" <hsinyi@chromium.org>
Date: Thu, 24 Jun 2021 14:30:34 -0000
Message-ID: <162454503463.1853.5098573601991438300@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624105517.3886963-1-hsinyi@chromium.org>
In-Reply-To: <20210624105517.3886963-1-hsinyi@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2CRESEND=2C1/3=5D_gpu=3A_drm=3A_?=
 =?utf-8?q?separate_panel_orientation_property_creating_and_value_setting?=
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

Series: series starting with [v6,RESEND,1/3] gpu: drm: separate panel orientation property creating and value setting
URL   : https://patchwork.freedesktop.org/series/91867/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8e0b6d8e41b6 gpu: drm: separate panel orientation property creating and value setting
-:131: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#131: FILE: drivers/gpu/drm/drm_connector.c:2320:
+ * ^Icreate the connector's panel orientation property$

-:142: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#142: FILE: drivers/gpu/drm/drm_connector.c:2331:
+int drm_connector_init_panel_orientation_property(

-:149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#149: FILE: drivers/gpu/drm/drm_connector.c:2338:
+	prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
+			"panel orientation",

-:210: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#210: FILE: include/drm/drm_connector.h:1708:
+int drm_connector_init_panel_orientation_property(

total: 0 errors, 1 warnings, 3 checks, 118 lines checked
39f7ae8abfee drm/mediatek: init panel orientation property
d46a8e1bd812 arm64: dts: mt8183: Add panel rotation


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
