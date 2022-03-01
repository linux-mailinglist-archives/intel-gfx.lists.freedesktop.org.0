Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 340634C97C5
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 22:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0051A10E1F8;
	Tue,  1 Mar 2022 21:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95ACF10E1F8;
 Tue,  1 Mar 2022 21:28:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90D8EA66C8;
 Tue,  1 Mar 2022 21:28:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 01 Mar 2022 21:28:31 -0000
Message-ID: <164617011157.8601.7516836214562492334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220301170835.682715-1-matthew.auld@intel.com>
In-Reply-To: <20220301170835.682715-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/gtt=3A_reduce_?=
 =?utf-8?q?overzealous_alignment_constraints_for_GGTT?=
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

Series: series starting with [CI,1/3] drm/i915/gtt: reduce overzealous alignment constraints for GGTT
URL   : https://patchwork.freedesktop.org/series/100898/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
61b713195d33 drm/i915/gtt: reduce overzealous alignment constraints for GGTT
4144e1582c9f drm/i915/fbdev: fixup setting screen_size
5ba0a226203a drm/i915: Use i915_gem_object_pin_map_unlocked function for lmem allocation
-:36: CHECK:BRACES: Unbalanced braces around else statement
#36: FILE: drivers/gpu/drm/i915/i915_vma.c:574:
+		} else

total: 0 errors, 0 warnings, 1 checks, 51 lines checked


