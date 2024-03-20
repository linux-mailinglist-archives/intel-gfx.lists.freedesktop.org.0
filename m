Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B4A880AC4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 06:44:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9C810EADC;
	Wed, 20 Mar 2024 05:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFB3C10EAD8;
 Wed, 20 Mar 2024 05:44:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_Adaptive_Sync?=
 =?utf-8?q?_SDP_Support_for_DP_=28rev21=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Mar 2024 05:44:23 -0000
Message-ID: <171091346385.920302.8709113191772408793@8e613ede5ea5>
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

Series: Enable Adaptive Sync SDP Support for DP (rev21)
URL   : https://patchwork.freedesktop.org/series/126829/
State : warning

== Summary ==

Error: dim checkpatch failed
7c4053f5d9d2 drm/dp: Add support to indicate if sink supports AS SDP
3a1ee66b1f6d drm: Add Adaptive Sync SDP logging
2a06f2ce9d6c drm/i915/display: Add crtc state dump for Adaptive Sync SDP
382882903214 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
1ed40e1d8720 drm/i915/dp: Add wrapper function to check AS SDP
687e48c73585 drm/i915/display: Compute AS SDP parameters
555da9c229a2 drm/i915/display: Add state checker for Adaptive Sync SDP
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5116:
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
4b2d46f36104 drm/i915/display: Compute vrr_vsync params
-:26: WARNING:TYPO_SPELLING: 'befor' may be misspelled - perhaps 'before'?
#26: 
- Add TRANS_VRR_VSYNC befor enabling VRR as per bspec. (Ankit)
                      ^^^^^

total: 0 errors, 1 warnings, 0 checks, 102 lines checked
f5e840600698 drm/i915/display: Read/Write Adaptive Sync SDP


