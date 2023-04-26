Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669A06EF691
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 16:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8C410E13D;
	Wed, 26 Apr 2023 14:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FF4E10E13D;
 Wed, 26 Apr 2023 14:38:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C565AADD6;
 Wed, 26 Apr 2023 14:38:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 26 Apr 2023 14:38:33 -0000
Message-ID: <168251991335.17154.14089469045885099276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Scaler/pfit_stuff_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Scaler/pfit stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/116661/
State : warning

== Summary ==

Error: dim checkpatch failed
ac4615b94d96 drm/i915: Define bitmasks for ilk pfit window pos/size
ce3cb0bb3928 drm/i915: Remove dead scaler register defines
d9096dc4ccd6 drm/i915: Rename skl+ scaler binding bits
653e6ee566c0 drm/i915: s/PS_COEE_INDEX_AUTO_INC/PS_COEF_INDEX_AUTO_INC/
2c90e29ecfd0 drm/i915: Define bitmasks for skl+ scaler window pos/size
b5e381d59782 drm/i915: Use REG_BIT() & co. for pipe scaler registers
148d79a1d22b drm/i915: Define more PS_CTRL bits
-:44: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/i915_reg.h:4081:
+#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */

-:45: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/i915_reg.h:4082:
+#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */

total: 0 errors, 2 warnings, 0 checks, 31 lines checked


