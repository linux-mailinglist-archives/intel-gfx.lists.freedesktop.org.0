Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF2B853259
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 14:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B581A10E627;
	Tue, 13 Feb 2024 13:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C6F10E627;
 Tue, 13 Feb 2024 13:53:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/mst=3A_enab?=
 =?utf-8?q?le_MST_mode_for_128b/132b_single-stream_sideband_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 13:53:38 -0000
Message-ID: <170783241822.1201024.3066608431821015448@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <cover.1707823736.git.jani.nikula@intel.com>
In-Reply-To: <cover.1707823736.git.jani.nikula@intel.com>
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

Series: drm/i915/mst: enable MST mode for 128b/132b single-stream sideband (rev3)
URL   : https://patchwork.freedesktop.org/series/129468/
State : warning

== Summary ==

Error: dim checkpatch failed
ca1b6d4e0985 drm/mst: read sideband messaging cap
-:127: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#127: FILE: include/drm/display/drm_dp_mst_helper.h:842:
+enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);

total: 0 errors, 1 warnings, 0 checks, 90 lines checked
f7c4da2226c7 drm/i915/mst: improve debug logging of DP MST mode detect
c7fd713f2afd drm/i915/mst: abstract choosing the MST mode to use
910233abb983 drm/i915/mst: use the MST mode detected previously
872026c36cca drm/i915/mst: add intel_dp_mst_disconnect()
eaaedce1a393 drm/i915/mst: enable MST mode for 128b/132b single-stream sideband


