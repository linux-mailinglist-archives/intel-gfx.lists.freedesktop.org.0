Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C209F1A3C
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2024 00:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7783D10E0FA;
	Fri, 13 Dec 2024 23:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944CF10E0FA;
 Fri, 13 Dec 2024 23:41:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_DSB+VRR_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2024 23:41:52 -0000
Message-ID: <173413331260.2310628.14988490946133283251@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: DSB+VRR (rev2)
URL   : https://patchwork.freedesktop.org/series/142375/
State : warning

== Summary ==

Error: dim checkpatch failed
9b1dca6ca2dc drm/i915: Extract intel_crtc_vblank_delay()
4aed3c3faeb0 drm/i915: Check vblank delay validity
3bc7ded952ae drm/i915: Fix include order
7a765ddf08eb drm/i915: Introduce intel_vrr_{vmin,vmax}_vtotal()
bda1f4b494fb drm/i915: Move framestart/etc. state dump to a better spot
5d7ab88912c1 drm/i915: Include the vblank delay in the state dump
e85c298b5609 drm/i915/vrr: Improve VRR state dump
-:35: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:297:
+		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
9c519cb080a9 drm/i915: Include the scanline offset in the state dump
4d7ec0ab96a6 drm/i915: Extract intel_mode_vblank_delay()
86ab44a5ad1f drm/i915: Consolidate intel_pre_commit_crtc_state()
a1e2dbfc07d2 drm/i915: Extract intel_crtc_active_timings()
fe4e670a3838 drm/i915/vrr: Introduce intel_vrr_vblank_delay()
ffc204c35335 drm/i915/vrr: Drop the extra vmin adjustment for ADL+
5d641e5f946d drm/i915/vrr: Fix vmin/vmax/flipline on TGL when using vblank delay
9d4d9be08a93 drm/i915/vrr: Add extra vblank delay to estimates
daf6db27d19a drm/i915/vrr: Plumb the DSB into intel_vrr_send_push()
426342e7dc6c drm/i915/dsb: Add support for triggering VRR push with DSB
554331a8582c drm/i915/dsb: Allow DSB to perform commits when VRR is enabled


