Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F516E1E79
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 10:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1287810EC92;
	Fri, 14 Apr 2023 08:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4AA810EC92;
 Fri, 14 Apr 2023 08:37:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CB11A73C7;
 Fri, 14 Apr 2023 08:37:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Date: Fri, 14 Apr 2023 08:37:55 -0000
Message-ID: <168146147560.26689.9994028832644427502@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
In-Reply-To: <20230414072345.1041605-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display=3A_PCH_display_HPD_IRQ_is_not_detected_with_def?=
 =?utf-8?q?ault_filter_value?=
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

Series: drm/i915/display: PCH display HPD IRQ is not detected with default filter value
URL   : https://patchwork.freedesktop.org/series/116468/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_dp.o
drivers/gpu/drm/i915/display/intel_dp.c: In function ‘intel_dp_detect’:
drivers/gpu/drm/i915/display/intel_dp.c:4856:9: error: ‘PANEL_POWER_ON’ undeclared (first use in this function); did you mean ‘MIPI_SEQ_POWER_ON’?
 4856 |    pp = PANEL_POWER_ON;
      |         ^~~~~~~~~~~~~~
      |         MIPI_SEQ_POWER_ON
drivers/gpu/drm/i915/display/intel_dp.c:4856:9: note: each undeclared identifier is reported only once for each function it appears in
In file included from drivers/gpu/drm/i915/display/g4x_dp.h:11,
                 from drivers/gpu/drm/i915/display/intel_dp.c:46:
drivers/gpu/drm/i915/display/intel_dp.c:4860:32: error: ‘PCH_PPS_BASE’ undeclared (first use in this function); did you mean ‘PCI_IO_BASE’?
 4860 |   intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);
      |                                ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:162:47: note: in definition of macro ‘_MMIO’
  162 | #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
      |                                               ^
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/display/intel_dp.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2025: .] Error 2
Build failed, no error log produced


