Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841544F8A70
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 01:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B5610E4CD;
	Thu,  7 Apr 2022 23:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7678010E4CD;
 Thu,  7 Apr 2022 23:16:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73D4FAADD8;
 Thu,  7 Apr 2022 23:16:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 07 Apr 2022 23:16:57 -0000
Message-ID: <164937341743.14673.634286130863220109@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407183826.724106-1-imre.deak@intel.com>
In-Reply-To: <20220407183826.724106-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/dp=3A_Export_drm=5Fdp=5F?=
 =?utf-8?q?dpcd=5Faccess=28=29?=
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

Series: series starting with [1/2] drm/dp: Export drm_dp_dpcd_access()
URL   : https://patchwork.freedesktop.org/series/102360/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f5b222e754b5 drm/dp: Export drm_dp_dpcd_access()
d3f620ce16fb drm/i915/dp: Add workaround for spurious AUX timeouts/hotplugs on LTTPR links
-:73: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#73: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:203:
+				       DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV, &tmp, 1) != 1)

total: 0 errors, 1 warnings, 0 checks, 49 lines checked


