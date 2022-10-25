Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F1260D505
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 21:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8DD10E154;
	Tue, 25 Oct 2022 19:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E14010E154;
 Tue, 25 Oct 2022 19:54:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 945A8AADDB;
 Tue, 25 Oct 2022 19:54:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 25 Oct 2022 19:54:17 -0000
Message-ID: <166672765757.15483.3086449949150783157@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221025182942.123094-1-anusha.srivatsa@intel.com>
In-Reply-To: <20221025182942.123094-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/display=3A_Change_t?=
 =?utf-8?q?erminology_for_cdclk_actions?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/4] drm/i915/display: Change terminology for cdclk actions
URL   : https://patchwork.freedesktop.org/series/110135/
State : warning

== Summary ==

Error: dim checkpatch failed
4061a06bfea9 drm/i915/display: Change terminology for cdclk actions
cefbd65ae44b drm/i915/display: Introduce HAS_CDCLK_SQUASH macro
07489e559d80 drm/i915/display: Move chunks of code out of bxt_set_cdclk()
-:47: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#47: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1706:
+
+}

total: 0 errors, 0 warnings, 1 checks, 52 lines checked
94213e1b427f drm/i915/display: Move squash_ctl register programming to its own function
-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1709:
+static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
+					 u16 waveform)

total: 0 errors, 0 warnings, 1 checks, 35 lines checked


