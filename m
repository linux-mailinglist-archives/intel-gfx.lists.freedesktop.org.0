Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD46A319CEB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 11:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBC56E5BD;
	Fri, 12 Feb 2021 10:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F0DF6E0E6;
 Fri, 12 Feb 2021 10:58:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 566A5A66C9;
 Fri, 12 Feb 2021 10:58:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Feb 2021 10:58:34 -0000
Message-ID: <161312751432.25822.10383049660095238613@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210212102224.31060-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210212102224.31060-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_Wrap_all_access_?=
 =?utf-8?q?to_i915=5Fvma=2Enode=2Estart=7Csize?=
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

Series: series starting with [1/3] drm/i915: Wrap all access to i915_vma.node.start|size
URL   : https://patchwork.freedesktop.org/series/87013/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fbe6f8e9939d drm/i915: Wrap all access to i915_vma.node.start|size
-:720: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#720: FILE: drivers/gpu/drm/i915/i915_vma.h:115:
+       GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));$

-:721: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#721: FILE: drivers/gpu/drm/i915/i915_vma.h:116:
+       return vma->node.size;$

-:726: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#726: FILE: drivers/gpu/drm/i915/i915_vma.h:121:
+       GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));$

-:727: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#727: FILE: drivers/gpu/drm/i915/i915_vma.h:122:
+       return vma->node.start;$

total: 0 errors, 4 warnings, 0 checks, 649 lines checked
14325abd66e0 drm/i915: Introduce guard pages to i915_vma
eb0c0d8b37f3 drm/i915: Refine VT-d scanout workaround


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
