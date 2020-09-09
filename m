Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A216262BC4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 11:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC22E6ED9A;
	Wed,  9 Sep 2020 09:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87B4D6ED9A;
 Wed,  9 Sep 2020 09:26:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80CFCA363D;
 Wed,  9 Sep 2020 09:26:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Wed, 09 Sep 2020 09:26:03 -0000
Message-ID: <159964356351.8837.2283032591601351064@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200909085047.31004-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200909085047.31004-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_mipi_dsi_cmd_mode_=28rev9=29?=
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

Series: Add support for mipi dsi cmd mode (rev9)
URL   : https://patchwork.freedesktop.org/series/69290/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5e85a0c24d65 drm/i915/dsi: Add details about TE in get_config
afc7ad4c92cd i915/dsi: Configure TE interrupt for cmd mode
4ef5ce3428d7 drm/i915/dsi: Add TE handler for dsi cmd mode.
-:59: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_NO_GATE'
#59: FILE: drivers/gpu/drm/i915/i915_irq.c:2329:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

-:59: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_TE_GATE'
#59: FILE: drivers/gpu/drm/i915/i915_irq.c:2329:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

-:88: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#88: FILE: drivers/gpu/drm/i915/i915_irq.c:2358:
+
+}

total: 0 errors, 0 warnings, 3 checks, 78 lines checked
bfde9ee264dc drm/i915/dsi: Initiate fame request in cmd mode
-:85: CHECK:LINE_SPACING: Please don't use multiple blank lines
#85: FILE: drivers/gpu/drm/i915/display/intel_display.c:15641:
 
+

total: 0 errors, 0 warnings, 1 checks, 66 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
