Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7FF8D1792
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D0F10E45A;
	Tue, 28 May 2024 09:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF07610E73E;
 Tue, 28 May 2024 09:54:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fix_cursor_FB_unpinn?=
 =?utf-8?q?ing=2E_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2024 09:54:30 -0000
Message-ID: <171689007091.2215514.15171485648958191545@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
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

Series: Fix cursor FB unpinning. (rev2)
URL   : https://patchwork.freedesktop.org/series/133896/
State : warning

== Summary ==

Error: dim checkpatch failed
a371966b2783 drm: Add drm_vblank_work_flush_all().
-:11: WARNING:BAD_SIGN_OFF: 'Co-developed-by:' is the preferred signature form
#11: 
Co-Developed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

-:11: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#11: 
Co-Developed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

total: 0 errors, 2 warnings, 0 checks, 41 lines checked
e7669c331560 drm/i915: Use vblank worker to unpin old legacy cursor fb safely
25e097706806 drm/i915: Use the same vblank worker for atomic unpin
-:108: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#108: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:638:
+							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,

-:111: WARNING:LONG_LINE_COMMENT: line length of 110 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:641:
+				/* Remove plane from atomic state, cleanup/free is done from vblank worker. */

total: 0 errors, 2 warnings, 0 checks, 98 lines checked


