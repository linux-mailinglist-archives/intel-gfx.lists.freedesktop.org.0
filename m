Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 813185A86FA
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 21:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D6C10E114;
	Wed, 31 Aug 2022 19:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DB1D10E114;
 Wed, 31 Aug 2022 19:50:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20291AA3D8;
 Wed, 31 Aug 2022 19:50:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Wed, 31 Aug 2022 19:50:23 -0000
Message-ID: <166197542309.4259.14119746738653019699@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220831193355.838209-1-ashutosh.dixit@intel.com>
In-Reply-To: <20220831193355.838209-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_i915/pmu=3A_Wire_GuC_backend_to_p?=
 =?utf-8?q?er-client_busyness?=
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

Series: series starting with [1/2] i915/pmu: Wire GuC backend to per-client busyness
URL   : https://patchwork.freedesktop.org/series/107983/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1520:6: error: no previous prototype for ‘lrc_update_runtime_locked’ [-Werror=missing-prototypes]
 void lrc_update_runtime_locked(struct intel_context *ce)
      ^~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1853: recipe for target 'drivers' failed
make: *** [drivers] Error 2


