Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B98C1A047C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 03:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFA06E508;
	Tue,  7 Apr 2020 01:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02CD16E508;
 Tue,  7 Apr 2020 01:26:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1858A47E2;
 Tue,  7 Apr 2020 01:26:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 07 Apr 2020 01:26:56 -0000
Message-ID: <158622281695.26325.1547420224662577157@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407011157.362092-1-jose.souza@intel.com>
In-Reply-To: <20200407011157.362092-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/8=5D_drm/i915/display=3A_Mov?=
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

Series: series starting with [v2,1/8] drm/i915/display: Move out code to return the digital_port of the aux ch
URL   : https://patchwork.freedesktop.org/series/75576/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
14654d404b1a drm/i915/display: Move out code to return the digital_port of the aux ch
d3f4ac71f6b3 drm/i915/display: Add intel_legacy_aux_to_power_domain()
c35b853ace69 drm/i915/display: Split hsw_power_well_enable() into two
4492ad74909c drm/i915/tc/icl: Implement TC cold sequences
-:68: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#68: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:591:
+		msleep(1);

total: 0 errors, 1 warnings, 0 checks, 166 lines checked
ec375378fe3a drm/i915/tc: Skip ref held check for TC legacy aux power wells
08d2500517e6 drm/i915/tc/tgl: Implement TC cold sequences
c6c9a63090ff drm/i915/tc: Catch TC users accessing FIA registers without enable aux
ba04f3ced696 drm/i915/tc: Do not warn when aux power well of static TC ports timeout

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
