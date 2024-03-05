Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C537871443
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 04:29:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36B7110EB76;
	Tue,  5 Mar 2024 03:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475DB10EB76;
 Tue,  5 Mar 2024 03:29:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_LNL_display?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Mar 2024 03:29:39 -0000
Message-ID: <170960937929.503981.1369597505286666817@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
In-Reply-To: <20240304183028.195057-1-gustavo.sousa@intel.com>
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

Series: Enable LNL display
URL   : https://patchwork.freedesktop.org/series/130689/
State : warning

== Summary ==

Error: dim checkpatch failed
52ce7e3a93e7 drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table
3f9ed6439f1f drm/i915/cdclk: Add and use xe2lpd_mdclk_source_sel()
7071a46e9b9d drm/i915/cdclk: Only compute squash waveform when necessary
f17882210bdb drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
60c6197de41a drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
d26865441ec6 drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes
-:264: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#264: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:44:
+#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
f4c6b4816724 drm/i915/xe2lpd: Load DMC
b3ff3350eb2d drm/xe/lnl: Enable display support


