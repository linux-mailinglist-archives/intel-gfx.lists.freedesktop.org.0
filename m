Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 831DC5B7BF4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 22:04:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B00E10E42B;
	Tue, 13 Sep 2022 20:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFBD510E430;
 Tue, 13 Sep 2022 20:04:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C574DAA914;
 Tue, 13 Sep 2022 20:04:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 13 Sep 2022 20:04:18 -0000
Message-ID: <166309945880.21294.10276370255538108441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220913141417.8131-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220913141417.8131-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DP_MST_DSC_support_to_i915_=28rev13=29?=
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

Series: Add DP MST DSC support to i915 (rev13)
URL   : https://patchwork.freedesktop.org/series/101492/
State : warning

== Summary ==

Error: dim checkpatch failed
0dc6327cd7cb drm: Add missing DP DSC extended capability definitions.
4ae223eb8889 drm/i915: Fix intel_dp_mst_compute_link_config
80f75a2d3cdd drm/i915: Extract drm_dp_atomic_find_vcpi_slots cycle to separate function
-:79: CHECK:LINE_SPACING: Please don't use multiple blank lines
#79: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:116:
+
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
fd51b9e8c0ae drm/i915: Add DSC support to MST path


