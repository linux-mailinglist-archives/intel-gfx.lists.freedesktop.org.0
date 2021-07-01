Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E20B3B90A8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 12:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09716E0C4;
	Thu,  1 Jul 2021 10:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18C526E0C4;
 Thu,  1 Jul 2021 10:52:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11062A73C7;
 Thu,  1 Jul 2021 10:52:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: venkata.sai.patnana@intel.com
Date: Thu, 01 Jul 2021 10:52:23 -0000
Message-ID: <162513674306.15052.2127886804562815077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210629065156.30301-1-venkata.sai.patnana@intel.com>
In-Reply-To: <20210629065156.30301-1-venkata.sai.patnana@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/dsc=3A_Set_BPP_in_the_kernel_=28rev4=29?=
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

Series: drm/i915/display/dsc: Set BPP in the kernel (rev4)
URL   : https://patchwork.freedesktop.org/series/91917/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e4fb01832beb drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable
-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2408:
+	seq_printf(m, "Compressed_BPP: %d\n",
+			crtc_state->dsc.compressed_bpp);

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2416:
+static ssize_t i915_dsc_bpp_support_write(struct file *file,
+						const char __user *ubuf,

-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2444:
+static int i915_dsc_bpp_support_open(struct inode *inode,
+					   struct file *file)

-:113: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#113: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2503:
+		debugfs_create_file("i915_dsc_bpp_support", S_IRUGO,

total: 0 errors, 1 warnings, 3 checks, 97 lines checked
f9001417c3a0 drm/i915/display/dsc: Set BPP in the kernel
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1246:
+			drm_dbg_kms(&dev_priv->drm,
+				"DSC BPP forced to %d", intel_dp->force_dsc_bpp);

-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1251:
+				min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
+				pipe_config->pipe_bpp);

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1284:
+			pipe_config->dsc.compressed_bpp = min_t(u16,
 							       dsc_max_output_bpp >> 4,

total: 0 errors, 0 warnings, 3 checks, 43 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
