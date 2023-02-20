Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AFB69D50C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 21:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5BFB10E29B;
	Mon, 20 Feb 2023 20:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4055F10E29B;
 Mon, 20 Feb 2023 20:35:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36E92A7DFF;
 Mon, 20 Feb 2023 20:35:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 20 Feb 2023 20:35:55 -0000
Message-ID: <167692535518.31317.15655847648055847816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Init_DDI_ports_in_VBT_order?=
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

Series: drm/i915: Init DDI ports in VBT order
URL   : https://patchwork.freedesktop.org/series/114200/
State : warning

== Summary ==

Error: dim checkpatch failed
782a06c663af drm/i915: Populate dig_port->connected() before connector init
-:59: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#59: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4538:
+	 * case we have some really bad VBTs... */

total: 0 errors, 1 warnings, 0 checks, 46 lines checked
948c7ff341e9 drm/i915: Get rid of the gm45 HPD live state nonsense
baed564d362e drm/i915: Introduce <platoform>_hotplug_mask()
09b3eea3a52c drm/i915: Introduce intel_hpd_detection()
32fb2eef5ab4 drm/i915: Check HPD live state during eDP probe
-:51: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 41e35ffb380b ("drm/i915: Favor last VBT child device with conflicting AUX ch/DDC pin")'
#51: 
  Also the systems (Asrock B250M-HDV at least) fixed by commit

total: 1 errors, 0 warnings, 0 checks, 46 lines checked
746e0b0b5c42 drm/i915: Sanitize child devices later
639fab668b6c drm/i915: Split map_aux_ch() into per-platform arrays
8205eee1779d drm/i915: Flip VBT DDC pin maps around
7bb73ce45b0f drm/i915: Nuke intel_bios_is_port_dp_dual_mode()
71c495397bf2 drm/i915: Remove bogus DDI-F from hsw/bdw output init
4a2e1cf807aa drm/i915: Introduce device info port_mask
-:101: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/i915_pci.c:398:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \

-:109: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/i915_pci.c:430:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \

-:117: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/i915_pci.c:484:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \

-:133: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/i915_pci.c:575:
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E), \

-:182: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/i915_pci.c:919:
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC5),

total: 0 errors, 5 warnings, 0 checks, 213 lines checked
eb6b79faec3c drm/i915: Assert that device info bitmasks have enough bits
e044a16d9a0d drm/i915: Assert that the port being initialized is valid
cc5ccfb164ac drm/i915: Beef up SDVO/HDMI port checks
09b82754731e drm/i915: Init DDI outputs based on port_mask on skl+
cc3e68d8a608 drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
-:174: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#174: FILE: drivers/gpu/drm/i915/display/intel_bios.c:3726:
+void intel_bios_for_each_encoder(struct drm_i915_private *i915,
+				 void (*func)(struct drm_i915_private *i915,
+					      struct intel_bios_encoder_data *devdata,
+					      enum port port))
+{

total: 1 errors, 0 warnings, 0 checks, 326 lines checked
6f4e30e6bcc4 drm/i915: Convert HSW/BDW to use VBT driven DDI probe


