Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B970A4CD6E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 22:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D7710E0C6;
	Mon,  3 Mar 2025 21:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B061D10E0C6;
 Mon,  3 Mar 2025 21:23:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=3A_Add_?=
 =?utf-8?q?debugfs_for_dc6_counter_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mohammed Thasleem" <mohammed.thasleem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 03 Mar 2025 21:23:12 -0000
Message-ID: <174103699271.268465.13739091154655782462@b555e5b46a47>
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

Series: drm/i915/dmc: Add debugfs for dc6 counter (rev3)
URL   : https://patchwork.freedesktop.org/series/144240/
State : warning

== Summary ==

Error: dim checkpatch failed
6b5ed04d5237 drm/i915/dmc: Create debugfs entry for dc6 counter
-:76: CHECK:BRACES: braces {} should be used on all arms of this statement
#76: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:741:
+	if (dc6_en_dis) {
[...]
+	} else
[...]

-:79: CHECK:BRACES: Unbalanced braces around else statement
#79: FILE: drivers/gpu/drm/i915/display/intel_display_power_well.c:744:
+	} else

-:139: CHECK:LINE_SPACING: Please don't use multiple blank lines
#139: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:36:
 
+

-:170: CHECK:BRACES: Unbalanced braces around else statement
#170: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:1303:
+	} else

total: 0 errors, 0 warnings, 4 checks, 115 lines checked


