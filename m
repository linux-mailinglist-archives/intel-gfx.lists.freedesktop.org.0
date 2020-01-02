Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D9712EAF1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 21:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856CA6E148;
	Thu,  2 Jan 2020 20:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C04B06E146;
 Thu,  2 Jan 2020 20:52:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B19B3A00E6;
 Thu,  2 Jan 2020 20:52:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 20:52:30 -0000
Message-ID: <157799835069.8910.9871637239371148855@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_Support_discontiguous_lmem_object_maps_=28r?=
 =?utf-8?q?ev3=29?=
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

Series: drm/i915/gem: Support discontiguous lmem object maps (rev3)
URL   : https://patchwork.freedesktop.org/series/71557/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cb66594b4851 drm/i915/gem: Support discontiguous lmem object maps
-:183: CHECK:SPACING: spaces preferred around that '*' (ctx:ExO)
#183: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:294:
+			**ptes++ = mk_pte(page, pgprot);
 			^

-:194: CHECK:SPACING: spaces preferred around that '*' (ctx:ExO)
#194: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:305:
+			**ptes++ = iomap_pte(iomap, addr, pgprot);
 			^

total: 0 errors, 0 warnings, 2 checks, 289 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
