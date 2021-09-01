Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD913FE1A6
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 20:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF136E237;
	Wed,  1 Sep 2021 18:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A58D6E237;
 Wed,  1 Sep 2021 18:02:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21F13A8836;
 Wed,  1 Sep 2021 18:02:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 01 Sep 2021 18:02:24 -0000
Message-ID: <163051934411.2830.4303489403517630476@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1630512523.git.jani.nikula@intel.com>
In-Reply-To: <cover.1630512523.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_remove_vbt_ddi=5Fport=5Finfo_caching_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/i915/bios: remove vbt ddi_port_info caching (rev2)
URL   : https://patchwork.freedesktop.org/series/93957/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
631c5797e268 drm/i915/bios: use hdmi level shift directly from child data
-:71: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2961:
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
69a7a6ba4efa drm/i915/bios: use max tmds clock directly from child data
-:92: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#92: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2952:
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;

total: 0 errors, 1 warnings, 0 checks, 85 lines checked
58c59f8ec842 drm/i915/bios: use dp max link rate directly from child data
-:70: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2990:
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;

total: 0 errors, 1 warnings, 0 checks, 63 lines checked
8f42bba04387 drm/i915/bios: use alternate aux channel directly from child data
76b2336849d2 drm/i915/bios: move ddc pin mapping code next to ddc pin sanitize
efaf221f51b3 drm/i915/bios: use ddc pin directly from child data
-:109: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2999:
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
2898c8f26498 drm/i915/bios: get rid of vbt ddi_port_info


