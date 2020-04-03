Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5137919D073
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 08:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF286EAF9;
	Fri,  3 Apr 2020 06:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 430C66EAFA;
 Fri,  3 Apr 2020 06:50:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33A2CA011B;
 Fri,  3 Apr 2020 06:50:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 03 Apr 2020 06:50:13 -0000
Message-ID: <158589661317.13351.6473936512642015608@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_SAGV_support_for_Gen12+_=28rev10=29?=
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

Series: SAGV support for Gen12+ (rev10)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
39ffd9923dd5 drm/i915: Start passing latency as parameter
a35112134535 drm/i915: Eliminate magic numbers "0" and "1" from color plane
-:118: WARNING:LONG_LINE: line over 100 characters
#118: FILE: drivers/gpu/drm/i915/intel_pm.c:4541:
+			rate = skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_PLANE_UV);

total: 0 errors, 1 warnings, 0 checks, 163 lines checked
94034283d7ed drm/i915: Introduce skl_plane_wm_level accessor.
5fc52d157ac3 drm/i915: Add intel_atomic_get_bw_*_state helpers
cd2178aba4dc drm/i915: Extract gen specific functions from intel_can_enable_sagv
0e0085943e7f drm/i915: Add proper SAGV support for TGL+
-:209: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#209: FILE: drivers/gpu/drm/i915/display/intel_display.c:15452:
 	if (state->modeset) {
+

-:518: WARNING:LONG_LINE: line over 100 characters
#518: FILE: drivers/gpu/drm/i915/intel_pm.c:5836:
+				    plane->base.base.id, plane->base.name, old_wm->sagv_wm0.min_ddb_alloc,

total: 0 errors, 1 warnings, 1 checks, 365 lines checked
239a48d2167c drm/i915: Added required new PCode commands
ff752f1ff8c0 drm/i915: Rename bw_state to new_bw_state
9e821cd38de0 drm/i915: Restrict qgv points which don't have enough bandwidth.
1ba579e5a9a2 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
