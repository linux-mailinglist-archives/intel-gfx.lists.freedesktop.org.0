Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2F897D559
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 14:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD82E10E828;
	Fri, 20 Sep 2024 12:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3E5710E828;
 Fri, 20 Sep 2024 12:27:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_clean?=
 =?utf-8?q?_up_DP_testing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2024 12:27:11 -0000
Message-ID: <172683523186.1050619.18395836643506845477@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1726833193.git.jani.nikula@intel.com>
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
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

Series: drm/i915/dp: clean up DP testing
URL   : https://patchwork.freedesktop.org/series/138919/
State : warning

== Summary ==

Error: dim checkpatch failed
ac153ee52cb9 drm/i915/dp: split out intel_dp_test.[ch] to a dedicated file
-:638: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#638: 
new file mode 100644

-:674: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#674: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:32:
+		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;

-:693: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#693: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:51:
+				limits->min_rate = limits->max_rate =

-:695: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#695: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:53:
+			limits->min_lane_count = limits->max_lane_count =

-:814: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!intel_connector->detect_edid"
#814: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:172:
+	if (intel_connector->detect_edid == NULL ||

-:825: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#825: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:183:
+		if (intel_dp->aux.i2c_nack_count > 0 ||
+			intel_dp->aux.i2c_defer_count > 0)

total: 0 errors, 1 warnings, 5 checks, 1112 lines checked
0daef0baa4d8 drm/i915/dp: fix style issues in intel_dp_test.c
29c064d82250 drm/i915/dp: convert intel_dp_test.c struct intel_display
5faac5331e48 drm/i915/dp: clean up intel_dp_test.[ch] interface
70b53759c3f5 drm/i915/dp: move DP test debugfs files next to the functionality
-:339: CHECK:BRACES: braces {} should be used on all arms of this statement
#339: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:591:
+		if (encoder && connector->status == connector_status_connected) {
[...]
+		} else
[...]

-:345: CHECK:BRACES: Unbalanced braces around else statement
#345: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:597:
+		} else

-:388: CHECK:BRACES: braces {} should be used on all arms of this statement
#388: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:640:
+		if (encoder && connector->status == connector_status_connected) {
[...]
+		} else
[...]

-:413: CHECK:BRACES: Unbalanced braces around else statement
#413: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:665:
+		} else

-:441: CHECK:BRACES: braces {} should be used on all arms of this statement
#441: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:693:
+		if (encoder && connector->status == connector_status_connected) {
[...]
+		} else
[...]

-:444: CHECK:BRACES: Unbalanced braces around else statement
#444: FILE: drivers/gpu/drm/i915/display/intel_dp_test.c:696:
+		} else

total: 0 errors, 0 warnings, 6 checks, 460 lines checked
874b16c45faf drm/i915/dp: fix style issues in DP test debugfs
745fb3b3e2a8 drm/i915/display: remove the loop in fifo underrun debugfs file creation
fa22231860a4 drm/i915/dp: convert DP test debugfs to struct intel_display
85c872630450 drm/i915/dp: add intel_dp_test_reset() and intel_dp_test_short_pulse()


