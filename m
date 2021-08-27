Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83253F9C1F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 18:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4530A6E992;
	Fri, 27 Aug 2021 16:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73ABD6E992;
 Fri, 27 Aug 2021 16:08:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70D56A8836;
 Fri, 27 Aug 2021 16:08:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 16:08:56 -0000
Message-ID: <163008053645.12589.3973857686159278989@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210827150955.3343520-1-imre.deak@intel.com>
In-Reply-To: <20210827150955.3343520-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/adlp=3A_Add_support_for_remapping_CCS_FBs?=
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

Series: drm/i915/adlp: Add support for remapping CCS FBs
URL   : https://patchwork.freedesktop.org/series/94108/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
530814904275 drm/i915: Use tile block based dimensions for CCS origin x, y check
5d0c15f58f3b drm/i915/adlp: Require always a power-of-two sized CCS surface stride
-:28: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/display/intel_fb.c:66:
+static unsigned int gen12_aligned_scanout_stride(const struct intel_framebuffer *fb, int color_plane)

total: 0 errors, 1 warnings, 0 checks, 46 lines checked
7455f93c422c drm/i915/adlp: Assert that VMAs in DPT start at 0
-:6: WARNING:TYPO_SPELLING: 'accomodate' may be misspelled - perhaps 'accommodate'?
#6: 
Atm the DPT object can accomodate only one VMA, so the VMA offset will
                       ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
bd6ac1a470b9 drm/i915: Follow a new->old platform check order in intel_fb_stride_alignment
e780f52a680b drm/i915/adlp: Add support for remapping CCS FBs
-:101: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#101: FILE: drivers/gpu/drm/i915/display/intel_fb.c:564:
+	if (DISPLAY_VER(i915) >= 12 &&
 		 is_semiplanar_uv_plane(fb, color_plane))

-:274: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#274: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:1485:
+		gtt_offset += alignment_pad + rem_info->plane[i].dst_stride * rem_info->plane[i].height;

total: 0 errors, 1 warnings, 1 checks, 247 lines checked


