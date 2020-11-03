Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4582A3A50
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 03:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F096E47A;
	Tue,  3 Nov 2020 02:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64E956E47A;
 Tue,  3 Nov 2020 02:18:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E7C7A8832;
 Tue,  3 Nov 2020 02:18:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 03 Nov 2020 02:18:05 -0000
Message-ID: <160436988536.25741.9018335017582378680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103015045.109306-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20201103015045.109306-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display=3A_Support_?=
 =?utf-8?q?PSR_Multiple_Transcoders?=
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

Series: series starting with [1/2] drm/i915/display: Support PSR Multiple Transcoders
URL   : https://patchwork.freedesktop.org/series/83382/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4a0e36485e2f drm/i915/display: Support PSR Multiple Transcoders
-:207: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#207: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:428:
 }
+static int i915_edp_psr_status(struct seq_file *m, void *data)

-:247: WARNING:LINE_SPACING: Missing a blank line after declarations
#247: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:464:
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		if (!CAN_PSR(intel_dp))

-:315: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#315: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1290:
+	struct mutex lock;

-:331: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#331: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1306:
+	unsigned busy_frontbuffer_bits;

-:852: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#852: FILE: drivers/gpu/drm/i915/display/intel_psr.c:870:
+			    intel_de_read(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder)) & EDP_PSR2_ENABLE);

-:858: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#858: FILE: drivers/gpu/drm/i915/display/intel_psr.c:873:
+		    intel_de_read(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder)) & EDP_PSR_ENABLE);

-:1748: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#1748: FILE: drivers/gpu/drm/i915/display/intel_psr.h:21:
+#define CAN_PSR(intel_dp) (HAS_PSR(dp_to_i915(intel_dp)) && intel_dp->psr.sink_support)

-:1757: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#1757: FILE: drivers/gpu/drm/i915/display/intel_psr.h:31:
+int intel_psr_debug_set(struct intel_dp* intel_dp, u64 value);

total: 1 errors, 4 warnings, 3 checks, 1789 lines checked
7018d6e83b98 drm/i915/display: Support Multiple Transcoders' PSR status on debugfs
-:50: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#50: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2288:
+		debugfs_create_file("i915_psr_status", S_IRUGO, root,

total: 0 errors, 1 warnings, 0 checks, 35 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
