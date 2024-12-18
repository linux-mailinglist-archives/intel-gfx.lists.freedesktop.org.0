Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AD59F5FA2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 08:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE3310EAD9;
	Wed, 18 Dec 2024 07:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD00310E31A;
 Wed, 18 Dec 2024 07:49:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?UHBR_rates_for_Thunderbolt?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2024 07:49:27 -0000
Message-ID: <173450816789.4154419.4921564259147493237@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217143440.572308-1-mika.kahola@intel.com>
In-Reply-To: <20241217143440.572308-1-mika.kahola@intel.com>
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

Series: drm/i915/display: UHBR rates for Thunderbolt
URL   : https://patchwork.freedesktop.org/series/142727/
State : warning

== Summary ==

Error: dim checkpatch failed
19bc4c36b471 drm/i915/display: UHBR rates for Thunderbolt
-:87: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3144:
+		val |= XE3D_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));

-:90: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3147:
+		val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));

-:112: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:197:
+#define   XE3D_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XE3D_DDI_CLOCK_SELECT_MASK, val)

total: 0 errors, 3 warnings, 0 checks, 93 lines checked


