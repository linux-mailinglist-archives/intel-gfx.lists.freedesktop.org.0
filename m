Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FF31EDCB4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 07:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70DDC6E175;
	Thu,  4 Jun 2020 05:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB8606E175;
 Thu,  4 Jun 2020 05:34:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6522A47EA;
 Thu,  4 Jun 2020 05:34:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vidya Srinivas" <vidya.srinivas@intel.com>
Date: Thu, 04 Jun 2020 05:34:51 -0000
Message-ID: <159124889191.14553.13020502131747172550@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1591247028-5868-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1591247028-5868-1-git-send-email-vidya.srinivas@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_DP_PHY_compliance_for_JSL?=
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

Series: drm/i915/dp: DP PHY compliance for JSL
URL   : https://patchwork.freedesktop.org/series/77977/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ce289f0dd8a5 drm/i915/dp: DP PHY compliance for JSL
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:97: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#97: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5561:
+			drm_dbg_kms(&i915->drm,
+				"PHY compliance for platform not supported\n");

total: 0 errors, 1 warnings, 1 checks, 86 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
