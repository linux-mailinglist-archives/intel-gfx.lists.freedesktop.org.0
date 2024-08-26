Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6AD95F970
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 21:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40CF510E28A;
	Mon, 26 Aug 2024 19:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA0110E28A;
 Mon, 26 Aug 2024 19:12:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?intel=5Fdisplay=5Ftypes=2Eh_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2024 19:12:54 -0000
Message-ID: <172469957482.785573.17078856977355562930@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1724689818.git.jani.nikula@intel.com>
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
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

Series: drm/i915/display: intel_display_types.h cleanup
URL   : https://patchwork.freedesktop.org/series/137803/
State : warning

== Summary ==

Error: dim checkpatch failed
35d75334dec3 drm/i915/wm: move struct intel_watermark_params to i9xx_wm.c
ece382131761 drm/i915/hdcp: split out intel_hdcp_shim.h for struct intel_hdcp_shim
-:183: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#183: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 297 lines checked
f918cf3b8f09 drm/i915/display: include drm/drm_probe_helper.h where needed
b2ba1f734557 drm/i915/display: include drm/drm_vblank.h where needed
94b72f79a7b4 drm/i915/display: include media/cec-notifier.h and linux/debugfs.h where needed
19d9908e4599 drm/i915/fb: hide the guts of intel_fb_obj()
03bb16d22d98 drm/i915/display: drop extra includes from intel_display_types.h


