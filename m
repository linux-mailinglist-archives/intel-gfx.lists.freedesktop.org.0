Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9996D12F5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 01:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D16610E00E;
	Thu, 30 Mar 2023 23:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5680010E00E;
 Thu, 30 Mar 2023 23:23:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DE2AAADDC;
 Thu, 30 Mar 2023 23:23:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 30 Mar 2023 23:23:13 -0000
Message-ID: <168021859328.18826.15370644351015031625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230323142035.1432621-1-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Align_the_ADLP_TypeC_sequences_with_bspec_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/tc: Align the ADLP TypeC sequences with bspec (rev2)
URL   : https://patchwork.freedesktop.org/series/115556/
State : warning

== Summary ==

Error: dim checkpatch failed
f150ae6abb0d drm/i915/tc: Group the TC PHY setup/query functions per platform
d3b2402bbd59 drm/i915/tc: Use the adlp prefix for ADLP TC PHY functions
17104bf55736 drm/i915/tc: Rename tc_phy_status_complete() to tc_phy_is_ready()
5f0f541f5002 drm/i915/tc: Use the tc_phy prefix for all TC PHY functions
85c084cfbfa5 drm/i915/tc: Move TC port fields to a new intel_tc_port struct
-:1174: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1174: FILE: drivers/gpu/drm/i915/display/intel_tc.c:1034:
+	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_TBT_ALT &&
+				!tc_phy_is_owned(tc));

total: 0 errors, 0 warnings, 1 checks, 1311 lines checked
e56b4a897e02 drm/i915/tc: Check for TC PHY explicitly in intel_tc_port_fia_max_lane_count()
63129624fc1b drm/i915/tc: Move the intel_tc_port struct declaration to intel_tc.c
5b60eefc8902 drm/i915/tc: Add TC PHY hook to get the PHY HPD live status
86b3aba081b1 drm/i915/tc: Add TC PHY hooks to get the PHY ready/owned state
fd17e01184f0 drm/i915/tc: Add TC PHY hook to read out the PHY HW state
8b4ff74805d0 drm/i915/tc: Add generic TC PHY connect/disconnect handlers
1b72bcc2498a drm/i915/tc: Factor out tc_phy_verify_legacy_or_dp_alt_mode()
f57b1bec07e1 drm/i915/tc: Add TC PHY hooks to connect/disconnect the PHY
7e5b5a530c24 drm/i915/tc: Fix up the legacy VBT flag only in disconnected mode
e0b7e27435fb drm/i915/tc: Check TC mode instead of the VBT legacy flag
a1e81259de9c drm/i915/tc: Block/unblock TC-cold in the PHY connect/disconnect hooks
ac96f1a99063 drm/i915/tc: Remove redundant wakeref=0 check from unblock_tc_cold()
609ccb803ea3 drm/i915/tc: Drop tc_cold_block()/unblock()'s power domain parameter
31d3633f6cba drm/i915/tc: Add TC PHY hook to get the TC-cold blocking power domain
b88525569d4e drm/i915/tc: Add asserts in TC PHY hooks that the required power is on
e53fc09f77d1 drm/i915/tc: Add TC PHY hook to init the PHY
66e809ff9d80 drm/i915/adlp/tc: Use the DE HPD ISR register for hotplug detection
2024d3b14de2 drm/i915/tc: Get power ref for reading the HPD live status register
46ab11dccd91 drm/i915/tc: Don't connect the PHY in intel_tc_port_connected()
93a8631602b6 drm/i915/adlp/tc: Align the connect/disconnect PHY sequence with bspec
1af77430eb60 drm/i915: Move shared DPLL disabling into CRTC disable hook
b3510d9a1faf drm/i915: Disable DPLLs before disconnecting the TC PHY
8a1118778c79 drm/i915: Remove TC PHY disconnect workaround
54f026afabd0 drm/i915: Remove the encoder update_prepare()/complete() hooks


