Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C5C82F07B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 15:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3F610E089;
	Tue, 16 Jan 2024 14:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C4710E089;
 Tue, 16 Jan 2024 14:21:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_drm_debug_and?=
 =?utf-8?q?_error_logging_improvements_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 16 Jan 2024 14:21:02 -0000
Message-ID: <170541486223.502239.5141176940534622531@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <cover.1705410327.git.jani.nikula@intel.com>
In-Reply-To: <cover.1705410327.git.jani.nikula@intel.com>
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

Series: drm: drm debug and error logging improvements (rev2)
URL   : https://patchwork.freedesktop.org/series/126873/
State : warning

== Summary ==

Error: dim checkpatch failed
1fed5ec2cd6e drm/print: make drm_err_printer() device specific by using drm_err()
0131234c9f75 drm/print: move enum drm_debug_category etc. earlier in drm_print.h
b053dfb380bc drm/print: add drm_dbg_printer() for drm device specific printer
-:37: WARNING:PREFER_DEV_LEVEL: Prefer dev_dbg(... to dev_printk(KERN_DEBUG, ...
#37: FILE: drivers/gpu/drm/drm_print.c:205:
+		dev_printk(KERN_DEBUG, dev, "[" DRM_NAME "]%s%s %pV",

-:40: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#40: FILE: drivers/gpu/drm/drm_print.c:208:
+		printk(KERN_DEBUG "[" DRM_NAME "]%s%s %pV",

total: 0 errors, 2 warnings, 0 checks, 69 lines checked
24c25f00a3c5 drm/dp_mst: switch from drm_debug_printer() to device specific drm_dbg_printer()
1e8763753dff drm/mode: switch from drm_debug_printer() to device specific drm_dbg_printer()
430192e734d5 drm/dp: switch drm_dp_vsc_sdp_log() to struct drm_printer
15242a0fcfc1 drm/i915: switch from drm_debug_printer() to device specific drm_dbg_printer()
7ad797eab56c drm/i915: use drm_printf() with the drm_err_printer intead of pr_err()
4f7438cff338 drm/xe: switch from drm_debug_printer() to device specific drm_dbg_printer()
cdd5e0121f0b drm: remove drm_debug_printer in favor of drm_dbg_printer


