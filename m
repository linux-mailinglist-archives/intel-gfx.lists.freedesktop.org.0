Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2037196DD26
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 17:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E47CC10E8FB;
	Thu,  5 Sep 2024 15:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC7610E8FA;
 Thu,  5 Sep 2024 15:05:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Implement_Wa=5F14021?=
 =?utf-8?q?768792_to_bypass_m=5Fn_ratio_limit?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Sep 2024 15:05:22 -0000
Message-ID: <172554872238.951431.12434431946498121321@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
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

Series: Implement Wa_14021768792 to bypass m_n ratio limit
URL   : https://patchwork.freedesktop.org/series/138257/
State : warning

== Summary ==

Error: dim checkpatch failed
d01dce8f6dbd drm/i915/display: Add bits for link_n_exended for DISPLAY >= 14
705614832ec4 drm/i915/display: Limit m/n ratio to 10 for display > 12
e50f2a5bcf64 drm/i915/display: Add bits for Wa_14021768792 for linkm/n ratio > 10
-:158: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#158: FILE: drivers/gpu/drm/i915/display/intel_display.c:5251:
+				     "found tu %i, data %i/%i link %i/%i link_n_ext %i bypass_m_n_ratio_limit %s)", \

total: 0 errors, 1 warnings, 0 checks, 169 lines checked
8b2ceca80f59 drm/i915/display: Implement Wa_14021768792 for BMG DP for link_m/n ratio > 10
af32311e145e drm/i915: Add Wa_14021768792 as per WA framework
-:40: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_display_wa.h:17:
+static inline bool intel_display_needs_wa_14021768792(struct drm_i915_private *i915) { return false; }

total: 0 errors, 1 warnings, 0 checks, 38 lines checked


