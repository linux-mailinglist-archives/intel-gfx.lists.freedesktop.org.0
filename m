Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11825541F90
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 01:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D5C10E7E3;
	Tue,  7 Jun 2022 23:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F27E710E5E0;
 Tue,  7 Jun 2022 23:47:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE806A66C9;
 Tue,  7 Jun 2022 23:47:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Tue, 07 Jun 2022 23:47:08 -0000
Message-ID: <165464562894.8647.17661536738024520188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220607215103.3342267-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220607215103.3342267-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/guc=3A_Use_drm=5Ferr_instead_of_pr=5Ferr?=
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

Series: drm/i915/guc: Use drm_err instead of pr_err
URL   : https://patchwork.freedesktop.org/series/104859/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
In file included from drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4978:
drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c: In function ‘__intel_guc_multi_lrc_basic’:
drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c:121:3: error: implicit declaration of function ‘drm_debug’; did you mean ‘pr_debug’? [-Werror=implicit-function-declaration]
   drm_debug(&gt->i915->drm, "Not enough engines in class: %d", class);
   ^~~~~~~~~
   pr_debug
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o] Error 1
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1839: recipe for target 'drivers' failed
make: *** [drivers] Error 2


