Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0B0231211
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 20:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625046E260;
	Tue, 28 Jul 2020 18:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B6C189D5E;
 Tue, 28 Jul 2020 18:57:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55A1DA0BC6;
 Tue, 28 Jul 2020 18:57:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jul 2020 18:57:31 -0000
Message-ID: <159596265134.21871.17496688574293984275@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200728152501.26685-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200728152501.26685-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915=3A_Remove_gen_che?=
 =?utf-8?q?ck_before_calling_intel=5Frps=5Fboost?=
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

Series: series starting with [01/12] drm/i915: Remove gen check before calling intel_rps_boost
URL   : https://patchwork.freedesktop.org/series/79988/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e55a35c962bb drm/i915: Remove gen check before calling intel_rps_boost
04fbf7fabc07 drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
c12c89dac122 drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs
712663ebd43b drm/i915/gt: Only transfer the virtual context to the new engine if active
-:28: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

-:28: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")'
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

total: 1 errors, 1 warnings, 0 checks, 81 lines checked
7f9af8c69662 drm/i915/gt: Distinguish the virtual breadcrumbs from the irq breadcrumbs
-:212: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#212: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 513 lines checked
912b242b2268 drm/i915/gt: Move intel_breadcrumbs_arm_irq earlier
9ed189ae62fa drm/i915/gt: Hold context/request reference while breadcrumbs are active
5dfa302c9527 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
cc2cd7609c9e drm/i915/gt: Protect context lifetime with RCU
a91359c80fc4 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:287: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#287: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:54:
+	spinlock_t signal_lock;

total: 0 errors, 0 warnings, 1 checks, 248 lines checked
845e59d9f06b drm/i915: Drop i915_request.lock serialisation around await_start
5c5097e2fc38 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
