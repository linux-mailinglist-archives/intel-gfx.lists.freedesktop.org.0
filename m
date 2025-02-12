Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F68BA31B44
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 02:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF9110E0BF;
	Wed, 12 Feb 2025 01:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E1210E0BF;
 Wed, 12 Feb 2025 01:41:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/vrr=3A_Fix_?=
 =?utf-8?q?DSB+VRR_usage_for_PTL+_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 01:41:07 -0000
Message-ID: <173932446707.1117740.643209107345681230@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/vrr: Fix DSB+VRR usage for PTL+ (rev5)
URL   : https://patchwork.freedesktop.org/series/144153/
State : warning

== Summary ==

Error: dim checkpatch failed
7879dba29b1b drm/i915/dsb: Move the +1 usec adjustment into dsb_wait_usec()
a6647a486ae0 drm/i915/vrr: Don't send push for legacy cursor updates
b7c6a07cc760 drm/i915/vrr: Account for TRANS_PUSH delay
f745bd2f5ea3 drm/i915/dsb: Compute use_dsb earlier
99e80288bab7 drm/i915/dsb: Introduce intel_dsb_poll()
fc9eb27b1d89 drm/i915/vrr: Reorder the DSB "wait for safe window" vs. TRANS_PUSH
81daf7c7ed04 drm/i915/vrr: Check that the push send bit is clear after delayed vblank
-:38: WARNING:TYPO_SPELLING: 'reponse' may be misspelled - perhaps 'response'?
#38: 
    there triggers a reponse timeout error on the DSB. VRR
                     ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 71 lines checked
2217efcef063 drm/i915/dsb: Decode DSB error interrupts


