Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 161B4251F3D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 20:47:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39E06E96C;
	Tue, 25 Aug 2020 18:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B54E16E95B;
 Tue, 25 Aug 2020 18:47:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF3C6A7525;
 Tue, 25 Aug 2020 18:47:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 25 Aug 2020 18:47:51 -0000
Message-ID: <159838127168.23677.12323124839088650246@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200825184343.63253-1-jose.souza@intel.com>
In-Reply-To: <20200825184343.63253-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/3=5D_drm/i915/display/tgl=3A?=
 =?utf-8?q?_Use_TGL_DP_tables_for_eDP_ports_without_low_power_support?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,1/3] drm/i915/display/tgl: Use TGL DP tables for eDP ports without low power support
URL   : https://patchwork.freedesktop.org/series/80990/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5b6227b45a69 drm/i915/display/tgl: Use TGL DP tables for eDP ports without low power support
-:43: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1101:
+				*n_entries = ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hobl);

-:62: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#62: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1113:
+		/* fall through */

total: 0 errors, 2 warnings, 0 checks, 63 lines checked
3aa5a2ba6712 drm/i915/display/ehl: Use EHL DP tables for eDP ports without low power support
-:41: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#41: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1088:
+				return icl_combo_phy_ddi_translations_edp_hbr3;
+			} else {

-:46: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#46: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1093:
+		/* fall through */

total: 0 errors, 2 warnings, 0 checks, 31 lines checked
f88ee990640a drm/i915/ehl: Update voltage swing table
-:9: WARNING:TYPO_SPELLING: 'tunning' may be misspelled - perhaps 'tuning'?
#9: 
Update with latest tunning in the table.

total: 0 errors, 1 warnings, 0 checks, 20 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
