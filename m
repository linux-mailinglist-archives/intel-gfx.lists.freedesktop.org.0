Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B71A9136019
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 19:23:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3BF1897D7;
	Thu,  9 Jan 2020 18:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA2A6897D7;
 Thu,  9 Jan 2020 18:22:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2170A00E9;
 Thu,  9 Jan 2020 18:22:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Thu, 09 Jan 2020 18:22:59 -0000
Message-ID: <157859417983.4564.1768510598579725213@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109110835.29764-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200109110835.29764-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Add_support_for_mipi_dsi_cmd_mode_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add support for mipi dsi cmd mode (rev5)
URL   : https://patchwork.freedesktop.org/series/69290/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915/dsi: Configure transcoder operation for command mode.
Okay!

Commit: drm/i915/dsi: Add vblank calculation for command mode
Okay!

Commit: drm/i915/dsi: Add cmd mode flags in display mode private flags
Okay!

Commit: drm/i915/dsi: Add check for periodic command mode
-
+drivers/gpu/drm/i915/display/icl_dsi.c:1381:6: warning: symbol 'gen11_dsi_is_periodic_cmd_mode' was not declared. Should it be static?

Commit: drm/i915/dsi: Use private flags to indicate TE in cmd mode
Okay!

Commit: drm/i915/dsi: Configure TE interrupt for cmd mode
Okay!

Commit: drm/i915/dsi: Add TE handler for dsi cmd mode.
-
+drivers/gpu/drm/i915/i915_irq.c:2233:6: warning: symbol 'gen11_dsi_te_interrupt_handler' was not declared. Should it be static?

Commit: drm/i915/dsi: Initiate fame request in cmd mode
Okay!

Commit: drm/i915/dsi: Clear the DSI IIR
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
