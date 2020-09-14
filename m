Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40226951F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 20:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1231C89C88;
	Mon, 14 Sep 2020 18:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B64389B45;
 Mon, 14 Sep 2020 18:43:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03D18A8831;
 Mon, 14 Sep 2020 18:43:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Mon, 14 Sep 2020 18:43:42 -0000
Message-ID: <160010902298.5911.2355568343041503759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200914175703.15024-1-anusha.srivatsa@intel.com>
In-Reply-To: <20200914175703.15024-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pll=3A_Centralize_PLL=5FENABLE_register_lookup_=28?=
 =?utf-8?q?rev5=29?=
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

Series: drm/i915/pll: Centralize PLL_ENABLE register lookup (rev5)
URL   : https://patchwork.freedesktop.org/series/81150/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f5ec8439a17d drm/i915/pll: Centralize PLL_ENABLE register lookup
-:38: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#38: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:154:
+{
+

-:39: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
#39: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_ELKHARTLAKE(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))

-:44: CHECK:LINE_SPACING: Please don't use multiple blank lines
#44: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:160:
+
+

-:45: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#45: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:161:
+
+}

total: 0 errors, 0 warnings, 4 checks, 66 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
