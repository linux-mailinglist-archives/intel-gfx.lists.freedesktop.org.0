Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F817F35AC
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 19:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE3A10E554;
	Tue, 21 Nov 2023 18:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3DC710E554;
 Tue, 21 Nov 2023 18:10:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB508A3ECB;
 Tue, 21 Nov 2023 18:10:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 21 Nov 2023 18:10:29 -0000
Message-ID: <170059022979.30159.12110529530591886715@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231121173536.4033657-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20231121173536.4033657-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Implement_CMRR_Support_=28rev4=29?=
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

Series: Implement CMRR Support (rev4)
URL   : https://patchwork.freedesktop.org/series/126443/
State : warning

== Summary ==

Error: dim checkpatch failed
a2b75ba3f16e drm/i915: Define and compute Transcoder CMRR registers
-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display.c:4906:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:42: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#42: FILE: drivers/gpu/drm/i915/display/intel_display.c:4906:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 2 checks, 119 lines checked
d45c6b6164dd drm/i915: Add Enable/Disable for CMRR based on VRR state
-:21: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#21: 
- Check pipe active state in cmrr disabling. (Similar to enable case).[Jani]

total: 0 errors, 1 warnings, 0 checks, 130 lines checked
08fe1b7bf201 drm/i915: Compute CMRR and calculate vtotal


