Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08647703DA
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 17:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C1210E722;
	Fri,  4 Aug 2023 15:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151BC10E721
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 15:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691161437; x=1722697437;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eBZEgTjMVJlEsHBFzRx74yNGg3Pu552sqUXS2Mm5K9g=;
 b=R921e4VXMKvZo1o8Gp1jjwYqdpj1uYHTXlfVcfpa+YSKnJH9NkmCTGYd
 m+H/7/qOlR5ssgRfWcK7EwSCIJ2wX98ePDhTtRzUHWnn7Kmt7LvH1ewxj
 EfSlBfjAf+PzrggR+itMLBDWKZGvwM5uNeZ/qvtT6fk2UBjjFabNnKsdh
 BW6kITmQtOb4eXSx5JYvLSmQrHwLaP1Wgnn7hH5eVlQADYhTTtzTs+srH
 pKBuCMtrCjMdNPW+c66LzSRwjvEG9JFH2JzJzTCcmFKdHrUG486I8yg4S
 nyAd2JNcdMwt7mXmkZ9d4wWG46dazTRENltnkff6VCXAQdzfQrIKhB3wM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="355106829"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="355106829"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:03:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="733276818"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="733276818"
Received: from mschwieg-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.210.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:03:55 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Aug 2023 18:03:37 +0300
Message-Id: <20230804150339.22012-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] DP2.0 SDP split
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

Support DP2.0 sdp split for  DP-MST

Vinod Govindapillai (2):
  drm/i915/display: optimize DP 2.0 sdp split update config
  drm/i915/display: support DP2.0 SDP split for DP-MST

 drivers/gpu/drm/i915/display/intel_audio.c   |  6 +++---
 drivers/gpu/drm/i915/display/intel_audio.h   |  3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ---
 drivers/gpu/drm/i915/display/intel_display.c |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c      | 16 +++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h      |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  3 +++
 7 files changed, 19 insertions(+), 17 deletions(-)

-- 
2.34.1

