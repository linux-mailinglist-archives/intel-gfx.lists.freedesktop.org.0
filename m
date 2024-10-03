Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B8F98F90C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 23:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E51610E18B;
	Thu,  3 Oct 2024 21:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72FD410E18B;
 Thu,  3 Oct 2024 21:40:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/client=3A_Stop_u?=
 =?utf-8?q?sing_legacy_crtc-=3Emode_and_a_bunch_of_cleanups_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Oct 2024 21:40:34 -0000
Message-ID: <172799163446.1171391.12021319244228379989@2413ebb6fbb6>
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

Series: drm/client: Stop using legacy crtc->mode and a bunch of cleanups (rev4)
URL   : https://patchwork.freedesktop.org/series/139493/
State : warning

== Summary ==

Error: dim checkpatch failed
ee02b235c701 drm/client: Constify modes
8f2ff5600d27 drm/client: Use array notation for function arguments
3359a09a8b20 drm/client: Streamline mode selection debugs
b9c677dbe986 drm/client: Make copies of modes
-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3eadd887dbac ("drm/client: Fully protect modes[] with dev->mode_config.mutex")'
#21: 
And with this we can undo also commit 3eadd887dbac
("drm/client:Fully protect modes[] with dev->mode_config.mutex")

-:141: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#141: FILE: drivers/gpu/drm/drm_client_modeset.c:466:
+					      drm_connector_preferred_mode(connector, width, height));

-:159: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#159: FILE: drivers/gpu/drm/drm_client_modeset.c:491:
+						      drm_connector_fallback_non_tiled_mode(connector));

-:226: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#226: FILE: drivers/gpu/drm/drm_client_modeset.c:716:
+					      drm_connector_preferred_mode(connector, width, height));

total: 1 errors, 3 warnings, 0 checks, 251 lines checked
1cee507155e9 drm/client: Stop using the legacy crtc->mode
eb60357dee42 drm/client: s/new_crtc/crtc/
380825ae46a6 drm/client: Move variables to tighter scope
18141aafedb0 drm/client: s/unsigned int i/int i/


