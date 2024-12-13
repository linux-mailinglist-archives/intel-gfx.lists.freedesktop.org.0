Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D139F0585
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 08:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D6010E31A;
	Fri, 13 Dec 2024 07:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A7E10E240;
 Fri, 13 Dec 2024 07:31:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_PSR_DSB_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2024 07:31:15 -0000
Message-ID: <173407507520.2025609.11017303915456560523@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
In-Reply-To: <20241213063528.2759659-1-jouni.hogander@intel.com>
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

Series: PSR DSB support
URL   : https://patchwork.freedesktop.org/series/142520/
State : warning

== Summary ==

Error: dim checkpatch failed
934567a608a7 drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to send full update
3ad4c4831274 drm/i915/psr: Rename psr_force_hw_tracking_exit as intel_psr_force_update
acce01688b31 drm/i915/psr: Split setting sff and cff bits away from intel_psr_force_update
9834a8ae86e1 drm/i915/psr: Add register definitions for SFF_CTL and CFF_CTL registers
-:24: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:255:
+#define LNL_SFF_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _LNL_SFF_CTL_A)

-:28: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:259:
+#define LNL_CFF_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _LNL_CFF_CTL_A)

total: 0 errors, 2 warnings, 0 checks, 14 lines checked
66b16e9ac4e6 drm/i915/psr: Ensure SFF/CFF bits are not written at their sample point
8d78f28353ca drm/i915/psr: Use SFF_CTL on invalidate/flush for LunarLake onwards
ef0fb4a6ca27 drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using DSB
b1e3b3f0e816 drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling when DSB is in use
-:17: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#17: 
Taking PSR lock over DSB commit is not needed because PSR2_MAN_TRK_CTL is now

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
61449d56120e drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
11408ce4840b drm/i915/psr: Allow DSB usage when PSR is enabled


