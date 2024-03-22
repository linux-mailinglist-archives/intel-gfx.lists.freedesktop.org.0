Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A19886C0E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 13:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD8110E48E;
	Fri, 22 Mar 2024 12:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B64D810E44D;
 Fri, 22 Mar 2024 12:28:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_fastset_for_m?=
 =?utf-8?q?bus=5Fjoin_state_change_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Mar 2024 12:28:13 -0000
Message-ID: <171111049374.961261.8268690379276300280@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
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

Series: Enable fastset for mbus_join state change (rev2)
URL   : https://patchwork.freedesktop.org/series/130480/
State : warning

== Summary ==

Error: dim checkpatch failed
9509e256b405 drm/i915: Update mbus in intel_dbuf_mbus_update and do it properly
-:9: WARNING:TYPO_SPELLING: 'swithing' may be misspelled - perhaps 'switching'?
#9: 
or disabling mbus joining(typical scenario is swithing between
                                              ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
cd3089203bd3 drm/i915: Break intel_dbuf_mbus_update into 2 separate parts
ea40cb166010 drm/i915: Use old mbus_join value when increasing CDCLK
466a77763a9b drm/i915: Loop over all active pipes in intel_mbus_dbox_update
4b6e068f01cf drm/i915: Implement vblank synchronized MBUS join changes
-:80: ERROR:CODE_INDENT: code indent should use tabs where possible
#80: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:3592:
+^I^I^I^I        const struct intel_dbuf_state *dbuf_state)$

-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:3592:
+static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
+				        const struct intel_dbuf_state *dbuf_state)

-:140: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices'
#140: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:3656:
+	if (!new_dbuf_state ||
+	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices))

-:159: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices'
#159: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:3675:
+	if (!new_dbuf_state ||
+	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices))

total: 1 errors, 0 warnings, 3 checks, 210 lines checked


