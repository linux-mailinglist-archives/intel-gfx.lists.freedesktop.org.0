Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC24B1A38A6
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 19:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7226E23D;
	Thu,  9 Apr 2020 17:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB0076E23D;
 Thu,  9 Apr 2020 17:10:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3AD2A008A;
 Thu,  9 Apr 2020 17:10:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 09 Apr 2020 17:10:03 -0000
Message-ID: <158645220365.11551.12028814049912848080@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_SAGV_support_for_Gen12+_=28rev14=29?=
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

Series: SAGV support for Gen12+ (rev14)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
db3bb77d347e drm/i915: Start passing latency as parameter
39684149a1cb drm/i915: Eliminate magic numbers "0" and "1" from color plane
28f3e791c62a drm/i915: Introduce skl_plane_wm_level accessor.
00989296f52d drm/i915: Add intel_atomic_get_bw_*_state helpers
926c0a7aaf2a drm/i915: Prepare to extract gen specific functions from intel_can_enable_sagv
-:84: CHECK:LINE_SPACING: Please don't use multiple blank lines
#84: FILE: drivers/gpu/drm/i915/intel_pm.c:3809:
 
+

total: 0 errors, 0 warnings, 1 checks, 93 lines checked
f573a32afca5 drm/i915: Add pre/post plane updates for SAGV
7b65af3b3c25 drm/i915: Use bw state for per crtc SAGV evaluation
-:111: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#111: FILE: drivers/gpu/drm/i915/intel_pm.c:3861:
+					 new_crtc_state, i) {
+

total: 0 errors, 0 warnings, 1 checks, 137 lines checked
7c3a86821437 drm/i915: Separate icl and skl SAGV checking
fd7ee6e3d868 drm/i915: Add TGL+ SAGV support
-:217: CHECK:LINE_SPACING: Please don't use multiple blank lines
#217: FILE: drivers/gpu/drm/i915/intel_pm.c:5356:
+
+

-:247: WARNING:LONG_LINE: line over 100 characters
#247: FILE: drivers/gpu/drm/i915/intel_pm.c:5848:
+				    plane->base.base.id, plane->base.name, old_wm->sagv_wm0.plane_res_l,

-:273: WARNING:LONG_LINE: line over 100 characters
#273: FILE: drivers/gpu/drm/i915/intel_pm.c:5889:
+				    plane->base.base.id, plane->base.name, old_wm->sagv_wm0.min_ddb_alloc,

total: 0 errors, 2 warnings, 1 checks, 247 lines checked
49c46f4edf34 drm/i915: Added required new PCode commands
8324f5130045 drm/i915: Rename bw_state to new_bw_state
9a18dd734b17 drm/i915: Restrict qgv points which don't have enough bandwidth.
e967954f905e drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
