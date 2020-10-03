Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD1D281F9F
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 02:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4216E9F8;
	Sat,  3 Oct 2020 00:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF97E6E9F6;
 Sat,  3 Oct 2020 00:13:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8073A011C;
 Sat,  3 Oct 2020 00:13:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Sat, 03 Oct 2020 00:13:43 -0000
Message-ID: <160168402378.24066.1184205702956143868@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Allow_privileged_user_to_map_the_OA_buffer?=
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

Series: Allow privileged user to map the OA buffer
URL   : https://patchwork.freedesktop.org/series/82353/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
febfa8b6a73d drm/i915/perf: Ensure observation logic is not clock gated
ed4d60599ff2 drm/i915/gt: Lock intel_engine_apply_whitelist with uncore->lock
1b52c6e17fa6 drm/i915/perf: Whitelist OA report trigger registers
-:91: ERROR:TRAILING_WHITESPACE: trailing whitespace
#91: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:153:
+ $

-:91: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#91: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:153:
+ $

-:140: ERROR:TRAILING_WHITESPACE: trailing whitespace
#140: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2094:
+^I * Once we remove the workarounds, we compact the list again in $

-:238: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!stream->perf->oa_wl"
#238: FILE: drivers/gpu/drm/i915/i915_perf.c:1382:
+	    stream->perf->oa_wl == NULL)

total: 2 errors, 1 warnings, 1 checks, 306 lines checked
85cfd888057c drm/i915/gt: Refactor _wa_add to reuse wa_index and wa_list_grow
cc19652f4807 drm/i915/perf: Whitelist OA counter and buffer registers
a29845c583c3 drm/i915/perf: Map OA buffer to user space for gen12 performance query


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
