Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B33E6E6011
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 13:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B3E10E088;
	Tue, 18 Apr 2023 11:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05C5510E088;
 Tue, 18 Apr 2023 11:40:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9760AADEB;
 Tue, 18 Apr 2023 11:40:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 18 Apr 2023 11:40:20 -0000
Message-ID: <168181802086.17885.17258569863842338259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
In-Reply-To: <20230403080154.1239873-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Increase_AUX_timeout_for_Type-C_=28rev6?=
 =?utf-8?q?=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: Increase AUX timeout for Type-C (rev6)
URL   : https://patchwork.freedesktop.org/series/116010/
State : warning

== Summary ==

Error: dim checkpatch failed
3f84391d7543 drm/i915/display: Increase AUX timeout for Type-C
-:39: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#39: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1389:
+		.instances = &I915_PW_INSTANCES(

-:40: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1390:
+			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),

-:41: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1391:
+			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),

-:42: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1392:
+			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),

-:43: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1393:
+			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),

total: 0 errors, 4 warnings, 1 checks, 40 lines checked


