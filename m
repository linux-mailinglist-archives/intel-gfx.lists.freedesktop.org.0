Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 433B76407CA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 14:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B325E10E05D;
	Fri,  2 Dec 2022 13:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0F8F10E0BD;
 Fri,  2 Dec 2022 13:38:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB095AA01E;
 Fri,  2 Dec 2022 13:38:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 02 Dec 2022 13:38:03 -0000
Message-ID: <166998828367.27865.8263989008921058938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221202122844.428006-1-matthew.auld@intel.com>
In-Reply-To: <20221202122844.428006-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2C1/3=5D_drm/i915/migrate=3A_Acc?=
 =?utf-8?q?ount_for_the_reserved=5Fspace?=
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

Series: series starting with [v6,1/3] drm/i915/migrate: Account for the reserved_space
URL   : https://patchwork.freedesktop.org/series/111583/
State : warning

== Summary ==

Error: dim checkpatch failed
475d93799f92 drm/i915/migrate: Account for the reserved_space
e9b2c66ac06c drm/i915/selftests: use live_subtests for live_migrate
9a6a474d8db7 drm/i915/selftests: exercise emit_pte() with nearly full ring
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
v5: Use a simple on-stack timer to kill the spinner instead of kthread (Chris)

-:82: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#82: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:543:
+	pr_info("%s\n", __func__);

total: 0 errors, 2 warnings, 0 checks, 187 lines checked


