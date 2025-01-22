Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF6FA199FE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 21:49:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E35110E22B;
	Wed, 22 Jan 2025 20:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A8C10E22B;
 Wed, 22 Jan 2025 20:49:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/cmtg=3A_Dis?=
 =?utf-8?q?able_the_CMTG_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2025 20:49:44 -0000
Message-ID: <173757898478.3226643.1954802943854776408@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250122200355.89389-1-gustavo.sousa@intel.com>
In-Reply-To: <20250122200355.89389-1-gustavo.sousa@intel.com>
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

Series: drm/i915/cmtg: Disable the CMTG (rev8)
URL   : https://patchwork.freedesktop.org/series/142947/
State : warning

== Summary ==

Error: dim checkpatch failed
c66a6e106e08 drm/i915/cmtg: Disable the CMTG
-:83: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#83: 
new file mode 100644

-:165: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/display/intel_cmtg.c:78:
+		    intel_cmtg_has_cmtg_b(display) ? str_enabled_disabled(cmtg_config->cmtg_b_enable) : "n/a",

-:318: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#318: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:149:
+#define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)

total: 0 errors, 2 warnings, 1 checks, 253 lines checked


