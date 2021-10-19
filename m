Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA20433895
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 16:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3825F6EA9D;
	Tue, 19 Oct 2021 14:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45BF16EA9D;
 Tue, 19 Oct 2021 14:42:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CEC6AADD7;
 Tue, 19 Oct 2021 14:42:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Oct 2021 14:42:39 -0000
Message-ID: <163465455921.5186.16838050122836307110@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211014220921.683870-1-imre.deak@intel.com>
In-Reply-To: <20211014220921.683870-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Simplify_handling_of_modifiers_=28rev11=29?=
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

Series: drm/i915: Simplify handling of modifiers (rev11)
URL   : https://patchwork.freedesktop.org/series/95579/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8cb40d7e0dbd drm/i915: Add a table with a descriptor for all i915 modifiers
-:30: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#30: 
- Use from, until display version fields in modifier_desc instead of a mask. (Jani)

total: 0 errors, 1 warnings, 0 checks, 675 lines checked
01ccea448c51 drm/i915: Move intel_get_format_info() to intel_fb.c
-:284: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'format_list' - possible side-effects?
#284: FILE: drivers/gpu/drm/i915/display/intel_fb.c:119:
+#define FORMAT_OVERRIDE(format_list) \
+	.formats = format_list, \
+	.format_count = ARRAY_SIZE(format_list)

total: 0 errors, 0 warnings, 1 checks, 351 lines checked
14c3d888d981 drm/i915: Add tiling attribute to the modifier descriptor
5d9bdcb9dfee drm/i915: Simplify the modifier check for interlaced scanout support
66b8cb174dbb drm/i915: Unexport is_semiplanar_uv_plane()
c2f251e1d2cd drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
a01da1211d1f drm/i915: Add a platform independent way to get the RC CCS CC plane
d6523db285fa drm/i915: Handle CCS CC planes separately from CCS AUX planes
820b82990550 drm/i915: Add a platform independent way to check for CCS AUX planes
59db1f84b02f drm/i915: Move is_ccs_modifier() to intel_fb.c
e3d9c9af236f drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers


