Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F37524DA414
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 21:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4B4910E214;
	Tue, 15 Mar 2022 20:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B30E989F43;
 Tue, 15 Mar 2022 20:38:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF7D4A0BCB;
 Tue, 15 Mar 2022 20:38:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 15 Mar 2022 20:38:04 -0000
Message-ID: <164737668468.20490.568268997739632906@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315194712.2113450-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220315194712.2113450-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_CDCLK_checks_to_atomic_check_phase_=28rev4=29?=
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

Series: Add CDCLK checks to atomic check phase (rev4)
URL   : https://patchwork.freedesktop.org/series/101068/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84e79f618db6 drm/i915/display: Add CDCLK actions to intel_cdclk_state
9ddce2b162f8 drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash
-:28: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#28: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1980:
 {
+

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
daf67d3fddca drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1955:
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
+				  const struct intel_cdclk_state *a,

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
7fc8824172e5 drm/i915/display: Add cdclk checks to atomic check
-:197: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#197: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2053:
 {
+

total: 0 errors, 0 warnings, 1 checks, 180 lines checked


