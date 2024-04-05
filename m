Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A20289A55B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 22:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5543910E34E;
	Fri,  5 Apr 2024 20:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F9E10E34E;
 Fri,  5 Apr 2024 20:04:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915_and_drm/xe_?=
 =?utf-8?q?display_integration_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Apr 2024 20:04:47 -0000
Message-ID: <171234748768.1239316.16201262042027237993@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712345787.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712345787.git.jani.nikula@intel.com>
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

Series: drm/i915 and drm/xe display integration cleanups
URL   : https://patchwork.freedesktop.org/series/132097/
State : warning

== Summary ==

Error: dim checkpatch failed
b8ca0bbab20e drm/i915: use IS_JASPERLAKE()/IS_ELKHARTLAKE() instead of IS_PLATFORM()
0706baf1630e drm/i915/dmc: define firmware URL locally
-:48: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#48: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
24728e5266d9 drm/i915: move i915_fixed.h to display/intel_fixed.h
-:16: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#16: 
rename from drivers/gpu/drm/i915/i915_fixed.h

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
ab38df8faf7d drm/xe/display: clean up a lot of cruft from compat i915_drv.h
52d4d76384b5 drm/xe/display: remove compat i915_gem.h
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
43aaa037346c drm/xe/display: clean up compat i915_vgpu.h


