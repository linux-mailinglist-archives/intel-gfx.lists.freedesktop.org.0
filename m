Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EED1A8A85
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 21:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B436189819;
	Tue, 14 Apr 2020 19:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A41289819;
 Tue, 14 Apr 2020 19:09:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 047E1A47E0;
 Tue, 14 Apr 2020 19:09:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 14 Apr 2020 19:09:19 -0000
Message-ID: <158689135998.30379.6281811489222226157@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/perf=3A_add_OA_interrupt_support_=28rev9=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev9)
URL   : https://patchwork.freedesktop.org/series/54280/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e5020136b3c9 drm/i915/perf: Reduce cpu overhead for blocking perf OA reads
260dadb836a3 drm/i915: handle interrupts from the OA unit
4ff3bedffc2f drm/i915/perf: add interrupt enabling parameter
-:106: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'stream->half_full_count_last !=
 	     atomic64_read(&stream->half_full_count)'
#106: FILE: drivers/gpu/drm/i915/i915_perf.c:3158:
+	if (stream->oa_interrupt_monitor &&
+	    (stream->half_full_count_last !=
+	     atomic64_read(&stream->half_full_count))) {

total: 0 errors, 0 warnings, 1 checks, 179 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
