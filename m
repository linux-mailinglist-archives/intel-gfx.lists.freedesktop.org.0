Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439558479AF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 20:30:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC92210F0FC;
	Fri,  2 Feb 2024 19:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734C910F0FC;
 Fri,  2 Feb 2024 19:30:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5BCI=2C1/3=5D_drm=3A_Add_drm=5Fvblank=5Fwork=5Fflush=5Fall=28?=
 =?utf-8?q?=29=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 19:30:54 -0000
Message-ID: <170690225447.953329.7159960799411023977@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202154423.834991-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240202154423.834991-1-maarten.lankhorst@linux.intel.com>
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

Series: series starting with [CI,1/3] drm: Add drm_vblank_work_flush_all().
URL   : https://patchwork.freedesktop.org/series/129478/
State : warning

== Summary ==

Error: dim checkpatch failed
28807ec6d593 drm: Add drm_vblank_work_flush_all().
-:33: WARNING:WAITQUEUE_ACTIVE: waitqueue_active without comment
#33: FILE: drivers/gpu/drm/drm_vblank_work.c:249:
+			    waitqueue_active(&vblank->work_wait_queue),

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
fa478472ce0a drm/i915: Use vblank worker to unpin old legacy cursor fb safely
0383330aea1d drm/i915: Use the same vblank worker for atomic unpin
-:37: WARNING:TYPO_SPELLING: 'succesful' may be misspelled - perhaps 'successful'?
#37: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:1168:
+	 * This branch can only ever be called after plane update is succesful,
 	                                                             ^^^^^^^^^

-:118: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:641:
+							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,

total: 0 errors, 2 warnings, 0 checks, 110 lines checked


