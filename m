Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 506FF8561E5
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 12:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B01310E691;
	Thu, 15 Feb 2024 11:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B95210E660;
 Thu, 15 Feb 2024 11:40:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ALPM_AUX-Less?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Feb 2024 11:40:31 -0000
Message-ID: <170799723131.11.16436280280425466866@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240215104934.2395239-1-jouni.hogander@intel.com>
In-Reply-To: <20240215104934.2395239-1-jouni.hogander@intel.com>
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

Series: ALPM AUX-Less
URL   : https://patchwork.freedesktop.org/series/129938/
State : warning

== Summary ==

Error: dim checkpatch failed
eb5c1bef7e0e drm/display: Add missing aux less alpm wake related bits
cc91271b2064 drm/i915/psr: Calculate aux less wake time
d67ae1130d2c drm/i915/psr: Calculate aux less switch to active latency
-:62: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#62: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1181:
+		intel_usecs_to_scanlines(

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
aa108461a8c6 drm/i915/psr: Silence period and lfps half cycle
e9a1ac053d41 drm/i915/psr: Add missing ALPM AUX-Less register defintions
-:4: WARNING:TYPO_SPELLING: 'defintions' may be misspelled - perhaps 'definitions'?
#4: 
Subject: [PATCH] drm/i915/psr: Add missing ALPM AUX-Less register defintions
                                                                  ^^^^^^^^^^

-:27: WARNING:LONG_LINE: line length of 169 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:352:
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)

-:29: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#29: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:354:
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:31: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:356:
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:33: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:358:
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

total: 0 errors, 5 warnings, 0 checks, 17 lines checked
c088b6e411f6 drm/i915/psr: Enable ALPM for eDP Panel replay
-:41: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#41: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1721:
+			       ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(

-:47: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#47: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1727:
+			       PORT_ALPM_CTL_SILENCE_PERIOD(

-:52: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#52: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1732:
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:54: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#54: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1734:
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:56: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#56: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1736:
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 0 warnings, 5 checks, 58 lines checked


