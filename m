Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB94D6A6A85
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 11:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4410D10E224;
	Wed,  1 Mar 2023 10:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E59710E224;
 Wed,  1 Mar 2023 10:09:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35A01A47DF;
 Wed,  1 Mar 2023 10:09:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 01 Mar 2023 10:09:55 -0000
Message-ID: <167766539521.6635.5956511285759812344@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230227172521.851935-1-jani.nikula@intel.com>
In-Reply-To: <20230227172521.851935-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/4=5D_drm/i915/power=3A_move_?=
 =?utf-8?q?dc_state_members_to_struct_i915=5Fpower=5Fdomains_=28rev2=29?=
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

Series: series starting with [v3,1/4] drm/i915/power: move dc state members to struct i915_power_domains (rev2)
URL   : https://patchwork.freedesktop.org/series/114431/
State : warning

== Summary ==

Error: dim checkpatch failed
4a10ed5e711d drm/i915/power: move dc state members to struct i915_power_domains
e87932026c47 drm/i915/dmc: use has_dmc_id_fw() instead of poking dmc->dmc_info directly
7e082d99c2f8 drm/i915/dmc: add i915_to_dmc() and dmc->i915 and use them
-:63: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:529:
+		      !intel_de_read(i915, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 1 warnings, 0 checks, 270 lines checked
9a7f2c315baa drm/i915/dmc: allocate dmc structure dynamically


