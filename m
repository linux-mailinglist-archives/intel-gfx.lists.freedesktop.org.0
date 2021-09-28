Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0092341B9AE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 23:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B506E9AF;
	Tue, 28 Sep 2021 21:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA39B6E10D;
 Tue, 28 Sep 2021 21:54:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A19B2A0003;
 Tue, 28 Sep 2021 21:54:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Sep 2021 21:54:29 -0000
Message-ID: <163286606962.3948.17359761178340773881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DP_per-lane_drive_settings_prep_work_=28rev2=29?=
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

Series: drm/i915: DP per-lane drive settings prep work (rev2)
URL   : https://patchwork.freedesktop.org/series/95122/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
be9a7b3627c4 drm/i915: s/ddi_translations/trans/
-:1808: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1808: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:73:
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps.snps_pre_cursor);

-:1809: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1809: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:74:
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snps.snps_post_cursor);

total: 0 errors, 2 warnings, 0 checks, 1677 lines checked
dd4dc5015d60 drm/i915: Generalize .set_signal_levels()
f023061edeec drm/i915: Nuke usless .set_signal_levels() wrappers
5d68ca04076a drm/i915: De-wrapper bxt_ddi_phy_set_signal_levels()
e1c952fcbe3d drm/i915: Hoover the level>=n_entries WARN into intel_ddi_level()
4e0e5a259061 drm/i915: Nuke intel_ddi_hdmi_num_entries()
21dff7c1cf74 drm/i915: Pass the lane to intel_ddi_level()
c2a69b618c76 drm/i915: Prepare link training for per-lane drive settings
9a8086f736c6 drm/i915: Allow per-lane drive settings with LTTPRs


