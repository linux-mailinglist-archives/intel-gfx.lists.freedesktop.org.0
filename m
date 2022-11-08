Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B1D621A00
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 18:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F1CC10E4CC;
	Tue,  8 Nov 2022 17:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 111E510E4C7;
 Tue,  8 Nov 2022 17:05:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A096A0003;
 Tue,  8 Nov 2022 17:05:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 08 Nov 2022 17:05:23 -0000
Message-ID: <166792712300.2238.13118107446615782386@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107170917.3566758-1-imre.deak@intel.com>
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl+=3A_Enable_DC_power_states_on_all_eDP_ports_?=
 =?utf-8?b?KHJldjgp?=
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

Series: drm/i915/tgl+: Enable DC power states on all eDP ports (rev8)
URL   : https://patchwork.freedesktop.org/series/110433/
State : warning

== Summary ==

Error: dim checkpatch failed
f6043b9389ee drm/i915: Allocate power domain set wakerefs dynamically
-:112: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#112: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:876:
+
+}

total: 0 errors, 0 warnings, 1 checks, 191 lines checked
86c2dfc43e8b drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical place
31dbe0fcb5c6 drm/i915: Use the AUX_IO power domain only for eDP/PSR port
6d2e3fc68ba2 drm/i915/tgl+: Enable display DC power states on all eDP ports
-:330: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#330: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:694:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_IO_B,

-:333: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#333: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:697:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_IO_C,

-:336: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#336: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:700:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,
+	POWER_DOMAIN_AUX_IO_D,

-:339: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#339: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:703:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,
+	POWER_DOMAIN_AUX_IO_E,

-:342: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#342: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:706:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,
+	POWER_DOMAIN_AUX_IO_F,

total: 0 errors, 0 warnings, 5 checks, 285 lines checked
da361d14d8ef drm/i915: Add missing AUX_IO_A power domain->well mappings
8384e7066e8d drm/i915: Add missing DC_OFF power domain->well mappings
6237dc05ca11 drm/i915: Factor out function to get/put AUX_IO power for main link
4770b792f5fb drm/i915: Don't enable the AUX_IO power for combo-PHY external DP port main links
94f242b405f3 drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main links


