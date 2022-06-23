Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90471557499
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 09:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DEB511A0A0;
	Thu, 23 Jun 2022 07:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0880B11A09E;
 Thu, 23 Jun 2022 07:56:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0AA9A0003;
 Thu, 23 Jun 2022 07:56:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 23 Jun 2022 07:56:37 -0000
Message-ID: <165597099795.17069.1451334836269312917@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655895388.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655895388.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_expand_on_struct_drm=5Fedid_usage_=28rev5=29?=
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

Series: drm/edid: expand on struct drm_edid usage (rev5)
URL   : https://patchwork.freedesktop.org/series/104309/
State : warning

== Summary ==

Error: dim checkpatch failed
6703c524e9e9 drm/edid: move drm_connector_update_edid_property() to drm_edid.c
59647b362ac2 drm/edid: convert drm_connector_update_edid_property() to struct drm_edid
c2418cdef500 drm/edid: clean up connector update error handling and debug logging
26937c8d7b0d drm/edid: abstract debugfs override EDID set/reset
6ed6af98d125 drm/edid: add drm_edid_connector_update()
60a7551ef43b drm/probe-helper: add drm_connector_helper_get_modes()
b5f1d98b8a61 drm/edid: add drm_edid_raw() to access the raw EDID data
0aecc0bd0212 drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
-:266: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "drm_edid"
#266: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2429:
+	intel_hdmi_dp_dual_mode_detect(connector, drm_edid != NULL);

total: 0 errors, 0 warnings, 1 checks, 311 lines checked
456053fd34e7 drm/i915/bios: convert intel_bios_init_panel() to drm_edid
89b76616d2c9 drm/edid: do invalid block filtering in-place
e74c4052041e drm/edid: add HF-EEODB support to EDID read and allocation
f20d29004375 drm/edid: take HF-EEODB extension count into account
b3488db5ed6e drm/todo: add entry for converting the subsystem to struct drm_edid


