Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E35164E22F4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 10:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77AC610E2EB;
	Mon, 21 Mar 2022 09:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDB510E263;
 Mon, 21 Mar 2022 09:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647853789; x=1679389789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XMiOPEXLDXH8TSnIS+qq7u178j2Ql0qkiVRMIL+5lyE=;
 b=NabOVDUe1RGHyuO/ZOoEpX+S/YF9qtbifz7kV50jByz5Pks5/D8PQ4nC
 dHGrDb6jeVC7ph3XLMGtesAi/Sau4acOcGdd74mRRrIEA57oOvDiZt5iF
 56mZaOKjduSUKaKaUbLMmntWocrjNCR51OrNmqhnxaRCe4ZEbqo4Rb35E
 L/n+207BjUryyZsenan8XbCJMX7sK/chZJGOw9g3jyVKcU/X5/sIFjfvk
 51bSccugQ9muMED/gJ/ubmYT7DpnMlifGU6jkpeV/CQqhkDuJQmg18ha6
 wRYdWrDFv+SpmtsbAeaPkX7pqQwc5G8Jv9+DMTesVqU2g9zx9Teyl2i+x A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="257453681"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="257453681"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 02:09:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="784933819"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga006.fm.intel.com with ESMTP; 21 Mar 2022 02:09:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 11:10:23 +0200
Message-Id: <20220321091025.5203-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Add DP MST DSC support to i915
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we have only DSC support for DP SST.

Stanislav Lisovskiy (2):
  drm: Add missing DP DSC extended capability definitions.
  drm/i915: Add DSC support to MST path

 drivers/gpu/drm/dp/drm_dp.c                 |  25 ++++
 drivers/gpu/drm/i915/display/intel_dp.c     |  75 +++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  17 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 143 ++++++++++++++++++++
 include/drm/dp/drm_dp_helper.h              |  11 +-
 5 files changed, 226 insertions(+), 45 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

