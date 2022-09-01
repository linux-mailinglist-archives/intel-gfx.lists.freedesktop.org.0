Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB7A5A94B5
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 12:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881D710E6C1;
	Thu,  1 Sep 2022 10:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 905C010E6C4;
 Thu,  1 Sep 2022 10:34:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85A8BA73C7;
 Thu,  1 Sep 2022 10:34:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 01 Sep 2022 10:34:19 -0000
Message-ID: <166202845954.11922.8438898741692637598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220901101143.32316-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220901101143.32316-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DP_MST_DSC_support_to_i915_=28rev11=29?=
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

Series: Add DP MST DSC support to i915 (rev11)
URL   : https://patchwork.freedesktop.org/series/101492/
State : warning

== Summary ==

Error: dim checkpatch failed
f0211d697f3c drm: Add missing DP DSC extended capability definitions.
2ac1d5da72af drm/i915: Fix intel_dp_mst_compute_link_config
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
We currently always exit that bpp loop because drm_dp_atomic_find_vcpi_slots

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
21d0db8c5760 drm/i915: Extract drm_dp_atomic_find_vcpi_slots cycle to separate function
-:85: CHECK:LINE_SPACING: Please don't use multiple blank lines
#85: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:116:
+
+

total: 0 errors, 0 warnings, 1 checks, 85 lines checked
0280bc07cbc6 drm/i915: Add DSC support to MST path


