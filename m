Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EE0653243
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 15:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786CD10E144;
	Wed, 21 Dec 2022 14:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8FEC10E144;
 Wed, 21 Dec 2022 14:12:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF904A3ECB;
 Wed, 21 Dec 2022 14:12:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 21 Dec 2022 14:12:17 -0000
Message-ID: <167163193775.32312.18319464984099406522@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221219092428.2515430-1-andrzej.hajda@intel.com>
In-Reply-To: <20221219092428.2515430-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display/vlv=3A_fix_?=
 =?utf-8?q?pixel_overlap_register_update_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915/display/vlv: fix pixel overlap register update (rev2)
URL   : https://patchwork.freedesktop.org/series/112045/
State : warning

== Summary ==

Error: dim checkpatch failed
680c4599da30 drm/i915/display/vlv: fix pixel overlap register update
fbe3d53bea80 drm/i915/display/vlv: use intel_de_rmw if possible
-:49: WARNING:LINE_SPACING: Missing a blank line after declarations
#49: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:349:
+		u32 tmp = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+		intel_de_rmw(dev_priv, MIPI_CTRL(port),

total: 0 errors, 1 warnings, 0 checks, 338 lines checked


