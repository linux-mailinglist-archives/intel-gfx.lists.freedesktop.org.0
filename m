Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2A36BEEC4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 17:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A67D10E3D8;
	Fri, 17 Mar 2023 16:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 041AA10E3E1;
 Fri, 17 Mar 2023 16:46:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0072BAADF3;
 Fri, 17 Mar 2023 16:46:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 17 Mar 2023 16:46:47 -0000
Message-ID: <167907160799.12995.12755606130265176421@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230317102426.14810-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230317102426.14810-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Communicate_display_power_demands_to_pc?=
 =?utf-8?q?ode_more_accurately_=28rev3=29?=
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

Series: drm/i915/display: Communicate display power demands to pcode more accurately (rev3)
URL   : https://patchwork.freedesktop.org/series/114401/
State : warning

== Summary ==

Error: dim checkpatch failed
da82682afba7 drm/i915/display: Communicate display power demands to pcode more accurately
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Adding new sequence with current cdclk associate with voltage value masking.

-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2273:
+		drm_err(&i915->drm,
+				"Failed to inform PCU about display config (err %d)\n",

-:104: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'new_cdclk_state->active_pipes ==
 				 old_cdclk_state->active_pipes'
#104: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2356:
+	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+				 &new_cdclk_state->actual) &&
+				 (new_cdclk_state->active_pipes ==
+				 old_cdclk_state->active_pipes))

-:279: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#279: FILE: drivers/gpu/drm/i915/i915_reg.h:6424:
+#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE_PIPE_COUNT_MASK, (x))

-:281: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#281: FILE: drivers/gpu/drm/i915/i915_reg.h:6426:
+#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
+		(DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
+		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
+		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level))

total: 1 errors, 2 warnings, 2 checks, 244 lines checked


