Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC724680EE
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Dec 2021 00:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B3BAB59A;
	Fri,  3 Dec 2021 23:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 301CDAB59A;
 Fri,  3 Dec 2021 23:53:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 267FAA0169;
 Fri,  3 Dec 2021 23:53:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bruce Chang" <yu.bruce.chang@intel.com>
Date: Fri, 03 Dec 2021 23:53:00 -0000
Message-ID: <163857558012.5407.16531991813099740859@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211203233057.2854-1-yu.bruce.chang@intel.com>
In-Reply-To: <20211203233057.2854-1-yu.bruce.chang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Follow_up_on_increase_timeout_in_i915?=
 =?utf-8?q?=5Fgem=5Fcontexts_selftests?=
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

Series: drm/i915/selftests: Follow up on increase timeout in i915_gem_contexts selftests
URL   : https://patchwork.freedesktop.org/series/97577/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
06b07fd47af5 drm/i915/selftests: Follow up on increase timeout in i915_gem_contexts selftests
-:26: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#26: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:91:
+		if (i915_request_wait(rq, 0, 10*HZ) < 0) {
 		                               ^

total: 0 errors, 0 warnings, 1 checks, 8 lines checked


