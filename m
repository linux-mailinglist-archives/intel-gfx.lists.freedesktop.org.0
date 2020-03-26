Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 736FE1949A8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 21:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 612566E362;
	Thu, 26 Mar 2020 20:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C2A66E362;
 Thu, 26 Mar 2020 20:59:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54DF1A47EB;
 Thu, 26 Mar 2020 20:59:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 26 Mar 2020 20:59:31 -0000
Message-ID: <158525637131.23001.17562336115346048378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_SAGV_support_for_Gen12+_=28rev3=29?=
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

Series: SAGV support for Gen12+ (rev3)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ad8810ff373a drm/i915: Start passing latency as parameter
930754956920 drm/i915: Eliminate magic numbers "0" and "1" from color plane
-:118: WARNING:LONG_LINE: line over 100 characters
#118: FILE: drivers/gpu/drm/i915/intel_pm.c:4541:
+			rate = skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_PLANE_UV);

total: 0 errors, 1 warnings, 0 checks, 163 lines checked
b76321aa6824 drm/i915: Introduce skl_plane_wm_level accessor.
9cd6396bdbd9 drm/i915: Add intel_atomic_get_bw_*_state helpers
345239c1e284 drm/i915: Extract gen specific functions from intel_can_enable_sagv
37f392cf14b8 drm/i915: Add proper SAGV support for TGL+
-:234: WARNING:BRACES: braces {} are not necessary for single statement blocks
#234: FILE: drivers/gpu/drm/i915/display/intel_display.c:15662:
+		if (bw_state && state->modeset && intel_can_enable_sagv(bw_state)) {
+			intel_enable_sagv(dev_priv);
+		}

-:341: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#341: FILE: drivers/gpu/drm/i915/intel_pm.c:3874:
+		if (INTEL_GEN(dev_priv) >= 12) {
[...]
+		} else if (INTEL_GEN(dev_priv) >= 11) {
[...]
+		} else {
[...]

total: 0 errors, 2 warnings, 0 checks, 480 lines checked
5ac95b3960a7 drm/i915: Added required new PCode commands
7ddef9fc5a42 drm/i915: Rename bw_state to new_bw_state
9ab9d139acd7 drm/i915: Restrict qgv points which don't have enough bandwidth.
17b1ab4ef65f drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
