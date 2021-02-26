Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3814B3264DC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 16:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C676EDFA;
	Fri, 26 Feb 2021 15:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 421876EDF5;
 Fri, 26 Feb 2021 15:44:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 342D8A00C9;
 Fri, 26 Feb 2021 15:44:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 26 Feb 2021 15:44:19 -0000
Message-ID: <161435425919.4756.2574824479423466253@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_up_TGL+_SAGV_watermarks?=
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

Series: drm/i915: Fix up TGL+ SAGV watermarks
URL   : https://patchwork.freedesktop.org/series/87433/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ccc6bba5464d drm/i915: Fix TGL+ plane SAGV watermark programming
f0b33a40d933 drm/i915: Zero out SAGV wm when we don't have enough DDB for it
75118b227742 drm/i915: Print wm changes if sagv_wm0 changes
7d23b537945f drm/i915: Stuff SAGV watermark into a sub-structure
-:124: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/intel_pm.c:5910:
+				    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.plane_res_l,

-:133: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/intel_pm.c:5921:
+				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.plane_res_l);

total: 0 errors, 2 warnings, 0 checks, 137 lines checked
44e389eea600 drm/i915: Introduce SAGV transtion watermark
-:206: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/intel_pm.c:5933:
+				    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm.plane_res_l,

-:215: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#215: FILE: drivers/gpu/drm/i915/intel_pm.c:5943:
+				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.plane_res_l,

-:216: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#216: FILE: drivers/gpu/drm/i915/intel_pm.c:5944:
+				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm.plane_res_l);

total: 0 errors, 3 warnings, 0 checks, 255 lines checked
1d2e11c235a9 drm/i915: Check tgl+ SAGV watermarks properly
2d828095e91e drm/i915: Clean up verify_wm_state()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
