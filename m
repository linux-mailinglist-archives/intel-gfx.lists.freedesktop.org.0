Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE4133F91C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 20:26:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E458C6E842;
	Wed, 17 Mar 2021 19:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF0346E081;
 Wed, 17 Mar 2021 19:25:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6B27A47E8;
 Wed, 17 Mar 2021 19:25:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 17 Mar 2021 19:25:57 -0000
Message-ID: <161600915784.17366.16649849238071100206@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615998927.git.jani.nikula@intel.com>
In-Reply-To: <cover.1615998927.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_vbt_child_device_rework_=28rev2=29?=
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

Series: drm/i915/bios: vbt child device rework (rev2)
URL   : https://patchwork.freedesktop.org/series/87165/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ef7d9eda99d9 drm/i915/bios: mass convert dev_priv to i915
9b08439f2c5c drm/i915/bios: store bdb version in i915
5fa160ffef8b drm/i915/bios: reduce indent in sanitize_ddc_pin and sanitize_aux_ch
cebf548656f1 drm/i915/bios: move aux ch and ddc checks at a lower level
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
860230c30c82 drm/i915/bios: limit default outputs by platform on missing VBT
8cf91786b8f3 drm/i915/bios: limit default outputs to ports A through F
-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 828ccb31cf41 ("drm/i915/icl: Add TypeC ports only if VBT is present")'
#25: 
828ccb31cf41 ("drm/i915/icl: Add TypeC ports only if VBT is present") is

total: 1 errors, 0 warnings, 0 checks, 13 lines checked
89b916034893 drm/i915/bios: create fake child devices on missing VBT
1f49d68868df drm/i915/bios: rename display_device_data to intel_bios_encoder_data
361ff254ba49 drm/i915/bios: add i915 backpointer to intel_bios_encoder_data
bdc668d9ecd7 drm/i915/bios: add helper functions to check output support
bb0ab648eab8 drm/i915/bios: save a higher level pointer in ddi_vbt_port_info[]
0572ca553f54 drm/i915/bios: start using the intel_bios_encoder_data directly
edab5cc69012 drm/i915/bios: start using intel_bios_encoder_data for Type-C USB and TBT
4dd08d351db5 drm/i915/bios: add intel_bios_encoder_data to encoder, use for iboost


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
