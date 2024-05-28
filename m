Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5168D1AD8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 14:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 612D1112228;
	Tue, 28 May 2024 12:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82CA112228;
 Tue, 28 May 2024 12:14:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_DP_AUX_C?=
 =?utf-8?q?H_macro_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2024 12:14:31 -0000
Message-ID: <171689847168.2216237.16092024708551360004@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1716894909.git.jani.nikula@intel.com>
In-Reply-To: <cover.1716894909.git.jani.nikula@intel.com>
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

Series: drm/i915: DP AUX CH macro cleanups
URL   : https://patchwork.freedesktop.org/series/134123/
State : warning

== Summary ==

Error: dim checkpatch failed
ca25b65c7605 drm/i915/gvt: use proper macros for DP AUX CH CTL registers
f1103051a69e drm/i915: remove unused DP AUX CH register macros
ae1e469a4410 drm/i915: rearrange DP AUX register macros
ad73095218e9 drm/i915: move PCH DP AUX CH regs to intel_dp_aux_regs.h
-:20: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#20: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:33:
+#define PCH_DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_CTL, _PCH_DPC_AUX_CH_CTL)

-:31: WARNING:LONG_LINE: line length of 147 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:87:
+#define PCH_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_DATA1, _PCH_DPC_AUX_CH_DATA1) + (i) * 4) /* 5 registers */

total: 0 errors, 2 warnings, 0 checks, 40 lines checked
5fe165a9f72c drm/i915: remove intermediate _PCH_DP_* macros


