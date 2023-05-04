Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB646F7925
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 00:29:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3256710E53C;
	Thu,  4 May 2023 22:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D79B310E1ED;
 Thu,  4 May 2023 22:29:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96B51A0BA8;
 Thu,  4 May 2023 22:29:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 04 May 2023 22:29:45 -0000
Message-ID: <168323938558.11435.11310712063059392937@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1683219362.git.jani.nikula@intel.com>
In-Reply-To: <cover.1683219362.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_hotplug_and_display_irq_refactoring?=
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

Series: drm/i915: hotplug and display irq refactoring
URL   : https://patchwork.freedesktop.org/series/117344/
State : warning

== Summary ==

Error: dim checkpatch failed
e6ea91131db7 drm/i915/irq: relocate gmbus and dp aux irq handlers
fedea70421f6 drm/i915/irq: split out hotplug irq handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:64: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#64: 
new file mode 100644

-:505: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#505: FILE: drivers/gpu/drm/i915/display/intel_hotplug_irq.c:437:
+		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;

total: 0 errors, 2 warnings, 0 checks, 3133 lines checked
f36ab7683e34 drm/i915/irq: split out display irq handling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:62: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#62: 
new file mode 100644

-:191: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#191: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:125:
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);

-:438: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#438: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:372:
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));

-:1261: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#1261: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1195:
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

-:1369: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1369: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1303:
+		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

total: 0 errors, 5 warnings, 0 checks, 3692 lines checked


