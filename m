Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3CF4CDD4D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 20:23:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D06311336F;
	Fri,  4 Mar 2022 19:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32A6011336A;
 Fri,  4 Mar 2022 19:23:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F190A66C9;
 Fri,  4 Mar 2022 19:23:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 04 Mar 2022 19:23:46 -0000
Message-ID: <164642182618.21309.13594869289143301685@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220304172333.991778-1-matthew.auld@intel.com>
In-Reply-To: <20220304172333.991778-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Some_more_bits_for_small_BAR_enabling?=
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

Series: Some more bits for small BAR enabling
URL   : https://patchwork.freedesktop.org/series/101052/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a3f0e7b2e0d0 drm/i915/lmem: don't treat small BAR as an error
2cdb743c5a4e drm/i915/stolen: don't treat small BAR as an error
74db3d383272 drm/i915: add i915_gem_object_create_region_at()
3f5470e8098d drm/i915/buddy: tweak CONTIGUOUS rounding
80375509e058 drm/i915/ttm: wire up the object offset
28a20a817e9c drm/i915/display: Check mappable aperture when pinning preallocated vma
4d5d41ab2df8 drm/i915: fixup the initial fb base on DG1
-:34: WARNING:TYPO_SPELLING: 'inital' may be misspelled - perhaps 'initial'?
#34: FILE: drivers/gpu/drm/i915/display/intel_plane_initial.c:66:
+		 * need to choose between inital fb vs fbc, if space is limited.
 		                          ^^^^^^

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
b9bdff2b6be6 drm/i915: fixup the initial fb on DG2


