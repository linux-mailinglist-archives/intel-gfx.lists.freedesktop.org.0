Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E8441C5DE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E466EA6E;
	Wed, 29 Sep 2021 13:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B8666EA6B;
 Wed, 29 Sep 2021 13:42:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0343BAA0ED;
 Wed, 29 Sep 2021 13:42:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 13:42:21 -0000
Message-ID: <163292294198.27097.14743681465133170318@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921002313.1132357-1-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Fix_TypeC_connect/disconnect_sequences_=28re?=
 =?utf-8?b?djgp?=
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

Series: drm/i915/tc: Fix TypeC connect/disconnect sequences (rev8)
URL   : https://patchwork.freedesktop.org/series/94878/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7a1594f1ced8 drm/i915/tc: Fix TypeC port init/resume time sanitization
c01091513a71 drm/i915/adlp/tc: Fix PHY connected check for Thunderbolt mode
606f377a7dcc drm/i915/tc: Remove waiting for PHY complete during releasing ownership
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
commit ddec362724f9 ("drm/i915: Wait for TypeC PHY complete flag to clear in safe mode")

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
adb7ecaceb9b drm/i915/tc: Check for DP-alt, legacy sinks before taking PHY ownership
03ba5a3c3391 drm/i915/tc: Add/use helpers to retrieve TypeC port properties
560710f22702 drm/i915/tc: Don't keep legacy TypeC ports in connected state w/o a sink
980d79eb09d2 drm/i915/tc: Add a mode for the TypeC PHY's disconnected state
9868a17a5a37 drm/i915/tc: Refactor TC-cold block/unblock helpers
43107536a80f drm/i915/tc: Avoid using legacy AUX PW in TBT mode
aa72ab7dada7 drm/i915/icl/tc: Remove the ICL special casing during TC-cold blocking
e39e52ba5422 drm/i915/tc: Fix TypeC PHY connect/disconnect logic on ADL-P
-:139: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#139: FILE: drivers/gpu/drm/i915/display/intel_tc.c:773:
+	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_TBT_ALT &&
+				!tc_phy_is_owned(dig_port));

total: 0 errors, 0 warnings, 1 checks, 196 lines checked
76ecfcf236e0 drm/i915/tc: Drop extra TC cold blocking from intel_tc_port_connected()
6e3ad889b1c9 drm/i915/tc: Fix system hang on ADL-P during TypeC PHY disconnect


