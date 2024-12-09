Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4494F9E9E26
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 19:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF4710E220;
	Mon,  9 Dec 2024 18:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEE610E092;
 Mon,  9 Dec 2024 18:36:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/xe/display=3A_Re?=
 =?utf-8?q?work_display_init_for_reducing_flickering=2E_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Dec 2024 18:36:33 -0000
Message-ID: <173376939344.552784.5703391543802771220@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241206185956.3290-1-dev@lankhorst.se>
In-Reply-To: <20241206185956.3290-1-dev@lankhorst.se>
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

Series: drm/xe/display: Rework display init for reducing flickering. (rev3)
URL   : https://patchwork.freedesktop.org/series/142242/
State : warning

== Summary ==

Error: dim checkpatch failed
1c1709b39cc0 drm/xe/display: Add intel_plane_initial_vblank_wait
-:110: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#110: FILE: drivers/gpu/drm/xe/display/xe_plane_initial.c:37:
+	ret = xe_mmio_wait32_not(xe_root_tile_mmio(xe), pipe_frmtmstmp, ~0U, timestamp, 40000U, &timestamp, false);

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
1f5aa3484107 drm/xe: Remove double pageflip
eb7fa4c793d0 drm/xe: Move suballocator init to after display init
0a0d9640e075 drm/xe: Defer irq init until after xe_display_init_noaccel
14452d82ac50 drm/xe/display: Use a single early init call for display


