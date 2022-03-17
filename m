Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF014DCF70
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 21:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDB510E7D0;
	Thu, 17 Mar 2022 20:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7ED610E7AE;
 Thu, 17 Mar 2022 20:36:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5320A882E;
 Thu, 17 Mar 2022 20:36:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 17 Mar 2022 20:36:41 -0000
Message-ID: <164754940164.32161.13399611421085220507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1647542120.git.jani.nikula@intel.com>
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmc=3A_cleanups?=
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

Series: drm/i915/dmc: cleanups
URL   : https://patchwork.freedesktop.org/series/101499/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
148ae63a423d drm/i915/dmc: simplify intel_dmc_load_program() conditions
f5b3417a7183 drm/i915/dmc: move assert_dmc_loaded() to intel_dmc.c
-:44: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:311:
+		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
f22b25aa0be3 drm/i915/dmc: move dmc debugfs to intel_dmc.c
2a37260cdcf5 drm/i915/dmc: fix i915_reg_t usage
16d7cf76f90d drm/i915/dmc: don't register DMC debugfs file if there's no DMC
1b7ec1b7a556 drm/i915/dmc: abstract GPU error state dump
2c93821f352b drm/i915/dmc: hide DMC version macros
15377b5193fb drm/i915/dmc: split out dmc registers to a separate file
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 72 lines checked


