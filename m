Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE971B1467
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 20:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DAD6E46F;
	Mon, 20 Apr 2020 18:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D52866E1E2;
 Mon, 20 Apr 2020 18:23:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEF46A47E6;
 Mon, 20 Apr 2020 18:23:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Apr 2020 18:23:22 -0000
Message-ID: <158740700281.29876.7784284910907062887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420162509.29044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420162509.29044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/6=5D_drm/i915/selftests=3A_V?=
 =?utf-8?q?erify_frequency_scaling_with_RPS?=
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

Series: series starting with [CI,1/6] drm/i915/selftests: Verify frequency scaling with RPS
URL   : https://patchwork.freedesktop.org/series/76207/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
18dc228e78a3 drm/i915/selftests: Verify frequency scaling with RPS
5596606385a1 drm/i915/selftests: Skip energy consumption tests if not controlling freq
8a8b4c6f9d90 drm/i915/selftests: Check RPS controls
094283df407d drm/i915/selftests: Split RPS frequency measurement
8b44ad32661e drm/i915/selftests: Show the pcode frequency table on error
5a1eb55b410f drm/i915/selftests: Exercise dynamic reclocking with RPS
-:113: ERROR:SPACING: space required after that ',' (ctx:VxV)
#113: FILE: drivers/gpu/drm/i915/gt/selftest_rps.c:969:
+		} min,max;
 		     ^

total: 1 errors, 0 warnings, 0 checks, 156 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
