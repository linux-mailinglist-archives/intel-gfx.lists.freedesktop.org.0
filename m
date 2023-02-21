Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 200BC69EB48
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AC410E38E;
	Tue, 21 Feb 2023 23:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 432AC10E38E;
 Tue, 21 Feb 2023 23:35:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D0C9AADD8;
 Tue, 21 Feb 2023 23:35:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 21 Feb 2023 23:35:11 -0000
Message-ID: <167702251111.16439.16582098514610763483@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Init_DDI_ports_in_VBT_order_=28rev3=29?=
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

Series: drm/i915: Init DDI ports in VBT order (rev3)
URL   : https://patchwork.freedesktop.org/series/114200/
State : warning

== Summary ==

Error: dim checkpatch failed
ea1f0f0395ad drm/i915: Populate dig_port->connected() before connector init
-:59: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#59: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4538:
+	 * case we have some really bad VBTs... */

total: 0 errors, 1 warnings, 0 checks, 46 lines checked
3c4bb315ed61 drm/i915: Fix SKL DDI A digital port .connected()
142a87734c7a drm/i915: Get rid of the gm45 HPD live state nonsense
4da44e70da6f drm/i915: Introduce <platoform>_hotplug_mask()
b8669596b0d9 drm/i915: Introduce intel_hpd_detection()
eae5e4e9c443 drm/i915: Check HPD live state during eDP probe
-:51: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 41e35ffb380b ("drm/i915: Favor last VBT child device with conflicting AUX ch/DDC pin")'
#51: 
  Also the systems (Asrock B250M-HDV at least) fixed by commit

total: 1 errors, 0 warnings, 0 checks, 46 lines checked
2868553400c6 drm/i915: Sanitize child devices later
d36cbaa926e2 drm/i915: Split map_aux_ch() into per-platform arrays
188ae41f6087 drm/i915: Flip VBT DDC pin maps around
215be5a7b15f drm/i915: Nuke intel_bios_is_port_dp_dual_mode()
0d802b09553d drm/i915: Remove bogus DDI-F from hsw/bdw output init
034b87a9e248 drm/i915: Introduce device info port_mask
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
383d43ca7c3e drm/i915: Assert that device info bitmasks have enough bits
5040de9e1f61 drm/i915: Assert that the port being initialized is valid
a9721d9047da drm/i915: Beef up SDVO/HDMI port checks
a8cd594259dd drm/i915: Init DDI outputs based on port_mask on skl+
72edba1c991e drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
-:174: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#174: FILE: drivers/gpu/drm/i915/display/intel_bios.c:3726:
+void intel_bios_for_each_encoder(struct drm_i915_private *i915,
+				 void (*func)(struct drm_i915_private *i915,
+					      struct intel_bios_encoder_data *devdata,
+					      enum port port))
+{

total: 1 errors, 0 warnings, 0 checks, 326 lines checked
097a33969bcf drm/i915: Convert HSW/BDW to use VBT driven DDI probe
93a34a29b518 drm/i915: Remove DDC pin sanitation
2007e5d25a55 drm/i915: Remove AUX CH sanitation
ca7a0beace6f drm/i915: Initialize dig_port->aux_ch to NONE to be sure
dc0e3ae75ded drm/i915: Only populate aux_ch is really needed


