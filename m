Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD83A263F5
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 20:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5849010E557;
	Mon,  3 Feb 2025 19:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA7810E556;
 Mon,  3 Feb 2025 19:46:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_Add_s?=
 =?utf-8?q?upport_for_DP_UHBR_SST_DSC?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 03 Feb 2025 19:46:40 -0000
Message-ID: <173861200044.478479.5278323514686357169@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250203160834.2708027-1-jani.nikula@intel.com>
In-Reply-To: <20250203160834.2708027-1-jani.nikula@intel.com>
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

Series: drm/i915/dp: Add support for DP UHBR SST DSC
URL   : https://patchwork.freedesktop.org/series/144265/
State : warning

== Summary ==

Error: dim checkpatch failed
c130ee4fbab6 drm/i915/dp: Add support for DP UHBR SST DSC
-:50: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1986:
+								     lane_count, adjusted_mode->clock,

total: 0 errors, 1 warnings, 0 checks, 51 lines checked


