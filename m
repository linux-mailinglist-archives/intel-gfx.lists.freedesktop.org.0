Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A871A0E3F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 15:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FED06E874;
	Tue,  7 Apr 2020 13:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD91C6E874;
 Tue,  7 Apr 2020 13:19:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB57EA73C9;
 Tue,  7 Apr 2020 13:19:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 07 Apr 2020 13:19:08 -0000
Message-ID: <158626554869.26325.16809652720826436579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Consider_DBuf_bandwidth_when_calculating_CDCLK_=28rev8=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev8)
URL   : https://patchwork.freedesktop.org/series/74739/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a2d97b3a68fc drm/i915: Decouple cdclk calculation from modeset checks
9fe9c8a12e97 drm/i915: Force recalculate min_cdclk if planes config changed
460156f3ab0b drm/i915: Introduce for_each_dbuf_slice_in_mask macro
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__slice' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/display/intel_display.h:190:
+#define for_each_dbuf_slice_in_mask(__slice, __mask) \
+	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
+		for_each_if((BIT(__slice)) & (__mask))

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
d94782227906 drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
20fd5967e21b drm/i915: Remove unneeded hack now for CDCLK

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
