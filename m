Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AB9A81892
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 00:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166F710E25C;
	Tue,  8 Apr 2025 22:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99DFA10E25C;
 Tue,  8 Apr 2025 22:30:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Add_support_for_fractional_link_bpps?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Apr 2025 22:30:50 -0000
Message-ID: <174415145062.50065.4841295531540643935@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250408214342.1953197-1-imre.deak@intel.com>
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
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

Series: drm/i915/dp_mst: Add support for fractional link bpps
URL   : https://patchwork.freedesktop.org/series/147435/
State : warning

== Summary ==

Error: dim checkpatch failed
f08afd36d304 drm/i915/dp: Use the correct connector while computing the link BPP limit on MST
6c7ff9d8593c drm/i915/dp: Limit max link bpp properly to a fractional value on SST
7a2a5566486a drm/i915/dp_mst: Add support for fractional link bpps on MST
-:148: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#148: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:485:
+		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",

-:158: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#158: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:493:
+									     limits->link.min_bpp_x16,

-:161: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#161: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:496:
+									     limits->link.max_bpp_x16,

total: 0 errors, 3 warnings, 0 checks, 132 lines checked
61e1c31de930 drm/i915/dp_mst: Enable fractional link bpps on MST
7ec4ccd5e32a drm/i915/display: Factor out intel_display_{min, max}_pipe_bpp()
-:29: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#29: FILE: drivers/gpu/drm/i915/display/intel_display.c:4329:
+		return 10*3;
 		         ^

-:31: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#31: FILE: drivers/gpu/drm/i915/display/intel_display.c:4331:
+		return 12*3;
 		         ^

-:33: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:4333:
+		return 8*3;
 		        ^

total: 0 errors, 0 warnings, 3 checks, 58 lines checked
7d4c5599d79d drm/i915/dp: Export intel_dp_dsc_min_src_compressed_bpp()
230616707a6d drm/i915/dp: Use an intel_connector pointer everywhere
829b702655ca drm/i915/hdmi: Use an intel_connector pointer everywhere
831f98c2f714 drm/i915: Add support for forcing the link bpp on a connector
9ae2115128f0 drm/i915: Add force link bpp debugfs entry to connectors
-:70: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#70: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:174:
+#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))

total: 0 errors, 0 warnings, 1 checks, 191 lines checked


