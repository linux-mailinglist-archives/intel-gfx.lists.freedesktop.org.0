Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A560E62023D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 23:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555C510E530;
	Mon,  7 Nov 2022 22:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D31C910E18F;
 Mon,  7 Nov 2022 22:20:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA3D4AADDC;
 Mon,  7 Nov 2022 22:20:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 07 Nov 2022 22:20:36 -0000
Message-ID: <166785963679.17762.15067352694563718527@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107170917.3566758-1-imre.deak@intel.com>
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl+=3A_Enable_DC_power_states_on_all_eDP_ports_?=
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

Series: drm/i915/tgl+: Enable DC power states on all eDP ports (rev2)
URL   : https://patchwork.freedesktop.org/series/110433/
State : warning

== Summary ==

Error: dim checkpatch failed
8e83b3cd5464 drm/i915: Allocate power domain set wakerefs dynamically
-:88: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#88: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:876:
+
+}

total: 0 errors, 0 warnings, 1 checks, 145 lines checked
bbf87c1d17af drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical place
fea870709c3e drm/i915: Use the AUX_IO power domain only for eDP/PSR port
00456395d38a drm/i915/tgl+: Enable display DC power states on all eDP ports
-:328: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#328: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:694:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_IO_B,

-:331: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#331: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:697:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_IO_C,

-:334: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#334: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:700:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,
+	POWER_DOMAIN_AUX_IO_D,

-:337: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#337: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:703:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,
+	POWER_DOMAIN_AUX_IO_E,

-:340: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#340: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:706:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,
+	POWER_DOMAIN_AUX_IO_F,

total: 0 errors, 0 warnings, 5 checks, 285 lines checked
29aa00a91b71 drm/i915: Add missing AUX_IO_A power domain->well mappings
10eb378f3e2e drm/i915: Add missing DC_OFF power domain->well mappings
4c692af55f17 drm/i915: Factor out function to get/put AUX_IO power for main link
b819f56d0036 drm/i915: Don't enable the AUX_IO power for combo-PHY external DP port main links
c1312c9ff4ed drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main links


