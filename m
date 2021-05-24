Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AF438F418
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 22:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E32306E5CC;
	Mon, 24 May 2021 20:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 496196E5CC;
 Mon, 24 May 2021 20:10:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42B6CA7DFC;
 Mon, 24 May 2021 20:10:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Mon, 24 May 2021 20:10:25 -0000
Message-ID: <162188702525.10902.12121977747831103077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210524193032.3015-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210524193032.3015-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Pipe_DMC_Support_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Pipe DMC Support (rev2)
URL   : https://patchwork.freedesktop.org/series/90445/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e45725e49bdd drm/i915/dmc: s/DRM_ERROR/drm_err
-:80: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#80: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:487:
 	if (!dmc->dmc_payload) {
+		drm_err(&i915->drm, "Memory allocation failed for dmc payload\n");

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
7cd57a2ac1a8 drm/i915/dmc: Add intel_dmc_has_payload() helper
b8888f455925 drm/i915/dmc: Move struct intel_dmc to intel_dmc.h
75f070edde6f drm/i915/dmc: Introduce DMC_FW_MAIN
11185b96af31 drm/i915/xelpd: Pipe A DMC plugging
-:39: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:587:
+		   intel_de_read(dev_priv, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));

-:54: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:965:
+				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

-:147: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#147: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:387:
+				drm_notice(&i915->drm, "Invalid firmware id: %d\n", fw_info[i].dmc_id);

total: 0 errors, 3 warnings, 0 checks, 263 lines checked
f7ecd81b636d drm/i915/adl_p: Pipe B DMC Support
09bd925cfaf4 drm/i915/adl_p: Load DMC


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
