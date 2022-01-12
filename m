Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6324248C6CF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 16:12:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C38610E572;
	Wed, 12 Jan 2022 15:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E3E910E572;
 Wed, 12 Jan 2022 15:12:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BE94A00FD;
 Wed, 12 Jan 2022 15:12:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Wed, 12 Jan 2022 15:12:33 -0000
Message-ID: <164200035342.21760.13142269345330540994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220112130601.2955-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220112130601.2955-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Recalculate_CDCLK_if_plane_scaling_ratio_change?=
 =?utf-8?q?s_=28rev2=29?=
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

Series: drm/i915: Recalculate CDCLK if plane scaling ratio changes (rev2)
URL   : https://patchwork.freedesktop.org/series/98750/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
48211c7b2066 drm/i915: Recalculate CDCLK if plane scaling ratio changes
-:56: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_hscale_ratio != new_hscale_ratio'
#56: FILE: drivers/gpu/drm/i915/display/intel_display.c:7532:
+	if ((old_hscale_ratio != new_hscale_ratio) ||
+	    (old_vscale_ratio != new_vscale_ratio)) {

-:56: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_vscale_ratio != new_vscale_ratio'
#56: FILE: drivers/gpu/drm/i915/display/intel_display.c:7532:
+	if ((old_hscale_ratio != new_hscale_ratio) ||
+	    (old_vscale_ratio != new_vscale_ratio)) {

-:119: CHECK:LINE_SPACING: Please don't use multiple blank lines
#119: FILE: drivers/gpu/drm/i915/display/intel_display.c:7603:
+
+

total: 0 errors, 0 warnings, 3 checks, 97 lines checked


