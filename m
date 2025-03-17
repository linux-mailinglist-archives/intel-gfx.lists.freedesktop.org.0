Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC95A6460F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F35D10E3C8;
	Mon, 17 Mar 2025 08:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C48F10E3AF;
 Mon, 17 Mar 2025 08:47:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Underrun_on_idle_PSR?=
 =?utf-8?q?_workaround_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Mar 2025 08:47:36 -0000
Message-ID: <174220125605.42242.7618618238717169@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
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

Series: Underrun on idle PSR workaround (rev3)
URL   : https://patchwork.freedesktop.org/series/145986/
State : warning

== Summary ==

Error: dim checkpatch failed
d17141c733b0 drm/i915/display: Add new interface for getting dc_state
3a103157f0a1 drm/i915/psr: Store enabled non-psr pipes into intel_crtc_state
f051aa5330e7 drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
fb98bc00ea32 drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
-:28: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:33:
+									   PIPEDMC_BLOCK_PKGC_SW_A, \

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
352110d3ed60 drm/i915/psr: Write PIPEDMC_BLOCK_PKGC_SW when enabling PSR
6697cedb1123 drm/i915/psr: Add mechanism to notify PSR of pipe enable/disable
a1ad136d5114 drm/i915/psr: Add mechanism to notify PSR of DC5/6 enable disable
bc7f48181953 drm/i915/psr: Add interface to notify PSR of vblank enable/disable
6915e6f48cef drm/i915/psr: Apply underrun on PSR idle workaround
02d4c17b4a87 drm/i915/display: Rename intel_psr_needs_block_dc_vblank
78628a1a860d drm/i915/display: Rename vblank DC workaround functions and variables


