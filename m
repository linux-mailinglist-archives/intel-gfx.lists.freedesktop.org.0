Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C954E44A9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 18:05:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3880610E032;
	Tue, 22 Mar 2022 17:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C0EFF89F4A;
 Tue, 22 Mar 2022 17:05:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD2B0AAA91;
 Tue, 22 Mar 2022 17:05:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 22 Mar 2022 17:05:14 -0000
Message-ID: <164796871475.20008.7355546705281392200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220322164446.2124983-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220322164446.2124983-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Split_out_intel=5Fvtd=5Factive_and_run=5Fas=5Fg?=
 =?utf-8?q?uest_to_own_header?=
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

Series: drm/i915: Split out intel_vtd_active and run_as_guest to own header
URL   : https://patchwork.freedesktop.org/series/101646/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b5d25bc04040 drm/i915: Split out intel_vtd_active and run_as_guest to own header
-:179: CHECK:LINE_SPACING: Please don't use multiple blank lines
#179: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:21:
+
+

-:381: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#381: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 300 lines checked


