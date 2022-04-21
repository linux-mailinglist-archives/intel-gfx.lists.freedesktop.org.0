Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7FF50ABDE
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 01:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C8C10ECF0;
	Thu, 21 Apr 2022 23:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC6C310ECE9;
 Thu, 21 Apr 2022 23:16:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB2F4A0003;
 Thu, 21 Apr 2022 23:16:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Thu, 21 Apr 2022 23:16:30 -0000
Message-ID: <165058299068.10763.14589248113047390941@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220421184941.428639-1-bob.beckett@collabora.com>
In-Reply-To: <20220421184941.428639-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ttm_for_stolen_region_=28rev4=29?=
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

Series: drm/i915: ttm for stolen region (rev4)
URL   : https://patchwork.freedesktop.org/series/102540/
State : warning

== Summary ==

Error: dim checkpatch failed
c1e10dd4ab94 drm/i915: instantiate ttm ranger manager for stolen memory
0f75dfba1932 drm/i915: sanitize mem_flags for stolen buffers
b167928f752f drm/i915: ttm move/clear logic fix
327872a9f002 drm/i915: ttm backend dont provide mmap_offset for kernel buffers
437411ec6ddc drm/i915: allow memory region creators to alloc and free the region
894b41d38a33 drm/i915: stolen memory use ttm backend
-:546: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*region)...) over kzalloc(sizeof(struct stolen_region)...)
#546: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:602:
+	struct stolen_region *region = kzalloc(sizeof(struct stolen_region), GFP_KERNEL);

total: 0 errors, 0 warnings, 1 checks, 993 lines checked


