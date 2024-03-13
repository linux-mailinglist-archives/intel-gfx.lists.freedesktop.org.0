Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69AF87A282
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 05:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F059A10F404;
	Wed, 13 Mar 2024 04:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FADD10F404;
 Wed, 13 Mar 2024 04:51:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_Adaptive_Sync?=
 =?utf-8?q?_SDP_Support_for_DP_=28rev18=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Mar 2024 04:51:31 -0000
Message-ID: <171030549139.715418.654238303245650708@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240311094238.3320888-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240311094238.3320888-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable Adaptive Sync SDP Support for DP (rev18)
URL   : https://patchwork.freedesktop.org/series/126829/
State : warning

== Summary ==

Error: dim checkpatch failed
b375ee417fe9 drm/dp: Add support to indicate if sink supports AS SDP
fe133c6b8a7d drm: Add Adaptive Sync SDP logging
1c5fca8cb6f6 drm/i915/display: Add crtc state dump for Adaptive Sync SDP
f0b8cd1cbd29 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
2919c75a5ae8 drm/i915/dp: Add wrapper function to check AS SDP
d46c23281f6f drm/i915/display: Compute AS SDP parameters
a09302a7444c drm/i915/display: Add state checker for Adaptive Sync SDP
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5137:
+#define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
+	if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_as_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 70 lines checked
a8840a207850 drm/i915/display: Compute vrr_vsync params
fd56c33fcef9 drm/i915/display: Read/Write Adaptive Sync SDP


