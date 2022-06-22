Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB8A556DE5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 23:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D051310FE93;
	Wed, 22 Jun 2022 21:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 257BB10FF8E;
 Wed, 22 Jun 2022 21:38:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1DAC4AA0ED;
 Wed, 22 Jun 2022 21:38:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 22 Jun 2022 21:38:06 -0000
Message-ID: <165593388608.15063.4979664273557362413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655895388.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655895388.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_expand_on_struct_drm=5Fedid_usage_=28rev4=29?=
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

Series: drm/edid: expand on struct drm_edid usage (rev4)
URL   : https://patchwork.freedesktop.org/series/104309/
State : warning

== Summary ==

Error: dim checkpatch failed
7563c369133d drm/edid: move drm_connector_update_edid_property() to drm_edid.c
2f2c0140ebb5 drm/edid: convert drm_connector_update_edid_property() to struct drm_edid
5cd4b0d72224 drm/edid: clean up connector update error handling and debug logging
9df34db5e761 drm/edid: abstract debugfs override EDID set/reset
073125be92f4 drm/edid: add drm_edid_connector_update()
8ab102eda175 drm/probe-helper: add drm_connector_helper_get_modes()
cee7d6612c1c drm/edid: add drm_edid_raw() to access the raw EDID data
90d0961df1d4 drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
-:264: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "drm_edid"
#264: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2429:
+	intel_hdmi_dp_dual_mode_detect(connector, drm_edid != NULL);

total: 0 errors, 0 warnings, 1 checks, 310 lines checked
9a373480eb45 drm/i915/bios: convert intel_bios_init_panel() to drm_edid
993e8f0a44f8 drm/edid: do invalid block filtering in-place
6e5b921c8fcd drm/edid: add HF-EEODB support to EDID read and allocation
c2e4fa6ecfb0 drm/edid: take HF-EEODB extension count into account
e191fe578219 drm/todo: add entry for converting the subsystem to struct drm_edid


