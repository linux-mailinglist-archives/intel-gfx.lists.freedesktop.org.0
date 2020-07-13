Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D323021E04F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 21:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029D06E5A5;
	Mon, 13 Jul 2020 19:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3FB06E5A4;
 Mon, 13 Jul 2020 19:00:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE151A66C9;
 Mon, 13 Jul 2020 19:00:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 13 Jul 2020 19:00:18 -0000
Message-ID: <159466681895.16739.10427160671200245902@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200713170746.254388-1-lyude@redhat.com>
In-Reply-To: <20200713170746.254388-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/probe=5Fhelper=2C_i915=3A_Validate_MST_modes_against_PBN_limit?=
 =?utf-8?q?s_=28rev4=29?=
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

Series: drm/probe_helper, i915: Validate MST modes against PBN limits (rev4)
URL   : https://patchwork.freedesktop.org/series/77670/
State : failure

== Summary ==

Applying: drm/probe_helper: Add drm_connector_helper_funcs.mode_valid_ctx
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_crtc_helper_internal.h
M	drivers/gpu/drm/drm_probe_helper.c
M	include/drm/drm_modeset_helper_vtables.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915/mst: filter out the display mode exceed sink's capability
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_dp_mst.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
