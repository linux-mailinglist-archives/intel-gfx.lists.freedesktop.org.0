Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20008149A1E
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jan 2020 11:33:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675BF6E96A;
	Sun, 26 Jan 2020 10:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A67156E969;
 Sun, 26 Jan 2020 10:33:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1E66A0119;
 Sun, 26 Jan 2020 10:33:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 26 Jan 2020 10:33:49 -0000
Message-ID: <158003482965.5254.5713042410308540462@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915=3A_Remove_=27prefau?=
 =?utf-8?q?lt=5Fdisable=27_modparam?=
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

Series: series starting with [1/6] drm/i915: Remove 'prefault_disable' modparam
URL   : https://patchwork.freedesktop.org/series/72586/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4c84192ef497 drm/i915: Remove 'prefault_disable' modparam
be5725649262 drm/i915: Check current i915_vma.pin_count status first on unbind
25508685db92 drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
efd14c971a7b drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
<0> [198.668822] gem_exec-1246    0.... 193899010us : timeline_advance: timeline_advance:387 GEM_BUG_ON(!atomic_read(&tl->pin_count))

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
162d013a8266 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
600325c0df29 drm/i915/gt: Hook up CS_MASTER_ERROR_INTERRUPT
-:493: WARNING:LONG_LINE: line over 100 characters
#493: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:511:
+					       engine->name, error_repr(p->error[i]), client[i]->fence.error);

total: 0 errors, 1 warnings, 0 checks, 601 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
