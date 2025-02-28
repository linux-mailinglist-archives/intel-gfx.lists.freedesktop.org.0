Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED36A4A28C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 20:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4006B10E09D;
	Fri, 28 Feb 2025 19:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ECFE10E09D;
 Fri, 28 Feb 2025 19:18:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/xe/compat=3A_refactor_compat_i915=5Fdrv=2Eh?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2025 19:18:26 -0000
Message-ID: <174077030638.3266045.11614998750202914781@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250228142539.3216960-1-jani.nikula@intel.com>
In-Reply-To: <20250228142539.3216960-1-jani.nikula@intel.com>
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

Series: series starting with [1/2] drm/xe/compat: refactor compat i915_drv.h
URL   : https://patchwork.freedesktop.org/series/145648/
State : warning

== Summary ==

Error: dim checkpatch failed
de2667e05f1f drm/xe/compat: refactor compat i915_drv.h
-:37: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#37: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
5bcf3006f00e drm/i915/plane: convert intel_atomic_plane.[ch] to struct intel_display
-:28: CHECK:LINE_SPACING: Please don't use multiple blank lines
#28: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:59:
 
+

-:128: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#128: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:597:
+	if ((display->platform.ironlake || display->platform.sandybridge || display->platform.ivybridge) &&

total: 0 errors, 1 warnings, 1 checks, 281 lines checked


