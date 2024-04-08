Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5F289CBC8
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3FC51127E7;
	Mon,  8 Apr 2024 18:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB4A1127E7;
 Mon,  8 Apr 2024 18:39:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_debug_logging?=
 =?utf-8?q?_improvements_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 18:39:07 -0000
Message-ID: <171260154731.1286970.114427207478915211@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712568037.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712568037.git.jani.nikula@intel.com>
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

Series: drm: debug logging improvements (rev2)
URL   : https://patchwork.freedesktop.org/series/130881/
State : warning

== Summary ==

Error: dim checkpatch failed
8940559de49f drm/probe-helper: switch to drm device based logging
6624644e87e2 drm/modes: switch to drm device based error logging
35b6825ed9e2 drm/sysfs: switch to drm device based logging
dd9d4e27a486 drm/client: switch to drm device based logging, and more
-:328: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#328: FILE: drivers/gpu/drm/drm_client_modeset.c:875:
+			if (drm_WARN_ON_ONCE(dev, modeset->num_connectors == DRM_CLIENT_MAX_CLONED_CONNECTORS ||

-:329: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#329: FILE: drivers/gpu/drm/drm_client_modeset.c:876:
+					     (dev->mode_config.num_crtc > 1 && modeset->num_connectors == 1))) {

total: 0 errors, 2 warnings, 0 checks, 298 lines checked
cae0b6564ddc drm/crtc: switch to drm device based logging
e6b1e497351f drm/crtc-helper: switch to drm device based logging and warns
-:251: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#251: FILE: drivers/gpu/drm/drm_crtc_helper.c:785:
+				drm_dbg_kms(dev, "\t[CONNECTOR:%d:%s] set DPMS on\n", set->connectors[i]->base.id,

total: 0 errors, 1 warnings, 0 checks, 251 lines checked
0dc8e3ad21b1 drm: prefer DRM_MODE_FMT/ARG over drm_mode_debug_printmodeline()
-:79: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#79: FILE: drivers/gpu/drm/drm_crtc_helper.c:769:
+			drm_dbg_kms(dev, "[CRTC:%d:%s] attempting to set mode from userspace: " DRM_MODE_FMT "\n",

-:118: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#118: FILE: drivers/gpu/drm/drm_modes.c:1816:
+					    DRM_MODE_ARG(mode), drm_get_mode_status_name(mode->status));

total: 0 errors, 2 warnings, 0 checks, 86 lines checked


