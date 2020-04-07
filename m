Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4161A1803
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D0EA6E925;
	Tue,  7 Apr 2020 22:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 096736E925;
 Tue,  7 Apr 2020 22:24:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06A97A00E7;
 Tue,  7 Apr 2020 22:24:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 07 Apr 2020 22:24:21 -0000
Message-ID: <158629826102.26327.5165554792617462051@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407214000.342933-1-jose.souza@intel.com>
In-Reply-To: <20200407214000.342933-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/8=5D_drm/i915/display=3A_Mov?=
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

Series: series starting with [v3,1/8] drm/i915/display: Move out code to return the digital_port of the aux ch
URL   : https://patchwork.freedesktop.org/series/75634/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
22b6e464a90d drm/i915/display: Move out code to return the digital_port of the aux ch
9c3fa6a23124 drm/i915/display: Add intel_legacy_aux_to_power_domain()
4dbbf93cee79 drm/i915/display: Split hsw_power_well_enable() into two
347c828f0667 drm/i915/tc/icl: Implement TC cold sequences
-:70: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#70: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:588:
+			msleep(1);

-:75: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#75: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:593:
+		msleep(1);

total: 0 errors, 2 warnings, 0 checks, 156 lines checked
ea6e310ec8f8 drm/i915/tc: Skip ref held check for TC legacy aux power wells
5669e5b93c7d drm/i915/tc/tgl: Implement TC cold sequences
-:105: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#105: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:4012:
+			msleep(1);

total: 0 errors, 1 warnings, 0 checks, 182 lines checked
dd02c59c32fa drm/i915/tc: Catch TC users accessing FIA registers without enable aux
ac28d19b74b5 drm/i915/tc: Do not warn when aux power well of static TC ports timeout

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
