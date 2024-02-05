Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD5E849AA0
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 13:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F2CC10F97B;
	Mon,  5 Feb 2024 12:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C6910F97B;
 Mon,  5 Feb 2024 12:44:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Cursor_Fault_Fixes_?=
 =?utf-8?q?=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 12:44:09 -0000
Message-ID: <170713704917.1024443.16208379426254786418@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240205101053.3698717-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240205101053.3698717-1-chaitanya.kumar.borah@intel.com>
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

Series: Cursor Fault Fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/129517/
State : warning

== Summary ==

Error: dim checkpatch failed
933ccc26d131 drm: Add drm_vblank_work_flush_all().
-:33: WARNING:WAITQUEUE_ACTIVE: waitqueue_active without comment
#33: FILE: drivers/gpu/drm/drm_vblank_work.c:249:
+			    waitqueue_active(&vblank->work_wait_queue),

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
a51f63e85174 drm/i915: Use vblank worker to unpin old legacy cursor fb safely
64c99e620526 drm/i915: Use the same vblank worker for atomic unpin
-:37: WARNING:TYPO_SPELLING: 'succesful' may be misspelled - perhaps 'successful'?
#37: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:1168:
+	 * This branch can only ever be called after plane update is succesful,
 	                                                             ^^^^^^^^^

-:117: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:640:
+							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,

total: 0 errors, 2 warnings, 0 checks, 109 lines checked
eb7ce271fd58 drm/i915: do not destroy plane state if cursor unpin worker is scheduled
0f0aa4f3bce4 drm/i915: Add sanity check before accessing fb buffer object
34e515f49502 drm/i915: do not defer cleanup work


