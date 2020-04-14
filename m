Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B521A8BD4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 22:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791EF89BAF;
	Tue, 14 Apr 2020 20:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABCF089BAF;
 Tue, 14 Apr 2020 20:01:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E0A9A0019;
 Tue, 14 Apr 2020 20:01:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 14 Apr 2020 20:01:45 -0000
Message-ID: <158689450561.30376.1771115753536915286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413164515.13355-1-jose.souza@intel.com>
In-Reply-To: <20200413164515.13355-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/9=5D_drm/i915/display=3A_Mov?=
 =?utf-8?q?e_out_code_to_return_the_digital=5Fport_of_the_aux_ch?=
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

Series: series starting with [v4,1/9] drm/i915/display: Move out code to return the digital_port of the aux ch
URL   : https://patchwork.freedesktop.org/series/75886/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
07f7e1eaedcd drm/i915/display: Move out code to return the digital_port of the aux ch
0c650cdb3e24 drm/i915/display: Add intel_legacy_aux_to_power_domain()
13beb443d72c drm/i915/display: Split hsw_power_well_enable() into two
53d8424945c4 drm/i915/tc/icl: Implement TC cold sequences
-:76: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#76: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:588:
+		msleep(1);

-:81: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#81: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:593:
+		msleep(1);

total: 0 errors, 2 warnings, 0 checks, 157 lines checked
4d5beb240164 drm/i915/tc: Skip ref held check for TC legacy aux power wells
87ba4c5c772a drm/i915/tc/tgl: Implement TC cold sequences
-:112: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#112: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:4014:
+		msleep(1);

total: 0 errors, 1 warnings, 0 checks, 185 lines checked
1de4d7a9096c drm/i915/tc: Catch TC users accessing FIA registers without enable aux
073806ccfac9 drm/i915/tc: Do not warn when aux power well of static TC ports timeout
167a931dadfe drm/i915: Add missing deinitialization cases of load failure
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
[drm:__intel_engine_init_ctx_wa [i915]] Initialized 3 context workarounds on rcs'0

total: 0 errors, 1 warnings, 0 checks, 50 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
