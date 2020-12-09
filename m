Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F182D3811
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 02:05:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388216E9C9;
	Wed,  9 Dec 2020 01:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEAED6E9C8;
 Wed,  9 Dec 2020 01:05:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCE66A47DB;
 Wed,  9 Dec 2020 01:05:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Wed, 09 Dec 2020 01:05:21 -0000
Message-ID: <160747592174.4257.279678943810441531@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201209005152.18172-1-airlied@gmail.com>
In-Reply-To: <20201209005152.18172-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_refactor_cursor_code_out_of_i915=5Fdisplay=2Ec?=
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

Series: drm/i915: refactor cursor code out of i915_display.c
URL   : https://patchwork.freedesktop.org/series/84707/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c5d8edc678f0 drm/i915: refactor cursor code out of i915_display.c
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:29: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#29: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:1:
+/*

-:554: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#554: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:526:
+		unsigned width = drm_rect_width(&plane_state->uapi.dst);

-:555: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#555: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:527:
+		unsigned height = drm_rect_height(&plane_state->uapi.dst);

-:584: WARNING:REPEATED_WORD: Possible repeated word: 'by'
#584: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:556:
+	 * The other registers are armed by by the CURBASE write

-:811: CHECK:SPACING: No space is necessary after a cast
#811: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:783:
+	cursor->i9xx_plane = (enum i9xx_plane_id) pipe;

total: 0 errors, 5 warnings, 1 checks, 1696 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
