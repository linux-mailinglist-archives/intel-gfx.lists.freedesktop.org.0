Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0422E1FCE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 18:19:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E29E6E09E;
	Wed, 23 Dec 2020 17:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5CB2E6E8BD;
 Wed, 23 Dec 2020 17:18:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54D0FA882E;
 Wed, 23 Dec 2020 17:18:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 23 Dec 2020 17:18:59 -0000
Message-ID: <160874393931.26585.4711839306057237022@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201223122359.22562-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201223122359.22562-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Confir?=
 =?utf-8?q?m_CS=5FTIMESTAMP_/_CTX=5FTIMESTAMP_share_a_clock?=
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

Series: series starting with [1/2] drm/i915/selftests: Confirm CS_TIMESTAMP / CTX_TIMESTAMP share a clock
URL   : https://patchwork.freedesktop.org/series/85187/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cfe0bee68e21 drm/i915/selftests: Confirm CS_TIMESTAMP / CTX_TIMESTAMP share a clock
-:92: WARNING:MEMORY_BARRIER: memory barrier without comment
#92: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:69:
+	wmb();

-:140: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#140: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:117:
+	udelay(100);

total: 0 errors, 1 warnings, 1 checks, 223 lines checked
4664d259d344 drm/i915/gt: Consolidate the CS timestamp clocks


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
