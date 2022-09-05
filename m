Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAF35AD63C
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0A910EA39;
	Mon,  5 Sep 2022 15:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB22D10EA39;
 Mon,  5 Sep 2022 15:22:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3270AA0EA;
 Mon,  5 Sep 2022 15:22:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 05 Sep 2022 15:22:41 -0000
Message-ID: <166239136186.1948.12939062656251353742@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1662390010.git.jani.nikula@intel.com>
In-Reply-To: <cover.1662390010.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_i915=5Fdrv=2Eh_=3E_i915=5Fgem=2Eh_cleanup?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: i915_drv.h > i915_gem.h cleanup
URL   : https://patchwork.freedesktop.org/series/108150/
State : warning

== Summary ==

Error: dim checkpatch failed
f236979564b6 drm/i915: remove unused macro I915_GTT_OFFSET_NONE
5b8a57bcb98c drm/i915: remove unused i915_gem_set_global_seqno() declaration
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6faf5916e6be ("drm/i915: Remove HW semaphores for gen7 inter-engine synchronisation")'
#7: 
The function was removed four years ago in commit 6faf5916e6be

total: 1 errors, 0 warnings, 0 checks, 8 lines checked
a6f5f4a4d781 drm/i915: un-inline i915_gem_drain_workqueue()
45635a32d093 drm/i915: un-inline i915_gem_drain_freed_objects()
56caaf19ce3f drm/i915: split out i915_gem.c declarations to i915_gem.h


