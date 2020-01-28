Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FA414AE36
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 03:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D66F6EC5C;
	Tue, 28 Jan 2020 02:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D765A6EC53;
 Tue, 28 Jan 2020 02:53:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE823A0096;
 Tue, 28 Jan 2020 02:53:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 02:53:11 -0000
Message-ID: <158017999168.20534.1252333515792132715@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915=3A_Skip_capturing_e?=
 =?utf-8?q?rrors_from_internal_contexts?=
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

Series: series starting with [1/6] drm/i915: Skip capturing errors from internal contexts
URL   : https://patchwork.freedesktop.org/series/72639/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5176f847f2a0 drm/i915: Skip capturing errors from internal contexts
5c4b9c7eca9e drm/i915/gt: Reorganise gen8+ interrupt handler
5b77c1593e67 drm/i915/gt: Tidy repetition in declaring gen8+ interrupts
1c4461c839c0 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
-:176: WARNING:LONG_LINE: line over 100 characters
#176: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1875:
+				     yesno(upper_32_bits(last->context->lrc_desc) == READ_ONCE(execlists->yield)));

total: 0 errors, 1 warnings, 0 checks, 155 lines checked
e99cb72106a0 drm/i915/gt: Hook up CS_MASTER_ERROR_INTERRUPT
da5f1d218ee1 drm/i915/gt: Lift set-wedged engine dumping out of user paths

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
