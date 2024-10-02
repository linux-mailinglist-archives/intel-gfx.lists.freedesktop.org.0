Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011498DE4E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 17:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8782010E322;
	Wed,  2 Oct 2024 15:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E1410E1D5;
 Wed,  2 Oct 2024 15:04:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Introduce_DRM?=
 =?utf-8?q?_client_library_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Oct 2024 15:04:23 -0000
Message-ID: <172788146360.1163894.9640429497729876734@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241002131306.288618-1-tzimmermann@suse.de>
In-Reply-To: <20241002131306.288618-1-tzimmermann@suse.de>
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

Series: drm: Introduce DRM client library (rev2)
URL   : https://patchwork.freedesktop.org/series/139221/
State : warning

== Summary ==

Error: dim checkpatch failed
046be700c337 drm/i915: Select DRM_CLIENT_SELECTION
-:10: WARNING:BAD_SIGN_OFF: Unexpected content after email: 'Jani Nikula <jani.nikula@linux.intel.com>i', should be: 'Jani Nikula <jani.nikula@linux.intel.com> (i)'
#10: 
Cc: Jani Nikula <jani.nikula@linux.intel.com>i

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
2b7f686589bf drm/xe: Select DRM_CLIENT_SELECTION
8cce65922931 drm/fbdev: Select fbdev I/O helpers from modules that require them
9e3514552652 drm/fbdev: Store fbdev module parameters in separate file
da43426ce936 drm/client: Move client event handlers to drm_client_event.c
-:191: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#191: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 319 lines checked
49479fee6237 drm/client: Move suspend/resume into DRM client callbacks
968c38d80d39 drm/amdgpu: Suspend and resume internal clients with client helpers
824753936d10 drm/nouveau: Suspend and resume clients with client helpers
2cf5ec7cce0f drm/radeon: Suspend and resume clients with client helpers
11219c409f1b drm/client: Make client support optional
94dea8b3623f drm/client: Add client-lib module


