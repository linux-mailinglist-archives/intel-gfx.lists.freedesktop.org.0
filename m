Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5C45A5461
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 21:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E89F10E060;
	Mon, 29 Aug 2022 19:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6441D10E060;
 Mon, 29 Aug 2022 19:15:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B72CAADD6;
 Mon, 29 Aug 2022 19:15:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 29 Aug 2022 19:15:54 -0000
Message-ID: <166180055434.11950.4186709078870835262@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220829095832.21770-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220829095832.21770-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DP_MST_DSC_support_to_i915_=28rev10=29?=
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

Series: Add DP MST DSC support to i915 (rev10)
URL   : https://patchwork.freedesktop.org/series/101492/
State : warning

== Summary ==

Error: dim checkpatch failed
ded7d35c7112 drm: Add missing DP DSC extended capability definitions.
e15a191fd540 drm/i915: Fix intel_dp_mst_compute_link_config
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
We currently always exit that bpp loop because drm_dp_atomic_find_vcpi_slots

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
66422796eb1a drm/i915: Add DSC support to MST path
178b526eb821 drm/i915: Extract drm_dp_atomic_find_vcpi_slots cycle to separate function
-:85: CHECK:LINE_SPACING: Please don't use multiple blank lines
#85: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:116:
+
+

total: 0 errors, 0 warnings, 1 checks, 145 lines checked


