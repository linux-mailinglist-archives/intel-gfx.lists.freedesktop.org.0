Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0BCA32839
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5B5B10E8BF;
	Wed, 12 Feb 2025 14:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1195710E137;
 Wed, 12 Feb 2025 14:17:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=3A_Add_?=
 =?utf-8?q?debugfs_for_dc6_counter_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mohammed Thasleem" <mohammed.thasleem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 14:17:37 -0000
Message-ID: <173936985706.1320673.15834873086350300834@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
In-Reply-To: <20250203085613.236340-1-mohammed.thasleem@intel.com>
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

Series: drm/i915/dmc: Add debugfs for dc6 counter (rev2)
URL   : https://patchwork.freedesktop.org/series/144240/
State : warning

== Summary ==

Error: dim checkpatch failed
980328332189 drm/i915/dmc: Create debugfs entry for dc6 counter
-:74: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:782:
+			display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;

-:117: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:1294:
+		display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;

total: 0 errors, 2 warnings, 0 checks, 77 lines checked


