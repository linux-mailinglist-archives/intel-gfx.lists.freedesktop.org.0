Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF2C758134
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 17:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4344010E356;
	Tue, 18 Jul 2023 15:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C0ECA10E356;
 Tue, 18 Jul 2023 15:43:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8BA5AADE8;
 Tue, 18 Jul 2023 15:43:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 18 Jul 2023 15:43:55 -0000
Message-ID: <168969503572.22205.1837902196519391305@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230717164013.826614-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230717164013.826614-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Move_settin?=
 =?utf-8?q?g_of_rps_thresholds_to_init_=28rev3=29?=
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

Series: series starting with [CI,1/4] drm/i915: Move setting of rps thresholds to init (rev3)
URL   : https://patchwork.freedesktop.org/series/120857/
State : warning

== Summary ==

Error: dim checkpatch failed
225af759e3c0 drm/i915: Move setting of rps thresholds to init
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")'
#6: 
Since 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")

total: 1 errors, 0 warnings, 0 checks, 73 lines checked
3022f7532463 drm/i915: Record default rps threshold values
ce890a1dae12 drm/i915: Add helpers for managing rps thresholds
7c832a7ad12d drm/i915: Expose RPS thresholds in sysfs


