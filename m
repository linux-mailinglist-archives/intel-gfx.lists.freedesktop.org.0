Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EB1587B7B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 13:20:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFFA10ED16;
	Tue,  2 Aug 2022 11:20:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52A4410EB78;
 Tue,  2 Aug 2022 11:20:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F665A00FD;
 Tue,  2 Aug 2022 11:20:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 02 Aug 2022 11:20:16 -0000
Message-ID: <165943921623.13190.13526915306419113296@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220802105228.3356260-1-suraj.kandpal@intel.com>
In-Reply-To: <20220802105228.3356260-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBF?=
 =?utf-8?q?nabling_Pipewriteback?=
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

Series: Enabling Pipewriteback
URL   : https://patchwork.freedesktop.org/series/106902/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_wd.o
drivers/gpu/drm/i915/display/intel_wd.c:352:6: error: no previous prototype for ‘intel_wd_connector_init’ [-Werror=missing-prototypes]
 void intel_wd_connector_init(struct intel_wd *intel_wd)
      ^~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_wd.c:426:6: error: no previous prototype for ‘intel_wd_writeback_complete’ [-Werror=missing-prototypes]
 void intel_wd_writeback_complete(struct intel_wd *intel_wd,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_wd.c:434:5: error: no previous prototype for ‘intel_wd_setup_transcoder’ [-Werror=missing-prototypes]
 int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
     ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_wd.c:590:5: error: no previous prototype for ‘intel_wd_capture’ [-Werror=missing-prototypes]
 int intel_wd_capture(struct intel_wd *intel_wd,
     ^~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/display/intel_wd.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_wd.o] Error 1
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1843: recipe for target 'drivers' failed
make: *** [drivers] Error 2


