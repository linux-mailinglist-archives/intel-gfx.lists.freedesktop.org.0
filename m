Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1B1AD1F9D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 15:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0EC10E39B;
	Mon,  9 Jun 2025 13:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B850210E39B;
 Mon,  9 Jun 2025 13:47:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/dp=3A_Limit_the_?=
 =?utf-8?q?DPCD_probe_quirk_to_the_affected_monitor_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Jun 2025 13:47:33 -0000
Message-ID: <174947685374.59983.5709322403222249231@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250605082850.65136-1-imre.deak@intel.com>
In-Reply-To: <20250605082850.65136-1-imre.deak@intel.com>
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

Series: drm/dp: Limit the DPCD probe quirk to the affected monitor (rev6)
URL   : https://patchwork.freedesktop.org/series/149774/
State : warning

== Summary ==

Error: dim checkpatch failed
ac5dfad32760 drm/dp: Change AUX DPCD probe address from DPCD_REV to LANE0_1_STATUS
-:42: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
f7a564db2cc8 drm/edid: Define the quirks in an enum list
4fa071edd657 drm/edid: Add support for quirks visible to DRM core and drivers
53c5271e1be5 drm/dp: Add an EDID quirk for the DPCD register access probe
8e603c4e244c drm/i915/dp: Disable the AUX DPCD probe quirk if it's not required


