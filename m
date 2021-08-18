Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B46FC3EF735
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 03:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FBB6E2BC;
	Wed, 18 Aug 2021 01:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 383986E2B4;
 Wed, 18 Aug 2021 01:12:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2ED2DA00FD;
 Wed, 18 Aug 2021 01:12:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 01:12:52 -0000
Message-ID: <162924917216.16674.14286514222562222498@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818004216.220279-1-jose.souza@intel.com>
In-Reply-To: <20210818004216.220279-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Drop_frontbuffer_rendering_support_from_Skylake_and_newer?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Drop frontbuffer rendering support from Skylake and newer
URL   : https://patchwork.freedesktop.org/series/93769/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c4bc916870ba drm/damage_helper: Fix handling of cursor dirty buffers
1080e192fe73 drm/i915/display: Drop PSR support from HSW and BDW
-:267: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#267: FILE: drivers/gpu/drm/i915/i915_reg.h:4563:
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO(_TRANS2(tran, _SRD_AUX_DATA_A) + (i) + 4) /* 5 registers */

total: 0 errors, 1 warnings, 0 checks, 240 lines checked
6d37b8b938ac drm/i915/display: Move DRRS code its own file
-:604: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#604: 
new file mode 100644

-:725: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!intel_dp"
#725: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:117:
+	if (intel_dp == NULL) {

-:934: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#934: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:326:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));

-:980: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#980: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:372:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

-:1026: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1026: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:418:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

total: 0 errors, 4 warnings, 1 checks, 1071 lines checked
f8a34cf4d131 drm/i915/display: Some code improvements and code style fixes for DRRS
0be6fec2e58f drm/i915/display: Share code between intel_edp_drrs_flush and invalidate
d392eb08d84c drm/i915/display: Prepare DRRS for frontbuffer rendering drop
7abf1b3f8539 drm/i915/display/skl+: Drop frontbuffer rendering support
deb2e98252ec drm/i915/display: Drop PSR frontbuffer rendering support
-:250: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#250: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1894:
+#if 0

total: 0 errors, 1 warnings, 0 checks, 298 lines checked


