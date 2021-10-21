Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEC44363F2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 16:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445116EC7D;
	Thu, 21 Oct 2021 14:17:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D6BB6E456;
 Thu, 21 Oct 2021 14:17:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 058B6A0169;
 Thu, 21 Oct 2021 14:17:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 14:17:23 -0000
Message-ID: <163482584300.20177.466347936862785601@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021114410.2437099-1-matthew.auld@intel.com>
In-Reply-To: <20211021114410.2437099-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/clflush=3A_fixup_ha?=
 =?utf-8?q?ndling_of_cache=5Fdirty?=
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

Series: series starting with [1/4] drm/i915/clflush: fixup handling of cache_dirty
URL   : https://patchwork.freedesktop.org/series/96119/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a73be2e8149b drm/i915/clflush: fixup handling of cache_dirty
b9d957e084bd drm/i915/clflush: disallow on discrete
-:35: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#35: FILE: drivers/gpu/drm/i915/gem/i915_gem_clflush.c:73:
 {
+

total: 0 errors, 0 warnings, 1 checks, 24 lines checked
8458b5d40c8d drm/i915: move cpu_write_needs_clflush
e587884c5e81 drm/i915: stop setting cache_dirty on discrete


