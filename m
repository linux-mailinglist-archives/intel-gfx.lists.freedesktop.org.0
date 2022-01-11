Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C0648B5D4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 19:39:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A36010E22E;
	Tue, 11 Jan 2022 18:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9BF710E22E;
 Tue, 11 Jan 2022 18:39:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4EF8AA914;
 Tue, 11 Jan 2022 18:39:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 11 Jan 2022 18:39:11 -0000
Message-ID: <164192635184.24977.15716313804343711903@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Recalculate_CDCLK_if_plane_scaling_ratio_change?=
 =?utf-8?q?s?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Recalculate CDCLK if plane scaling ratio changes
URL   : https://patchwork.freedesktop.org/series/98750/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fe1ac4423d86 drm/i915: Recalculate CDCLK if plane scaling ratio changes
-:61: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_hscale_ratio != new_hscale_ratio'
#61: FILE: drivers/gpu/drm/i915/display/intel_display.c:7540:
+	if ((old_hscale_ratio != new_hscale_ratio) ||
+	    (old_vscale_ratio != new_vscale_ratio)) {

-:61: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_vscale_ratio != new_vscale_ratio'
#61: FILE: drivers/gpu/drm/i915/display/intel_display.c:7540:
+	if ((old_hscale_ratio != new_hscale_ratio) ||
+	    (old_vscale_ratio != new_vscale_ratio)) {

-:116: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#116: FILE: drivers/gpu/drm/i915/display/intel_display.c:7603:
+		if ((hweight8(old_active_planes) == hweight8(new_active_planes)) && !need_cdclk_calc)

-:123: CHECK:LINE_SPACING: Please don't use multiple blank lines
#123: FILE: drivers/gpu/drm/i915/display/intel_display.c:7610:
+
+

total: 0 errors, 1 warnings, 3 checks, 104 lines checked


