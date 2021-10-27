Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2459C43D056
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 20:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BB089E0C;
	Wed, 27 Oct 2021 18:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7517389CB8;
 Wed, 27 Oct 2021 18:10:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D15EAA917;
 Wed, 27 Oct 2021 18:10:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 18:10:40 -0000
Message-ID: <163535824041.4635.10700606416493303178@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211027161813.3094681-1-matthew.auld@intel.com>
In-Reply-To: <20211027161813.3094681-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/4=5D_drm/i915/clflush=3A_fix?=
 =?utf-8?q?up_handling_of_cache=5Fdirty?=
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

Series: series starting with [v2,1/4] drm/i915/clflush: fixup handling of cache_dirty
URL   : https://patchwork.freedesktop.org/series/96348/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3f9f5df03650 drm/i915/clflush: fixup handling of cache_dirty
93b878411d08 drm/i915/clflush: disallow on discrete
-:36: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#36: FILE: drivers/gpu/drm/i915/gem/i915_gem_clflush.c:72:
 {
+

total: 0 errors, 0 warnings, 1 checks, 24 lines checked
e4752d884e9a drm/i915: move cpu_write_needs_clflush
4b1be8a87ade drm/i915: stop setting cache_dirty on discrete


