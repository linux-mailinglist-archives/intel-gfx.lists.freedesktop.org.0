Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB83D435A59
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 07:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34AE789C08;
	Thu, 21 Oct 2021 05:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBCB689C08;
 Thu, 21 Oct 2021 05:32:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFDEDA73C9;
 Thu, 21 Oct 2021 05:32:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 05:32:29 -0000
Message-ID: <163479434982.20179.6247238999765072257@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021050713.836498-1-khaled.almahallawy@intel.com>
In-Reply-To: <20211021050713.836498-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/dp=3A_Use_DP2=2E0_DPCD_248h_updated_register/field_name?=
 =?utf-8?q?s_for_DP_PHY_CTS?=
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

Series: drm/dp: Use DP2.0 DPCD 248h updated register/field names for DP PHY CTS
URL   : https://patchwork.freedesktop.org/series/96096/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2bdec9c1bda4 drm/dp: Rename DPCD 248h according to DP 2.0 specs
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
DPCD 248h name was changed from “PHY_TEST_PATTERN” in DP 1.4 to “LINK_QUAL_PATTERN_SELECT” in DP 2.0.

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
801e4b2d5433 drm/i915/dp: Use DP 2.0 LINK_QUAL_PATTERN_* Phy test pattern definitions
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Update selected phy test pattern names to use the new names/definitions of DPCD 248h in DP2.0/drm_dp_helpers.h

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
d394b46305e2 drm/amd/dc: Use DPCD 248h DP 2.0 new name
0e23aeb9be77 drm/msm/dp: Use DPCD 248h DP 2.0 new names/definitions
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
Use DP 2.0 DPCD 248h new name (LINK_QUAL_PATTERN_SELECT) and rename selected phy test patterns to LINK_QUAL_PATTERN_*

-:113: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#113: FILE: drivers/gpu/drm/msm/dp/dp_link.c:578:
+	rlen = drm_dp_dpcd_readb(link->aux, DP_LINK_QUAL_PATTERN_SELECT,
 					&data);

total: 0 errors, 1 warnings, 1 checks, 101 lines checked


