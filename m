Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 952671848AD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 15:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5FC6EBD1;
	Fri, 13 Mar 2020 14:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E2CF6EBCF;
 Fri, 13 Mar 2020 14:01:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35A8EA0019;
 Fri, 13 Mar 2020 14:01:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Navik, Ankit P" <ankit.p.navik@intel.com>
Date: Fri, 13 Mar 2020 14:01:00 -0000
Message-ID: <158410806021.30353.7434782865963491902@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
In-Reply-To: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Dynamic_EU_configuration_of_Slice/Sub-slice/EU_=28rev6=29?=
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

Series: Dynamic EU configuration of Slice/Sub-slice/EU (rev6)
URL   : https://patchwork.freedesktop.org/series/69980/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9df798d37b3b drm/i915: Get active pending request for given context
d713a976ff0d drm/i915: set optimum eu/slice/sub-slice configuration based on load type
-:64: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#64: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:892:
+void i915_gem_context_set_load_type(struct i915_gem_context *ctx,
+				enum gem_load_type type)

-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.h:137:
+void i915_gem_context_set_load_type(struct i915_gem_context *ctx,
+				enum gem_load_type type);

total: 0 errors, 0 warnings, 2 checks, 248 lines checked
22a335ca33bf drm/i915: Predictive governor to control slice/subslice/eu
-:55: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#55: 
new file mode 100644

-:60: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#60: FILE: drivers/gpu/drm/i915/gt/intel_deu.c:1:
+/*

-:115: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#115: FILE: drivers/gpu/drm/i915/gt/intel_deu.c:56:
+	list_for_each_entry(ctx, &dev_priv->gem.contexts.list, link) {
+

-:136: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#136: FILE: drivers/gpu/drm/i915/gt/intel_deu.c:77:
+	hrtimer_forward_now(hrtimer,
+			ms_to_ktime(dev_priv->predictive_load_enable));

-:156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#156: FILE: drivers/gpu/drm/i915/gt/intel_deu.c:97:
+			hrtimer_start_range_ns(&dev_priv->pred_timer,
+			ms_to_ktime(dev_priv->predictive_load_enable),

-:163: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#163: FILE: drivers/gpu/drm/i915/gt/intel_deu.c:104:
+
+}

-:170: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#170: FILE: drivers/gpu/drm/i915/gt/intel_deu.h:1:
+/*

-:217: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#217: FILE: drivers/gpu/drm/i915/i915_drv.h:1678:
+extern enum hrtimer_restart predictive_load_cb(struct hrtimer *hrtimer);

-:252: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#252: FILE: drivers/gpu/drm/i915/i915_params.c:102:
+i915_param_named_unsafe(deu_enable, int, 0600,
+	"Enable dynamic EU control for power savings "

total: 0 errors, 3 warnings, 6 checks, 189 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
