Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E97425EFA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 23:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812236F4D9;
	Thu,  7 Oct 2021 21:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91B206F4D9;
 Thu,  7 Oct 2021 21:33:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E8FFAA914;
 Thu,  7 Oct 2021 21:33:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 21:33:31 -0000
Message-ID: <163364241158.5188.4996337850686829226@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007203517.3364336-1-imre.deak@intel.com>
In-Reply-To: <20211007203517.3364336-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Simplify_handling_of_modifiers?=
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

Series: drm/i915: Simplify handling of modifiers
URL   : https://patchwork.freedesktop.org/series/95579/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b43f636afaea drm/i915: Add a table with a descriptor for all i915 modifiers
147f27b14377 drm/i915: Move intel_get_format_info() to intel_fb.c
-:264: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'format_list' - possible side-effects?
#264: FILE: drivers/gpu/drm/i915/display/intel_fb.c:109:
+#define FORMAT_OVERRIDE(format_list) \
+	.formats = format_list, \
+	.format_count = ARRAY_SIZE(format_list)

total: 0 errors, 0 warnings, 1 checks, 350 lines checked
00315bd9b13a drm/i915: Add tiling attribute to the modifier descriptor
a07b18ff79b6 drm/i915: Simplify the modifier check for interlaced scanout support
6c7f82cfed4e drm/i915: Unexport is_semiplanar_uv_plane()
2b0fae99dcf3 drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
049969f74a95 drm/i915: Add a platform independent way to get the RC CCS CC plane
26e6af6207e8 drm/i915: Handle CCS CC planes separately from CCS control planes
14c507bc8eb3 drm/i915: Add a platform independent way to check for CCS control planes
-:247: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#247: FILE: drivers/gpu/drm/i915/display/intel_fb.c:1234:
+		unsigned int min_stride = intel_fb_is_ccs_ctrl_plane(&fb->base, color_plane) ? 2 : 8;

total: 0 errors, 1 warnings, 0 checks, 228 lines checked
4dfe4cce0fad drm/i915: Move is_ccs_modifier() to intel_fb.c
656646ce1dc3 drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers


