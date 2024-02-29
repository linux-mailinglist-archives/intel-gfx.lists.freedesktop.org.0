Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FD686D6D9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 23:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42CD10E61C;
	Thu, 29 Feb 2024 22:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50E810E61C;
 Thu, 29 Feb 2024 22:26:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_Adaptive_Sync?=
 =?utf-8?q?_SDP_Support_for_DP_=28rev14=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Feb 2024 22:26:57 -0000
Message-ID: <170924561774.414572.16990189953622449422@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240229163957.2948182-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240229163957.2948182-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable Adaptive Sync SDP Support for DP (rev14)
URL   : https://patchwork.freedesktop.org/series/126829/
State : warning

== Summary ==

Error: dim checkpatch failed
5de8093d121a drm/dp: Add support to indicate if sink supports AS SDP
bf8049b39bb1 drm: Add Adaptive Sync SDP logging
2d792b70b1ae drm: Add crtc state dump for Adaptive Sync SDP
cdaa58ff08a6 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
28996390effd drm/i915/dp: Add wrapper function to check AS SDP
c1549bd49779 drm/i915/display: Compute AS SDP parameters
96286d60b391 drm/i915/display: Add state checker for Adaptive Sync SDP
-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/display/intel_display.c:5137:
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
8abb99a26b2d drm/i915/display: Compute vrr_vsync params
9f0cbe1982bb drm/i915/display: Read/Write AS sdp only when sink/source has enabled


