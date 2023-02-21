Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 844C669E1FE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 15:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B155A10E18A;
	Tue, 21 Feb 2023 14:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C0B710E2B7;
 Tue, 21 Feb 2023 14:07:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13A1BAADF4;
 Tue, 21 Feb 2023 14:07:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 21 Feb 2023 14:07:44 -0000
Message-ID: <167698846404.16441.1896120501063230240@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230221133635.3581561-1-jouni.hogander@intel.com>
In-Reply-To: <20230221133635.3581561-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Implement_sel=5Ffetch_disable_for_planes?=
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

Series: Implement sel_fetch disable for planes
URL   : https://patchwork.freedesktop.org/series/114224/
State : warning

== Summary ==

Error: dim checkpatch failed
299c982a4a65 drm/i915/psr: Move plane sel fetch configuration into plane source files
-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:503:
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)

-:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#60: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:562:
+		i9xx_cursor_update_sel_fetch_arm(plane, crtc_state,
 						       plane_state);

-:211: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#211: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1204:
+static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
+					      const struct intel_crtc_state *crtc_state,

-:264: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#264: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1321:
+static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state,

total: 0 errors, 0 warnings, 4 checks, 245 lines checked
ce2feca1e03d drm/i915/psr: Add proper handling for disabling sel fetch for planes
-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:489:
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)

-:44: CHECK:LINE_SPACING: Please don't use multiple blank lines
#44: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:497:
 
+

-:126: CHECK:LINE_SPACING: Please don't use multiple blank lines
#126: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:1330:
 
+

total: 0 errors, 0 warnings, 3 checks, 97 lines checked


