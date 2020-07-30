Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6F523295B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 03:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CAC6E81F;
	Thu, 30 Jul 2020 01:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C3206E81F;
 Thu, 30 Jul 2020 01:11:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3542FA00C7;
 Thu, 30 Jul 2020 01:11:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 30 Jul 2020 01:11:53 -0000
Message-ID: <159607151318.11112.12839696133094452822@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Allow_privileged_user_to_map_the_OA_buffer_=28rev6=29?=
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

Series: Allow privileged user to map the OA buffer (rev6)
URL   : https://patchwork.freedesktop.org/series/79460/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f47a2dc77f17 drm/i915: Allow removal of whitelist register and refactor
0b9b3f22f602 drm/i915/selftests: Clear flags when using wa->reg for comparison
8e729453c3ab drm/i915/perf: Ensure observation logic is not clock gated
5300316f93be drm/i915/perf: Whitelist OA report trigger registers
-:167: ERROR:TRAILING_WHITESPACE: trailing whitespace
#167: FILE: drivers/gpu/drm/i915/i915_perf.c:3483:
+^I/* $

-:177: ERROR:TRAILING_WHITESPACE: trailing whitespace
#177: FILE: drivers/gpu/drm/i915/i915_perf.c:3493:
+^Iif (!i915_perf_stream_paranoid && $

total: 2 errors, 0 warnings, 0 checks, 163 lines checked
a30db91cb977 drm/i915/perf: Whitelist OA counter and buffer registers
9ee84dc6b151 drm/i915/perf: Map OA buffer to user space for gen12 performance query


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
