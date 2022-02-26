Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CF04C536C
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 03:51:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2AC610E24B;
	Sat, 26 Feb 2022 02:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EAA2510E24B;
 Sat, 26 Feb 2022 02:51:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB2B5A0169;
 Sat, 26 Feb 2022 02:51:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 26 Feb 2022 02:51:43 -0000
Message-ID: <164584390395.9642.411044456469838058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225234631.3725943-1-lucas.demarchi@intel.com>
In-Reply-To: <20220225234631.3725943-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Use_str=5Fy?=
 =?utf-8?b?ZXNfbm8oKQ==?=
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

Series: series starting with [CI,1/4] drm/i915: Use str_yes_no()
URL   : https://patchwork.freedesktop.org/series/100771/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3baaea15643a drm/i915: Use str_yes_no()
-:333: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#333: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:213:
+		      str_yes_no(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,

-:334: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#334: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:214:
+		      str_yes_no(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,

-:553: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#553: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1645:
+			   str_yes_no(test_bit(TASKLET_STATE_SCHED, &engine->sched_engine->tasklet.state)),

-:730: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#730: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:316:
+			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));

-:746: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#746: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:425:
+			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));

-:1185: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#1185: FILE: drivers/gpu/drm/i915/intel_device_info.c:115:
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))

total: 0 errors, 5 warnings, 1 checks, 1085 lines checked
430ef6626a87 drm/i915: Use str_enable_disable()
68f7ba709078 drm/i915: Use str_enabled_disabled()
b80226768084 drm/i915: Use str_on_off()


