Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7482187F41
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 12:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0CE6E0A5;
	Tue, 17 Mar 2020 11:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B0CA6E0A5;
 Tue, 17 Mar 2020 11:00:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1818DA47DF;
 Tue, 17 Mar 2020 11:00:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Navik" <ankit.p.navik@intel.com>
Date: Tue, 17 Mar 2020 11:00:14 -0000
Message-ID: <158444281409.5179.5104369109827384267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1584440962-28453-1-git-send-email-ankit.p.navik@intel.com>
In-Reply-To: <1584440962-28453-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Dynamic_EU_configuration_of_Slice/Sub-slice/EU_=28rev8=29?=
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

Series: Dynamic EU configuration of Slice/Sub-slice/EU (rev8)
URL   : https://patchwork.freedesktop.org/series/69980/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bb031637fc75 drm/i915: Get active pending request for given context
-:95: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#95: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2164:
+				ctx = rcu_dereference_protected(

total: 0 errors, 0 warnings, 1 checks, 47 lines checked
a8e1bd3e403d drm/i915: set optimum eu/slice/sub-slice configuration based on load type
-:231: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#231: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3079:
 	if (engine->class == RENDER_CLASS) {
+

-:233: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#233: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3081:
+		if (!ctx || !ctx->i915->predictive_load_enable
+			 || ce->user_sseu) {

-:261: WARNING:TYPO_SPELLING: 'configration' may be misspelled - perhaps 'configuration'?
#261: FILE: drivers/gpu/drm/i915/i915_drv.h:927:
+	/* optimal slice/subslice/EU configration state */

-:331: CHECK:SPACING: No space is necessary after a cast
#331: FILE: drivers/gpu/drm/i915/intel_device_info.c:1075:
+			(struct i915_sseu_optimum_config *) glk_gt1_config;

-:337: CHECK:SPACING: No space is necessary after a cast
#337: FILE: drivers/gpu/drm/i915/intel_device_info.c:1081:
+			(struct i915_sseu_optimum_config *) kbl_gt2_config;

total: 0 errors, 1 warnings, 4 checks, 257 lines checked
0267ce00b30c drm/i915: Predictive governor to control slice/subslice/eu
-:37: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#37: 
 * Drop timer and move logic to __execlists_update_reg_state. (Tvrtko Ursulin)

total: 0 errors, 1 warnings, 0 checks, 50 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
