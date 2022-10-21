Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E3A6081C0
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Oct 2022 00:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B47E10E065;
	Fri, 21 Oct 2022 22:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 663D810E065;
 Fri, 21 Oct 2022 22:37:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C641AADDC;
 Fri, 21 Oct 2022 22:37:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 21 Oct 2022 22:37:31 -0000
Message-ID: <166639185134.18267.11949320991090175082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221021213948.516041-1-anusha.srivatsa@intel.com>
In-Reply-To: <20221021213948.516041-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prep_series_-_CDCLK_code_churn_=28rev2=29?=
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

Series: Prep series - CDCLK code churn (rev2)
URL   : https://patchwork.freedesktop.org/series/109974/
State : warning

== Summary ==

Error: dim checkpatch failed
750f09e493d8 drm/i915/display: Change terminology for cdclk actions
7e35fba6b197 drm/i915/display: Introduce HAS_CDCLK_SQUASH macro
e7d2804a8d53 drm/i915/display: Move chunks of code out of bxt_set_cdclk()
-:46: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#46: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1706:
+
+}

total: 0 errors, 0 warnings, 1 checks, 52 lines checked
b54115c43c27 drm/i915/display: Move squash_ctl register programming to its own function
-:29: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#29: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1709:
+static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
+					 u16 waveform)

total: 0 errors, 0 warnings, 1 checks, 35 lines checked


