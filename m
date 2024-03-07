Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B242875AFF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 00:17:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD74A10F26E;
	Thu,  7 Mar 2024 23:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B21E10F26E;
 Thu,  7 Mar 2024 23:17:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_debug_logging?=
 =?utf-8?q?_improvements?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 23:17:51 -0000
Message-ID: <170985347157.610806.17753706904911372699@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1709843865.git.jani.nikula@intel.com>
In-Reply-To: <cover.1709843865.git.jani.nikula@intel.com>
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

Series: drm: debug logging improvements
URL   : https://patchwork.freedesktop.org/series/130881/
State : warning

== Summary ==

Error: dim checkpatch failed
f26d79b2e37e drm/modes: add drm_mode_print() to dump mode in drm_printer
f62d2d0fd5bd drm/probe-helper: switch to drm device based logging
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
[drm:drm_helper_probe_single_connector_modes] [CONNECTOR:290:DP-5] probed modes :

total: 0 errors, 1 warnings, 0 checks, 78 lines checked
313e0b07b60b drm/modes: switch drm_mode_prune_invalid() to use struct drm_printer
-:11: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#11: 
[drm:drm_mode_debug_printmodeline] Modeline "6144x3456": 60 1378800 6144 6192 6224 6464 3456 3459 3464 3555 0x48 0x9

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
c8e71be55a9c drm/modes: switch to drm device based error logging
a0d26c39cc2b drm/sysfs: switch to drm device based logging
07da09454cf9 drm/client: switch to drm device based logging, and more
-:327: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#327: FILE: drivers/gpu/drm/drm_client_modeset.c:875:
+			if (drm_WARN_ON_ONCE(dev, modeset->num_connectors == DRM_CLIENT_MAX_CLONED_CONNECTORS ||

-:328: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#328: FILE: drivers/gpu/drm/drm_client_modeset.c:876:
+					     (dev->mode_config.num_crtc > 1 && modeset->num_connectors == 1))) {

total: 0 errors, 2 warnings, 0 checks, 298 lines checked


