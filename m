Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7F0A899D6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 12:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691D310E712;
	Tue, 15 Apr 2025 10:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD0F10E711;
 Tue, 15 Apr 2025 10:22:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Rework/Correction_on_mini?=
 =?utf-8?q?mum_hblank_calculation_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Apr 2025 10:22:41 -0000
Message-ID: <174471256176.5748.5078578610669572344@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250415-hblank-v2-0-1a23e9d97360@intel.com>
In-Reply-To: <20250415-hblank-v2-0-1a23e9d97360@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Rework/Correction on minimum hblank calculation (rev2)
URL   : https://patchwork.freedesktop.org/series/147361/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_dp_mst.o
drivers/gpu/drm/i915/display/intel_dp_mst.c: In function ‘mst_stream_disable’:
drivers/gpu/drm/i915/display/intel_dp_mst.c:1002:31: error: unused variable ‘display’ [-Werror=unused-variable]
 1002 |         struct intel_display *display = to_intel_display(state);
      |                               ^~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:203: drivers/gpu/drm/i915/display/intel_dp_mst.o] Error 1
make[5]: *** [scripts/Makefile.build:461: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:461: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:461: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:461: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2009: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


