Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D786818754A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 23:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3654D6E529;
	Mon, 16 Mar 2020 22:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6F446E529;
 Mon, 16 Mar 2020 22:02:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FD12A0091;
 Mon, 16 Mar 2020 22:02:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Mon, 16 Mar 2020 22:02:39 -0000
Message-ID: <158439615965.18995.2983702810676953649@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200312053841.2794-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Add_support_for_mipi_dsi_cmd_mode_=28rev8=29?=
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

Series: Add support for mipi dsi cmd mode (rev8)
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
Okay!

Commit: drm/i915/dsi: Use private flags to indicate TE in cmd mode
Okay!

Commit: drm/i915/dsi: Configure TE interrupt for cmd mode
Okay!

Commit: drm/i915/dsi: Add TE handler for dsi cmd mode.
-
+drivers/gpu/drm/i915/i915_irq.c:2265:6: warning: symbol 'gen11_dsi_te_interrupt_handler' was not declared. Should it be static?

Commit: drm/i915/dsi: Initiate fame request in cmd mode
Okay!

Commit: drm/i915/dsi: Clear the DSI IIR
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
