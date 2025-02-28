Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DC3A498EB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 13:14:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BE010EC75;
	Fri, 28 Feb 2025 12:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE6F10EC81;
 Fri, 28 Feb 2025 12:14:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/fbc=3A_FBC_?=
 =?utf-8?q?Dirty_rect_feature_support_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2025 12:14:21 -0000
Message-ID: <174074486130.3216945.6937229770891798530@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250228093802.27091-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250228093802.27091-1-vinod.govindapillai@intel.com>
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

Series: drm/i915/fbc: FBC Dirty rect feature support (rev4)
URL   : https://patchwork.freedesktop.org/series/144725/
State : warning

== Summary ==

Error: dim checkpatch failed
84e05b0b9719 drm/i915/fbc: remove one duplicate forward declaration
6dc025b87e01 drm/damage-helper: add const qualifier in drm_atomic_helper_damage_merged()
6f40c0dca0b7 drm/i915/display: update and store the plane damage clips
5300c26a0347 drm/i915/fbc: add register definitions for fbc dirty rect support
-:30: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:107:
+#define   FBC_DIRTY_RECT_START_LINE(val)	REG_FIELD_PREP(FBC_DIRTY_RECT_START_LINE_MASK, (val))

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
bbe62dedeb46 drm/i915/fbc: introduce HAS_FBC_DIRTY_RECT() for FBC dirty rect support
f09a22b20ea0 drm/i915/fbc: avoid calling fbc activate if fbc is active
50fa42b051eb drm/i915/fbc: dirty rect support for FBC
8c1894b85cbd drm/i915/fbc: disable FBC if PSR2 selective fetch is enabled
ad716300cdca drm/i915/fbc: handle dirty rect coords for the first frame


