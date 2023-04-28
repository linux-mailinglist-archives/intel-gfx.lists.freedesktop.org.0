Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC546F135A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 10:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B3810E3A2;
	Fri, 28 Apr 2023 08:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FD9310E0BC;
 Fri, 28 Apr 2023 08:39:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 780E1A7E03;
 Fri, 28 Apr 2023 08:39:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 28 Apr 2023 08:39:33 -0000
Message-ID: <168267117346.32438.4959224813523114917@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230428081457.857009-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230428081457.857009-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Expose_RPS_thresholds_in_sysfs_=28rev2=29?=
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

Series: Expose RPS thresholds in sysfs (rev2)
URL   : https://patchwork.freedesktop.org/series/117054/
State : warning

== Summary ==

Error: dim checkpatch failed
561c9fe0d33c drm/i915: Move setting of rps thresholds to init
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")'
#6: 
Since 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")

total: 1 errors, 0 warnings, 0 checks, 73 lines checked
da670c452e89 drm/i915: Record default rps threshold values
3d681b908892 drm/i915: Add helpers for managing rps thresholds
19cabe9996b2 drm/i915: Expose RPS thresholds in sysfs
-:55: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#55: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:704:
+       rps_up_threshold_pct_show, rps_up_threshold_pct_store);$

-:87: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#87: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:736:
+       rps_down_threshold_pct_show, rps_down_threshold_pct_store);$

total: 0 errors, 2 warnings, 0 checks, 138 lines checked


