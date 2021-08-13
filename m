Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B90233EB5DB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 14:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A126E5D2;
	Fri, 13 Aug 2021 12:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08DDD6E5D1;
 Fri, 13 Aug 2021 12:57:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02957A008A;
 Fri, 13 Aug 2021 12:57:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Aug 2021 12:57:19 -0000
Message-ID: <162885943998.17679.7850921982296548536@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813115151.19290-1-jani.nikula@intel.com>
In-Reply-To: <20210813115151.19290-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/dp=3A_pass_crtc=5Fs?=
 =?utf-8?q?tate_to_intel=5Fddi=5Fdp=5Flevel=28=29?=
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

Series: series starting with [1/3] drm/i915/dp: pass crtc_state to intel_ddi_dp_level()
URL   : https://patchwork.freedesktop.org/series/93673/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5fc36b81b2d1 drm/i915/dp: pass crtc_state to intel_ddi_dp_level()
e6f596ec68d1 drm/i915/dg2: use existing mechanisms for SNPS PHY translations
-:205: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#205: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:72:
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, ddi_translations->entries[level].snps.snps_vswing);

-:206: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:73:
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, ddi_translations->entries[level].snps.snps_pre_cursor);

-:207: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:74:
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, ddi_translations->entries[level].snps.snps_post_cursor);

total: 0 errors, 3 warnings, 0 checks, 181 lines checked
543840eff86e drm/i915/dg2: add SNPS PHY translations for UHBR link rates


