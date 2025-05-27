Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3199AC5429
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 18:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66FB010E193;
	Tue, 27 May 2025 16:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAFCD10E165;
 Tue, 27 May 2025 16:57:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_Enabl?=
 =?utf-8?q?e_DSC_on_external_DP_display_if_VBT_allows_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 May 2025 16:57:06 -0000
Message-ID: <174836502688.25115.2672115528140750054@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250527075906.65542-1-shawn.c.lee@intel.com>
In-Reply-To: <20250527075906.65542-1-shawn.c.lee@intel.com>
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

Series: drm/i915/dp: Enable DSC on external DP display if VBT allows (rev2)
URL   : https://patchwork.freedesktop.org/series/149518/
State : warning

== Summary ==

Error: dim checkpatch failed
6f5a5809b5f7 drm/i915/dp: Enable DSC on external DP display if VBT allows
-:37: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_bios.c:3557:
+	if ((intel_bios_encoder_supports_dp(devdata) && !intel_bios_encoder_supports_edp(devdata)) ||

-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/intel_bios.c:3558:
+	if ((intel_bios_encoder_supports_dp(devdata) && !intel_bios_encoder_supports_edp(devdata)) ||
+	     intel_bios_encoder_supports_hdmi(devdata))

total: 0 errors, 1 warnings, 1 checks, 78 lines checked


