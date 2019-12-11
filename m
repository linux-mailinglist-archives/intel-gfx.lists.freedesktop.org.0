Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F86711A525
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 08:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508546E9D7;
	Wed, 11 Dec 2019 07:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A052D6E9D7;
 Wed, 11 Dec 2019 07:34:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96D31A363B;
 Wed, 11 Dec 2019 07:34:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 11 Dec 2019 07:34:12 -0000
Message-ID: <157604965258.30689.16998234666005480594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211020858.423049-1-jose.souza@intel.com>
In-Reply-To: <20191211020858.423049-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C01/11=5D_drm=3A_Add_=5F=5Fdrm=5Fato?=
 =?utf-8?b?bWljX2hlbHBlcl9jcnRjX3N0YXRlX3Jlc2V0KCkgJiBjby4=?=
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

Series: series starting with [v2,01/11] drm: Add __drm_atomic_helper_crtc_state_reset() & co.
URL   : https://patchwork.freedesktop.org/series/70730/
State : failure

== Summary ==

Applying: drm: Add __drm_atomic_helper_crtc_state_reset() & co.
Applying: drm/i915: s/intel_crtc/crtc/ in intel_crtc_init()
Applying: drm/i915: Introduce intel_crtc_{alloc, free}()
Applying: drm/i915: Introduce intel_crtc_state_reset()
Applying: drm/i915: Introduce intel_plane_state_reset()
Applying: drm/i915/display: Share intel_connector_needs_modeset()
Applying: drm/i915/tgl: Select master transcoder for MST stream
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0007 drm/i915/tgl: Select master transcoder for MST stream
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
