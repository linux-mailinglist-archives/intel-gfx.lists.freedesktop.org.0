Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E69773FFC5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDD310E303;
	Tue, 27 Jun 2023 15:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B87010E010
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687880018; x=1719416018;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xZErQS/DzfAgmwOXburmOVvks38qRr4UwURNVCrG/4g=;
 b=ecqaKMzJsi24h7z/YbH2OwIWt4lAr9gmto7vz/TsNaKh+ByWkFrGWMPf
 mWmkzu1Q1xMrsmDu1vxVZX47UbjkqLVCgpfzDOE//u9BwpLPM9Bsch7t4
 NetxLaKIlhU7mYJw9rsqbdep+0LtbZOFi5V/wBGKFnIOCGeLNltKKB3OE
 kQf4UdgQBVJO4gyI4Vs18ZW2U0FRlGb1Frclzi7PPKTkAmsxV/HYbkjQb
 2416NS4FHJvOBy7y89AhFDzhe8wRuWAXq5rxKCnkP9hRo3bxflINkRiie
 T6ItParcEUYtAs/xcr3PubFjydTE7bWpVpT6ef21Gq5afPYPNqWFWEnRH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="351386308"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="351386308"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="806533231"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="806533231"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jun 2023 08:33:35 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 21:04:50 +0530
Message-Id: <20230627153451.2834196-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] HDMI 2.0/DP1p62Gbps skew violation when
 there is skew between DL PCLK
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

When doing type-C PHY voltage swing programming for HDMI and DP 1.62Gbps,
program DKLP_PCS_GLUE_TX_DPCNTL2[loadgen_sharing_pmd_disable] to '1'.
For other DP frequencies, program DKLP_PCS_GLUE_TX_DPCNTL2[loadgen_sharing_pmd_disable]
to '0'.

This Workaround is specific to Display Version 13
Wa_15010727533

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Mitul Golani (1):
  drm/i915/display: HDMI2.0/DP1p62Gbps skew violation when there is skew
    between DL PCLK

 drivers/gpu/drm/i915/display/intel_ddi.c | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  6 ++++++
 2 files changed, 19 insertions(+)

-- 
2.25.1

