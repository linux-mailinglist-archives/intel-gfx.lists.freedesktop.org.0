Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AB91ED84C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 00:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A838931F;
	Wed,  3 Jun 2020 22:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 427518931F;
 Wed,  3 Jun 2020 22:02:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B8DEA47E8;
 Wed,  3 Jun 2020 22:02:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 03 Jun 2020 22:02:17 -0000
Message-ID: <159122173721.12268.10472269082071576936@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
In-Reply-To: <20200603211529.3005059-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Remaining_RKL_patches?=
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

Series: Remaining RKL patches
URL   : https://patchwork.freedesktop.org/series/77971/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9433b10a50aa drm/i915/rkl: Set transcoder mask properly
-:22: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#22: FILE: drivers/gpu/drm/i915/i915_pci.c:884:
+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
d848bdb66774 drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
-:36: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#36: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:5266:
+		min_buddy = max_buddy = 0;

total: 0 errors, 0 warnings, 1 checks, 84 lines checked
ef03bae65599 drm/i915/rkl: RKL has no MBUS_ABOX_CTL{1, 2}
6c98fe20e57a drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
9f0cbd84fd69 drm/i915/rkl: Setup ports/phys
3ae91df36611 drm/i915/rkl: provide port/phy mapping for vbt
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:275:DDI A]

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
8795a1027509 drm/i915/rkl: Update TGP's pin mapping when paired with RKL
e05a981ee980 drm/i915/rkl: Add DDC pin mapping
729aaa26c152 drm/i915/rkl: Don't try to access transcoder D
8a112abfdc1c drm/i915/rkl: Don't try to read out DSI transcoders
307b9ecdbdbb drm/i915/rkl: Handle comp master/slave relationships for PHYs
f57c6c3d15ce drm/i915/rkl: Add DPLL4 support
20a10ff5d3a6 drm/i915/rkl: Handle HTI
-:156: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#156: FILE: drivers/gpu/drm/i915/i915_reg.h:2911:
+#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2*(phy) + 2)
                                  	         ^

-:157: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#157: FILE: drivers/gpu/drm/i915/i915_reg.h:2912:
+#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2*(phy) + 1)
                                    	         ^

total: 0 errors, 0 warnings, 2 checks, 115 lines checked
bfe78337ad8d drm/i915/rkl: Disable PSR2
c298c9e3576e drm/i915/rkl: Add initial workarounds

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
