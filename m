Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEEAAB4B94
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 08:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0BF110E2E2;
	Tue, 13 May 2025 06:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2790A10E2D1;
 Tue, 13 May 2025 06:02:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable/Disable_DC_ba?=
 =?utf-8?q?lance_along_with_VRR_DSB_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 May 2025 06:02:37 -0000
Message-ID: <174711615715.73347.12928434650034516398@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable/Disable DC balance along with VRR DSB (rev5)
URL   : https://patchwork.freedesktop.org/series/147799/
State : warning

== Summary ==

Error: dim checkpatch failed
8a8121283955 drm/i915/vrr: Refactor vmin/vmax stuff
7b0e110d5b05 drm/i915/display: Add source param for dc balance
1c1de00e3871 drm/i915/display: Add pipe dmc registers and bits for DC Balance
-:25: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#25: 
Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

total: 0 errors, 1 warnings, 0 checks, 62 lines checked
c3e6da50f455 drm/i915/display: Add VRR DC balance registers
-:16: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#16: 
Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
49adc50c735f drm/i915/vrr: Add functions to read out vmin/vmax stuff
a73b1f89c77d drm/i915/vrr: Add DC Balance params to crtc_state
ac56175d94fd drm/i915/vrr: Add state dump for DC Balance params
fbd99d4063b1 drm/i915/vrr: Add compute config for DC Balance params
fcd78d8b3cac drm/i915/vrr: Write DC balance params to hw registers
6180a7fec7ff drm/i915: Extract vrr_vblank_start()
9b10aaf81b39 drm/i915/vrr: Implement vblank evasion with DC balancing
6f564a7724c2 drm/i915/dsb: Add pipedmc dc balance enable/disable
eace6a12bbbb drm/i915/vrr: Restructure VRR enablement bit
26008670b5ff drm/i915/vrr: Pause DC Balancing for DSB commits
a099b5774714 drm/i915/vrr: Add function to check if DC Balance Possible
0bcfeed3fbfc drm/i915/display: Add function to configure PIPEDMC_EVT_CTL
6e0186cc9c88 drm/i915/vrr: Enable DC Balance bit


