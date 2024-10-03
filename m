Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BE098F5A2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 19:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5631810E8C7;
	Thu,  3 Oct 2024 17:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F055510E8C7;
 Thu,  3 Oct 2024 17:57:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/client=3A_Stop_u?=
 =?utf-8?q?sing_legacy_crtc-=3Emode_and_a_bunch_of_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Oct 2024 17:57:59 -0000
Message-ID: <172797827997.1169862.5672626249167865019@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241003113304.11700-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241003113304.11700-1-ville.syrjala@linux.intel.com>
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

Series: drm/client: Stop using legacy crtc->mode and a bunch of cleanups
URL   : https://patchwork.freedesktop.org/series/139493/
State : warning

== Summary ==

Error: dim checkpatch failed
c792344099fd drm/client: Constify modes
dded8f971b9d drm/client: Use array notation for function arguments
5efbfc394267 drm/client: Streamline mode selection debugs
53b2c61a53f2 drm/client: Make copies of modes
-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3eadd887dbac ("drm/client: Fully protect modes[] with dev->mode_config.mutex")'
#21: 
And with this we can undo also commit 3eadd887dbac
("drm/client:Fully protect modes[] with dev->mode_config.mutex")

-:131: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#131: FILE: drivers/gpu/drm/drm_client_modeset.c:458:
+			drm_mode_copy(&modes[i], drm_connector_preferred_mode(connector, width, height));

-:147: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#147: FILE: drivers/gpu/drm/drm_client_modeset.c:481:
+				drm_mode_copy(&modes[i], drm_connector_fallback_non_tiled_mode(connector));

-:211: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#211: FILE: drivers/gpu/drm/drm_client_modeset.c:703:
+			drm_mode_copy(&modes[i], drm_connector_preferred_mode(connector, width, height));

total: 1 errors, 3 warnings, 0 checks, 235 lines checked
2c97e1fbfe26 drm/client: Stop using the legacy crtc->mode
e690a0ca1b17 drm/client: s/new_crtc/crtc/
761f32dfac6c drm/client: Move variables to tighter scope
44f98be57a2b drm/client: s/unsigned int i/int i/


