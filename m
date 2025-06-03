Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAC4ACCDE2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 22:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3009610E227;
	Tue,  3 Jun 2025 20:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D4210E227;
 Tue,  3 Jun 2025 20:01:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable/Disable_DC_ba?=
 =?utf-8?q?lance_along_with_VRR_DSB_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Jun 2025 20:01:10 -0000
Message-ID: <174898087065.45504.10971368667047608941@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable/Disable DC balance along with VRR DSB (rev6)
URL   : https://patchwork.freedesktop.org/series/147799/
State : warning

== Summary ==

Error: dim checkpatch failed
7205544f3a4d drm/i915/vrr: Refactor vmin/vmax stuff
114313681d31 drm/i915/display: Add source param for dc balance
4cd5f566e378 drm/i915/display: Add pipe dmc registers and bits for DC Balance
-:25: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#25: 
Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
b6f672b87053 drm/i915/display: Add VRR DC balance registers
959b752bae29 drm/i915/vrr: Add functions to read out vmin/vmax stuff
5dfcfb74b2ac drm/i915/vrr: Add DC Balance params to crtc_state
25ce655c9295 drm/i915/vrr: Add state dump for DC Balance params
527a1f73fa04 drm/i915/vrr: Add compute config for DC Balance params
6191be2a22e3 drm/i915/vrr: Write DC balance params to hw registers
ae2e280d0b64 drm/i915: Extract vrr_vblank_start()
c394fb479187 drm/i915/vrr: Implement vblank evasion with DC balancing
c8e476e6f358 drm/i915/dsb: Add pipedmc dc balance enable/disable
f087e41d8bff drm/i915/vrr: Restructure VRR enablement bit
93ed5e5b5fcb drm/i915/vrr: Pause DC Balancing for DSB commits
db5ddb9ee23d drm/i915/vrr: Add function to check if DC Balance Possible
4eac36cb73ed drm/i915/display: Add function to configure PIPEDMC_EVT_CTL
4d412c0f198b drm/i915/vrr: Enable DC Balance bit


