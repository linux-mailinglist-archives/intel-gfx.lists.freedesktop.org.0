Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBDA49E00F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D777C10E4D9;
	Thu, 27 Jan 2022 11:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D84210E5E2;
 Thu, 27 Jan 2022 11:01:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19458A00A0;
 Thu, 27 Jan 2022 11:01:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 27 Jan 2022 11:01:57 -0000
Message-ID: <164328131708.23659.3793621731577268174@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_M/N_cleanup?=
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

Series: drm/i915: M/N cleanup
URL   : https://patchwork.freedesktop.org/series/99409/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gvt/display.o
drivers/gpu/drm/i915/gvt/display.c: In function ‘emulate_monitor_status_change’:
drivers/gpu/drm/i915/gvt/display.c:256:57: error: ‘TU_SIZE_SHIFT’ undeclared (first use in this function); did you mean ‘TV_XSIZE_SHIFT’?
   vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = 63 << TU_SIZE_SHIFT;
                                                         ^~~~~~~~~~~~~
                                                         TV_XSIZE_SHIFT
drivers/gpu/drm/i915/gvt/display.c:256:57: note: each undeclared identifier is reported only once for each function it appears in
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gvt/display.o' failed
make[4]: *** [drivers/gpu/drm/i915/gvt/display.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


