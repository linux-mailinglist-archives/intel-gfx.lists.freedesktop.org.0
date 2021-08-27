Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D13C3F9F6D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 21:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508556E9B2;
	Fri, 27 Aug 2021 19:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E48C6E9B1;
 Fri, 27 Aug 2021 19:02:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 076F6AA916;
 Fri, 27 Aug 2021 19:02:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 19:02:43 -0000
Message-ID: <163009096302.12588.4324782523869427002@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210827174253.51122-1-jose.souza@intel.com>
In-Reply-To: <20210827174253.51122-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/display=3A_Dro?=
 =?utf-8?q?p_PSR_support_from_HSW_and_BDW_=28rev2=29?=
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

Series: series starting with [CI,1/3] drm/i915/display: Drop PSR support from HSW and BDW (rev2)
URL   : https://patchwork.freedesktop.org/series/94112/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c7a16b2cf37a drm/i915/display: Drop PSR support from HSW and BDW
-:268: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#268: FILE: drivers/gpu/drm/i915/i915_reg.h:4564:
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO(_TRANS2(tran, _SRD_AUX_DATA_A) + (i) + 4) /* 5 registers */

total: 0 errors, 1 warnings, 0 checks, 240 lines checked
70600e43d84d drm/i915/display: Move DRRS code its own file
-:605: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#605: 
new file mode 100644

-:726: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!intel_dp"
#726: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:117:
+	if (intel_dp == NULL) {

-:935: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#935: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:326:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));

-:981: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#981: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:372:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

-:1027: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1027: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:418:
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

total: 0 errors, 4 warnings, 1 checks, 1071 lines checked
72b04cbf98ab drm/i915/display: Renaming DRRS functions to intel_drrs_*()
-:321: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#321: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:313:
+				     drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));

-:352: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#352: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:359:
+				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

-:381: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#381: FILE: drivers/gpu/drm/i915/display/intel_drrs.c:405:
+				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));

total: 0 errors, 3 warnings, 0 checks, 392 lines checked


