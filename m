Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB959DA807
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C7810E2FC;
	Wed, 27 Nov 2024 12:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50ED10E2FC;
 Wed, 27 Nov 2024 12:43:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_prunue_audio_frequen?=
 =?utf-8?q?cies_based_on_bw_limits_for_DP2_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2024 12:43:14 -0000
Message-ID: <173271139473.3703865.4112050598384264707@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
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

Series: prunue audio frequencies based on bw limits for DP2 (rev2)
URL   : https://patchwork.freedesktop.org/series/139681/
State : warning

== Summary ==

Error: dim checkpatch failed
331d29a66536 drm/i915/display: create a common function to check validity of ELD
023d5d71d307 drm/i915/display: update call to intel_dp_audio_compute_config
8b996d6062f1 drm/i915/display: check and prune audio frequencies based on bw limits in DP2.0
-:48: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_audio.c:727:
+			(DIV_ROUND_UP(DIV_ROUND_UP(aud_samples_per_line, 2) * 5 + 2, 4) + 2) * 16 + req_overhead;

total: 0 errors, 1 warnings, 0 checks, 210 lines checked
6a8118ff1d10 drm/i915/display: iterate through channels if no feasible frequencies
9bf074f6246d drm/i915/display: update audio support based on the available frequencies
684247f4a3c1 drm/i915/display: update audio bw calculations for MTL


