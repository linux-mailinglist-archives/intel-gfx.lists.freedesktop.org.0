Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FFF147445
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 00:01:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E986FE97;
	Thu, 23 Jan 2020 23:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 975926FE97;
 Thu, 23 Jan 2020 23:01:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93548A0119;
 Thu, 23 Jan 2020 23:01:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 23 Jan 2020 23:01:22 -0000
Message-ID: <157982048260.1145.18093703858058054839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123140004.14136-1-jani.nikula@intel.com>
In-Reply-To: <20200123140004.14136-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BRESEND=2C1/6=5D_drm/i915/dmc=3A_use?=
 =?utf-8?q?_intel_uncore_functions_for_forcewake_register_access?=
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

Series: series starting with [RESEND,1/6] drm/i915/dmc: use intel uncore functions for forcewake register access
URL   : https://patchwork.freedesktop.org/series/72476/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
68bf5a21a662 drm/i915/dmc: use intel uncore functions for forcewake register access
668006a8978f drm/i915/display: use intel de functions for forcewake register access
d9cd42314a64 drm/i915/irq: use intel de functions for forcewake register access
-:91: WARNING:LONG_LINE: line over 100 characters
#91: FILE: drivers/gpu/drm/i915/i915_irq.c:831:
+		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;

total: 0 errors, 1 warnings, 0 checks, 70 lines checked
686aa5c7b1c6 drm/i915/gmbus: use intel de functions for forcewake register access
-:129: WARNING:LONG_LINE: line over 100 characters
#129: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:414:
+			  gmbus1_index | GMBUS_CYCLE_WAIT | (size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_READ | GMBUS_SW_RDY);

-:163: WARNING:LONG_LINE: line over 100 characters
#163: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:493:
+			  gmbus1_index | GMBUS_CYCLE_WAIT | (chunk_size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);

total: 0 errors, 2 warnings, 0 checks, 205 lines checked
9705f531210a drm/i915/sprite: use intel de functions for forcewake register access
-:151: WARNING:LONG_LINE: line over 100 characters
#151: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:668:
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);

total: 0 errors, 1 warnings, 0 checks, 508 lines checked
c730e340b56a drm/i915/pm: use intel de functions for forcewake register access

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
