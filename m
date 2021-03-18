Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFAE340C61
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBA16E942;
	Thu, 18 Mar 2021 18:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79F826E942;
 Thu, 18 Mar 2021 18:01:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72C0DA7DFC;
 Thu, 18 Mar 2021 18:01:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 18 Mar 2021 18:01:50 -0000
Message-ID: <161609051046.12740.13346196517902594823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Shuffle_DP_code_around_=28rev2=29?=
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

Series: drm/i915: Shuffle DP code around (rev2)
URL   : https://patchwork.freedesktop.org/series/85878/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d6b23f62e26b drm/i915: Remove dead TPS3->TPS2 fallback code
0990a9e29ec5 drm/i915: Remove dead signal level debugs
8e555cecf0d9 drm/i915: Relocate intel_dp_program_link_training_pattern()
9b0d464b0d6a drm/i915: Split intel_ddi_encoder_reset() from intel_dp_encoder_reset()
0e432233fba9 drm/i915: Introduce g4x_dp.c
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:231: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#231: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:194:
+}
+#define assert_dp_port_disabled(d) assert_dp_port((d), false)

-:241: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#241: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:204:
+}
+#define assert_edp_pll_enabled(d) assert_edp_pll((d), true)

-:266: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#266: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:229:
+	udelay(500);

-:281: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#281: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:244:
+	udelay(200);

-:300: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#300: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:263:
+	udelay(200);

-:2896: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#2896: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2318:
+								   DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);

-:2928: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2928: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2340:
+		drm_dbg_kms(&i915->drm,
+			   "Failed to set protocol converter RGB->YCbCr conversion mode to %s\n",

-:2932: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2932: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2344:
 
+

total: 0 errors, 2 warnings, 7 checks, 3238 lines checked
b38592cfbe51 drm/i915: Introduce g4x_hdmi.c
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:299: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#299: FILE: drivers/gpu/drm/i915/display/g4x_hdmi.c:262:
+			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) | TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);

-:316: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#316: FILE: drivers/gpu/drm/i915/display/g4x_hdmi.c:279:
+			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);

total: 0 errors, 3 warnings, 0 checks, 1341 lines checked
d486c1851a6e drm/i915: Give g4x_{dp, hdmi}.c g4x_ namespace


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
