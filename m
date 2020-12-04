Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9055B2CF13E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 16:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048A96E197;
	Fri,  4 Dec 2020 15:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1CB16E196;
 Fri,  4 Dec 2020 15:52:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9DF1A9A42;
 Fri,  4 Dec 2020 15:52:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 15:52:24 -0000
Message-ID: <160709714488.27542.3743059130888960103@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204140315.24341-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201204140315.24341-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/24=5D_drm/i915=3A_Disable_output?=
 =?utf-8?q?s_during_unregister?=
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

Series: series starting with [01/24] drm/i915: Disable outputs during unregister
URL   : https://patchwork.freedesktop.org/series/84579/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2bae8f3c30a7 drm/i915: Disable outputs during unregister
363bb75548d1 drm/i915/gt: Ignore repeated attempts to suspend request flow across reset
-:7: WARNING:TYPO_SPELLING: 'reseting' may be misspelled - perhaps 'resetting'?
#7: 
Before reseting the engine, we suspend the execution of the guilty

-:17: WARNING:BAD_SIGN_OFF: email address '<stable@vger.kernel.org> # v5.7+' might be better as 'stable@vger.kernel.org# v5.7+'
#17: 
Cc: <stable@vger.kernel.org> # v5.7+

total: 0 errors, 2 warnings, 0 checks, 9 lines checked
5f68e7fe001d drm/i915/gt: Cancel the preemption timeout on responding to it
-:17: WARNING:BAD_SIGN_OFF: email address '<stable@vger.kernel.org> # v5.5+' might be better as 'stable@vger.kernel.org# v5.5+'
#17: 
Cc: <stable@vger.kernel.org> # v5.5+

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
4aec48d111f4 drm/i915/gt: Include reset failures in the trace
dbc53514f4b6 drm/i915/gt: Clear the execlists timers upon reset
44f085d92e2c drm/i915/gt: Replace direct submit with direct call to tasklet
ea79baee80ce drm/i915/gt: Use virtual_engine during execlists_dequeue
49b88baf972d drm/i915/gt: Decouple inflight virtual engines
22ca745b6b71 drm/i915/gt: Defer schedule_out until after the next dequeue
bfc60ea87a1f drm/i915/gt: Remove virtual breadcrumb before transfer
44173d41aef0 drm/i915/gt: Shrink the critical section for irq signaling
2553339dfe7a drm/i915/gt: Resubmit the virtual engine on schedule-out
66f9cbe3938f drm/i915/gt: Simplify virtual engine handling for execlists_hold()
7693cd2d83df drm/i915/gt: ce->inflight updates are now serialised
68b8f9056a58 drm/i915/gem: Drop free_work for GEM contexts
794eff00db39 drm/i915/gt: Track the overall awake/busy time
a38be5734e47 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
81943438c451 drm/i915/gt: Track all timelines created using the HWSP
476117c64cb4 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
a4ec0db74fea drm/i915/gt: Track timeline GGTT offset separately from subpage offset
6d370b2a6ce1 drm/i915/gt: Add timeline "mode"
612cd1428563 drm/i915/gt: Use indices for writing into relative timelines
17d6ab1a040c drm/i915/selftests: Exercise relative timeline modes
9b4381eeec21 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
