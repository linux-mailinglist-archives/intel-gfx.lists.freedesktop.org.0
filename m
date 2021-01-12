Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C85AA2F2ECF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 13:17:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38026E1ED;
	Tue, 12 Jan 2021 12:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB4E46E1EC;
 Tue, 12 Jan 2021 12:17:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5A4DA47E8;
 Tue, 12 Jan 2021 12:17:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 12 Jan 2021 12:17:34 -0000
Message-ID: <161045385471.1919.15184716799960842807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210112113716.8577-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210112113716.8577-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Force_a_failed_engine_reset?=
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

Series: drm/i915/selftests: Force a failed engine reset
URL   : https://patchwork.freedesktop.org/series/85749/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4fd279f422ea drm/i915/selftests: Force a failed engine reset
-:44: WARNING:LINE_SPACING: Missing a blank line after declarations
#44: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:568:
+		struct intel_context *ce;
+		IGT_TIMEOUT(end_time);

-:116: CHECK:SPACING: spaces preferred around that '/' (ctx:WxV)
#116: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:640:
+			if (i915_request_wait(last, 0, HZ /2) < 0) {
 			                                  ^

total: 0 errors, 1 warnings, 1 checks, 145 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
