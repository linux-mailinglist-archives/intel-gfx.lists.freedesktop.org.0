Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54449747283
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 15:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7178410E18D;
	Tue,  4 Jul 2023 13:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64F410E174
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 13:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688476685; x=1720012685;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6uTV3if8Y+E1Pqdha9jy5idaX9V7XITU+ntm3rBCOtA=;
 b=ep5ITNkX/NnwLM3bufCAsi9xu5Zpt8PDZMBwpsUOqGT71WxO/iBAwLZW
 b/PPBf0sY2uwMyOPaqUFfQ6cUMdgwZ0sOVVw2n7H+Kc4XZc0ipW6ts1YU
 LEIR++njqquO75UUDXjSzLhDK9o4GjMDaWfXnBSUdr8bb7bWnR09JXEPF
 cYWuPOOkgNNDSSFhVu0RbphgyDZF2xq+l31y2/dMYBm7ScJuy5PFqqOOR
 00cQbFDDP3aLPwR4jAMiFov+wDBNV0zLU9NXARsi+L3GZKFJKN6WnDUQU
 3qgLaX+tBXFaHlkqb2fBwK4B2EMc0Df46J6IAB7JQOgg4vPvchBm6ylkz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429157273"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="429157273"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 06:18:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="892865424"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="892865424"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2023 06:17:59 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 16:17:56 +0300
Message-Id: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Calculate CDCLK more properly when DSC is
 enabled
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

We need to properly estimate our available BW when DSC is enabled because
this can lead both to need in increasing or decresing CDCLK.
Each DSC engine can process only single pixel at a time thus if only
single DSC engine is enabled, CDCLK is obliged to be equal to pixel clock
(while in non-compressed case it can be usualy lower)
However if we have 2 DSC engines CDCLK can be ~pixel clock / 2 and so on.
Lets do the estimation more properly based on amount of VDSC engines used.
That most likely is going to fix some FIFO underruns, we are currently
having.

Stanislav Lisovskiy (2):
  drm/i915: Add helper function for getting number of VDSC engines
  drm/i915: Don't rely that 2 VDSC engines are always enough for pixel
    rate

 drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++--
 drivers/gpu/drm/i915/display/intel_vdsc.c  | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.h  |  1 +
 3 files changed, 23 insertions(+), 6 deletions(-)

-- 
2.37.3

