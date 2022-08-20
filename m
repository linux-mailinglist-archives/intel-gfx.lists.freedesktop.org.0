Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DFA59AA63
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 03:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AC110E391;
	Sat, 20 Aug 2022 01:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA33710E44A;
 Sat, 20 Aug 2022 01:15:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D336AA47DF;
 Sat, 20 Aug 2022 01:15:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Sat, 20 Aug 2022 01:15:24 -0000
Message-ID: <166095812483.27058.4423665133188297622@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220820005822.102716-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_CDCLK_churn=3A_move_checks_to_atomic_check?=
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

Series: CDCLK churn: move checks to atomic check
URL   : https://patchwork.freedesktop.org/series/107522/
State : warning

== Summary ==

Error: dim checkpatch failed
c3061d754e21 drm/i915/display: Add CDCLK actions to intel_cdclk_state
d6438fdf45eb drm/i915/squash: s/intel_cdclk_can_squash/intel_cdclk_squash
-:43: CHECK:BRACES: braces {} should be used on all arms of this statement
#43: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1751:
+	if (waveform && has_cdclk_squasher(dev_priv)) {
[...]
+		}
[...]

-:62: CHECK:BRACES: Unbalanced braces around else statement
#62: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1769:
+	} else

-:97: ERROR:TRAILING_WHITESPACE: trailing whitespace
#97: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1994:
+^I$

total: 1 errors, 0 warnings, 2 checks, 103 lines checked
9f16f8721589 drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
-:23: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:41:
+#define ADLP_CDCLK_CRAWL(dev_priv, vco)	(HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0)

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:41:
+#define ADLP_CDCLK_CRAWL(dev_priv, vco)	(HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0)

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vco' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:41:
+#define ADLP_CDCLK_CRAWL(dev_priv, vco)	(HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0)

-:23: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'vco' may be better as '(vco)' to avoid precedence issues
#23: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:41:
+#define ADLP_CDCLK_CRAWL(dev_priv, vco)	(HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0)

-:99: ERROR:TRAILING_WHITESPACE: trailing whitespace
#99: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1984:
+ ^I^Ia_div == b_div && $

-:99: ERROR:CODE_INDENT: code indent should use tabs where possible
#99: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1984:
+ ^I^Ia_div == b_div && $

-:99: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#99: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1984:
+ ^I^Ia_div == b_div && $

-:99: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#99: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1984:
+ ^I^Ia_div == b_div && $

total: 2 errors, 3 warnings, 3 checks, 92 lines checked
b882cdeeec1f drm/i915/display: Add cdclk checks to atomic check


