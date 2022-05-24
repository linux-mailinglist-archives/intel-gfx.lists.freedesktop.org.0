Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A45532DF2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 17:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E78910EDB3;
	Tue, 24 May 2022 15:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCEB410EDB3;
 Tue, 24 May 2022 15:58:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1DF9AADD5;
 Tue, 24 May 2022 15:58:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 24 May 2022 15:58:09 -0000
Message-ID: <165340788983.14321.3981620618178979874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653381821.git.jani.nikula@intel.com>
In-Reply-To: <cover.1653381821.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_expand_on_struct_drm=5Fedid_usage_=28rev2=29?=
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

Series: drm/edid: expand on struct drm_edid usage (rev2)
URL   : https://patchwork.freedesktop.org/series/104309/
State : warning

== Summary ==

Error: dim checkpatch failed
7612cb14248e drm/edid: add block count and data helper functions for drm_edid
9eeec287d5f2 drm/edid: keep track of alloc size in drm_do_get_edid()
c7dcec98a0cc drm/edid: add new interfaces around struct drm_edid
-:320: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#320: FILE: include/drm/drm_edid.h:591:
+					    int (*read_block)(void *context, u8 *buf, unsigned int block, size_t len),

total: 0 errors, 1 warnings, 0 checks, 291 lines checked
91a306b9cb2d drm/edid: add drm_edid_connector_update()
087ad6784c6b drm/probe-helper: abstract .get_modes() connector helper call
fbea584d2418 drm/probe-helper: make .get_modes() optional, add default action
07140404e28d drm/probe-helper: add .get_edid() callback
44318f22ac06 drm/edid: add drm_edid_raw() to access the raw EDID data
6f596216ec50 drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
-:256: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "drm_edid"
#256: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2429:
+	intel_hdmi_dp_dual_mode_detect(connector, drm_edid != NULL);

total: 0 errors, 0 warnings, 1 checks, 300 lines checked
566ed1f89cfc drm/edid: do invalid block filtering in-place
fafa54709930 drm/edid: add HF-EEODB support to EDID read and allocation
0681dc768b5c drm/edid: take HF-EEODB extension count into account
83df341dc8d8 drm/todo: add entry for converting the subsystem to struct drm_edid


