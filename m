Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6C36C1A0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108DE6E937;
	Tue, 27 Apr 2021 09:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E95136E934;
 Tue, 27 Apr 2021 09:20:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFBFFA0019;
 Tue, 27 Apr 2021 09:20:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 27 Apr 2021 09:20:33 -0000
Message-ID: <161951523391.17488.82611456932237000@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427085417.120246-1-matthew.auld@intel.com>
In-Reply-To: <20210427085417.120246-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/7=5D_drm/i915/dg1=3A_Fix_map?=
 =?utf-8?q?ping_type_for_default_state_object?=
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

Series: series starting with [v2,1/7] drm/i915/dg1: Fix mapping type for default state object
URL   : https://patchwork.freedesktop.org/series/89529/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c40331cdc349 drm/i915/dg1: Fix mapping type for default state object
6170c13d83ab drm/i915: Update the helper to set correct mapping
-:56: CHECK:BRACES: Unbalanced braces around else statement
#56: FILE: drivers/gpu/drm/i915/gt/intel_ring.c:56:
+	else {

total: 0 errors, 0 warnings, 1 checks, 123 lines checked
f501307a51b0 drm/i915/gtt: map the PD up front
81f1a39eb04c drm/i915/gtt/dgfx: place the PD in LMEM
87f851fc9c27 drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete
4c20b10e9301 drm/i915/lmem: Bypass aperture when lmem is available
e85d70bf7f2a drm/i915: Return error value when bo not in LMEM for discrete


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
