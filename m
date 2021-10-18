Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 001EC4325DA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 20:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B956EA20;
	Mon, 18 Oct 2021 18:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 378236EA20;
 Mon, 18 Oct 2021 18:01:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EFBDA73C9;
 Mon, 18 Oct 2021 18:01:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 18:01:55 -0000
Message-ID: <163458011515.27089.13103387203788649803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211018094154.1407705-1-imre.deak@intel.com>
In-Reply-To: <20211018094154.1407705-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_Fix_link_parameter_use_in_lack_of_a_valid_DP?=
 =?utf-8?b?Q0QgKHJldjIp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp: Fix link parameter use in lack of a valid DPCD (rev2)
URL   : https://patchwork.freedesktop.org/series/95948/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8f1a6421dfe5 drm/i915/dp: Skip the HW readout of DPCD on disabled encoders
4de2ca096081 drm/i915/dp: Ensure sink rate values are always valid
-:42: WARNING:TYPO_SPELLING: 'initialzing' may be misspelled - perhaps 'initializing'?
#42: 
v2: Clear the default sink rates, before initialzing these for eDP.
                                         ^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
ef437e0c551b drm/i915/dp: Ensure max link params are always valid
66b542816538 drm/i915/dp: Ensure sink/link max lane count values are always valid
f2bd5e3e941b drm/i915/dp: Sanitize sink rate DPCD register values
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
buggy monitor). So fixup the invalid DPCD sink rate values already and print

total: 0 errors, 1 warnings, 0 checks, 33 lines checked
d94f0647dd78 drm/i915/dp: Sanitize link common rate array lookups
-:45: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_dp.c:622:
+							      intel_dp_common_rate(intel_dp, index - 1),

total: 0 errors, 1 warnings, 0 checks, 77 lines checked


