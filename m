Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7D390C351
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 08:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E3DA10E202;
	Tue, 18 Jun 2024 06:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3257610E202;
 Tue, 18 Jun 2024 06:06:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_eDP_mor?=
 =?utf-8?q?e_prepare_patches?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2024 06:06:51 -0000
Message-ID: <171869081120.101778.9344165942236535982@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
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

Series: Panel Replay eDP more prepare patches
URL   : https://patchwork.freedesktop.org/series/134991/
State : warning

== Summary ==

Error: dim checkpatch failed
2478831dfb07 drm/i915/psr: Set SU area width as pipe src width
80e2348b5cb0 drm/i915/display: Wa 16021440873 is writing wrong register
526b0dc96c26 drm/i915/alpm: Fix port clock usage in AUX Less wake time calculation
f99f913ec74a drm/i915/psr: Disable Panel Replay if PSR mode is set via module parameter
5098b919852f drm/i915/psr: Disable PSR2 SU Region ET if enable_psr module parameter is set
d1fb0d28d895 drm/i915/psr: Disable PSR/Panel Replay on sink side for PSR only
c9234652b499 drm/i915/psr: Add new debug bit to disable Panel Replay
b849a5b71aac Revert "drm/i915/psr: Disable early transport by default"
2c8b002eee7a intel_alpm: Fix wrong offset for PORT_ALPM_* registers
-:55: WARNING:MACRO_ARG_UNUSED: Argument 'dev_priv' is not used in function-like macro
#55: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:298:
+#define PORT_ALPM_CTL(dev_priv, port)		_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)

-:65: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:309:
+#define PORT_ALPM_LFPS_CTL(dev_priv, port)			_MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)

-:65: WARNING:MACRO_ARG_UNUSED: Argument 'dev_priv' is not used in function-like macro
#65: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:309:
+#define PORT_ALPM_LFPS_CTL(dev_priv, port)			_MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)

total: 0 errors, 3 warnings, 0 checks, 41 lines checked


