Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9746C14F546
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 00:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2A16E27A;
	Fri, 31 Jan 2020 23:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6670C6FC5E;
 Fri, 31 Jan 2020 23:53:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DF3BA0094;
 Fri, 31 Jan 2020 23:53:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 23:53:12 -0000
Message-ID: <158051479235.13120.14152588342100575690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131204829.3476668-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131204829.3476668-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/display=3A_Wake_the?=
 =?utf-8?q?_power_well_during_resume?=
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

Series: series starting with [1/4] drm/i915/display: Wake the power well during resume
URL   : https://patchwork.freedesktop.org/series/72849/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ced9ffb2a020 drm/i915/display: Wake the power well during resume
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
<4> [135.959936] WARNING: CPU: 1 PID: 3085 at drivers/gpu/drm/i915/intel_uncore.c:1166 __unclaimed_reg_debug+0x69/0x80 [i915]

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
c6ba1e64e9ab drm/i915: Initialise basic fence before acquiring seqno
8af8c775d115 drm/i915/gt: Warn about the hidden i915_vma_pin in timeline_get_seqno
edce88fb05d2 drm/i915/selftests: Add a simple rollover for the kernel context

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
