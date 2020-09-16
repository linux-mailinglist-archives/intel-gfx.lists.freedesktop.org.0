Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8709626C311
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 15:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90C16EA16;
	Wed, 16 Sep 2020 13:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 29C506EA49;
 Wed, 16 Sep 2020 13:03:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 203A4A3ECB;
 Wed, 16 Sep 2020 13:03:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 16 Sep 2020 13:03:18 -0000
Message-ID: <160026139810.19375.7100674306719519331@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916094219.3878-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200916094219.3878-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/gem=3A_Hold_request?=
 =?utf-8?q?_reference_for_canceling_an_active_context?=
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

Series: series starting with [1/4] drm/i915/gem: Hold request reference for canceling an active context
URL   : https://patchwork.freedesktop.org/series/81728/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8e90943e9601 drm/i915/gem: Hold request reference for canceling an active context
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
<4> [582.745252] general protection fault, probably for non-canonical address 0xcccccccccccccd5c: 0000 [#1] PREEMPT SMP PTI

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
8066b7124e28 drm/i915: Cancel outstanding work after disabling heartbeats on an engine
532d48821928 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat
5d8ace4dbe64 drm/i915/gem: Always test execution status on closing the context


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
