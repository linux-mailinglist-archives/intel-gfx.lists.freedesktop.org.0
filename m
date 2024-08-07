Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8199C94AD91
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 18:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D9910E143;
	Wed,  7 Aug 2024 16:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFDF10E143;
 Wed,  7 Aug 2024 16:05:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Trivial_double_space?=
 =?utf-8?q?_style_fix_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2024 16:05:19 -0000
Message-ID: <172304671938.546499.8648667292740723022@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240807130516.491053-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240807130516.491053-1-andi.shyti@linux.intel.com>
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

Series: Trivial double space style fix (rev3)
URL   : https://patchwork.freedesktop.org/series/136995/
State : warning

== Summary ==

Error: dim checkpatch failed
7f0b95c3cf8d drm/i915: Replace double blank with single blank after comma in gem/ and gt/
7b29ef50efd0 drm/i915: Replace double blank with single blank after comma
-:101: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#101: FILE: drivers/gpu/drm/i915/i915_driver.c:1696:
+	DRM_IOCTL_DEF_DRV(I915_DESTROY_HEAP, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                       ^

-:101: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#101: FILE: drivers/gpu/drm/i915/i915_driver.c:1696:
+	DRM_IOCTL_DEF_DRV(I915_DESTROY_HEAP, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                  ^

-:102: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#102: FILE: drivers/gpu/drm/i915/i915_driver.c:1697:
+	DRM_IOCTL_DEF_DRV(I915_SET_VBLANK_PIPE, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                          ^

-:102: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#102: FILE: drivers/gpu/drm/i915/i915_driver.c:1697:
+	DRM_IOCTL_DEF_DRV(I915_SET_VBLANK_PIPE, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                     ^

total: 0 errors, 0 warnings, 4 checks, 70 lines checked


