Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4654E317F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 21:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD00110E41B;
	Mon, 21 Mar 2022 20:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B189210E41B;
 Mon, 21 Mar 2022 20:12:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 994BCA008A;
 Mon, 21 Mar 2022 20:12:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 21 Mar 2022 20:12:39 -0000
Message-ID: <164789355962.18159.16486284177496485430@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1647870374.git.jani.nikula@intel.com>
In-Reply-To: <cover.1647870374.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmc=3A_cleanups_=28rev2=29?=
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

Series: drm/i915/dmc: cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/101499/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
91b1db13654c drm/i915/dmc: simplify intel_dmc_load_program() conditions
2e6c0cff37da drm/i915/dmc: move assert_dmc_loaded() to intel_dmc.c
-:45: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:311:
+		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
4aae032cd78d drm/i915/dmc: move dmc debugfs to intel_dmc.c
a9f4361bf671 drm/i915/dmc: fix i915_reg_t usage
c31f412f5a46 drm/i915/dmc: abstract GPU error state dump
7c4f86473d61 drm/i915/dmc: hide DMC version macros
d69f11113cfa drm/i915/dmc: split out dmc registers to a separate file
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 71 lines checked


