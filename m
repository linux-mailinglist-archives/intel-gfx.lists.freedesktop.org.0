Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC77A127016
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 22:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E326EB9D;
	Thu, 19 Dec 2019 21:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBFCD6EB9D;
 Thu, 19 Dec 2019 21:56:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E367EA0119;
 Thu, 19 Dec 2019 21:56:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 19 Dec 2019 21:56:58 -0000
Message-ID: <157679261890.26200.274464087253597424@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219215117.929-1-manasi.d.navare@intel.com>
In-Reply-To: <20191219215117.929-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/3=5D_drm/i915/dp=3A_Make_sur?=
 =?utf-8?q?e_all_tiled_connectors_get_added_to_the_state_with_full_modeset?=
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

Series: series starting with [v2,1/3] drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
URL   : https://patchwork.freedesktop.org/series/71190/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ccfce3fe03d1 drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
28ec6e3386c0 drm/i915/dp: Make port sync mode assignments only if all tiles present
-:210: CHECK:LINE_SPACING: Please don't use multiple blank lines
#210: FILE: drivers/gpu/drm/i915/display/intel_display.c:12751:
 
+

total: 0 errors, 0 warnings, 1 checks, 213 lines checked
331d1b560479 drm/i915/dp: Disable Port sync mode correctly on teardown

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
