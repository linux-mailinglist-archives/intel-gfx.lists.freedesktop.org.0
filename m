Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98393120FE8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 17:45:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805876E824;
	Mon, 16 Dec 2019 16:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9F276E817;
 Mon, 16 Dec 2019 16:45:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D40F0A00C7;
 Mon, 16 Dec 2019 16:45:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 16 Dec 2019 16:45:12 -0000
Message-ID: <157651471286.5611.17210598965533260354@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216115158.862404-1-hdegoede@redhat.com>
In-Reply-To: <20191216115158.862404-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/connector=3A_Add_support_for_specifying_panel=5Forienta?=
 =?utf-8?q?tion_on_the_kernel_cmdline?=
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

Series: drm/connector: Add support for specifying panel_orientation on the kernel cmdline
URL   : https://patchwork.freedesktop.org/series/70975/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0adf9e2ded45 drm/connector: Split out orientation quirk detection (v2)
-:77: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#77: FILE: drivers/gpu/drm/drm_connector.c:2067:
+int drm_connector_set_panel_orientation(

-:124: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#124: FILE: drivers/gpu/drm/drm_connector.c:2117:
+int drm_connector_set_panel_orientation_with_quirk(

-:154: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#154: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1660:
+	drm_connector_set_panel_orientation_with_quirk(&connector->base,
+				intel_dsi_get_panel_orientation(connector),

-:172: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#172: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7407:
+		drm_connector_set_panel_orientation_with_quirk(connector,
+				DRM_MODE_PANEL_ORIENTATION_UNKNOWN,

-:189: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#189: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1635:
+		drm_connector_set_panel_orientation_with_quirk(

-:205: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#205: FILE: include/drm/drm_connector.h:1555:
+int drm_connector_set_panel_orientation(

-:208: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#208: FILE: include/drm/drm_connector.h:1558:
+int drm_connector_set_panel_orientation_with_quirk(

total: 0 errors, 0 warnings, 7 checks, 159 lines checked
874c08fe92f2 drm/connector: Hookup the new drm_cmdline_mode panel_orientation member

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
