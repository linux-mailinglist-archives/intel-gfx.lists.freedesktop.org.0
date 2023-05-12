Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EE970073A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 13:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 873B110E693;
	Fri, 12 May 2023 11:52:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5BA410E693;
 Fri, 12 May 2023 11:52:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9ED3FAA917;
 Fri, 12 May 2023 11:52:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 12 May 2023 11:52:34 -0000
Message-ID: <168389235461.26100.16336046616965926883@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230512102310.1398406-1-jani.nikula@intel.com>
In-Reply-To: <20230512102310.1398406-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/irq=3A_convert_gen8?=
 =?utf-8?q?=5Fde=5Firq=5Fhandler=28=29_to_void?=
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

Series: series starting with [1/3] drm/i915/irq: convert gen8_de_irq_handler() to void
URL   : https://patchwork.freedesktop.org/series/117682/
State : warning

== Summary ==

Error: dim checkpatch failed
6066890538dc drm/i915/irq: convert gen8_de_irq_handler() to void
3bfbcdbdd7d4 drm/i915/irq: split out hotplug irq handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:65: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#65: 
new file mode 100644

-:506: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#506: FILE: drivers/gpu/drm/i915/display/intel_hotplug_irq.c:437:
+		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;

total: 0 errors, 2 warnings, 0 checks, 3133 lines checked
a9341aabe31a drm/i915/irq: split out display irq handling
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

-:195: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:125:
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);

-:442: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#442: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:372:
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));

-:1256: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#1256: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1186:
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

-:1364: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1364: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1294:
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

-:1820: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1820: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:76:
+void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);

-:1821: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1821: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:77:
+void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);

-:1823: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1823: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:79:
+void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 pipe_stats[I915_MAX_PIPES]);

total: 0 errors, 8 warnings, 0 checks, 3675 lines checked


