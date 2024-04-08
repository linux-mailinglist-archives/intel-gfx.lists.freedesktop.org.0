Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D710A89CEA9
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 00:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F6710E32D;
	Mon,  8 Apr 2024 22:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B441129BF;
 Mon,  8 Apr 2024 22:57:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/5=5D_drm/vblank=3A_Introduce_drm=5Fcrtc=5Fvblank=5Fcrtc=28?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 22:57:55 -0000
Message-ID: <171261707555.1286971.1337540485105074771@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240408190611.24914-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240408190611.24914-1-ville.syrjala@linux.intel.com>
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

Series: series starting with [1/5] drm/vblank: Introduce drm_crtc_vblank_crtc()
URL   : https://patchwork.freedesktop.org/series/132178/
State : warning

== Summary ==

Error: dim checkpatch failed
f6612e1c60a0 drm/vblank: Introduce drm_crtc_vblank_crtc()
-:10: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#10: 
out the the correct drm_vblank_crtc for a given a drm_crtc.

total: 0 errors, 1 warnings, 0 checks, 209 lines checked
ce4c495ea428 drm/amdgpu: Use drm_crtc_vblank_crtc()
33d9627bcd50 drm/i915: Use drm_crtc_vblank_crtc()
98650d42f60b drm/nouveau: Use drm_crtc_vblank_crtc()
2b925ad9f869 drm/vkms: Use drm_crtc_vblank_crtc()


