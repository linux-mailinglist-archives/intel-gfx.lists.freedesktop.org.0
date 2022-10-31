Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B501614063
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 23:07:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6710010E1A9;
	Mon, 31 Oct 2022 22:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8389710E1A9;
 Mon, 31 Oct 2022 22:07:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C070AADD8;
 Mon, 31 Oct 2022 22:07:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 31 Oct 2022 22:07:18 -0000
Message-ID: <166725403847.2015.13833966696495313669@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Use_intel=5Fcrtc?=
 =?utf-8?b?X25lZWRzX21vZGVzZXQoKSBtb3Jl?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915: Use intel_crtc_needs_modeset() more
URL   : https://patchwork.freedesktop.org/series/110341/
State : warning

== Summary ==

Error: dim checkpatch failed
b5bd37c4172e drm/i915: Use intel_crtc_needs_modeset() more
8f0008b80c98 drm/i915: Switch intel_connector_needs_modeset() to drm types
-:41: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_atomic.c:188:
+		 drm_atomic_crtc_needs_modeset(drm_atomic_get_new_crtc_state(state, new_conn_state->crtc)));

total: 0 errors, 1 warnings, 0 checks, 63 lines checked


