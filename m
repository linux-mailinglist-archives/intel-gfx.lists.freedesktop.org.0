Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC1243547F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 22:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACBB6E25B;
	Wed, 20 Oct 2021 20:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BEA3089FEA;
 Wed, 20 Oct 2021 20:22:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6111A47DF;
 Wed, 20 Oct 2021 20:22:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Oct 2021 20:22:43 -0000
Message-ID: <163476136371.27361.2039202658765946510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211020195138.1841242-1-imre.deak@intel.com>
In-Reply-To: <20211020195138.1841242-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Simplify_handling_of_modifiers_=28rev12=29?=
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

Series: drm/i915: Simplify handling of modifiers (rev12)
URL   : https://patchwork.freedesktop.org/series/95579/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
78f3fdfcbe6d drm/i915: Add a table with a descriptor for all i915 modifiers
-:30: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#30: 
- Use from, until display version fields in modifier_desc instead of a mask. (Jani)

total: 0 errors, 1 warnings, 0 checks, 668 lines checked
31cf2c8a39f2 drm/i915: Move intel_get_format_info() to intel_fb.c
-:284: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'format_list' - possible side-effects?
#284: FILE: drivers/gpu/drm/i915/display/intel_fb.c:119:
+#define FORMAT_OVERRIDE(format_list) \
+	.formats = format_list, \
+	.format_count = ARRAY_SIZE(format_list)

total: 0 errors, 0 warnings, 1 checks, 354 lines checked
bc09112178a4 drm/i915: Add tiling attribute to the modifier descriptor
c62bf50af74c drm/i915: Simplify the modifier check for interlaced scanout support
d9e1b092e0b4 drm/i915: Unexport is_semiplanar_uv_plane()
a57a4c9e3ddc drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
3b5a352ccae1 drm/i915: Add a platform independent way to get the RC CCS CC plane
066204606ff2 drm/i915: Handle CCS CC planes separately from CCS AUX planes
48b044ca6958 drm/i915: Add a platform independent way to check for CCS AUX planes
605d4c7e75b3 drm/i915: Move is_ccs_modifier() to intel_fb.c
a510cc2c3093 drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers


