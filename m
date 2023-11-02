Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9AD7DFB2E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 21:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB0D10E9A1;
	Thu,  2 Nov 2023 20:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09CB810E9A1;
 Thu,  2 Nov 2023 20:02:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E99F7AADF0;
 Thu,  2 Nov 2023 20:02:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Thu, 02 Nov 2023 20:02:44 -0000
Message-ID: <169895536493.28156.5026757999222504404@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231102090812.951411-1-jouni.hogander@intel.com>
In-Reply-To: <20231102090812.951411-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Implement_sel=5Ffetch_disable_for_planes_=28rev2=29?=
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

Series: Implement sel_fetch disable for planes (rev2)
URL   : https://patchwork.freedesktop.org/series/114224/
State : warning

== Summary ==

Error: dim checkpatch failed
292c47e1a655 drm/i915/psr: Move plane sel fetch configuration into plane source files
-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:503:
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)

-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:562:
+		i9xx_cursor_update_sel_fetch_arm(plane, crtc_state,
 						       plane_state);

-:248: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#248: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1213:
+static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
+					      const struct intel_crtc_state *crtc_state,

-:301: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#301: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1330:
+static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state,

total: 0 errors, 0 warnings, 4 checks, 279 lines checked
5b70963113ef drm/i915/psr: Add proper handling for disabling sel fetch for planes
-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:489:
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)

-:44: CHECK:LINE_SPACING: Please don't use multiple blank lines
#44: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:497:
 
+

-:104: CHECK:LINE_SPACING: Please don't use multiple blank lines
#104: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1339:
 
+

total: 0 errors, 0 warnings, 3 checks, 75 lines checked


