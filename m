Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3123F4AB8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72DED89C59;
	Mon, 23 Aug 2021 12:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F79889C29;
 Mon, 23 Aug 2021 12:36:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 266CDA47DB;
 Mon, 23 Aug 2021 12:36:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Aug 2021 12:36:05 -0000
Message-ID: <162972216513.1908.12584900895802463094@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629721467.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_split_out_some_dpt_and_fb_stuff_from_in?=
 =?utf-8?q?tel=5Fdisplay=2Ec?=
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

Series: drm/i915/display: split out some dpt and fb stuff from intel_display.c
URL   : https://patchwork.freedesktop.org/series/93930/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dcf25e16d7d4 drm/i915/display: split out dpt out of intel_display.c
-:268: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#268: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 493 lines checked
8cc6afec23c5 drm/i915: add HAS_ASYNC_FLIPS feature macro
df9a6d5c1283 drm/i915/fb: move intel_tile_width_bytes() to intel_fb.c
31a81aa5ad38 drm/i915/fb: move intel_fb_align_height() to intel_fb.c
f864be12d43c drm/i915/fb: move intel_surf_alignment() to intel_fb.c
2bc9c4d4dbd7 drm/i915/fb: move user framebuffer stuff to intel_fb.c


