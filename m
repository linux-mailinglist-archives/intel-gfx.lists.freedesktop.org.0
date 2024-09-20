Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A89F997D14D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 08:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59E510E039;
	Fri, 20 Sep 2024 06:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5904D10E039;
 Fri, 20 Sep 2024 06:43:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?revamped_crtc_iterators?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2024 06:43:59 -0000
Message-ID: <172681463935.1049241.2976040342047864626@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1726776703.git.jani.nikula@intel.com>
In-Reply-To: <cover.1726776703.git.jani.nikula@intel.com>
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

Series: drm/i915/display: revamped crtc iterators
URL   : https://patchwork.freedesktop.org/series/138886/
State : warning

== Summary ==

Error: dim checkpatch failed
ea15e9062cea drm/i915/display: add improved crtc iterators
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:104: CHECK:LINE_SPACING: Please don't use multiple blank lines
#104: FILE: drivers/gpu/drm/i915/display/intel_crtc_iter.c:68:
+
+

-:218: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#218: FILE: drivers/gpu/drm/i915/display/intel_crtc_iter.h:82:
+#define intel_crtc_iter_for_each(crtc, iter) \
+	while (((crtc) = (iter)->get_next(iter)))

-:218: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'iter' - possible side-effects?
#218: FILE: drivers/gpu/drm/i915/display/intel_crtc_iter.h:82:
+#define intel_crtc_iter_for_each(crtc, iter) \
+	while (((crtc) = (iter)->get_next(iter)))

total: 1 errors, 1 warnings, 2 checks, 195 lines checked
3d6cef176432 drm/i915/display: try out the new crtc iterators


