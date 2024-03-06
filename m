Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E85874364
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 00:04:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF99410ED67;
	Wed,  6 Mar 2024 23:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DD1B10ED65;
 Wed,  6 Mar 2024 23:03:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/mst=3A_enab?=
 =?utf-8?q?le_MST_mode_for_128b/132b_single-stream_sideband_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 23:03:57 -0000
Message-ID: <170976623718.563829.7282498309017701549@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1709733981.git.jani.nikula@intel.com>
In-Reply-To: <cover.1709733981.git.jani.nikula@intel.com>
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

Series: drm/i915/mst: enable MST mode for 128b/132b single-stream sideband (rev4)
URL   : https://patchwork.freedesktop.org/series/129468/
State : warning

== Summary ==

Error: dim checkpatch failed
2343cd3592f6 drm/mst: read sideband messaging cap
-:128: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#128: FILE: include/drm/display/drm_dp_mst_helper.h:842:
+enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);

total: 0 errors, 1 warnings, 0 checks, 90 lines checked
b960420da8a8 drm/i915/mst: improve debug logging of DP MST mode detect
9e865c052665 drm/i915/mst: abstract choosing the MST mode to use
557ab73085fa drm/i915/mst: use the MST mode detected previously
7808cd49da4b drm/i915/mst: add intel_dp_mst_disconnect()
cc3fe8f5690b drm/i915/mst: enable MST mode for 128b/132b single-stream sideband


