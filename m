Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B59994AD0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 14:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D52C10E506;
	Tue,  8 Oct 2024 12:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE6310E504;
 Tue,  8 Oct 2024 12:36:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Introduce_DRM?=
 =?utf-8?q?_client_library_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Oct 2024 12:36:49 -0000
Message-ID: <172839100931.1203781.13820642766020283543@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008120652.159190-1-tzimmermann@suse.de>
In-Reply-To: <20241008120652.159190-1-tzimmermann@suse.de>
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

Series: drm: Introduce DRM client library (rev3)
URL   : https://patchwork.freedesktop.org/series/139221/
State : warning

== Summary ==

Error: dim checkpatch failed
788cc065f162 drm/i915: Select DRM_CLIENT_SELECTION
b2f325ee3728 drm/xe: Select DRM_CLIENT_SELECTION
b004c7fe4793 drm/fbdev-dma: Select FB_DEFERRED_IO
-:15: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#15: 
  219 |                 fb_helper->fbdefio.deferred_io = drm_fb_helper_deferred_io;

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
fecdcbe22624 drm/fbdev: Select fbdev I/O helpers from modules that require them
feceaef2925c drm/fbdev: Store fbdev module parameters in separate file
ce9622dcb5d3 drm/client: Move client event handlers to drm_client_event.c
-:191: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#191: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 319 lines checked
dff07e04e9e5 drm/client: Move suspend/resume into DRM client callbacks
89655e7c8186 drm/amdgpu: Suspend and resume internal clients with client helpers
0291c4c0e5a6 drm/nouveau: Suspend and resume clients with client helpers
2bcc32addb28 drm/radeon: Suspend and resume clients with client helpers
602094605571 drm/client: Make client support optional
9cff569442d8 drm/client: Add client-lib module


