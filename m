Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28005122DF0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 15:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6533C899F3;
	Tue, 17 Dec 2019 14:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4AA2899F3;
 Tue, 17 Dec 2019 14:05:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC565A0094;
 Tue, 17 Dec 2019 14:05:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 17 Dec 2019 14:05:24 -0000
Message-ID: <157659152468.21846.184994374043429324@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211184526.142413-1-jose.souza@intel.com>
In-Reply-To: <20191211184526.142413-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv2=2Crebased=2C01/11=5D_drm=3A_Add_=5F?=
 =?utf-8?b?X2RybV9hdG9taWNfaGVscGVyX2NydGNfc3RhdGVfcmVzZXQoKSAmIGNvLiAo?=
 =?utf-8?q?rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,rebased,01/11] drm: Add __drm_atomic_helper_crtc_state_reset() & co. (rev2)
URL   : https://patchwork.freedesktop.org/series/70775/
State : failure

== Summary ==

Applying: drm: Add __drm_atomic_helper_crtc_state_reset() & co.
Applying: drm/i915: s/intel_crtc/crtc/ in intel_crtc_init()
Applying: drm/i915: Introduce intel_crtc_{alloc, free}()
Applying: drm/i915: Introduce intel_crtc_state_reset()
Applying: drm/i915: Introduce intel_plane_state_reset()
Applying: drm/i915/display: Share intel_connector_needs_modeset()
Applying: drm/i915/tgl: Select master transcoder for MST stream
Applying: drm/i915/display: Always enables MST master pipe first
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0008 drm/i915/display: Always enables MST master pipe first
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
