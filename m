Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54666886B24
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 12:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F1910EA44;
	Fri, 22 Mar 2024 11:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009AE10EA44;
 Fri, 22 Mar 2024 11:14:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ALPM_AUX-Less_=28rev?=
 =?utf-8?q?5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Mar 2024 11:14:43 -0000
Message-ID: <171110608300.961105.13454846381910810328@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240322103000.103332-1-jouni.hogander@intel.com>
In-Reply-To: <20240322103000.103332-1-jouni.hogander@intel.com>
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

Series: ALPM AUX-Less (rev5)
URL   : https://patchwork.freedesktop.org/series/129938/
State : warning

== Summary ==

Error: dim checkpatch failed
40534d5e800b drm/i915/psr: Add missing ALPM AUX-Less register definitions
-:32: WARNING:LONG_LINE: line length of 169 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:352:
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)

-:34: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:354:
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:36: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:356:
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:38: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:358:
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

total: 0 errors, 4 warnings, 0 checks, 17 lines checked
2d768e8fbdd1 drm/i915/psr: Calculate aux less wake time
2bb5a54ef298 drm/i915/psr: Silence period and lfps half cycle
771492ec7ab4 drm/i915/psr: Enable ALPM on source side for eDP Panel replay
-:60: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#60: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1742:
+			       PORT_ALPM_CTL_SILENCE_PERIOD(

-:65: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#65: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1747:
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:67: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#67: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1749:
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:69: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#69: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1751:
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 0 warnings, 4 checks, 63 lines checked
3772faf67dd0 drm/i915/psr: Do not write ALPM configuration for PSR1 or DP2.0 Panel Replay


