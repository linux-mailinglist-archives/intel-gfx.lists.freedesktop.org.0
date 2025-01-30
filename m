Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23C3A23709
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 23:00:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D384010E060;
	Thu, 30 Jan 2025 22:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98DA810E060;
 Thu, 30 Jan 2025 22:00:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/xe3=3A_FBC_?=
 =?utf-8?q?Dirty_rect_feature_support_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2025 22:00:32 -0000
Message-ID: <173827443262.2996050.17012086905825878082@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250130210027.591927-1-vinod.govindapillai@intel.com>
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

Series: drm/i915/xe3: FBC Dirty rect feature support (rev7)
URL   : https://patchwork.freedesktop.org/series/141527/
State : warning

== Summary ==

Error: dim checkpatch failed
73dbd0845cac drm/i915/xe3: add register definitions for fbc dirty rect support
-:24: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:107:
+#define   FBC_DIRTY_RECT_START_LINE(val)	REG_FIELD_PREP(FBC_DIRTY_RECT_START_LINE_MASK, (val))

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
11b227139f8a drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for FBC dirty rect support
ffc3026626b5 drm/damage-helper: add const qualifier in drm_atomic_helper_damage_merged()
0ec3efcf3af0 drm/i915/xe3: update and store the plane damage clips
35d2c226a650 drm/i915/xe3: dirty rect support for FBC
f4d33535af6a drm/i915/xe3: avoid calling fbc activate if fbc is active
d2e5ce0aa316 drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled


