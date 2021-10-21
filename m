Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B613435803
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 02:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A8E6EA1C;
	Thu, 21 Oct 2021 00:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FCBC6E406;
 Thu, 21 Oct 2021 00:59:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87665A7DFB;
 Thu, 21 Oct 2021 00:59:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 00:59:39 -0000
Message-ID: <163477797953.20177.8786265870642656887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211020223339.669-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_=28near=29atomic_gamma_LUT_updates_via_vblank_w?=
 =?utf-8?q?orkers?=
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

Series: drm/i915: (near)atomic gamma LUT updates via vblank workers
URL   : https://patchwork.freedesktop.org/series/96089/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
889072d8ac0e drm/i915: Move function prototypes to the correct header
0b7c1b5f5243 drm/i915: Do vrr push before sampling the freame counter
b9a5bb22d814 drm/i915: Use vblank workers for gamma updates
-:289: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#289: FILE: drivers/gpu/drm/i915/i915_trace.h:411:
+	    TP_STRUCT__entry(

-:295: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#295: FILE: drivers/gpu/drm/i915/i915_trace.h:417:
+	    TP_fast_assign(

-:310: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#310: FILE: drivers/gpu/drm/i915/i915_trace.h:432:
+	    TP_STRUCT__entry(

-:316: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#316: FILE: drivers/gpu/drm/i915/i915_trace.h:438:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 4 checks, 241 lines checked
6c8274b2061c drm/i915: Use unlocked register accesses for LUT loads


