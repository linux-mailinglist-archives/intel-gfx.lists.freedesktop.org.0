Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4FB5A6109
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8471C10E02E;
	Tue, 30 Aug 2022 10:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 195CE10E02E;
 Tue, 30 Aug 2022 10:46:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10ECEA363D;
 Tue, 30 Aug 2022 10:46:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 30 Aug 2022 10:46:36 -0000
Message-ID: <166185639606.27288.14644956125605037670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1661855191.git.jani.nikula@intel.com>
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gmbus=3A_stop_using_implicit_dev=5Fpriv?=
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

Series: drm/i915/gmbus: stop using implicit dev_priv
URL   : https://patchwork.freedesktop.org/series/107930/
State : warning

== Summary ==

Error: dim checkpatch failed
3c07702148f6 drm/i915/gmbus: split out gmbus regs in a separate file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:57: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_gmbus_regs.h:29:
+#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100) /* clock/port select */

-:66: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/display/intel_gmbus_regs.h:38:
+#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104) /* command/status */

-:89: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_gmbus_regs.h:61:
+#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c) /* data buffer bytes 3-0 */

-:90: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/intel_gmbus_regs.h:62:
+#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110) /* interrupt mask (Pineview+) */

total: 0 errors, 5 warnings, 0 checks, 158 lines checked
010019a09cff drm/i915/gmbus: whitespace cleanup in reg definitions
f770b6f60e27 drm/i915/gmbus: add wrapper for gmbus mmio base
8d2905eb3406 drm/i915/gmbus: stop using implicit dev_priv in register definitions
7446134adefe drm/i915/reg: stop using implicit dev_priv in DSPCLK_GATE_D
dcb5561c1c40 drm/i915/gmbus: mass dev_priv -> i915 rename


