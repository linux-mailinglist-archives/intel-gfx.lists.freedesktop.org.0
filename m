Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD531CE177
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 19:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFC089DEC;
	Mon, 11 May 2020 17:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9288589DEC;
 Mon, 11 May 2020 17:19:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C1FAA47E1;
 Mon, 11 May 2020 17:19:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 11 May 2020 17:19:01 -0000
Message-ID: <158921754157.13116.15172167938286223924@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511150545.15149-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200511150545.15149-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Consider_DBuf_bandwidth_when_calculating_CDCLK_=28rev10=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev10)
URL   : https://patchwork.freedesktop.org/series/74739/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f95bf937bce0 drm/i915: Decouple cdclk calculation from modeset checks
4dca6193f621 drm/i915: Extract cdclk requirements checking to separate function
c570057695f2 drm/i915: Check plane configuration properly
-:31: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
bef12142b2dd drm/i915: Plane configuration affects CDCLK in Gen11+
-:22: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
309f231f6098 drm/i915: Introduce for_each_dbuf_slice_in_mask macro
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__slice' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/display/intel_display.h:190:
+#define for_each_dbuf_slice_in_mask(__slice, __mask) \
+	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
+		for_each_if((BIT(__slice)) & (__mask))

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
ce163ad5cb90 drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
120f117da5c4 drm/i915: Remove unneeded hack now for CDCLK

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
