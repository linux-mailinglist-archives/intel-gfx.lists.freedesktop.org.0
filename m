Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D4E99479D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 13:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70D1D10E4CD;
	Tue,  8 Oct 2024 11:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5786510E4CE;
 Tue,  8 Oct 2024 11:47:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_prunue_audio_frequen?=
 =?utf-8?q?cies_based_on_bw_limits_for_DP2?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Oct 2024 11:47:48 -0000
Message-ID: <172838806835.1203258.5543802771752068597@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
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

Series: prunue audio frequencies based on bw limits for DP2
URL   : https://patchwork.freedesktop.org/series/139681/
State : warning

== Summary ==

Error: dim checkpatch failed
c0718ea2844e drm/i915/display: get rid of encoder param in intel_audio_compute_config
cdc0baa2c231 drm/i915/display: create a common function to check validity of ELD
4d22f79a6cb5 drm/i915/display: update call to intel_dp_audio_compute_config
bc16df723e52 drm/i915/display: update logic to determine crtcstate has audio support
5dc7b634e862 drm/i915/display: check and prune audio frequencies based on bw limits
-:40: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_audio.c:726:
+			(DIV_ROUND_UP(DIV_ROUND_UP(aud_samples_per_line, 2) * 5 + 2, 4) + 2) * 16 + req_overhead;

total: 0 errors, 1 warnings, 0 checks, 183 lines checked
9d9f5d43cfed drm/i915/display: iterare through channels if no feasible frequencies
49cd5d2c7160 drm/i915/display: update audio support based on the available frequencies
b435ce28b565 drm/i815/disaply: limit the audio bw check with DP2 config
d8c60570f8a1 drm/i915/display: update audio bw calculations for MTL


