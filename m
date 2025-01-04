Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EEAA01656
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2025 19:31:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2953E10E124;
	Sat,  4 Jan 2025 18:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB41610E124;
 Sat,  4 Jan 2025 18:31:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/cmtg=3A_Dis?=
 =?utf-8?q?able_the_CMTG_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 04 Jan 2025 18:31:52 -0000
Message-ID: <173601551275.3237387.9881160625805692485@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250104172937.64015-1-gustavo.sousa@intel.com>
In-Reply-To: <20250104172937.64015-1-gustavo.sousa@intel.com>
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

Series: drm/i915/cmtg: Disable the CMTG (rev4)
URL   : https://patchwork.freedesktop.org/series/142947/
State : warning

== Summary ==

Error: dim checkpatch failed
dcba7c23d18c drm/i915/cmtg: Disable the CMTG
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:175: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#175: FILE: drivers/gpu/drm/i915/display/intel_cmtg.c:114:
+		    intel_cmtg_has_cmtg_b(display) ? str_enabled_disabled(cmtg_state->cmtg_b_enable) : "n/a",

-:502: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#502: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:148:
+#define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)

total: 0 errors, 2 warnings, 1 checks, 467 lines checked
1f56d5dc197d squash! drm/i915/cmtg: Disable the CMTG


