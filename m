Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3757A1FF305
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 15:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 847976E42E;
	Thu, 18 Jun 2020 13:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4BF86E42D;
 Thu, 18 Jun 2020 13:28:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE1D3A00CC;
 Thu, 18 Jun 2020 13:28:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 18 Jun 2020 13:28:18 -0000
Message-ID: <159248689881.22460.2009412207316642342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200618100356.15744-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200618100356.15744-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/11=5D_drm/i915/gt=3A_Decouple_co?=
 =?utf-8?q?mpleted_requests_on_unwind_=28rev6=29?=
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

Series: series starting with [01/11] drm/i915/gt: Decouple completed requests on unwind (rev6)
URL   : https://patchwork.freedesktop.org/series/78522/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9ce2e355ae34 drm/i915/gt: Decouple completed requests on unwind
f28adb65371f drm/i915/gt: Check for a completed last request once
14dcb843c8c9 drm/i915/gt: Replace direct submit with direct call to tasklet
481651f51f06 drm/i915/execlists: Defer schedule_out until after the next dequeue
3e4560a995ed drm/i915/gt: ce->inflight updates are now serialised
4ed52f6c3765 drm/i915/gt: Drop atomic for engine->fw_active tracking
f4bf534598ab drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
6dfcfa8830cf drm/i915/gt: Convert stats.active to plain unsigned int
c5298470fd7f drm/i915/gt: Use virtual_engine during execlists_dequeue
0f90ab391e31 drm/i915/gt: Decouple inflight virtual engines
f1d37af00d9c drm/i915/gt: Resubmit the virtual engine on schedule-out

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
