Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC4C7EF09B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 11:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C395A10E741;
	Fri, 17 Nov 2023 10:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3388E10E741;
 Fri, 17 Nov 2023 10:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C82FAA915;
 Fri, 17 Nov 2023 10:34:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Fri, 17 Nov 2023 10:34:37 -0000
Message-ID: <170021727715.7873.17629042096303037209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231117100227.609261-1-jouni.hogander@intel.com>
In-Reply-To: <20231117100227.609261-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Implement_sel=5Ffetch_disable_for_planes_=28rev3=29?=
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

Series: Implement sel_fetch disable for planes (rev3)
URL   : https://patchwork.freedesktop.org/series/114224/
State : warning

== Summary ==

Error: dim checkpatch failed
405a5d68bca3 drm/i915/psr: Move plane sel fetch configuration into plane source files
-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:503:
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)

-:70: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#70: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:562:
+		i9xx_cursor_update_sel_fetch_arm(plane, crtc_state,
 						       plane_state);

-:229: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#229: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1213:
+static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
+					      const struct intel_crtc_state *crtc_state,

-:282: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#282: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1330:
+static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state,

total: 0 errors, 0 warnings, 4 checks, 259 lines checked
5f6140dbd0d5 drm/i915/psr: Add proper handling for disabling sel fetch for planes
-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:489:
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)

-:48: CHECK:LINE_SPACING: Please don't use multiple blank lines
#48: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:497:
 
+

-:108: CHECK:LINE_SPACING: Please don't use multiple blank lines
#108: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1339:
 
+

total: 0 errors, 0 warnings, 3 checks, 76 lines checked


