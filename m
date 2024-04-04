Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F795898FE7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91C3113535;
	Thu,  4 Apr 2024 21:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA84D11352F;
 Thu,  4 Apr 2024 21:10:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/client=3A_Use_af?=
 =?utf-8?q?ter_free_and_debug_improvements?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 04 Apr 2024 21:10:19 -0000
Message-ID: <171226501995.1211910.3759664370075168296@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240404203336.10454-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240404203336.10454-1-ville.syrjala@linux.intel.com>
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

Series: drm/client: Use after free and debug improvements
URL   : https://patchwork.freedesktop.org/series/132050/
State : warning

== Summary ==

Error: dim checkpatch failed
8d2ac6e9d5da drm/client: Fully protect modes[] with dev->mode_config.mutex
014b518172bd drm/client: s/drm_connector_has_preferred_mode/drm_connector_preferred_mode/
28c42d9c02c8 drm/client: Use drm_mode_destroy()
8dbddec1606f drm/client: Add a FIXME around crtc->mode usage
674fada5c421 drm/client: Nuke outdated fastboot comment
d0eaf419e0b7 drm/client: Constify modes
1a58deeca6d5 drm/client: Use array notation for function arguments
4448f55578cd drm/client: Extract drm_connector_first_mode()
035fff826184 drm/client: Switch to per-device debugs
-:35: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#35: FILE: drivers/gpu/drm/drm_client_modeset.c:255:
+			    connector->display_info.non_desktop ? "non desktop" : str_yes_no(enabled[i]));

-:99: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#99: FILE: drivers/gpu/drm/drm_client_modeset.c:438:
+			drm_client_get_tile_offsets(dev, connectors, connector_count, modes, offsets, i,

-:113: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#113: FILE: drivers/gpu/drm/drm_client_modeset.c:448:
+				    connector->base.id, connector->tile_group ? connector->tile_group->id : 0);

total: 0 errors, 3 warnings, 0 checks, 283 lines checked
5c5d8ca215a3 drm/client: Use [CONNECTOR:%d:%s] formatting
e0e87e44b782 drm/client: Streamline mode selection debugs
f233b082ffaf drm/probe-helper: Switch to per-device debugs


