Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C512E02CE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 00:07:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 906E36E039;
	Mon, 21 Dec 2020 23:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 484FB6E030;
 Mon, 21 Dec 2020 23:06:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 400C8A0118;
 Mon, 21 Dec 2020 23:06:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 21 Dec 2020 23:06:58 -0000
Message-ID: <160859201824.418.18260403970248903771@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201221090449.8288-1-jani.nikula@intel.com>
In-Reply-To: <20201221090449.8288-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/5=5D_drm/i915/display=3A_mov?=
 =?utf-8?q?e_needs=5Fmodeset_to_an_inline_in_header_=28rev3=29?=
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

Series: series starting with [CI,1/5] drm/i915/display: move needs_modeset to an inline in header (rev3)
URL   : https://patchwork.freedesktop.org/series/85132/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e8060d01a918 drm/i915/display: move needs_modeset to an inline in header
da73a1c19031 drm/i915/display: move to_intel_frontbuffer to header
9b2022983792 drm/i915/display: fix misused comma
864517beaa0c drm/i915: refactor cursor code out of i915_display.c
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

-:529: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#529: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:495:
+		unsigned width = drm_rect_width(&plane_state->uapi.dst);

-:530: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#530: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:496:
+		unsigned height = drm_rect_height(&plane_state->uapi.dst);

-:559: WARNING:REPEATED_WORD: Possible repeated word: 'by'
#559: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:525:
+	 * The other registers are armed by by the CURBASE write

-:786: CHECK:SPACING: No space is necessary after a cast
#786: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:752:
+	cursor->i9xx_plane = (enum i9xx_plane_id) pipe;

total: 0 errors, 4 warnings, 1 checks, 1700 lines checked
a759b1ea292e drm/i915: refactor i915 plane code into separate file.
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:570: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#570: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:534:
+		return 32*1024;
 		         ^

-:573: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#573: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:537:
+			return 16*1024;
 			         ^

-:575: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#575: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:539:
+			return 32*1024;
 			         ^

-:578: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#578: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:542:
+			return 8*1024;
 			        ^

-:580: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#580: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:544:
+			return 16*1024;
 			         ^

-:583: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#583: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:547:
+			return 4*1024;
 			        ^

-:585: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#585: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:549:
+			return 8*1024;
 			        ^

-:632: CHECK:SPACING: No space is necessary after a cast
#632: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:596:
+		plane->i9xx_plane = (enum i9xx_plane_id) !pipe;

-:634: CHECK:SPACING: No space is necessary after a cast
#634: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:598:
+		plane->i9xx_plane = (enum i9xx_plane_id) pipe;

total: 0 errors, 1 warnings, 9 checks, 1462 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
