Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0714649D10D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 18:41:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C1610E1F7;
	Wed, 26 Jan 2022 17:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 910F410E1F7;
 Wed, 26 Jan 2022 17:41:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DDE0A77A5;
 Wed, 26 Jan 2022 17:41:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 26 Jan 2022 17:41:49 -0000
Message-ID: <164321890957.25401.13620103962908845382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126093951.1470898-1-lucas.demarchi@intel.com>
In-Reply-To: <20220126093951.1470898-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_lib/string=5Fhelpers=3A_Add_a_few_string_helpers_=28rev2=29?=
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

Series: lib/string_helpers: Add a few string helpers (rev2)
URL   : https://patchwork.freedesktop.org/series/99030/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7b5dcbd538bd lib/string_helpers: Consolidate string helpers implementation
f129a0e5877f drm/i915: Fix trailing semicolon
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
	-:1189: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
f9c3d95ede47 drm/i915: Use str_yes_no()
-:331: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#331: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:213:
+		      str_yes_no(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,

-:332: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#332: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:214:
+		      str_yes_no(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,

-:551: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#551: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1644:
+			   str_yes_no(test_bit(TASKLET_STATE_SCHED, &engine->sched_engine->tasklet.state)),

-:728: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#728: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:313:
+			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));

-:744: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#744: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:422:
+			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));

-:1184: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#1184: FILE: drivers/gpu/drm/i915/intel_device_info.c:115:
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))

total: 0 errors, 5 warnings, 1 checks, 1086 lines checked
bd7513369767 drm/i915: Use str_enable_disable()
29eecd097b7a drm/i915: Use str_enabled_disabled()
677b985a1afd drm/i915: Use str_on_off()
63c3bd9cc94f drm/amd/display: Use str_yes_no()
012e3664260b drm/gem: Sort includes alphabetically
b23c0f35def5 drm: Convert open-coded yes/no strings to yesno()
-:98: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#98: FILE: drivers/gpu/drm/drm_client_modeset.c:245:
+			      connector->display_info.non_desktop ? "non desktop" : str_yes_no(enabled[i]));

total: 0 errors, 1 warnings, 0 checks, 136 lines checked
23940ca63a6c tomoyo: Use str_yes_no()
faebfa7913d6 cxgb4: Use str_yes_no()


