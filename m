Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1424E24E7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 12:02:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2AC10E31D;
	Mon, 21 Mar 2022 11:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26AA810E31D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 11:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647860549; x=1679396549;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XMiOPEXLDXH8TSnIS+qq7u178j2Ql0qkiVRMIL+5lyE=;
 b=Ozqa9AcUze4C2dAKmkW4FtUPveMl/qdZw6ksdiXgQEh5OVNB1XxCj5QU
 Rt3ZnmoyLrFNkQJlnRwfK3RkupiciEJ73O7Q1kmRMXg/s+6PkzxUPvvJw
 Tr/bJlsWC/5hXVvyIJ+tc1Sy5sLN9uWUEn0vEmxDrN0Y9Q8VUY2IcwAUe
 1IoAWGe/rojfjIJqgxrR1nX12HDtAEKHYLKw7c+2cMIrAp5WRXzOP5/vt
 9TJaDdKzyWfJEbFz9BRQkAaLdODXYnOcuRGcsI9u1QhCmf5IHhu/u+zwU
 gC1ofaW8/bxv89KNwH90LvCB29LRNn24Apccjnu1ae4SKuis++dTbfwyu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="343952623"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="343952623"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 04:02:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="716454755"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 21 Mar 2022 04:02:26 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 13:03:03 +0200
Message-Id: <20220321110305.12853-1-stanislav.lisovskiy@intel.com>
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

