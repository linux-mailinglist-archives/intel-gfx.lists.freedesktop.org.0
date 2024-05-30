Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369E38D4E75
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 16:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B75312B0AB;
	Thu, 30 May 2024 14:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34F011A4F4;
 Thu, 30 May 2024 14:55:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_move_Intel_dr?=
 =?utf-8?q?m_headers_to_a_subdirectory_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 May 2024 14:55:23 -0000
Message-ID: <171708092366.2238285.11480881648594611448@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1717075103.git.jani.nikula@intel.com>
In-Reply-To: <cover.1717075103.git.jani.nikula@intel.com>
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

Series: drm: move Intel drm headers to a subdirectory (rev4)
URL   : https://patchwork.freedesktop.org/series/132264/
State : warning

== Summary ==

Error: dim checkpatch failed
db129675ce86 drm: move intel-gtt.h under include/drm/intel
-:84: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#84: 
rename from include/drm/intel-gtt.h

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
21bf3feb858e drm: move i915_gsc_proxy_mei_interface.h under include/drm/intel
-:60: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#60: 
rename from include/drm/i915_gsc_proxy_mei_interface.h

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
31b026f2a701 drm: move i915_component.h under include/drm/intel
-:140: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#140: 
rename from include/drm/i915_component.h

total: 0 errors, 1 warnings, 0 checks, 80 lines checked
babab6bf8260 drm: move intel_lpe_audio.h under include/drm/intel
-:47: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#47: 
rename from include/drm/intel_lpe_audio.h

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
b7f1f8643072 drm: move i915_drm.h under include/drm/intel
-:130: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#130: 
rename from include/drm/i915_drm.h

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
2c5dfb19827a drm: move i915_pxp_tee_interface.h under include/drm/intel
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
rename from include/drm/i915_pxp_tee_interface.h

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
320386370f51 drm: move i915_pciids.h under include/drm/intel
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
rename from include/drm/i915_pciids.h

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
f9a7ff64ef30 drm: move xe_pciids.h under include/drm/intel
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
rename from include/drm/xe_pciids.h

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
c0a1cbd57f5c drm: move i915_hdcp_interface.h under include/drm/intel
-:84: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#84: 
rename from include/drm/i915_hdcp_interface.h

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
fbd5fb7ec1cf MAINTAINERS: update i915 and xe entries for include/drm/intel


