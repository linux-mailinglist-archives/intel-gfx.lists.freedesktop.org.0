Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5053912E980
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 18:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D666E123;
	Thu,  2 Jan 2020 17:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 981AD6E124;
 Thu,  2 Jan 2020 17:42:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EC9EA0003;
 Thu,  2 Jan 2020 17:42:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 17:42:17 -0000
Message-ID: <157798693741.8910.15943612723626733110@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_Support_discontiguous_lmem_object_maps_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/gem: Support discontiguous lmem object maps (rev2)
URL   : https://patchwork.freedesktop.org/series/71557/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1d5e8b6368cf drm/i915/gem: Support discontiguous lmem object maps
-:181: CHECK:SPACING: spaces preferred around that '*' (ctx:ExO)
#181: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:294:
+			**ptes++ = mk_pte(page, pgprot);
 			^

-:189: CHECK:SPACING: spaces preferred around that '*' (ctx:ExO)
#189: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:302:
+			**ptes++ = iomap_pte(iomap, addr, pgprot);
 			^

total: 0 errors, 0 warnings, 2 checks, 286 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
