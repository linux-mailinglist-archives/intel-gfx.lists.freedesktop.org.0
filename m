Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0058C61C8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 09:36:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EDE710E109;
	Wed, 15 May 2024 07:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FB410E109;
 Wed, 15 May 2024 07:36:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/i915/display=3A_Move_port_clock_calculation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2024 07:36:16 -0000
Message-ID: <171575857603.2117004.5455864481855310034@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240515064524.164137-1-mika.kahola@intel.com>
In-Reply-To: <20240515064524.164137-1-mika.kahola@intel.com>
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

Series: series starting with [1/2] drm/i915/display: Move port clock calculation
URL   : https://patchwork.freedesktop.org/series/133640/
State : warning

== Summary ==

Error: dim checkpatch failed
a7f08368e5a3 drm/i915/display: Move port clock calculation
-:107: WARNING:LINE_SPACING: Missing a blank line after declarations
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2058:
+		int port_clock = intel_c10pll_calc_port_clock(encoder, tables[i]);
+		if (clock == port_clock)

-:117: WARNING:LINE_SPACING: Missing a blank line after declarations
#117: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2118:
+		int port_clock = intel_c10pll_calc_port_clock(encoder, tables[i]);
+		if (crtc_state->port_clock == port_clock) {

-:135: WARNING:LINE_SPACING: Missing a blank line after declarations
#135: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2300:
+		int port_clock = intel_c20pll_calc_port_clock(encoder, tables[i]);
+		if (clock == port_clock)

-:156: WARNING:LINE_SPACING: Missing a blank line after declarations
#156: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2361:
+		int port_clock = intel_c20pll_calc_port_clock(encoder, tables[i]);
+		if (crtc_state->port_clock == port_clock) {

total: 0 errors, 4 warnings, 0 checks, 228 lines checked
015f0e910af8 drm/i915/display: Remove .clock from pll state structure


