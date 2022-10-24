Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDE360ADFD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9FBD10E7F2;
	Mon, 24 Oct 2022 14:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8045410E7F2;
 Mon, 24 Oct 2022 14:43:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 794C9A00E8;
 Mon, 24 Oct 2022 14:43:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 24 Oct 2022 14:43:02 -0000
Message-ID: <166662258249.3426.6422384161618174@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1666614699.git.jani.nikula@intel.com>
In-Reply-To: <cover.1666614699.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_EDID_override_refactoring_and_fixes_=28rev2=29?=
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

Series: drm/edid: EDID override refactoring and fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/109579/
State : warning

== Summary ==

Error: dim checkpatch failed
fbb979246d72 drm/i915/hdmi: do dual mode detect only if connected
3483553167f1 drm/i915/hdmi: stop using connector->override_edid
f696c87487dc drm/amd/display: stop using connector->override_edid
9fa1469f8451 drm/edid: debug log EDID override set/reset
62232aceaeeb drm/edid: abstract debugfs override EDID show better
1da8987a26f3 drm/edid: rename drm_add_override_edid_modes() to drm_edid_override_connector_update()
5b9f64803bb3 drm/edid: split drm_edid block count helper
90b15256ebcf drm/edid: add function for checking drm_edid validity
68d05f928e1a drm/edid: detach debugfs EDID override from EDID property update
-:192: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#192: FILE: include/drm/drm_connector.h:1565:
+	struct mutex edid_override_mutex;

total: 0 errors, 0 warnings, 1 checks, 150 lines checked
bb68276ab52e drm/edid/firmware: drop redundant connector_name variable/parameter
b20eea51d340 drm/edid/firmware: rename drm_load_edid_firmware() to drm_edid_load_firmware()
7e0d0b39758e drm/edid: use struct drm_edid for override/firmware EDID
249d9ce0d920 drm/edid: move edid load declarations to internal header
239988d4094f drm/edid/firmware: convert to drm device specific logging
882bbd743661 drm/edid: add [CONNECTOR:%d:%s] to debug logging
c076f02a2f89 drm/edid: convert to device specific logging


