Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF1A52296E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 04:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D790610E59D;
	Wed, 11 May 2022 02:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BA3810E454;
 Wed, 11 May 2022 02:08:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FFB8A363D;
 Wed, 11 May 2022 02:08:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 11 May 2022 02:08:09 -0000
Message-ID: <165223488929.2700.1720140232332200783@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220511011121.114226-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220511011121.114226-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Clear_TLB_caches_in_all_tiles_when_object_is_removed?=
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

Series: Clear TLB caches in all tiles when object is removed
URL   : https://patchwork.freedesktop.org/series/103846/
State : warning

== Summary ==

Error: dim checkpatch failed
f8c5bb9dff90 drm/i915/gt: Ignore TLB invalidations on idle engines
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:58:
+#define with_intel_gt_pm_if_awake(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:58:
+#define with_intel_gt_pm_if_awake(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

total: 0 errors, 0 warnings, 2 checks, 10 lines checked
20649dd77c54 drm/i915/gem: Flush TLBs for all the tiles when clearing an obj
ce3788fd518e drm/i915/gt: Skip TLB invalidation if the engine is not awake


