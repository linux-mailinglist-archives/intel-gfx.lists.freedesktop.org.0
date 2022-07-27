Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926CA5835D0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 01:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194D214A807;
	Wed, 27 Jul 2022 23:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA523C8493;
 Wed, 27 Jul 2022 23:52:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDF49A47EB;
 Wed, 27 Jul 2022 23:52:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 27 Jul 2022 23:52:09 -0000
Message-ID: <165896592974.21596.13130408496644693186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220727232643.533884-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220727232643.533884-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_CDCLK_checks_to_atomic_check_phase?=
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

Series: Move CDCLK checks to atomic check phase
URL   : https://patchwork.freedesktop.org/series/106782/
State : warning

== Summary ==

Error: dim checkpatch failed
b31629d56cc7 drm/i915/display: Add CDCLK actions to intel_cdclk_state
a77796ff5290 drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash
-:28: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#28: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1973:
 {
+

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
a462b1685a1a drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1948:
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
+				  const struct intel_cdclk_state *a,

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
18d9d117a9a9 drm/i915/display: Add cdclk checks to atomic check
-:188: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#188: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2045:
 {
+

total: 0 errors, 0 warnings, 1 checks, 171 lines checked


