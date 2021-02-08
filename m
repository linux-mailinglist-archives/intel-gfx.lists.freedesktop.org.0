Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 509533140E9
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 21:50:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275976E9FA;
	Mon,  8 Feb 2021 20:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7101C6E9F8;
 Mon,  8 Feb 2021 20:50:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 699D4A0BA8;
 Mon,  8 Feb 2021 20:50:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 08 Feb 2021 20:50:44 -0000
Message-ID: <161281744440.27713.16807861396973792945@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210208174217.140790-1-matthew.auld@intel.com>
In-Reply-To: <20210208174217.140790-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_rework_gem=5Fcre?=
 =?utf-8?q?ate_flow_for_upcoming_extensions?=
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

Series: series starting with [1/2] drm/i915: rework gem_create flow for upcoming extensions
URL   : https://patchwork.freedesktop.org/series/86866/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2da1a8f2c4e3 drm/i915: rework gem_create flow for upcoming extensions
-:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#115: FILE: drivers/gpu/drm/i915/gem/i915_gem_create.c:107:
+			     intel_memory_region_by_type(to_i915(dev),
+							      mem_type),

total: 0 errors, 0 warnings, 1 checks, 137 lines checked
4bd834f7238f drm/i915/uapi: introduce drm_i915_gem_create_ext
-:161: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#161: FILE: include/uapi/drm/i915_drm.h:396:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)

-:212: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#212: FILE: include/uapi/drm/i915_drm.h:1740:
+#define I915_OBJECT_PARAM  (1ull<<32)
                                 ^

total: 0 errors, 1 warnings, 1 checks, 180 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
