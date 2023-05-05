Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D736F88D8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 20:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC25710E657;
	Fri,  5 May 2023 18:46:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586E810E659
 for <Intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683312393; x=1714848393;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nJIXap2n3XDVUOfPcLffoz9Il543bsuJzQMuT857lrw=;
 b=Vut3w7QLyuJ4UJaPyCyDDxDrLDbTwL2Ik+1F+aZQYjFG/Tl61iQNmuDL
 VbwXoMTnEc4qiADB46a+dFIgW9c+DjCyRTv1s5Hz9qsrxvRmytI7JEYDb
 oSeDyfociyHYEtS1GnPkCp8pV+OpaHC8b5x8UG0qpKS7ZsXaoB4OREcrf
 nh6BSlqra7ZDW0+oHVfd5UOYDf9PiTtytUMHc0xItrOCG2DM2BNYPxVfJ
 lqCfZFi6IN97niGR7H5EvBvWQeTDDCXoE45nFdmJwHoFJ/Rc3zI+LY4Yw
 7W2iYW6QtPxdQMkULDyNXKk9WBAE6uZvJzcSZwLWLFpWTazuacpfePm2L Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="328900388"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="328900388"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 11:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="1027614960"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="1027614960"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 11:46:17 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 11:46:38 -0700
Message-Id: <20230505184640.2200251-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] C20 Computed HDMI TMDS pixel clocks
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

Use computed C20 HDMI TMDS pixel clocks to support 25.175MHz to
594000MHz modes. Add 16 Bit mask operators to support C20 phy
programming.

BSPEC: 64568
Cc: Imre Deak <imre.deak@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>  

Clint Taylor (2):
  drm/i915: Add 16bit register/mask operators
  drm/i915/hdmi: C20 computed PLL frequencies

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 89 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 53 +++++++++++
 drivers/gpu/drm/i915/i915_reg_defs.h          | 49 ++++++++++
 3 files changed, 185 insertions(+), 6 deletions(-)

-- 
2.25.1

