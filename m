Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CB53814B5
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 02:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E476F4C8;
	Sat, 15 May 2021 00:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B01F6F4C7;
 Sat, 15 May 2021 00:38:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43B63A00C9;
 Sat, 15 May 2021 00:38:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Sat, 15 May 2021 00:38:47 -0000
Message-ID: <162103912727.17969.11345523832640232539@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514232247.144542-1-jose.souza@intel.com>
In-Reply-To: <20210514232247.144542-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/4=5D_drm/i915/display=3A_Fix?=
 =?utf-8?q?_fastsets_involving_PSR_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,1/4] drm/i915/display: Fix fastsets involving PSR (rev2)
URL   : https://patchwork.freedesktop.org/series/90184/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
acbf2a345c71 drm/i915/display: Fix fastsets involving PSR
ff9e8e892816 drm/i915/display: Allow fastsets when DP_SDP_VSC infoframe do not match with PSR enabled
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:8263:
+#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
+	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:33: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:8263:
+#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
+	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mask' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:8263:
+#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
+	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 3 checks, 29 lines checked
72e3be54f41d drm/i915/display: Nuke has_infoframe
d343f6fd5bb6 drm/i915/display: Drop FIXME about turn off infoframes


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
