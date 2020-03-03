Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6027F177E95
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC296E945;
	Tue,  3 Mar 2020 18:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E4F26E817;
 Tue,  3 Mar 2020 18:45:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25E69A00FD;
 Tue,  3 Mar 2020 18:45:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Date: Tue, 03 Mar 2020 18:45:18 -0000
Message-ID: <158326111815.15377.14290867192957915666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303142347.15696-1-aditya.swarup@intel.com>
In-Reply-To: <20200303142347.15696-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/selftests=3A_Fix_uninitialized_variable_=28rev2=29?=
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

Series: drm/i915/selftests: Fix uninitialized variable (rev2)
URL   : https://patchwork.freedesktop.org/series/42194/
State : failure

== Summary ==

Applying: drm/i915/selftests: Fix uninitialized variable
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/selftest_lrc.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/selftest_lrc.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/selftest_lrc.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0001 drm/i915/selftests: Fix uninitialized variable
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
