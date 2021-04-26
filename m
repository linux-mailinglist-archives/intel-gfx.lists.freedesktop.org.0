Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A66336B416
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 15:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9174F6E82D;
	Mon, 26 Apr 2021 13:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 380106E0AB;
 Mon, 26 Apr 2021 13:25:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B8E1A47DF;
 Mon, 26 Apr 2021 13:25:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 26 Apr 2021 13:25:18 -0000
Message-ID: <161944351814.18666.44351402895602254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426101821.42147-1-matthew.auld@intel.com>
In-Reply-To: <20210426101821.42147-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915/dg1=3A_Fix_mapping_?=
 =?utf-8?q?type_for_default_state_object?=
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

Series: series starting with [1/7] drm/i915/dg1: Fix mapping type for default state object
URL   : https://patchwork.freedesktop.org/series/89484/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5964f7549f43 drm/i915/dg1: Fix mapping type for default state object
7eac22c6a6bc drm/i915: Update the helper to set correct mapping
-:56: CHECK:BRACES: Unbalanced braces around else statement
#56: FILE: drivers/gpu/drm/i915/gt/intel_ring.c:56:
+	else {

total: 0 errors, 0 warnings, 1 checks, 123 lines checked
c7217fe20683 drm/i915/gtt: map the PD up front
-:10: WARNING:TYPO_SPELLING: 'maping' may be misspelled - perhaps 'mapping'?
#10: 
maping code that for simple single page shmemfs object will return a
^^^^^^

total: 0 errors, 1 warnings, 0 checks, 403 lines checked
118ad8d86487 drm/i915/gtt/dgfx: place the PD in LMEM
5a13d9428dfd drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete
d5ceb645e58f drm/i915/lmem: Bypass aperture when lmem is available
3c391da47483 drm/i915: Return error value when bo not in LMEM for discrete


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
