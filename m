Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EE6183DEA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 01:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181046E127;
	Fri, 13 Mar 2020 00:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BAD46E127;
 Fri, 13 Mar 2020 00:45:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1AF28A47DF;
 Fri, 13 Mar 2020 00:45:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 13 Mar 2020 00:45:10 -0000
Message-ID: <158406031008.30350.2876552374551530786@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/perf=3A_add_OA_interrupt_support_=28rev6=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev6)
URL   : https://patchwork.freedesktop.org/series/54280/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cf4dc4c5b6bb drm/i915/perf: rework aging tail workaround
-:189: CHECK:SPACING: No space is necessary after a cast
#189: FILE: drivers/gpu/drm/i915/i915_perf.c:527:
+			u32 *report32 = (void *) report;

-:268: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#268: FILE: drivers/gpu/drm/i915/i915_perf.c:827:
+		report32[0] = report32[1] = 0;

-:312: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#312: FILE: drivers/gpu/drm/i915/i915_perf.c:1042:
+		report32[0] = report32[1] = 0;

-:358: CHECK:LINE_SPACING: Please don't use multiple blank lines
#358: FILE: drivers/gpu/drm/i915/i915_perf.c:4385:
+
+

total: 0 errors, 0 warnings, 4 checks, 364 lines checked
0a0d3681c903 drm/i915/perf: move pollin setup to non hw specific code
77c909d6ff76 drm/i915/perf: only append status when data is available
5c91c06ca2f8 drm/i915/perf: add new open param to configure polling of OA buffer

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
