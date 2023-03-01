Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E906A74BB
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 21:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7FAB10E241;
	Wed,  1 Mar 2023 20:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9FEE10E241;
 Wed,  1 Mar 2023 20:04:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2F21A47DF;
 Wed,  1 Mar 2023 20:04:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 01 Mar 2023 20:04:26 -0000
Message-ID: <167770106676.6632.8109368324478397362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230301122944.1298929-1-jani.nikula@intel.com>
In-Reply-To: <20230301122944.1298929-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/5=5D_drm/i915/power=3A_move_?=
 =?utf-8?q?dc_state_members_to_struct_i915=5Fpower=5Fdomains?=
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

Series: series starting with [v4,1/5] drm/i915/power: move dc state members to struct i915_power_domains
URL   : https://patchwork.freedesktop.org/series/114515/
State : warning

== Summary ==

Error: dim checkpatch failed
873ffa5c0eff drm/i915/power: move dc state members to struct i915_power_domains
b963889cc295 drm/i915/dmc: use has_dmc_id_fw() instead of poking dmc->dmc_info directly
20363d3a692a drm/i915/dmc: add i915_to_dmc() and dmc->i915 and use them
-:66: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:529:
+		      !intel_de_read(i915, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 1 warnings, 0 checks, 272 lines checked
96d43b5f4dc6 drm/i915/dmc: allocate dmc structure dynamically
b10c49af6653 drm/i915/dmc: mass rename dev_priv to i915


