Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 587726C6CE1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 17:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAA1510E465;
	Thu, 23 Mar 2023 16:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5F8810E465;
 Thu, 23 Mar 2023 16:03:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1281A882E;
 Thu, 23 Mar 2023 16:03:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 23 Mar 2023 16:03:42 -0000
Message-ID: <167958742291.6629.15899612622239130378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230323142035.1432621-1-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Align_the_ADLP_TypeC_sequences_with_bspec?=
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

Series: drm/i915/tc: Align the ADLP TypeC sequences with bspec
URL   : https://patchwork.freedesktop.org/series/115556/
State : warning

== Summary ==

Error: dim checkpatch failed
89d7c50eaa7c drm/i915/tc: Group the TC PHY setup/query functions per platform
dd719e0596ed drm/i915/tc: Use the adlp prefix for ADLP TC PHY functions
446a69352a1c drm/i915/tc: Rename tc_phy_status_complete() to tc_phy_is_ready()
abdcbd225098 drm/i915/tc: Use the tc_phy prefix for all TC PHY functions
31846d59abd8 drm/i915/tc: Move TC port fields to a new intel_tc_port struct
-:1173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1173: FILE: drivers/gpu/drm/i915/display/intel_tc.c:1034:
+	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_TBT_ALT &&
+				!tc_phy_is_owned(tc));

total: 0 errors, 0 warnings, 1 checks, 1311 lines checked
da232fbc25d0 drm/i915/tc: Check for TC PHY explicitly in intel_tc_port_fia_max_lane_count()
1f9ca46d5950 drm/i915/tc: Move the intel_tc_port struct declaration to intel_tc.c
8b39a61baf81 drm/i915/tc: Add TC PHY hook to get the PHY HPD live status
ed0e0d82e64f drm/i915/tc: Add TC PHY hooks to get the PHY ready/owned state
11511b954a15 drm/i915/tc: Add TC PHY hook to read out the PHY HW state
c0ba04389ce4 drm/i915/tc: Add generic TC PHY connect/disconnect handlers
2377a3927472 drm/i915/tc: Factor out tc_phy_verify_legacy_or_dp_alt_mode()
4c4c30d22f74 drm/i915/tc: Add TC PHY hooks to connect/disconnect the PHY
ba145bcff765 drm/i915/tc: Fix up the legacy VBT flag only in disconnected mode
407019870d40 drm/i915/tc: Check TC mode instead of the VBT legacy flag
88c9f7ff2edf drm/i915/tc: Block/unblock TC-cold in the PHY connect/disconnect hooks
8b04b6152ddc drm/i915/tc: Remove redundant wakeref=0 check from unblock_tc_cold()
5f2bf14f4e52 drm/i915/tc: Drop tc_cold_block()/unblock()'s power domain parameter
529129f9af40 drm/i915/tc: Add TC PHY hook to get the TC-cold blocking power domain
1cc45c80aa33 drm/i915/tc: Add asserts in TC PHY hooks that the required power is on
ef16d2ef4413 drm/i915/tc: Add TC PHY hook to init the PHY
dd0e3b185b33 drm/i915/adlp/tc: Use the DE HPD ISR register for hotplug detection
5d7d10186a08 drm/i915/tc: Get power ref for reading the HPD live status register
a3428918214e drm/i915/tc: Don't connect the PHY in intel_tc_port_connected()
9a8006ef792e drm/i915/adlp/tc: Align the connect/disconnect PHY sequence with bspec
5de545fbbf68 drm/i915: Move shared DPLL disabling into CRTC disable hook
68b7b09ec405 drm/i915: Disable DPLLs before disconnecting the TC PHY
d23494acc948 drm/i915: Remove TC PHY disconnect workaround
8ee7d807a411 drm/i915: Remove the encoder update_prepare()/complete() hooks


