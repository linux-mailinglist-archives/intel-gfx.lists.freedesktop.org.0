Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA70429768
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 21:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E075C6E532;
	Mon, 11 Oct 2021 19:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0277F6E532;
 Mon, 11 Oct 2021 19:14:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFE14A9A42;
 Mon, 11 Oct 2021 19:14:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Oct 2021 19:14:38 -0000
Message-ID: <163397967895.22682.13826528926364832122@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211011182144.22074-1-jani.nikula@intel.com>
In-Reply-To: <20211011182144.22074-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/dp=3A_abstract_inte?=
 =?utf-8?b?bF9kcF9sYW5lX21heF92c3dpbmdfcmVhY2hlZCgp?=
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

Series: series starting with [1/2] drm/i915/dp: abstract intel_dp_lane_max_vswing_reached()
URL   : https://patchwork.freedesktop.org/series/95689/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
89b690d2e4c1 drm/i915/dp: abstract intel_dp_lane_max_vswing_reached()
a5f36be2f5c0 drm/i915/dg2: update link training for 128b/132b
-:53: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#53: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1349:
+		return train_set & DP_TX_FFE_PRESET_VALUE_MASK;
+	} else {

-:85: CHECK:LINE_SPACING: Please don't use multiple blank lines
#85: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:307:
 
+

-:142: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#142: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:396:
+#define TRAIN_REQ_TX_FFE_ARGS(link_status) \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 0), \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 1), \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 2), \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 3)

-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'link_status' - possible side-effects?
#142: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:396:
+#define TRAIN_REQ_TX_FFE_ARGS(link_status) \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 0), \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 1), \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 2), \
+	_TRAIN_REQ_TX_FFE_ARGS(link_status, 3)

-:188: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#188: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:521:
+#define TRAIN_SET_TX_FFE_ARGS(train_set) \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[0]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[1]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[2]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[3])

-:188: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'train_set' - possible side-effects?
#188: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:521:
+#define TRAIN_SET_TX_FFE_ARGS(train_set) \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[0]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[1]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[2]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[3])

total: 2 errors, 1 warnings, 3 checks, 251 lines checked


