Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D4E6C2413
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 22:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B509510E323;
	Mon, 20 Mar 2023 21:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B34F910E32D;
 Mon, 20 Mar 2023 21:48:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7BCDAADE0;
 Mon, 20 Mar 2023 21:48:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 20 Mar 2023 21:48:36 -0000
Message-ID: <167934891668.26309.16955013052502322651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230316131724.359612-1-imre.deak@intel.com>
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Fix_a_few_TypeC_/_MST_issues_=28rev2=29?=
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

Series: drm/i915/tc: Fix a few TypeC / MST issues (rev2)
URL   : https://patchwork.freedesktop.org/series/115270/
State : warning

== Summary ==

Error: dim checkpatch failed
82115e6bf2c8 drm/i915/tc: Abort DP AUX transfer on a disconnected TC port
-:19: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Link: with a URL to the report
#19: 
Reported-and-tested-by: Chris Chiu <chris.chiu@canonical.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8279

-:20: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Closes:', use 'Link:' instead
#20: 
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8279

total: 0 errors, 2 warnings, 0 checks, 62 lines checked
e4c278dad7eb drm/i915/tc: Fix TC port link ref init for DP MST during HW readout
c603abfc248c drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
960edc13fd00 drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
06f859ca3461 drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports
c7b4fe72364c drm/i915/tc: Factor out helpers converting HPD mask to TC mode
adfe2ef1c1d7 drm/i915/tc: Fix target TC mode for a disconnected legacy port
cdc965f1f98e drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready
0c4b4ce44c53 drm/i915/tc: Fix initial TC mode on disabled legacy ports
b5ea65a830ed drm/i915/tc: Make the TC mode readout consistent in all PHY states
e1bb2c9fd5e7 drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI
3c96060573d3 drm/i915: Add encoder hook to get the PLL type used by TC ports
a1eec079c96f drm/i915/tc: Factor out a function querying active links on a TC port
-:30: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#30: FILE: drivers/gpu/drm/i915/display/intel_tc.c:882:
+	if (dig_port->dp.is_mst) {
[...]
+	} else if (crtc && crtc->active) {
[...]

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
4a6782c55f8b drm/i915/tc: Check the PLL type used by an enabled TC port


