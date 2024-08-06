Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F73949494
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 17:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CCE10E3AC;
	Tue,  6 Aug 2024 15:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C4F10E3AC;
 Tue,  6 Aug 2024 15:30:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1OiByZW1v?=
 =?utf-8?b?dmUgX19pOTE1X3ByaW50aygp?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 06 Aug 2024 15:30:22 -0000
Message-ID: <172295822287.543786.16211549284842857254@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1722951405.git.jani.nikula@intel.com>
In-Reply-To: <cover.1722951405.git.jani.nikula@intel.com>
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

Series: drm/i915: remove __i915_printk()
URL   : https://patchwork.freedesktop.org/series/136927/
State : warning

== Summary ==

Error: dim checkpatch failed
35cd2f6098a9 drm/i915: remove a few __i915_printk() uses
e4981bdebe5c drm/i915: remove i915_report_error()
545c1e43b479 drm/i915: remove __i915_printk()
-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_utils.h:65:
+#define i915_probe_error(i915, fmt, ...) ({ \
+	if (i915_error_injected()) \
+		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
+	else \
+		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
+})

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/i915_utils.h:65:
+#define i915_probe_error(i915, fmt, ...) ({ \
+	if (i915_error_injected()) \
+		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
+	else \
+		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
+})

total: 0 errors, 0 warnings, 2 checks, 72 lines checked


