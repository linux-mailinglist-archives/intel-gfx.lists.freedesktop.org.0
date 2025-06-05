Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FB8ACEC8C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 11:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2320810E94E;
	Thu,  5 Jun 2025 09:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F287710E94E;
 Thu,  5 Jun 2025 09:05:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/dp=3A_Limit_the_?=
 =?utf-8?q?DPCD_probe_quirk_to_the_affected_monitor_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Jun 2025 09:05:57 -0000
Message-ID: <174911435798.51388.913332973801041012@1538d3639d33>
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

Series: drm/dp: Limit the DPCD probe quirk to the affected monitor (rev4)
URL   : https://patchwork.freedesktop.org/series/149774/
State : warning

== Summary ==

Error: dim checkpatch failed
dca4f78dae67 drm/dp: Change AUX DPCD probe address from DPCD_REV to LANE0_1_STATUS
-:42: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
498b6d905e23 drm/edid: Define the quirks in an enum list
ed00b779f859 drm/edid: Add support for quirks visible to DRM core and drivers
17b18ed28691 drm/dp: Add an EDID quirk for the DPCD register access probe
4fef907d247e drm/i915/dp: Disable the AUX DPCD probe quirk if it's not required


