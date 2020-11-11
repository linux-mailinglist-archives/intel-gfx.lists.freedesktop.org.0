Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1483C2AEF68
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 12:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E4789D87;
	Wed, 11 Nov 2020 11:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD48589D87;
 Wed, 11 Nov 2020 11:18:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCA28A9F66;
 Wed, 11 Nov 2020 11:18:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 11 Nov 2020 11:18:02 -0000
Message-ID: <160509348273.4720.2081480437833393970@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201110175624.3524-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201110175624.3524-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Introduce_intel?=
 =?utf-8?b?X2N1cnNvci5j?=
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

Series: series starting with [1/2] drm/i915: Introduce intel_cursor.c
URL   : https://patchwork.freedesktop.org/series/83704/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
432a0eeaffc6 drm/i915: Introduce intel_cursor.c
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:511: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#511: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:480:
+		unsigned width = drm_rect_width(&plane_state->uapi.dst);

-:512: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#512: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:481:
+		unsigned height = drm_rect_height(&plane_state->uapi.dst);

-:541: WARNING:REPEATED_WORD: Possible repeated word: 'by'
#541: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:510:
+	 * The other registers are armed by by the CURBASE write

-:776: CHECK:SPACING: No space is necessary after a cast
#776: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:745:
+	cursor->i9xx_plane = (enum i9xx_plane_id) pipe;

total: 0 errors, 4 warnings, 1 checks, 1714 lines checked
6540d46441e1 drm/i915: Fix checkpatch warns in cursor code
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915: Fix checkpatch warns in cursor code

total: 0 errors, 1 warnings, 0 checks, 18 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
