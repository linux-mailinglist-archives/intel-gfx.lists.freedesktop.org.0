Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231381DA59F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 01:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02F86E3B8;
	Tue, 19 May 2020 23:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2510A6E3B8;
 Tue, 19 May 2020 23:32:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FDB9A47E1;
 Tue, 19 May 2020 23:32:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 19 May 2020 23:32:42 -0000
Message-ID: <158993116210.31237.5801447972910004330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Consider_DBuf_bandwidth_when_calculating_CDCLK_=28rev15=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev15)
URL   : https://patchwork.freedesktop.org/series/74739/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
42922a1cf4d9 drm/i915: Decouple cdclk calculation from modeset checks
a2e2a5f43cd7 drm/i915: Extract cdclk requirements checking to separate function
cc857a15d370 drm/i915: Check plane configuration properly
-:32: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
4765b732c387 drm/i915: Plane configuration affects CDCLK in Gen11+
-:23: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
2405cfa20a90 drm/i915: Introduce for_each_dbuf_slice_in_mask macro
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__slice' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/display/intel_display.h:190:
+#define for_each_dbuf_slice_in_mask(__slice, __mask) \
+	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
+		for_each_if((BIT(__slice)) & (__mask))

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
b74b713c823f drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
-:164: WARNING:LINE_SPACING: Missing a blank line after declarations
#164: FILE: drivers/gpu/drm/i915/display/intel_bw.c:492:
+		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
+		if (ret)

-:203: WARNING:LINE_SPACING: Missing a blank line after declarations
#203: FILE: drivers/gpu/drm/i915/display/intel_bw.c:531:
+		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
+		if (ret)

total: 0 errors, 2 warnings, 0 checks, 395 lines checked
2be3fecc6320 drm/i915: Remove unneeded hack now for CDCLK

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
