Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD812958BB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 09:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B186EE34;
	Thu, 22 Oct 2020 07:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B6A46E1B5;
 Thu, 22 Oct 2020 07:01:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 147FCA8831;
 Thu, 22 Oct 2020 07:01:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 22 Oct 2020 07:01:01 -0000
Message-ID: <160335006108.7805.6740973431914781852@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201021220411.5777-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201021220411.5777-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_drm/i915/gt=3A_Use_the_local_HWSP_offs?=
 =?utf-8?q?et_during_submission_=28rev2=29?=
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

Series: series starting with drm/i915/gt: Use the local HWSP offset during submission (rev2)
URL   : https://patchwork.freedesktop.org/series/82935/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a0a057614518 drm/i915/gt: Use the local HWSP offset during submission
9004d18b0348 drm/i915/selftests: Exercise intel_timeline_read_hwsp()
-:270: WARNING:LINE_SPACING: Missing a blank line after declarations
#270: FILE: drivers/gpu/drm/i915/gt/selftest_timeline.c:991:
+		unsigned long count = 0;
+		IGT_TIMEOUT(end_time);

total: 0 errors, 1 warnings, 0 checks, 396 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
