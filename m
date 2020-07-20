Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE040225E3E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF8589F89;
	Mon, 20 Jul 2020 12:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6965489F89;
 Mon, 20 Jul 2020 12:16:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63EE4A00E6;
 Mon, 20 Jul 2020 12:16:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Mon, 20 Jul 2020 12:16:19 -0000
Message-ID: <159524737938.13114.7349869682463538682@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200720194127.24750-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200720194127.24750-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Expose_crtc_dither_state_and_connector_max_bpc_via_debugfs_?=
 =?utf-8?b?KHJldjIp?=
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

Series: Expose crtc dither state and connector max bpc via debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/79664/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
525ee1f3c796 i915/debug: Expose crtc dither state via debugfs
-:45: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#45: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1674:
+		debugfs_create_file("dither", S_IRUGO, crtc->debugfs_entry, crtc,

-:46: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#46: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1675:
+		debugfs_create_file("dither", S_IRUGO, crtc->debugfs_entry, crtc,
+				&dither_state_fops);

total: 0 errors, 1 warnings, 1 checks, 30 lines checked
7d1f9ca422bf i915/debug: Expose Max BPC info via debugfs
-:46: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#46: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2252:
+	debugfs_create_file("output_bpc", S_IRUGO, root,

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2253:
+	debugfs_create_file("output_bpc", S_IRUGO, root,
+			connector, &output_bpc_fops);

total: 0 errors, 1 warnings, 1 checks, 28 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
