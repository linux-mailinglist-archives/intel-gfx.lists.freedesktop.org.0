Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F4687CA38
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 09:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C665112025;
	Fri, 15 Mar 2024 08:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87101112023;
 Fri, 15 Mar 2024 08:47:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ALPM_AUX-Less_=28rev?=
 =?utf-8?q?4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Mar 2024 08:47:12 -0000
Message-ID: <171049243255.795227.12116055042441968127@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240315080222.72838-1-jouni.hogander@intel.com>
In-Reply-To: <20240315080222.72838-1-jouni.hogander@intel.com>
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

Series: ALPM AUX-Less (rev4)
URL   : https://patchwork.freedesktop.org/series/129938/
State : warning

== Summary ==

Error: dim checkpatch failed
b1cf7472d2c8 drm/i915/psr: Add missing ALPM AUX-Less register definitions
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
d33c2c55afef drm/i915/psr: Calculate aux less wake time
847f2b723229 drm/i915/psr: Silence period and lfps half cycle
890411e7a79a drm/i915/psr: Enable ALPM for eDP Panel replay
-:57: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#57: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1742:
+			       PORT_ALPM_CTL_SILENCE_PERIOD(

-:62: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#62: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1747:
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:64: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#64: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1749:
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:66: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#66: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1751:
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 0 warnings, 4 checks, 63 lines checked
b680e6b533ff drm/i915/psr: Do not write ALPM configuration for PSR1 or DP2.0 Panel Replay


