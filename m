Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DBC972011
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 19:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8294910E5F0;
	Mon,  9 Sep 2024 17:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64D010E5F0;
 Mon,  9 Sep 2024 17:11:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/cx0=3A_Use_?=
 =?utf-8?q?one_lane_to_set_power_state_to_ready_in_DP_alt_mode?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vamsi Krishna Brahmajosyula" <vamsikrishna.brahmajosyula@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Sep 2024 17:11:06 -0000
Message-ID: <172590186667.977312.8684131128044264948@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240906174601.9271-1-vamsikrishna.brahmajosyula@gmail.com>
In-Reply-To: <20240906174601.9271-1-vamsikrishna.brahmajosyula@gmail.com>
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

Series: drm/i915/cx0: Use one lane to set power state to ready in DP alt mode
URL   : https://patchwork.freedesktop.org/series/138409/
State : warning

== Summary ==

Error: dim checkpatch failed
e658faf16ddf drm/i915/cx0: Use one lane to set power state to ready in DP alt mode
-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2956:
+		intel_cx0_powerdown_change_sequence(encoder, maxpclk_lane,
+					    CX0_P2_STATE_READY);

-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2959:
+		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
 					    CX0_P2_STATE_READY);

total: 0 errors, 0 warnings, 2 checks, 15 lines checked


