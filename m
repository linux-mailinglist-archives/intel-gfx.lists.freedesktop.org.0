Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFE12FD236
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 15:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6DB6E34B;
	Wed, 20 Jan 2021 14:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 552776E255;
 Wed, 20 Jan 2021 14:17:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F507A73C7;
 Wed, 20 Jan 2021 14:17:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 20 Jan 2021 14:17:30 -0000
Message-ID: <161115225032.8787.3314346866001291101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210120101834.19813-1-jani.nikula@intel.com>
In-Reply-To: <20210120101834.19813-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/pps=3A_refactor_ini?=
 =?utf-8?q?t_abstractions?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/4] drm/i915/pps: refactor init abstractions
URL   : https://patchwork.freedesktop.org/series/86076/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3210f99b0871 drm/i915/pps: refactor init abstractions
b59f412b98d3 drm/i915/pps: move pps code over from intel_display.c and refactor
6c274e339aa3 drm/i915/dp: abstract struct intel_dp pps members to a sub-struct
-:347: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#347: FILE: drivers/gpu/drm/i915/display/intel_pps.c:509:
+	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->pps.panel_power_off_time);

-:355: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#355: FILE: drivers/gpu/drm/i915/display/intel_pps.c:515:
+				       intel_dp->pps.panel_power_cycle_delay - panel_power_off_duration);

total: 0 errors, 2 warnings, 0 checks, 632 lines checked
c56c8a0d7677 drm/i915/dp: split out aux functionality to intel_dp_aux.c
-:745: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#745: 
new file mode 100644

-:793: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#793: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:44:
+#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)

-:984: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#984: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:235:
+		msleep(1);

total: 0 errors, 3 warnings, 0 checks, 1433 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
