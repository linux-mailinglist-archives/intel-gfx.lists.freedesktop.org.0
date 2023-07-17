Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C9D756C38
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 20:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3408410E2A5;
	Mon, 17 Jul 2023 18:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D330D10E2A5;
 Mon, 17 Jul 2023 18:36:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB239AADE0;
 Mon, 17 Jul 2023 18:36:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 17 Jul 2023 18:36:52 -0000
Message-ID: <168961901280.24538.14436381096776342336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230717164013.826614-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230717164013.826614-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Move_settin?=
 =?utf-8?q?g_of_rps_thresholds_to_init?=
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

Series: series starting with [CI,1/4] drm/i915: Move setting of rps thresholds to init
URL   : https://patchwork.freedesktop.org/series/120857/
State : warning

== Summary ==

Error: dim checkpatch failed
9bcdc0ca7378 drm/i915: Move setting of rps thresholds to init
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")'
#6: 
Since 36d516be867c ("drm/i915/gt: Switch to manual evaluation of RPS")

total: 1 errors, 0 warnings, 0 checks, 73 lines checked
a4102a4d806f drm/i915: Record default rps threshold values
9f2968ecc68a drm/i915: Add helpers for managing rps thresholds
efa813b17c35 drm/i915: Expose RPS thresholds in sysfs


