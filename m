Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E31070C511
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 20:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8162D10E1E9;
	Mon, 22 May 2023 18:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACB5E10E1E9;
 Mon, 22 May 2023 18:21:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23D5DAADE1;
 Mon, 22 May 2023 18:21:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 22 May 2023 18:21:52 -0000
Message-ID: <168477971211.28283.13409450959425089599@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230522115928.588793-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230522115928.588793-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Move_setting_of_?=
 =?utf-8?q?rps_thresholds_to_init?=
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

Series: series starting with [1/4] drm/i915: Move setting of rps thresholds to init
URL   : https://patchwork.freedesktop.org/series/118115/
State : warning

== Summary ==

Error: dim checkpatch failed
b2777c501d13 drm/i915: Move setting of rps thresholds to init
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")'
#6: 
Since 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")

total: 1 errors, 0 warnings, 0 checks, 73 lines checked
15839327f3b3 drm/i915: Record default rps threshold values
a844f8f7f78c drm/i915: Add helpers for managing rps thresholds
ea4ccda9c3d5 drm/i915: Expose RPS thresholds in sysfs
-:56: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#56: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:733:
+       rps_up_threshold_pct_show, rps_up_threshold_pct_store);$

-:88: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#88: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:765:
+       rps_down_threshold_pct_show, rps_down_threshold_pct_store);$

total: 0 errors, 2 warnings, 0 checks, 125 lines checked


