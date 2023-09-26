Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD747AF361
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 20:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD9210E151;
	Tue, 26 Sep 2023 18:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2A9810E151;
 Tue, 26 Sep 2023 18:56:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFBE8A00E6;
 Tue, 26 Sep 2023 18:56:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 26 Sep 2023 18:56:07 -0000
Message-ID: <169575456788.20978.16739337100485622052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230926100855.61722-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230926100855.61722-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Do_not_disable_preemption_for_resets_=28rev4=29?=
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

Series: drm/i915: Do not disable preemption for resets (rev4)
URL   : https://patchwork.freedesktop.org/series/120218/
State : warning

== Summary ==

Error: dim checkpatch failed
2145dc58ac66 drm/i915: Do not disable preemption for resets
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit eb8d0f5af4ec ("drm/i915: Remove GPU reset dependence on struct_mutex")'
#14: 
eb8d0f5af4ec ("drm/i915: Remove GPU reset dependence on struct_mutex"),

-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2caffbf11762 ("drm/i915: Revoke mmaps and prevent access to fence registers across reset")'
#15: 
but that never materialized and was soon removed in 2caffbf11762

-:54: WARNING:TYPO_SPELLING: 'acknowledgement' may be misspelled - perhaps 'acknowledgment'?
#54: FILE: drivers/gpu/drm/i915/gt/intel_reset.c:164:
+	/* Assert reset for at least 50 usec, and wait for acknowledgement. */
 	                                                   ^^^^^^^^^^^^^^^

total: 2 errors, 1 warnings, 0 checks, 52 lines checked


