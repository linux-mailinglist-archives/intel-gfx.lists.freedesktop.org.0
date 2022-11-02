Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF87616DD9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 20:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC69D10E5B9;
	Wed,  2 Nov 2022 19:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E54410E5B9;
 Wed,  2 Nov 2022 19:32:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3654EA8830;
 Wed,  2 Nov 2022 19:32:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 02 Nov 2022 19:32:58 -0000
Message-ID: <166741757819.23607.18257519300823183914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221102171530.3261282-1-imre.deak@intel.com>
In-Reply-To: <20221102171530.3261282-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl+=3A_Enable_DC_power_states_on_all_eDP_ports?=
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

Series: drm/i915/tgl+: Enable DC power states on all eDP ports
URL   : https://patchwork.freedesktop.org/series/110433/
State : warning

== Summary ==

Error: dim checkpatch failed
41570281b352 drm/i915: Allocate power domain set wakerefs dynamically
087d66bbc539 drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical place
1db7e301decc drm/i915/tgl+: Enable display DC power states on all eDP ports
-:321: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#321: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:694:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_IO_B,

-:324: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#324: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:697:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_IO_C,

-:327: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#327: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:700:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,
+	POWER_DOMAIN_AUX_IO_D,

-:330: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#330: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:703:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,
+	POWER_DOMAIN_AUX_IO_E,

-:333: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#333: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:706:
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,
+	POWER_DOMAIN_AUX_IO_F,

total: 0 errors, 0 warnings, 5 checks, 287 lines checked
b4adc58a2c87 drm/i915: Add missing AUX_IO_A power domain->well mappings
0138b898c33c drm/i915: Add missing DC_OFF power domain->well mappings
054682760ffe drm/i915: Factor out function to get/put AUX_IO power for main link
687f4ddf8cbb drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main links


