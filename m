Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E14331A90A0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 03:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE966E81D;
	Wed, 15 Apr 2020 01:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACD266E81D;
 Wed, 15 Apr 2020 01:50:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EC96A3ECB;
 Wed, 15 Apr 2020 01:50:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 15 Apr 2020 01:50:20 -0000
Message-ID: <158691542062.21013.6896028381362266346@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414194956.164323-1-jose.souza@intel.com>
In-Reply-To: <20200414194956.164323-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C1/8=5D_drm/i915/display=3A_Mov?=
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

Series: series starting with [v5,1/8] drm/i915/display: Move out code to return the digital_port of the aux ch
URL   : https://patchwork.freedesktop.org/series/75941/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
960c21212bc2 drm/i915/display: Move out code to return the digital_port of the aux ch
a96a166e6551 drm/i915/display: Add intel_legacy_aux_to_power_domain()
d7143aab9207 drm/i915/display: Split hsw_power_well_enable() into two
cd9056a5d603 drm/i915/tc/icl: Implement TC cold sequences
-:76: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#76: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:588:
+		msleep(1);

-:81: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#81: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:593:
+		msleep(1);

total: 0 errors, 2 warnings, 0 checks, 157 lines checked
614f2cb98c89 drm/i915/tc: Skip ref held check for TC legacy aux power wells
2852a24c509c drm/i915/tc/tgl: Implement TC cold sequences
-:116: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#116: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:4015:
+			msleep(1);

total: 0 errors, 1 warnings, 0 checks, 186 lines checked
d2af4a2252d5 drm/i915/tc: Catch TC users accessing FIA registers without enable aux
640ead5d9bb4 drm/i915/tc: Do not warn when aux power well of static TC ports timeout

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
