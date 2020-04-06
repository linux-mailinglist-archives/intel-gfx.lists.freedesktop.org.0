Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 985AE19F7C9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 16:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34CCD6E3D6;
	Mon,  6 Apr 2020 14:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BC116E3D6;
 Mon,  6 Apr 2020 14:19:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 135DFA3C0D;
 Mon,  6 Apr 2020 14:19:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 06 Apr 2020 14:19:34 -0000
Message-ID: <158618277404.4193.10622186842619827587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406135514.569205-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200406135514.569205-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/perf=3A_break_OA_co?=
 =?utf-8?q?nfig_buffer_object_in_2?=
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

Series: series starting with [1/3] drm/i915/perf: break OA config buffer object in 2
URL   : https://patchwork.freedesktop.org/series/75550/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d78a933fe510 drm/i915/perf: break OA config buffer object in 2
-:27: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#27: FILE: drivers/gpu/drm/i915/i915_perf.c:375:
+	uint32_t per_context_offset;

total: 0 errors, 0 warnings, 1 checks, 325 lines checked
122d52d6d979 drm/i915/perf: prepare driver to receive multiple ctx handles
-:53: CHECK:SPACING: No space is necessary after a cast
#53: FILE: drivers/gpu/drm/i915/i915_perf.c:633:
+	return *((int *) elem) - *((int *) key);

-:108: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#108: FILE: drivers/gpu/drm/i915/i915_perf.c:814:
+			    reason & OAREPORT_REASON_CTX_SWITCH) {
+

-:903: WARNING:LONG_LINE: line over 100 characters
#903: FILE: drivers/gpu/drm/i915/i915_perf.c:3715:
+			props->ctx_handles = kmalloc_array(1, sizeof(*props->ctx_handles), GFP_KERNEL);

total: 0 errors, 1 warnings, 2 checks, 1007 lines checked
18728c0bc637 drm/i915/perf: enable filtering on multiple contexts

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
