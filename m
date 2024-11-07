Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C679C9C0B22
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C278E10E1DD;
	Thu,  7 Nov 2024 16:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF5810E1DD;
 Thu,  7 Nov 2024 16:15:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pps=3A_Some?=
 =?utf-8?q?_PPS_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Nov 2024 16:15:57 -0000
Message-ID: <173099615770.1422899.11694232280440977758@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/pps: Some PPS cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/141029/
State : warning

== Summary ==

Error: dim checkpatch failed
ff7d1dd11395 drm/i915/pps: Store the power cycle delay without the +1
fc8b358de349 drm/i915/pps: Decouple pps delays from VBT struct definition
f31f677dab2f drm/i915/pps: Rename intel_pps_delay members
-:69: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#69: FILE: drivers/gpu/drm/i915/display/intel_pps.c:679:
+	 * and then make panel wait for power_cycle if needed. */

total: 0 errors, 1 warnings, 0 checks, 209 lines checked
127aa6788808 drm/i915/lvds: Use struct intel_pps_delays for LVDS power sequencing
8b6c82f420f9 drm/i915/pps: Spell out the eDP spec power sequencing delays a bit more clearly
7a77e96187ed drm/i915/pps: Extract msecs_to_pps_units()
-:55: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1522:
+	spec->backlight_off = msecs_to_pps_units(50); /* no limit for T9, make it symmetric with T8 */

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
d267e5a36046 drm/i915/pps: Extract pps_units_to_msecs()
-:36: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'field' may be better as '(field)' to avoid precedence issues
#36: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1563:
+#define get_delay(field)	pps_units_to_msecs(final->field)

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
9be03212247a drm/i915/pps: Eliminate pointless get_delay() macro


