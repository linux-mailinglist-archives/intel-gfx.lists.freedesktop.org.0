Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3801308E9
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Jan 2020 17:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E36789F75;
	Sun,  5 Jan 2020 16:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC29189F61;
 Sun,  5 Jan 2020 16:01:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 405B6A0134;
 Sun,  5 Jan 2020 16:01:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 05 Jan 2020 16:01:45 -0000
Message-ID: <157824010523.14737.4895214030299858888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200105155120.96466-1-hdegoede@redhat.com>
In-Reply-To: <20200105155120.96466-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/connector=3A_Split_?=
 =?utf-8?q?out_orientation_quirk_detection_=28v2=29?=
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

Series: series starting with [v2,1/2] drm/connector: Split out orientation quirk detection (v2)
URL   : https://patchwork.freedesktop.org/series/71637/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7646641a936d drm/connector: Split out orientation quirk detection (v2)
-:78: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#78: FILE: drivers/gpu/drm/drm_connector.c:2067:
+int drm_connector_set_panel_orientation(

-:125: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#125: FILE: drivers/gpu/drm/drm_connector.c:2117:
+int drm_connector_set_panel_orientation_with_quirk(

-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1671:
+	drm_connector_set_panel_orientation_with_quirk(&connector->base,
+				intel_dsi_get_panel_orientation(connector),

-:173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#173: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7407:
+		drm_connector_set_panel_orientation_with_quirk(connector,
+				DRM_MODE_PANEL_ORIENTATION_UNKNOWN,

-:190: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#190: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1631:
+		drm_connector_set_panel_orientation_with_quirk(

-:206: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#206: FILE: include/drm/drm_connector.h:1555:
+int drm_connector_set_panel_orientation(

-:209: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#209: FILE: include/drm/drm_connector.h:1558:
+int drm_connector_set_panel_orientation_with_quirk(

total: 0 errors, 0 warnings, 7 checks, 159 lines checked
1aacf418cca8 drm/connector: Hookup the new drm_cmdline_mode panel_orientation member (v2)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
