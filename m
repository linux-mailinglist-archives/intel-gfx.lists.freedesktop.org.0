Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0A0A159E1
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 00:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE6610E095;
	Fri, 17 Jan 2025 23:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E8910E095;
 Fri, 17 Jan 2025 23:23:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5B1?=
 =?utf-8?q?/3=5D_drm/i915/display=3A_Move_shutdown_sequences_under_display_d?=
 =?utf-8?q?river?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2025 23:23:35 -0000
Message-ID: <173715621588.915161.9892713158355020240@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250117220943.506991-1-rodrigo.vivi@intel.com>
In-Reply-To: <20250117220943.506991-1-rodrigo.vivi@intel.com>
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

Series: series starting with [1/3] drm/i915/display: Move shutdown sequences under display driver
URL   : https://patchwork.freedesktop.org/series/143698/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_display_driver.o
drivers/gpu/drm/i915/display/intel_display_driver.c: In function ‘intel_display_driver_shutdown_noirq’:
drivers/gpu/drm/i915/display/intel_display_driver.c:791:31: error: passing argument 1 of ‘intel_hpd_cancel_work’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  791 |         intel_hpd_cancel_work(display);
      |                               ^~~~~~~
      |                               |
      |                               struct intel_display *
In file included from drivers/gpu/drm/i915/display/intel_display_driver.c:49:
drivers/gpu/drm/i915/display/intel_hotplug.h:26:53: note: expected ‘struct drm_i915_private *’ but argument is of type ‘struct intel_display *’
   26 | void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
      |                            ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:194: drivers/gpu/drm/i915/display/intel_display_driver.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced


