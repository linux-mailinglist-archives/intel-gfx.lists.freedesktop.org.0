Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 665BB2F53EE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 21:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2856EC3B;
	Wed, 13 Jan 2021 20:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6F786EC38;
 Wed, 13 Jan 2021 20:16:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4B2FA8836;
 Wed, 13 Jan 2021 20:16:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 Jan 2021 20:16:43 -0000
Message-ID: <161056900386.11121.8911743648484500872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210113163115.5740-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210113163115.5740-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915/selftests=3A_F?=
 =?utf-8?q?orce_a_failed_engine_reset?=
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

Series: series starting with [CI,1/2] drm/i915/selftests: Force a failed engine reset
URL   : https://patchwork.freedesktop.org/series/85824/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa6e2a5e273e drm/i915/selftests: Force a failed engine reset
-:45: WARNING:LINE_SPACING: Missing a blank line after declarations
#45: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:568:
+		struct intel_context *ce;
+		IGT_TIMEOUT(end_time);

total: 0 errors, 1 warnings, 0 checks, 154 lines checked
f7a7f7af2cfc drm/i915/selftests: Bump the scheduling error threshold for fast heartbeats
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
<3> [616.859296] vcs0: Heartbeat delay was 6485us, expected less than 6000us

total: 0 errors, 1 warnings, 0 checks, 28 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
