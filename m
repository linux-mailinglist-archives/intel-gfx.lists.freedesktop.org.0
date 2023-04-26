Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A22FE6EFB36
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 21:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FA8610EA23;
	Wed, 26 Apr 2023 19:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFB0C10EA20;
 Wed, 26 Apr 2023 19:37:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EC11AADEB;
 Wed, 26 Apr 2023 19:37:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 26 Apr 2023 19:37:22 -0000
Message-ID: <168253784242.17155.10809932838858698510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230426165305.2049341-1-imre.deak@intel.com>
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Add_a_workaround_for_an_IOM/TCSS_firmware_ha?=
 =?utf-8?q?ng_issue?=
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

Series: drm/i915/tc: Add a workaround for an IOM/TCSS firmware hang issue
URL   : https://patchwork.freedesktop.org/series/117004/
State : warning

== Summary ==

Error: dim checkpatch failed
95dbb1a42869 drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
4e1ea394fc72 drm/i915: Make the CRTC wrt. CSC state consistent during sanitize-disabling
d2f3a0d89e2d drm/i915: Update connector atomic state before crtc sanitize-disabling
8ce977b98127 drm/i915: Factor out set_encoder_for_connector()
ba8756ab835a drm/i915: Add support for disabling any CRTCs during HW readout/sanitization
34ddb0bf44b7 drm/i915/dp: Add link training debug and error printing helpers
-:22: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#22: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:30:
+static void lt_msg(struct intel_connector *connector, struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,

total: 0 errors, 1 warnings, 0 checks, 755 lines checked
e604c2ad4052 drm/i915/dp: Convert link training error to debug message on disconnected sink
0742b270148a drm/i915/dp: Prevent link training fallback on disconnected port
a41dfebc9a94 drm/i915/dp: Factor out intel_dp_get_active_pipes()
47791942c557 drm/i915: Factor out call_with_modeset_ctx()
6d9571d811d4 drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the sink disconnects
-:28: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Closes:', use 'Link:' instead
#28: 
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5860

total: 0 errors, 1 warnings, 0 checks, 254 lines checked


