Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA04E4C5A47
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Feb 2022 10:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B292810E383;
	Sun, 27 Feb 2022 09:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C409F10E347;
 Sun, 27 Feb 2022 09:39:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE762A0003;
 Sun, 27 Feb 2022 09:39:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Sun, 27 Feb 2022 09:39:07 -0000
Message-ID: <164595474774.8578.4734140498355684264@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220114082517.25551-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220114082517.25551-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_i915=5Fgem=5Fobject=5Fpin=5Fmap=5Funlocked_?=
 =?utf-8?q?function_for_lmem_allocation_=28rev2=29?=
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

Series: drm/i915: Use i915_gem_object_pin_map_unlocked function for lmem allocation (rev2)
URL   : https://patchwork.freedesktop.org/series/98878/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
87952586a365 drm/i915: Use i915_gem_object_pin_map_unlocked function for lmem allocation
-:36: CHECK:BRACES: Unbalanced braces around else statement
#36: FILE: drivers/gpu/drm/i915/i915_vma.c:571:
+		} else

total: 0 errors, 0 warnings, 1 checks, 51 lines checked


