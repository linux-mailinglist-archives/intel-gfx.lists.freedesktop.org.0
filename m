Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 256756C1EDD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 19:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768E110E223;
	Mon, 20 Mar 2023 18:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 298AE10E223;
 Mon, 20 Mar 2023 18:02:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25CE5AADD5;
 Mon, 20 Mar 2023 18:02:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 20 Mar 2023 18:02:01 -0000
Message-ID: <167933532115.26308.9092282944343745188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_various_issues_with_noarm_register_writes?=
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

Series: drm/i915: Fix various issues with noarm register writes
URL   : https://patchwork.freedesktop.org/series/115379/
State : warning

== Summary ==

Error: dim checkpatch failed
237abb250661 drm/i915: Split icl_color_commit_noarm() from skl_color_commit_noarm()
35671f6aff05 drm/i915: Move CSC load back into .color_commit_arm() when PSR is enabled on skl/glk
-:32: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Closes:', use 'Link:' instead
#32: 
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8283

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
84689179950c drm/i915: Add a .color_post_update() hook
5885f6fad69c drm/i915: Workaround ICL CSC_MODE sticky arming
91f2d72edfb2 drm/i915: Disable DC states for all commits
abc8f39befd0 drm/i915/psr: Define more PSR mask bits


