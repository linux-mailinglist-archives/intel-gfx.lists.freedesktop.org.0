Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3236822FBD4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 00:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27ED389E8C;
	Mon, 27 Jul 2020 22:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 580C189E86;
 Mon, 27 Jul 2020 22:05:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 510C7A73C7;
 Mon, 27 Jul 2020 22:05:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Dadap" <ddadap@nvidia.com>
Date: Mon, 27 Jul 2020 22:05:41 -0000
Message-ID: <159588754130.26747.10418643862925212708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <ba78cd19-45ad-b17e-5174-256cc11f36c2%40nvidia.com>
In-Reply-To: <ba78cd19-45ad-b17e-5174-256cc11f36c2%40nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_vga-switcheroo=3A_add_new_?=
 =?utf-8?q?=22immediate=22_switch_event_type?=
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

Series: series starting with [1/6] vga-switcheroo: add new "immediate" switch event type
URL   : https://patchwork.freedesktop.org/series/79940/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c641759bc9fc vga-switcheroo: add new "immediate" switch event type
bfff6b1409e8 vga-switcheroo: Add a way to test for the active client
ff047b26770b vga-switcheroo: notify clients of pending/completed switch events
11d6a92ef9e8 i915: implement vga-switcheroo reprobe() callback
84cd1d3bc501 i915: fail atomic commit when muxed away
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_display.c:15736:
+		drm_dbg_atomic(&dev_priv->drm,
+			"Atomic commit attempted while muxed away.\n");

total: 0 errors, 0 warnings, 1 checks, 19 lines checked
967055634357 i915: bail out of eDP link training while mux-switched away
-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:400:
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			"eDP link training not allowed when muxed away.");

total: 0 errors, 0 warnings, 1 checks, 21 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
