Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B284129F9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4806E8BD;
	Tue, 21 Sep 2021 00:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A6796E8BD;
 Tue, 21 Sep 2021 00:30:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 015FCA47EA;
 Tue, 21 Sep 2021 00:30:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 00:30:58 -0000
Message-ID: <163218425897.15890.4835298907171051239@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921002313.1132357-1-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Fix_TypeC_connect/disconnect_sequences?=
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

Series: drm/i915/tc: Fix TypeC connect/disconnect sequences
URL   : https://patchwork.freedesktop.org/series/94878/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9d2a21b4286f drm/i915/tc: Fix TypeC port init/resume time sanitization
8cf6d77baac7 drm/i915/adlp/tc: Fix PHY connected check for Thunderbolt mode
3a96d2e03bbf drm/i915/tc: Remove waiting for PHY complete during releasing ownership
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
commit ddec362724f9 ("drm/i915: Wait for TypeC PHY complete flag to clear in safe mode")

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
4e8751ecf807 drm/i915/tc: Check for DP-alt, legacy sinks before taking PHY ownership
cc76a5af71d5 drm/i915/tc: Add/use helpers to retrieve TypeC port properties
344a4da141dd drm/i915/tc: Don't keep legacy TypeC ports in connected state w/o a sink
dc6bbabc3efa drm/i915/tc: Add a mode for the TypeC PHY's disconnected state
-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: drivers/gpu/drm/i915/display/intel_tc.c:714:
+	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_TBT_ALT &&
+				!tc_phy_is_owned(dig_port));

total: 0 errors, 0 warnings, 1 checks, 91 lines checked
1a6d3f2220ba drm/i915/tc: Refactor TC-cold block/unblock helpers
d163824eae60 drm/i915/tc: Avoid using legacy AUX PW in TBT mode
24944d022b80 drm/i915/icl/tc: Remove the ICL special casing during TC-cold blocking
d9687de8553d drm/i915/tc: Fix TypeC PHY connect/disconnect logic on ADL-P
14a2cb6aae07 drm/i915/tc: Drop extra TC cold blocking from intel_tc_port_connected()
1890abf291df drm/i915/tc: Fix system hang on ADL-P during TypeC PHY disconnect


