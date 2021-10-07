Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67208425231
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 13:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8AD96F420;
	Thu,  7 Oct 2021 11:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0E0F6F41D;
 Thu,  7 Oct 2021 11:43:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8E92A0169;
 Thu,  7 Oct 2021 11:43:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 11:43:17 -0000
Message-ID: <163360699785.5189.6069213300879434253@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007103108.7707-1-jani.nikula@intel.com>
In-Reply-To: <20211007103108.7707-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_update_link_training_for_128b/132b_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/dg2: update link training for 128b/132b (rev2)
URL   : https://patchwork.freedesktop.org/series/95317/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
eda15c6a42a6 drm/i915/dg2: update link training for 128b/132b
-:47: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#47: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1349:
+		return train_set & DP_TX_FFE_PRESET_VALUE_MASK;
+	} else {

-:79: CHECK:LINE_SPACING: Please don't use multiple blank lines
#79: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:307:
 
+

-:134: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#134: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:503:
+#define TRAIN_SET_TX_FFE_ARGS(train_set) \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[0]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[1]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[2]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[3])

-:134: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'train_set' - possible side-effects?
#134: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:503:
+#define TRAIN_SET_TX_FFE_ARGS(train_set) \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[0]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[1]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[2]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[3])

total: 1 errors, 1 warnings, 2 checks, 204 lines checked


