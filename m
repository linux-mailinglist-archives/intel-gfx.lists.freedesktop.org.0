Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FAB7514EF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 02:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3FD10E609;
	Thu, 13 Jul 2023 00:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7312210E5FC;
 Thu, 13 Jul 2023 00:04:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EE4AAADD5;
 Thu, 13 Jul 2023 00:04:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Thu, 13 Jul 2023 00:04:12 -0000
Message-ID: <168920665244.14984.16867451180675032721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230712233415.49012-1-matthew.s.atwood@intel.com>
In-Reply-To: <20230712233415.49012-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Introduce_Wa=5F14011274333?=
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

Series: drm/i915: Introduce Wa_14011274333
URL   : https://patchwork.freedesktop.org/series/120644/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/intel_rc6.o
drivers/gpu/drm/i915/gt/intel_rc6.c:110:6: error: no previous prototype for ‘rc6_wa_bb_ctx_wa_fini’ [-Werror=missing-prototypes]
  110 | void rc6_wa_bb_ctx_wa_fini(struct intel_rc6 *rc6)
      |      ^~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/gt/intel_rc6.o] Error 1
make[5]: *** [scripts/Makefile.build:477: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:477: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:477: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:477: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2020: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


