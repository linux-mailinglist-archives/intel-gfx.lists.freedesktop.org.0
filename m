Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2DCA91B13
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B006E10EAD9;
	Thu, 17 Apr 2025 11:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C780510EAD9;
 Thu, 17 Apr 2025 11:40:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Rework/Correction_on_mini?=
 =?utf-8?q?mum_hblank_calculation_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Apr 2025 11:40:07 -0000
Message-ID: <174489000781.14269.14840438767932292267@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250417-hblank-v3-0-d3387df7efce@intel.com>
In-Reply-To: <20250417-hblank-v3-0-d3387df7efce@intel.com>
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

Series: Rework/Correction on minimum hblank calculation (rev3)
URL   : https://patchwork.freedesktop.org/series/147361/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_dp_mst.o
drivers/gpu/drm/i915/display/intel_dp_mst.c: In function ‘mst_stream_disable’:
drivers/gpu/drm/i915/display/intel_dp_mst.c:1003:31: error: unused variable ‘display’ [-Werror=unused-variable]
 1003 |         struct intel_display *display = to_intel_display(state);
      |                               ^~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:203: drivers/gpu/drm/i915/display/intel_dp_mst.o] Error 1
make[5]: *** [scripts/Makefile.build:461: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:461: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:461: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:461: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2009: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


