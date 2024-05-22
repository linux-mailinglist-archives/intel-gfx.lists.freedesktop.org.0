Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FB38CBBC9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 09:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A36010E0DA;
	Wed, 22 May 2024 07:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6843510E0DA;
 Wed, 22 May 2024 07:15:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Add_comparison_for_pipe_config_for_MTL+_platforms?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2024 07:15:29 -0000
Message-ID: <171636212942.2165803.8823237935798661450@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240522061350.248749-1-mika.kahola@intel.com>
In-Reply-To: <20240522061350.248749-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Add comparison for pipe config for MTL+ platforms
URL   : https://patchwork.freedesktop.org/series/133899/
State : warning

== Summary ==

Error: dim checkpatch failed
dcc6ac972817 drm/i915/display: Revert "drm/i915/display: Skip C10 state verification in case of fastset"
10d56e0532b7 drm/i915/display: Add compare config for MTL+ platforms
-:174: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#174: FILE: drivers/gpu/drm/i915/display/intel_display.c:5133:
+#define PIPE_CONF_CHECK_PLL_CX0(name) do { \
+	if (!intel_cx0pll_compare_hw_state(&current_config->name, \
+					   &pipe_config->name)) { \
+		pipe_config_cx0pll_mismatch(&p, fastset, crtc, __stringify(name), \
+					    &current_config->name, \
+					    &pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:174: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#174: FILE: drivers/gpu/drm/i915/display/intel_display.c:5133:
+#define PIPE_CONF_CHECK_PLL_CX0(name) do { \
+	if (!intel_cx0pll_compare_hw_state(&current_config->name, \
+					   &pipe_config->name)) { \
+		pipe_config_cx0pll_mismatch(&p, fastset, crtc, __stringify(name), \
+					    &current_config->name, \
+					    &pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 2 checks, 170 lines checked


