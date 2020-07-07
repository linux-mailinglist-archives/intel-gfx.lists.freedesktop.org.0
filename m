Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB8B216BA6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 13:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7583289F45;
	Tue,  7 Jul 2020 11:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6C2789F43;
 Tue,  7 Jul 2020 11:35:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 028AEA66C9;
 Tue,  7 Jul 2020 11:35:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jul 2020 11:35:13 -0000
Message-ID: <159412171300.7664.11429767683663636799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707104819.10877-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200707104819.10877-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915/gt=3A_Decouple_co?=
 =?utf-8?q?mpleted_requests_on_unwind?=
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

Series: series starting with [01/12] drm/i915/gt: Decouple completed requests on unwind
URL   : https://patchwork.freedesktop.org/series/79183/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fbb4ac3d3d2f drm/i915/gt: Decouple completed requests on unwind
5a59199cf602 drm/i915/gt: Check for a completed last request once
f752b802f50a drm/i915/gt: Replace direct submit with direct call to tasklet
679e8bca48d4 drm/i915/gt: Use virtual_engine during execlists_dequeue
5a956e7c7bdc drm/i915/gt: Decouple inflight virtual engines
b115e301df47 drm/i915/gt: Defer schedule_out until after the dequeue
ee73ef387ef9 drm/i915/gt: Resubmit the virtual engine on schedule-out
fde7899263f2 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
20c1f787e92d drm/i915/gt: ce->inflight updates are now serialised
e22f71e6b331 drm/i915/gt: Drop atomic for engine->fw_active tracking
8e9a40de0f5d drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
07df3fb1ebbe drm/i915/gt: Convert stats.active to plain unsigned int

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
