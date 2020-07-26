Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE7C22DC29
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jul 2020 07:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0BF36E09A;
	Sun, 26 Jul 2020 05:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCACF6E098;
 Sun, 26 Jul 2020 05:17:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C022FA011B;
 Sun, 26 Jul 2020 05:17:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Sun, 26 Jul 2020 05:17:00 -0000
Message-ID: <159574062075.29011.6913695487478915728@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200726130400.10160-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200726130400.10160-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Expose_crtc_dither_state_and_connector_max_bpc_via_debugfs_?=
 =?utf-8?b?KHJldjMp?=
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

Series: Expose crtc dither state and connector max bpc via debugfs (rev3)
URL   : https://patchwork.freedesktop.org/series/79664/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
232926bcfcea i915/debug: Expose crtc dither state via debugfs
-:46: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#46: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1674:
+		debugfs_create_file("dither", S_IRUGO, crtc->debugfs_entry, crtc,

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/i915/i915_debugfs.c:1675:
+		debugfs_create_file("dither", S_IRUGO, crtc->debugfs_entry, crtc,
+				&dither_state_fops);

total: 0 errors, 1 warnings, 1 checks, 30 lines checked
051cfceeae4d i915/debug: Expose Max BPC info via debugfs
-:47: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#47: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2252:
+	debugfs_create_file("output_bpc", S_IRUGO, root,

-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2253:
+	debugfs_create_file("output_bpc", S_IRUGO, root,
+			connector, &output_bpc_fops);

total: 0 errors, 1 warnings, 1 checks, 28 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
