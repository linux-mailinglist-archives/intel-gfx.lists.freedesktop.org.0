Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC792A3D7E0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 12:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4E910E4BF;
	Thu, 20 Feb 2025 11:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D3C10E4BF;
 Thu, 20 Feb 2025 11:10:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/fbc=3A_FBC_?=
 =?utf-8?q?Dirty_rect_feature_support_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2025 11:10:36 -0000
Message-ID: <174004983687.174564.9082786058915283360@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250220104144.207526-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250220104144.207526-1-vinod.govindapillai@intel.com>
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

Series: drm/i915/fbc: FBC Dirty rect feature support (rev3)
URL   : https://patchwork.freedesktop.org/series/144725/
State : warning

== Summary ==

Error: dim checkpatch failed
d7c5bfbf3776 drm/damage-helper: add const qualifier in drm_atomic_helper_damage_merged()
f33f14d1bdd1 drm/i915/display: update and store the plane damage clips
cd15ab0414ca drm/i915/fbc: add register definitions for fbc dirty rect support
-:30: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:107:
+#define   FBC_DIRTY_RECT_START_LINE(val)	REG_FIELD_PREP(FBC_DIRTY_RECT_START_LINE_MASK, (val))

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
09d5ba3d43ff drm/i915/fbc: introduce HAS_FBC_DIRTY_RECT() for FBC dirty rect support
990a47ec3d32 drm/i915/fbc: avoid calling fbc activate if fbc is active
9f0de2356bc0 drm/i915/fbc: dirty rect support for FBC
48f4928c7795 drm/i915/fbc: disable FBC if PSR2 selective fetch is enabled
06ef431e2117 drm/i915/fbc: handle dirty rect coords for the first frame


