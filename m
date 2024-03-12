Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261AB879C34
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 20:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A79710FBD5;
	Tue, 12 Mar 2024 19:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B6610FBD5;
 Tue, 12 Mar 2024 19:21:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_LNL_display_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Mar 2024 19:21:13 -0000
Message-ID: <171027127389.714563.14658600233618708374@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
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

Series: Enable LNL display (rev2)
URL   : https://patchwork.freedesktop.org/series/130689/
State : warning

== Summary ==

Error: dim checkpatch failed
ba3eac026061 drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table
3d99b83d61e5 drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()
217625bf4b87 drm/i915/cdclk: Only compute squash waveform when necessary
aff812f0faf8 drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
9bd409c13e96 drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
c0c0fa6f1105 drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes
-:265: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#265: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:44:
+#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
df51b8c0194d drm/i915/xe2lpd: Load DMC
192dbbe77799 drm/xe/lnl: Enable display support


