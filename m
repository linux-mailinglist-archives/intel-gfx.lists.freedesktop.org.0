Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54EC874101
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 21:03:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232361134FB;
	Wed,  6 Mar 2024 20:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495CA1134F9;
 Wed,  6 Mar 2024 20:03:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ALPM_AUX-Less_=28rev?=
 =?utf-8?q?3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 20:03:47 -0000
Message-ID: <170975542729.562293.13551863892771624838@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
In-Reply-To: <20240306104513.2129442-1-jouni.hogander@intel.com>
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

Series: ALPM AUX-Less (rev3)
URL   : https://patchwork.freedesktop.org/series/129938/
State : warning

== Summary ==

Error: dim checkpatch failed
0b6310df18cc drm/display: Add missing aux less alpm wake related bits
46f774b6bd3b drm/i915/psr: Add missing ALPM AUX-Less register definitions
-:31: WARNING:LONG_LINE: line length of 169 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:352:
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)

-:33: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:354:
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:35: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:356:
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:37: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:358:
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

total: 0 errors, 4 warnings, 0 checks, 17 lines checked
1ac340a4ebc7 drm/i915/psr: Calculate aux less wake time
2d817eb8a797 drm/i915/psr: Silence period and lfps half cycle
518e67b5d55d drm/i915/psr: Enable ALPM for eDP Panel replay
-:50: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#50: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1714:
+			       PORT_ALPM_CTL_SILENCE_PERIOD(

-:55: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#55: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1719:
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:57: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#57: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1721:
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:59: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#59: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1723:
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 0 warnings, 4 checks, 58 lines checked
29e63d3d3d8c drm/i915/psr: Do not write ALPM configuration for PSR1 or DP2.0 Panel Replay


