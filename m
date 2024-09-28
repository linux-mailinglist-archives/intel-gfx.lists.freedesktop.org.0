Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F63D988D9F
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 04:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387FF10E202;
	Sat, 28 Sep 2024 02:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F74C10E02A;
 Sat, 28 Sep 2024 02:46:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enhance_debugfs_for_?=
 =?utf-8?q?forcing_joiner_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Sep 2024 02:46:27 -0000
Message-ID: <172749158758.1130951.779784256620161280@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
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

Series: Enhance debugfs for forcing joiner (rev2)
URL   : https://patchwork.freedesktop.org/series/139162/
State : warning

== Summary ==

Error: dim checkpatch failed
7bc232923ffd drm/i915/display_device: Add Check HAS_DSC for bigjoiner
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:121:
+#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11 && HAS_DSC(i915))

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
6849530b73d4 drm/i915/display_debugfs: Allow force joiner only if supported
926f31afe97a drm/i915/display: Modify debugfs for joiner to force n pipes
7a0989448a2a drm/i915/dp: Add helper to compute num pipes required


