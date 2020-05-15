Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85B21D54FB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 17:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A7B6ECD8;
	Fri, 15 May 2020 15:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF8AC6ECCA;
 Fri, 15 May 2020 15:45:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED1DCA0BA8;
 Fri, 15 May 2020 15:45:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 May 2020 15:45:25 -0000
Message-ID: <158955752596.26210.10682356190415082225@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514165436.17380-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200514165436.17380-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Add_te?=
 =?utf-8?q?sts_for_timeslicing_virtual_engines?=
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

Series: series starting with [1/4] drm/i915/selftests: Add tests for timeslicing virtual engines
URL   : https://patchwork.freedesktop.org/series/77274/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
175d05822d38 drm/i915/selftests: Add tests for timeslicing virtual engines
-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:3821:
+		GEM_TRACE_ERR("%s(%s) failed to slice in virtual request\n",
+			  __func__, rq->engine->name);

-:140: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#140: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:3889:
+		GEM_TRACE_ERR("%s(%s) failed to slice out virtual request\n",
+				__func__, siblings[n]->name);

total: 0 errors, 0 warnings, 2 checks, 189 lines checked
155df023a532 drm/i915/gt: Kick virtual siblings on timeslice out
408949995022 drm/i915/gt: Incorporate the virtual engine into timeslicing
c391d6f84f90 drm/i915/execlists: Optimise away false timeslicing on virtual engines
-:9: WARNING:TYPO_SPELLING: 'virtal' may be misspelled - perhaps 'virtual'?
#9: 
a request that dependent upon the result of the virtal request to vcs0.

total: 0 errors, 1 warnings, 0 checks, 200 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
