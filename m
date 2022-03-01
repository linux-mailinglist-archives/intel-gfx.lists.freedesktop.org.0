Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62B04C7F54
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 01:35:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD12B10E12F;
	Tue,  1 Mar 2022 00:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DBBD10E12F;
 Tue,  1 Mar 2022 00:35:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F30ACA9932;
 Tue,  1 Mar 2022 00:35:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 01 Mar 2022 00:35:03 -0000
Message-ID: <164609490397.8602.12859614672524001058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220228201234.1448613-1-imre.deak@intel.com>
In-Reply-To: <20220228201234.1448613-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_a_DP1=2E2_compatible_way_to_read_LTTPR_capa?=
 =?utf-8?q?bilities?=
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

Series: drm/i915: Add a DP1.2 compatible way to read LTTPR capabilities
URL   : https://patchwork.freedesktop.org/series/100851/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7ba5645d82fa drm/i915: Add a DP1.2 compatible way to read LTTPR capabilities
-:35: WARNING:TYPO_SPELLING: 'capabilites' may be misspelled - perhaps 'capabilities'?
#35: 
The standard requires the DPCD capabilites to be read after the LTTPR
                               ^^^^^^^^^^^

-:50: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#50: FILE: drivers/gpu/drm/dp/drm_dp.c:2393:
+static int drm_dp_read_lttpr_regs(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE], int address,

-:165: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:81:
+static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])

total: 0 errors, 3 warnings, 0 checks, 182 lines checked


