Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA5E5ACE4E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 10:57:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B1510E218;
	Mon,  5 Sep 2022 08:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E47FF10E218;
 Mon,  5 Sep 2022 08:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662368216; x=1693904216;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4IGGKd6QRL4yUbxu6TyMhUQTT7AcWazweynIGokMp+w=;
 b=dAAci0ANjdfMLIqLQfEoBB7LnSx2ElTlBRBx32cSEmwZ5wPHCjszBScp
 j2HITHgs5Jmm8hW8mjgCAwnR+qHw7j+UE3M8nB7CJ+QKBoZ0JNBi4FRhw
 4N0JvTQsAJw4CPm3d9ppPz2yCrMS0BaSY5p3dk+TQ+J3Kpv3bLpHVoG7D
 PWzbkVSORXW+aqUc4g494MlapNtYNmY9TkrJI9KNrd7vE93vv5i80/IzH
 sSQE31Sr7UDJiTLI/jgDumg+XnjqeTSocPo+xYv4sje4B6v/o1fPE6PZp
 1s7+kqwa/SMtzgjGWYDC6RJhHu67BUK8GZdIQM4rNg9zOmM9/JukA7RHx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="296347041"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="296347041"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 01:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="755961700"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2022 01:56:54 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 11:57:40 +0300
Message-Id: <20220905085744.29637-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Add DP MST DSC support to i915
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we have only DSC support for DP SST.

Stanislav Lisovskiy (4):
  drm: Add missing DP DSC extended capability definitions.
  drm/i915: Fix intel_dp_mst_compute_link_config
  drm/i915: Extract drm_dp_atomic_find_vcpi_slots cycle to separate
    function
  drm/i915: Add DSC support to MST path

 drivers/gpu/drm/i915/display/intel_dp.c     |  73 ++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  17 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 195 ++++++++++++++++++--
 include/drm/display/drm_dp.h                |  10 +-
 4 files changed, 237 insertions(+), 58 deletions(-)

-- 
2.37.3

