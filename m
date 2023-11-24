Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6270E7F7A02
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 18:03:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66A410E206;
	Fri, 24 Nov 2023 17:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F14710E05F;
 Fri, 24 Nov 2023 17:03:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4646AAADEA;
 Fri, 24 Nov 2023 17:03:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 24 Nov 2023 17:03:48 -0000
Message-ID: <170084542825.13022.10233527270048881250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1700829750.git.jani.nikula@intel.com>
In-Reply-To: <cover.1700829750.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_drm_debug_and_error_logging_improvements?=
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

Series: drm: drm debug and error logging improvements
URL   : https://patchwork.freedesktop.org/series/126873/
State : warning

== Summary ==

Error: dim checkpatch failed
7b64df342d65 drm/print: make drm_err_printer() device specific by using drm_err()
45344978bd87 drm/print: move enum drm_debug_category etc. earlier in drm_print.h
9374e019754f drm/print: add drm_dbg_printer() for drm device specific printer
-:37: WARNING:PREFER_DEV_LEVEL: Prefer dev_dbg(... to dev_printk(KERN_DEBUG, ...
#37: FILE: drivers/gpu/drm/drm_print.c:205:
+		dev_printk(KERN_DEBUG, dev, "[" DRM_NAME "]%s%s %pV",

-:40: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#40: FILE: drivers/gpu/drm/drm_print.c:208:
+		printk(KERN_DEBUG "[" DRM_NAME "]%s%s %pV",

total: 0 errors, 2 warnings, 0 checks, 69 lines checked
9dbb40929e96 drm/dp_mst: switch from drm_debug_printer() to device specific drm_dbg_printer()
7776195b8686 drm/mode: switch from drm_debug_printer() to device specific drm_dbg_printer()
5fcda91b4bf2 drm/dp: switch drm_dp_vsc_sdp_log() to struct drm_printer
9e813e32882d drm/i915: switch from drm_debug_printer() to device specific drm_dbg_printer()
06462d4ed42e drm/i915: use drm_printf() with the drm_err_printer intead of pr_err()


