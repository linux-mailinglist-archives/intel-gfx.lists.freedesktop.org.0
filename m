Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A60E7B6C9C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 17:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B2810E010;
	Tue,  3 Oct 2023 15:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 26D8710E010;
 Tue,  3 Oct 2023 15:06:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21685A03D2;
 Tue,  3 Oct 2023 15:06:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 03 Oct 2023 15:06:06 -0000
Message-ID: <169634556610.4380.4361508469251578021@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1696336887.git.jani.nikula@intel.com>
In-Reply-To: <cover.1696336887.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_move_display_info_related_stuff_under_display/?=
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

Series: drm/i915: move display info related stuff under display/
URL   : https://patchwork.freedesktop.org/series/124558/
State : warning

== Summary ==

Error: dim checkpatch failed
770f44b90d80 drm/i915: convert INTEL_DISPLAY_ENABLED() into a function
63056bd22445 drm/i915: move display info related macros to display
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:105:
+#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
+				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)

-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:107:
+#define IS_DISPLAY_VER(i915, from, until) \
+	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))

total: 0 errors, 0 warnings, 2 checks, 35 lines checked
4b016928808f drm/i915: separate display runtime info init
8cfb13836707 drm/i915: separate subplatform init and runtime feature init


