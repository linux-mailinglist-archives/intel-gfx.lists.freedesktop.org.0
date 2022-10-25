Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F56D60CBEE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 14:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A67910E33A;
	Tue, 25 Oct 2022 12:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8860310E33A;
 Tue, 25 Oct 2022 12:35:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81C25A7DFB;
 Tue, 25 Oct 2022 12:35:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 25 Oct 2022 12:35:21 -0000
Message-ID: <166670132150.15482.9288857851739409810@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1666614699.git.jani.nikula@intel.com>
In-Reply-To: <cover.1666614699.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_EDID_override_refactoring_and_fixes_=28rev3=29?=
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

Series: drm/edid: EDID override refactoring and fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/109579/
State : warning

== Summary ==

Error: dim checkpatch failed
8153ed33254a drm/i915/hdmi: do dual mode detect only if connected
25b066dd561d drm/i915/hdmi: stop using connector->override_edid
4ccec7a746c6 drm/amd/display: stop using connector->override_edid
c62d4fee46a0 drm/edid: debug log EDID override set/reset
7a44c6cfbde1 drm/edid: abstract debugfs override EDID show better
2d9a36acb3ba drm/edid: rename drm_add_override_edid_modes() to drm_edid_override_connector_update()
5357079fedfb drm/edid: split drm_edid block count helper
7107ea57ae6a drm/edid: add function for checking drm_edid validity
92c237aa17a5 drm/edid: detach debugfs EDID override from EDID property update
-:196: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#196: FILE: include/drm/drm_connector.h:1565:
+	struct mutex edid_override_mutex;

total: 0 errors, 0 warnings, 1 checks, 150 lines checked
4ad1085956a6 drm/edid/firmware: drop redundant connector_name variable/parameter
d945031e0660 drm/edid/firmware: rename drm_load_edid_firmware() to drm_edid_load_firmware()
f221eb34bf80 drm/edid: use struct drm_edid for override/firmware EDID
3c7dc1859ff4 drm/edid: move edid load declarations to internal header
b0f80f2b7753 drm/edid/firmware: convert to drm device specific logging
ca738866c29a drm/edid: add [CONNECTOR:%d:%s] to debug logging
4a9c7e085c74 drm/edid: convert to device specific logging


