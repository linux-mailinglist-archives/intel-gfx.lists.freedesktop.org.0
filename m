Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D7B704084
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 00:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D6010E29D;
	Mon, 15 May 2023 22:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AEB110E29D;
 Mon, 15 May 2023 22:00:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90287AA917;
 Mon, 15 May 2023 22:00:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 15 May 2023 22:00:55 -0000
Message-ID: <168418805558.22016.6181186617845266851@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230515101738.2399816-1-jani.nikula@intel.com>
In-Reply-To: <20230515101738.2399816-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/3=5D_drm/i915/irq=3A_convert?=
 =?utf-8?q?_gen8=5Fde=5Firq=5Fhandler=28=29_to_void?=
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

Series: series starting with [v3,1/3] drm/i915/irq: convert gen8_de_irq_handler() to void
URL   : https://patchwork.freedesktop.org/series/117761/
State : warning

== Summary ==

Error: dim checkpatch failed
4d8a616e8a27 drm/i915/irq: convert gen8_de_irq_handler() to void
35adf4356540 drm/i915/irq: split out hotplug irq handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:507: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#507: FILE: drivers/gpu/drm/i915/display/intel_hotplug_irq.c:437:
+		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;

total: 0 errors, 2 warnings, 0 checks, 3133 lines checked
0c89afada502 drm/i915/irq: split out display irq handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:70: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#70: 
new file mode 100644

-:199: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#199: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:125:
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);

-:446: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#446: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:372:
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));

-:1260: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#1260: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1186:
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

-:1368: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1368: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1294:
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

-:1824: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1824: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:76:
+void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);

-:1825: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1825: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:77:
+void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);

-:1827: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1827: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:79:
+void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 pipe_stats[I915_MAX_PIPES]);

total: 0 errors, 8 warnings, 0 checks, 3675 lines checked


