Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFA756304C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 11:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7398C113826;
	Fri,  1 Jul 2022 09:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7586511381F;
 Fri,  1 Jul 2022 09:38:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DE4AAA0ED;
 Fri,  1 Jul 2022 09:38:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 01 Jul 2022 09:38:16 -0000
Message-ID: <165666829642.30282.4916205690510253452@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1656665533.git.jani.nikula@intel.com>
In-Reply-To: <cover.1656665533.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_switch_DP=2C_HDMI_and_LVDS_to_drm=5Fedid?=
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

Series: drm/i915: switch DP, HDMI and LVDS to drm_edid
URL   : https://patchwork.freedesktop.org/series/105857/
State : warning

== Summary ==

Error: dim checkpatch failed
4db4abe80683 drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
-:281: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "drm_edid"
#281: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2431:
+	intel_hdmi_dp_dual_mode_detect(connector, drm_edid != NULL);

total: 0 errors, 0 warnings, 1 checks, 316 lines checked
8ca9c1cc58de drm/i915/bios: convert intel_bios_init_panel() to drm_edid


