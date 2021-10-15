Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFD142E755
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 05:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3D86E187;
	Fri, 15 Oct 2021 03:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 602E26E187;
 Fri, 15 Oct 2021 03:39:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5785CA73C9;
 Fri, 15 Oct 2021 03:39:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 03:39:39 -0000
Message-ID: <163426917932.29321.10339353418703428863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211014220921.683870-1-imre.deak@intel.com>
In-Reply-To: <20211014220921.683870-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Simplify_handling_of_modifiers_=28rev10=29?=
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

Series: drm/i915: Simplify handling of modifiers (rev10)
URL   : https://patchwork.freedesktop.org/series/95579/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7587ee673ff0 drm/i915: Add a table with a descriptor for all i915 modifiers
-:30: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#30: 
- Use from, until display version fields in modifier_desc instead of a mask. (Jani)

total: 0 errors, 1 warnings, 0 checks, 675 lines checked
9544c7133601 drm/i915: Move intel_get_format_info() to intel_fb.c
-:284: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'format_list' - possible side-effects?
#284: FILE: drivers/gpu/drm/i915/display/intel_fb.c:119:
+#define FORMAT_OVERRIDE(format_list) \
+	.formats = format_list, \
+	.format_count = ARRAY_SIZE(format_list)

total: 0 errors, 0 warnings, 1 checks, 351 lines checked
976e6a1a9e27 drm/i915: Add tiling attribute to the modifier descriptor
a2bc82b5b018 drm/i915: Simplify the modifier check for interlaced scanout support
bea84a82692f drm/i915: Unexport is_semiplanar_uv_plane()
54c82952b360 drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
38a9722d4482 drm/i915: Add a platform independent way to get the RC CCS CC plane
8d49be8b64ea drm/i915: Handle CCS CC planes separately from CCS AUX planes
d5ca935d721a drm/i915: Add a platform independent way to check for CCS AUX planes
75e36bd51224 drm/i915: Move is_ccs_modifier() to intel_fb.c
0d2008070857 drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers


