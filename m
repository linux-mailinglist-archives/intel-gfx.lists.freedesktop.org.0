Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A3931DE08
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:20:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B335F6E59F;
	Wed, 17 Feb 2021 17:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF0986E59F;
 Wed, 17 Feb 2021 17:20:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DB2CA3ECB;
 Wed, 17 Feb 2021 17:20:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 17 Feb 2021 17:20:36 -0000
Message-ID: <161358243661.24999.6398389263130299143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1613580193.git.jani.nikula@intel.com>
In-Reply-To: <cover.1613580193.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_vbt_child_device_rework?=
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

Series: drm/i915/bios: vbt child device rework
URL   : https://patchwork.freedesktop.org/series/87165/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
eb3ee8e4100d drm/i915/bios: mass convert dev_priv to i915
-:1537: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1537: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2051:
+	i915->vbt.lvds_ssc_freq = intel_bios_ssc_frequency(i915,
+			!HAS_PCH_SPLIT(i915));

total: 0 errors, 0 warnings, 1 checks, 1901 lines checked
bec5ef024e83 drm/i915/bios: store bdb version in i915
183a2a92a87d drm/i915/bios: limit default outputs by platform on missing VBT
a26b42827005 drm/i915/bios: limit default outputs to ports A through F
13cc862469fa drm/i915/bios: create fake child devices on missing VBT
28f555702275 drm/i915/bios: rename display_device_data to intel_bios_encoder_data
6f9812af842c drm/i915/bios: add i915 backpointer to intel_bios_encoder_data
8bf02e86eec6 drm/i915/vbt: add helper functions to check output support
a295862116c5 drm/i915/bios: save a higher level pointer in ddi_vbt_port_info[]
5b40fe7ec523 drm/i915/bios: start using the intel_bios_encoder_data directly
e302e102b326 drm/i915/bios: start using intel_bios_encoder_data for Type-C USB and TBT
4f0a5fd1dd23 drm/i915/bios: add intel_bios_encoder_data to encoder, use for iboost


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
