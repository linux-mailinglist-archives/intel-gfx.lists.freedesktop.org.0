Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB465E8043
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 19:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDF710E59C;
	Fri, 23 Sep 2022 17:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E95F610E42E;
 Fri, 23 Sep 2022 17:02:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0C78A00A0;
 Fri, 23 Sep 2022 17:02:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 23 Sep 2022 17:02:08 -0000
Message-ID: <166395252888.30120.2126120167034043198@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220923143125.5768-1-anshuman.gupta@intel.com>
In-Reply-To: <20220923143125.5768-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dgfx=3A_Grab_wakeref_at_i915=5Fttm=5Funmap=5Fvirtu?=
 =?utf-8?q?al?=
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

Series: drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual
URL   : https://patchwork.freedesktop.org/series/108972/
State : warning

== Summary ==

Error: dim checkpatch failed
09fac79aedc6 drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual
-:122: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#122: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1136:
+
+	}

-:148: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#148: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:74:
+	gt->lmem_userfault_lock = drmm_kzalloc(&i915->drm, sizeof(*gt->lmem_userfault_lock), GFP_KERNEL);

-:160: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#160: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:821:
+						       sizeof(*gt->lmem_userfault_lock), GFP_KERNEL);

-:176: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#176: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:156:
+	spinlock_t *lmem_userfault_lock;

total: 0 errors, 2 warnings, 2 checks, 132 lines checked


