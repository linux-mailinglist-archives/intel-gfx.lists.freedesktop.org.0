Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0977F26BC14
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 08:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540CA6E991;
	Wed, 16 Sep 2020 06:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCC0F6E98D;
 Wed, 16 Sep 2020 06:01:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4D1DA882F;
 Wed, 16 Sep 2020 06:01:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Wed, 16 Sep 2020 06:01:41 -0000
Message-ID: <160023610177.19375.11155429862575740672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916053318.14270-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200916053318.14270-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_mipi_dsi_cmd_mode_=28rev11=29?=
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

Series: Add support for mipi dsi cmd mode (rev11)
URL   : https://patchwork.freedesktop.org/series/69290/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
52a9fdd41ad0 drm/i915/dsi: Add details about TE in get_config
91e0a1b11305 i915/dsi: Configure TE interrupt for cmd mode
3531cf9521a8 drm/i915/dsi: Add TE handler for dsi cmd mode.
-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: drivers/gpu/drm/i915/i915_irq.c:2241:
+static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
+				    u32 te_trigger)

-:63: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_NO_GATE'
#63: FILE: drivers/gpu/drm/i915/i915_irq.c:2267:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

-:63: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_TE_GATE'
#63: FILE: drivers/gpu/drm/i915/i915_irq.c:2267:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

-:92: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#92: FILE: drivers/gpu/drm/i915/i915_irq.c:2296:
+
+}

total: 0 errors, 0 warnings, 4 checks, 78 lines checked
44cfde08a6c0 drm/i915/dsi: Initiate fame request in cmd mode


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
