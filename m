Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2C324A695
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 21:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D09E6E7D4;
	Wed, 19 Aug 2020 19:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 558126E7D4;
 Wed, 19 Aug 2020 19:11:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50007A47EE;
 Wed, 19 Aug 2020 19:11:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 19 Aug 2020 19:11:59 -0000
Message-ID: <159786431929.23597.8173240208648686717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200819185146.22109-1-jose.souza@intel.com>
In-Reply-To: <20200819185146.22109-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/display/tgl=3A_Use_?=
 =?utf-8?q?TGL_DP_tables_for_eDP_ports_without_low_power_support?=
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

Series: series starting with [1/3] drm/i915/display/tgl: Use TGL DP tables for eDP ports without low power support
URL   : https://patchwork.freedesktop.org/series/80819/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
368c77e8c5f2 drm/i915/display/tgl: Use TGL DP tables for eDP ports without low power support
-:42: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1101:
+				*n_entries = ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hobl);

-:61: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#61: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1113:
+		/* fall through */

total: 0 errors, 2 warnings, 0 checks, 63 lines checked
4ff37f4d65b8 drm/i915/display/ehl: Use EHL DP tables for eDP ports without low power support
-:40: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#40: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1091:
+		/* fall through */

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
91c25dc00bf9 drm/i915/ehl: Update voltage swing table
-:9: WARNING:TYPO_SPELLING: 'tunning' may be misspelled - perhaps 'tuning'?
#9: 
Update with latest tunning in the table.

total: 0 errors, 1 warnings, 0 checks, 20 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
