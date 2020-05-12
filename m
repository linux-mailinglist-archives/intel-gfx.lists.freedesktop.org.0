Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D414A1CF20B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 12:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F1086E0A8;
	Tue, 12 May 2020 10:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96D0A6E09A;
 Tue, 12 May 2020 10:00:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 907F2A47E0;
 Tue, 12 May 2020 10:00:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 12 May 2020 10:00:59 -0000
Message-ID: <158927765955.18143.8751595467267874324@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511150545.15149-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200511150545.15149-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Consider_DBuf_bandwidth_when_calculating_CDCLK_=28rev11=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev11)
URL   : https://patchwork.freedesktop.org/series/74739/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3cd77d67aae drm/i915: Decouple cdclk calculation from modeset checks
65be6d7302db drm/i915: Extract cdclk requirements checking to separate function
997e17ed6b40 drm/i915: Check plane configuration properly
-:31: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
15c1c44d9cdc drm/i915: Plane configuration affects CDCLK in Gen11+
-:22: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
719f67e64ea2 drm/i915: Introduce for_each_dbuf_slice_in_mask macro
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__slice' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/display/intel_display.h:190:
+#define for_each_dbuf_slice_in_mask(__slice, __mask) \
+	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
+		for_each_if((BIT(__slice)) & (__mask))

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
b18cdabf9809 drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
-:146: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#146: FILE: drivers/gpu/drm/i915/display/intel_bw.c:480:
+	if (new_bw_state && old_bw_state) {
+

-:151: WARNING:LINE_SPACING: Missing a blank line after declarations
#151: FILE: drivers/gpu/drm/i915/display/intel_bw.c:485:
+			int ret = intel_atomic_lock_global_state(&new_bw_state->base);
+			if (ret)

total: 0 errors, 1 warnings, 1 checks, 290 lines checked
39b38984e111 drm/i915: Remove unneeded hack now for CDCLK

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
