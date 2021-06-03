Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137B339AEB8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 01:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD3E6E808;
	Thu,  3 Jun 2021 23:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 866F26F543;
 Thu,  3 Jun 2021 23:32:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D3F2A47E8;
 Thu,  3 Jun 2021 23:32:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 03 Jun 2021 23:32:43 -0000
Message-ID: <162276316348.8034.17329330275447993995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210603212722.59719-1-matthew.brost@intel.com>
In-Reply-To: <20210603212722.59719-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_i915=5Fsched=5Fengine_object_=28rev2=29?=
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

Series: Introduce i915_sched_engine object (rev2)
URL   : https://patchwork.freedesktop.org/series/90630/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8225af1a908b drm/i915: Move priolist to new i915_sched_engine object
-:17: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#17: 
This patch starts the aforementioned transition by moving the the

total: 0 errors, 1 warnings, 0 checks, 682 lines checked
ce8653e69398 drm/i915: Add i915_sched_engine_is_empty function
148a2142a7c3 drm/i915: Add i915_sched_engine_reset_on_empty function
e7485728abe3 drm/i915: Move active tracking to i915_sched_engine
f6110f5321ac drm/i915: Move engine->schedule to i915_sched_engine
6e59cded3265 drm/i915: Add kick_backend function to i915_sched_engine
b0932841cafb drm/i915: Update i915_scheduler to operate on i915_sched_engine
ec126054a0f5 drm/i915: Move submission tasklet to i915_sched_engine
378f81235475 drm/i915/doc: Add kernel doc for i915_sched_engine
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 76 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
