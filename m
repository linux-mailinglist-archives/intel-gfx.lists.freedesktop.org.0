Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C92DBA45D56
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 12:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D8D10E8E1;
	Wed, 26 Feb 2025 11:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DB710E8DE;
 Wed, 26 Feb 2025 11:38:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pfit=3A_pan?=
 =?utf-8?q?el_fitter_refactors?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2025 11:38:44 -0000
Message-ID: <174056992415.2314827.9482891644954295962@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1740564009.git.jani.nikula@intel.com>
In-Reply-To: <cover.1740564009.git.jani.nikula@intel.com>
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

Series: drm/i915/pfit: panel fitter refactors
URL   : https://patchwork.freedesktop.org/series/145471/
State : warning

== Summary ==

Error: dim checkpatch failed
7f729b282b08 drm/i915/pfit: rename intel_panel_fitting() to intel_pfit_compute_config()
14a378e8e118 drm/i915/pfit: move ilk and i9xx pfit code to intel_pfit.[ch]
-:356: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#356: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:595:
+	 * it's in use. The hw state code will make sure we get this right. */

-:422: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#422: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:661:
+	 * default, change to something else for debugging. */

total: 0 errors, 2 warnings, 0 checks, 436 lines checked
04c5935b9e14 drm/i915/pfit: fix comment style for moved comments
ad17b5b424b4 drm/i915/pfit: convert moved code to struct intel_display
361dec326951 drm/i915/pfit: split out intel_pfit_regs.h
-:47: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#47: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 189 lines checked


