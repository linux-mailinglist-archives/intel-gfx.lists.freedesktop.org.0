Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3FB8CE4A3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 13:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2523810E797;
	Fri, 24 May 2024 11:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 773AA10E797;
 Fri, 24 May 2024 11:02:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Implement_CMRR_Suppo?=
 =?utf-8?q?rt_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 May 2024 11:02:26 -0000
Message-ID: <171654854648.2172910.8308917861274478002@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Implement CMRR Support (rev9)
URL   : https://patchwork.freedesktop.org/series/126443/
State : warning

== Summary ==

Error: dim checkpatch failed
569f89bc8d2a drm/i915: Define and compute Transcoder CMRR registers
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/display/intel_display.c:5064:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:48: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#48: FILE: drivers/gpu/drm/i915/display/intel_display.c:5064:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:151: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#151: 
new file mode 100644

total: 0 errors, 1 warnings, 2 checks, 125 lines checked
223571376cf9 drm/i915: Update trans_vrr_ctl flag when cmrr is computed
78f31fa1463a drm/i915: Compute CMRR and calculate vtotal
de5c66dca679 Add refresh rate divider to struct representing AS SDP
493d5b49771f drm/i915/display: Add support for pack and unpack
7309d5ca1a2a drm/i915/display: Compute Adaptive sync SDP params
242a0f1a8d69 drm/i915/display: Compute vrr vsync params
e0bae01b231a drm/i915/display: Compute cmrr.enable flag


