Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AAD539FB4
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 10:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4760010E6EE;
	Wed,  1 Jun 2022 08:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 76CAC10E716;
 Wed,  1 Jun 2022 08:41:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E986A66C8;
 Wed,  1 Jun 2022 08:41:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Wed, 01 Jun 2022 08:41:01 -0000
Message-ID: <165407286144.17294.4831683193583909413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220601082200.368911-1-suraj.kandpal@intel.com>
In-Reply-To: <20220601082200.368911-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBp?=
 =?utf-8?q?915_writeback_enablement?=
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

Series: i915 writeback enablement
URL   : https://patchwork.freedesktop.org/series/104591/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_wd.o
drivers/gpu/drm/i915/display/intel_wd.c:66:6: error: no previous prototype for ‘print_connectors’ [-Werror=missing-prototypes]
 void print_connectors(struct drm_i915_private *dev_priv)
      ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_wd.c:414:6: error: no previous prototype for ‘intel_wd_writeback_complete’ [-Werror=missing-prototypes]
 void intel_wd_writeback_complete(struct intel_wd *intel_wd,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_wd.c:422:5: error: no previous prototype for ‘intel_wd_setup_transcoder’ [-Werror=missing-prototypes]
 int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
     ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_wd.c:587:5: error: no previous prototype for ‘intel_wd_capture’ [-Werror=missing-prototypes]
 int intel_wd_capture(struct intel_wd *intel_wd,
     ^~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_wd.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_wd.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1834: recipe for target 'drivers' failed
make: *** [drivers] Error 2


