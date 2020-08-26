Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B636253901
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0DD6EACA;
	Wed, 26 Aug 2020 20:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A83AD6EAC8;
 Wed, 26 Aug 2020 20:19:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1265A882F;
 Wed, 26 Aug 2020 20:19:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 26 Aug 2020 20:19:16 -0000
Message-ID: <159847315663.21253.8847862765694213073@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200826201549.83658-1-jose.souza@intel.com>
In-Reply-To: <20200826201549.83658-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/3=5D_drm/i915/display/tgl=3A?=
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

Series: series starting with [v3,1/3] drm/i915/display/tgl: Use TGL DP tables for eDP ports without low power support
URL   : https://patchwork.freedesktop.org/series/81083/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8017026c4d9e drm/i915/display/tgl: Use TGL DP tables for eDP ports without low power support
-:44: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1101:
+				*n_entries = ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hobl);

-:63: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#63: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1113:
+		/* fall through */

total: 0 errors, 2 warnings, 0 checks, 63 lines checked
e9e33a64daf7 drm/i915/display/ehl: Use EHL DP tables for eDP ports without low power support
-:42: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#42: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1088:
+				return icl_combo_phy_ddi_translations_edp_hbr3;
+			} else {

-:47: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#47: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1093:
+		/* fall through */

total: 0 errors, 2 warnings, 0 checks, 31 lines checked
bafdc7600734 drm/i915/ehl: Update voltage swing table
-:9: WARNING:TYPO_SPELLING: 'tunning' may be misspelled - perhaps 'tuning'?
#9: 
Update with latest tunning in the table.

total: 0 errors, 1 warnings, 0 checks, 18 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
