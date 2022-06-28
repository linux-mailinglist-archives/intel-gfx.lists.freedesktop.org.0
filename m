Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D540A55EFE2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 22:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585AC10E99B;
	Tue, 28 Jun 2022 20:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EEE310E98A;
 Tue, 28 Jun 2022 20:49:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 199F1AA0ED;
 Tue, 28 Jun 2022 20:49:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 28 Jun 2022 20:49:33 -0000
Message-ID: <165644937307.14501.11074208841089345877@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655895388.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655895388.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_expand_on_struct_drm=5Fedid_usage_=28rev7=29?=
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

Series: drm/edid: expand on struct drm_edid usage (rev7)
URL   : https://patchwork.freedesktop.org/series/104309/
State : warning

== Summary ==

Error: dim checkpatch failed
a51b7acd926d drm/edid: move drm_connector_update_edid_property() to drm_edid.c
42329ce39f03 drm/edid: convert drm_connector_update_edid_property() to struct drm_edid
65b3bc9a5dde drm/edid: clean up connector update error handling and debug logging
e47558e4ec70 drm/edid: abstract debugfs override EDID set/reset
6157f79b9e20 drm/edid: add drm_edid_connector_update()
1fe859695cb5 drm/probe-helper: add drm_connector_helper_get_modes()
740b3db8ef8f drm/edid: add drm_edid_raw() to access the raw EDID data
4bbed2192f9d drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
-:270: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "drm_edid"
#270: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2429:
+	intel_hdmi_dp_dual_mode_detect(connector, drm_edid != NULL);

total: 0 errors, 0 warnings, 1 checks, 311 lines checked
9611271c929d drm/i915/bios: convert intel_bios_init_panel() to drm_edid
b4a3363b9a8e drm/edid: do invalid block filtering in-place
854313aa1ac6 drm/edid: add HF-EEODB support to EDID read and allocation
e528374d09d0 drm/edid: take HF-EEODB extension count into account
b7f101903aaf drm/todo: add entry for converting the subsystem to struct drm_edid


