Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C86577881E0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 10:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1FDB10E627;
	Fri, 25 Aug 2023 08:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9EB10E627
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692951413; x=1724487413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GAqPlD5WaMgff/uU6zQE/dxTIb3xpRQwBmFykw/m4fQ=;
 b=DuSrbKtRfZbqWJoQbWxxHUxmYad3n1jNZ93Z/aJLwc7DbCKArZx+eTRu
 kbapzx4ky8sKl1jDOvxDAyL1lkQ+VS+yzmu9rAFDgtzUVQ/po2a7B9UAG
 aLVRmYBekHTlMpTrEGjXgFZUVUsbysHHD1KLfttSRwruKABC8c+N7w+dE
 1jP0T3SEKhuoDuV7VP04WYxDlFNa2KJSsXdnemrPCOqvNMdewTMLIkU+V
 EhKmzeFE5EcplEQOzHw2Qnv1fhVxPEcEcCOhEyDkF8HNk7htIGTETEFX7
 FXTpW0dWVvPlvgHBF7tksSP8Bp9OutEcE9ug1Cp/zTv14QrBenF23c+Qr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364859055"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364859055"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="881107675"
Received: from teclark-mobl2.amr.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.213.100])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:55 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 11:16:34 +0300
Message-Id: <20230825081638.275795-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] drm/i915/tc: some clean-ups in max lane
 count handling code
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
Cc: suraj.kandpal@linux.intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Here are four patches with some clean-ups in the code that handles the
max lane count of Type-C connections.

This is done mostly in preparation for a new way to read the pin
assignments and lane count in future devices.

In v2:
   * Fix some rebasing damage.

In v3:
   * Fixed "assigment" typo, as reported by checkpatch.

In v4:
   * Rebased;
   * Renamed port_max to lane_max (Lucas' comment).

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/tc: rename mtl_tc_port_get_pin_assignment_mask()
  drm/i915/tc: make intel_tc_port_get_lane_mask() static
  drm/i915/tc: move legacy code out of the main _max_lane_count() func
  drm/i915/tc: remove "fia" from intel_tc_port_fia_max_lane_count()

 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |  4 +--
 drivers/gpu/drm/i915/display/intel_tc.c      | 38 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_tc.h      |  3 +-
 4 files changed, 26 insertions(+), 21 deletions(-)

-- 
2.39.2

