Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CE6803E90
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 20:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F27B10E372;
	Mon,  4 Dec 2023 19:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3F1210E052;
 Mon,  4 Dec 2023 19:40:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0875AA0003;
 Mon,  4 Dec 2023 19:40:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 04 Dec 2023 19:40:25 -0000
Message-ID: <170171882503.20593.73346396899531037@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231201122109.729006-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20231201122109.729006-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Fix_en?=
 =?utf-8?q?gine_reset_count_storage_for_multi-tile_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915/selftests: Fix engine reset count storage for multi-tile (rev2)
URL   : https://patchwork.freedesktop.org/series/127186/
State : warning

== Summary ==

Error: dim checkpatch failed
7afd638ac57c drm/i915/selftests: Fix engine reset count storage for multi-tile
-:15: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#15: 
Reported-by: Alan Previn Teres Alexis <alan.previn.teres.alexis@intel.com>
Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
7f613471cba8 drm/i915: Use internal class when counting engine resets
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
Commit 503579448db9 ("drm/i915/gsc: Mark internal GSC engine with reserved uabi class")

-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit cb823ed9915b ("drm/i915/gt: Use intel_gt as the primary object for handling resets")'
#8: 
reset counting, which in turn was made class based in cb823ed9915b ("drm/i915/gt: Use intel_gt as the primary object for handling resets").

-:26: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#26: 
Reported-by: Alan Previn Teres Alexis <alan.previn.teres.alexis@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

total: 1 errors, 2 warnings, 0 checks, 55 lines checked


