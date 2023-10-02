Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 591A37B5D33
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 00:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B51D10E02D;
	Mon,  2 Oct 2023 22:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2FF510E02D;
 Mon,  2 Oct 2023 22:35:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7E25A0169;
 Mon,  2 Oct 2023 22:35:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: maarten.lankhorst@linux.intel.com
Date: Mon, 02 Oct 2023 22:35:47 -0000
Message-ID: <169628614771.3206.17605113462538880380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231002114528.125529-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20231002114528.125529-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Block_in_cleanup?=
 =?utf-8?q?_for_legacy_cursor_updates?=
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

Series: series starting with [1/2] drm/i915: Block in cleanup for legacy cursor updates
URL   : https://patchwork.freedesktop.org/series/124519/
State : warning

== Summary ==

Error: dim checkpatch failed
73442a8a986f drm/i915: Block in cleanup for legacy cursor updates
-:98: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_crtc.c:747:
+							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,

total: 0 errors, 1 warnings, 0 checks, 87 lines checked
b47e8d45292b drm/i915: Use drm_atomic_helper_update_plane for cursor updates
-:168: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Maarten Lankhorst <dev@lankhorst.se>' != 'Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>'

total: 0 errors, 1 warnings, 0 checks, 153 lines checked


