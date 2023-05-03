Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC08E6F586A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 14:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F8010E0CB;
	Wed,  3 May 2023 12:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A493210E0CB;
 Wed,  3 May 2023 12:59:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09485AA01E;
 Wed,  3 May 2023 12:59:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 12:59:40 -0000
Message-ID: <168311878000.9279.12314584187497567277@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_MST+DSC_nukage_and_state_stuff_=28rev3=29?=
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

Series: drm/i915: MST+DSC nukage and state stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/117201/
State : warning

== Summary ==

Error: dim checkpatch failed
be284779422a drm/dp_mst: Fix fractional DSC bpp handling
af5f8eb69814 drm/i915/mst: Remove broken MST DSC support
adc050d4ed5d drm/i915/mst: Read out FEC state
-:24: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3769:
+					      dp_tp_ctl_reg(encoder, pipe_config)) & DP_TP_CTL_FEC_ENABLE;

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
6d2b9d213014 drm/i915: Fix FEC pipe A vs. DDI A mixup
6fe709863b2a drm/i915: Check lane count when determining FEC support
385e0ee93525 drm/i915: Fix FEC state dump
-:48: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3731:
+					      dp_tp_ctl_reg(encoder, pipe_config)) & DP_TP_CTL_FEC_ENABLE;

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
143d86dca1ff drm/i915: Split some long lines
3270c23c4494 drm/i915: Introduce crtc_state->enhanced_framing
c775af3a458f drm/i915: Stop spamming the logs with PLL state
90bb1913f03d drm/i915: Drop some redundant eDP checks
491e97f4dd89 drm/i915: Reduce combo PHY log spam


