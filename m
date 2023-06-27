Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205A7404FB
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 22:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775DB10E058;
	Tue, 27 Jun 2023 20:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED59210E058;
 Tue, 27 Jun 2023 20:28:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E57F0AADD6;
 Tue, 27 Jun 2023 20:28:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 27 Jun 2023 20:28:21 -0000
Message-ID: <168789770190.2457.8685852833417102980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1687878757.git.jani.nikula@intel.com>
In-Reply-To: <cover.1687878757.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_further_device_info_fixes_and_cleanups?=
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

Series: drm/i915: further device info fixes and cleanups
URL   : https://patchwork.freedesktop.org/series/119933/
State : warning

== Summary ==

Error: dim checkpatch failed
b9423c209dc0 drm/i915: use mock device info for creating mock device
93df845dfc05 drm/i915: move platform_engine_mask and memory_regions to device info
74e0bd21bc35 drm/i915: separate display info printing from the rest
-:37: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#37: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:997:
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))

total: 0 errors, 0 warnings, 1 checks, 125 lines checked
baa649ba6f62 drm/i915: fix display info usage
9dc8f7006e55 drm/i915: move display device and runtime info to struct intel_display
6543bcf56ae9 drm/i915: make device info a const pointer to rodata


