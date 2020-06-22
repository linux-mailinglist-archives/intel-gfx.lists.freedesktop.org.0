Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CD42034AA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 12:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672EB89FD3;
	Mon, 22 Jun 2020 10:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA90589F8B;
 Mon, 22 Jun 2020 10:18:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D79DCA0BA8;
 Mon, 22 Jun 2020 10:18:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Mon, 22 Jun 2020 10:18:16 -0000
Message-ID: <159282109687.9210.1465675744602820526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?VRR_capable_attach_prop_in_i915=2C_VRR_debugfs?=
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

Series: VRR capable attach prop in i915, VRR debugfs
URL   : https://patchwork.freedesktop.org/series/78670/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.0
Fast mode used, each commit won't be checked separately.
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:1171:46: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:1151:46: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/i915/display/intel_display.c:1222:22: error: Expected constant expression in case statement
+drivers/gpu/drm/i915/display/intel_display.c:1225:22: error: Expected constant expression in case statement
+drivers/gpu/drm/i915/display/intel_display.c:1228:22: error: Expected constant expression in case statement
+drivers/gpu/drm/i915/display/intel_display.c:1231:22: error: Expected constant expression in case statement

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
