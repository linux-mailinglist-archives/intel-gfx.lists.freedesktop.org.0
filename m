Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB41B3F02BD
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 13:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 994F26E558;
	Wed, 18 Aug 2021 11:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63F396E544;
 Wed, 18 Aug 2021 11:30:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A6BBAADCF;
 Wed, 18 Aug 2021 11:30:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 11:30:28 -0000
Message-ID: <162928622829.16674.12807579053229297435@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629281426.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629281426.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_header_cleanups?=
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

Series: drm/i915: header cleanups
URL   : https://patchwork.freedesktop.org/series/93777/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ddebfe5d1496 drm/i915/irq: reduce inlines to reduce header dependencies
e2382f06ea1f drm/i915: intel_runtime_pm.h does not actually need intel_display.h
95ad020b21a2 drm/i915/pm: use forward declaration to remove an include
33cd75959166 drm/i915/panel: move intel_panel_use_ssc() out of headers
-:55: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#55: FILE: drivers/gpu/drm/i915/display/intel_panel.c:49:
+	return i915->vbt.lvds_use_ssc
+		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
bd3b1339d175 drm/i915/fdi: move intel_fdi_link_freq() to intel_fdi.[ch]


