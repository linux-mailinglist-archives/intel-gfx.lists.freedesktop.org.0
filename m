Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F51222B41
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 20:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0283C6ECC2;
	Thu, 16 Jul 2020 18:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A198A6ECC0;
 Thu, 16 Jul 2020 18:50:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AFA8A0BD0;
 Thu, 16 Jul 2020 18:50:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jul 2020 18:50:34 -0000
Message-ID: <159492543460.25376.7499847347609885545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200716113357.7644-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200716113357.7644-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915=3A_Be_wary_of_data_?=
 =?utf-8?q?races_when_reading_the_active_execlists_=28rev2=29?=
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

Series: series starting with [1/5] drm/i915: Be wary of data races when reading the active execlists (rev2)
URL   : https://patchwork.freedesktop.org/series/79551/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
848b1076da85 drm/i915: Be wary of data races when reading the active execlists
-:92: WARNING:TYPO_SPELLING: 'overwritting' may be misspelled - perhaps 'overwriting'?
#92: FILE: drivers/gpu/drm/i915/i915_request.c:409:
+	 * of execlists->pending[] to execlists->inflight[], overwritting

total: 0 errors, 1 warnings, 0 checks, 67 lines checked
4f7fe277264c drm/i915: Remove i915_request.lock requirement for execution callbacks
3ef9648cd846 drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
5e545c7291af drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs
cd44d243792a drm/i915/gt: Only transfer the virtual context to the new engine if active
-:28: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

-:28: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")'
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

total: 1 errors, 1 warnings, 0 checks, 81 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
