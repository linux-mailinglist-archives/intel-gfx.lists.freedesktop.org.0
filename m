Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 003C1A91C8B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 14:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425FE10EAF6;
	Thu, 17 Apr 2025 12:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EF6410EAF6;
 Thu, 17 Apr 2025 12:41:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/vga=3A_Clea?=
 =?utf-8?q?n_up_VGA_plane_handling?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Apr 2025 12:41:12 -0000
Message-ID: <174489367258.14498.16095282990231418367@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/vga: Clean up VGA plane handling
URL   : https://patchwork.freedesktop.org/series/147911/
State : warning

== Summary ==

Error: dim checkpatch failed
b3e80c0868fc drm/i915/vga: Clean up VGACNTRL bits
8f469458db25 drm/i915/vga: Add more VGACNTRL bits
815d3505bd7e drm/i915/vga: Extract intel_vga_regs.h
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
03972cd499a8 drm/i915/vga: Include the current pipe in the VGA disable debug message
1bca0d639ac9 drm/i915/vga: Nuke vga_redisable_power_on()
b3258a7b6814 drm/i915/vga: Consolidate intel_vga_disable() calls


