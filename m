Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B90F3976043
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 07:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C8010E96E;
	Thu, 12 Sep 2024 05:15:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOrCCKLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D251B10E0AD;
 Thu, 12 Sep 2024 05:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726118142; x=1757654142;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+qEUNwWsycJdhjTfR3AHwg8VxJKiQlshd7WpoFIrH5g=;
 b=AOrCCKLdXEREeUPtPyJru/iBelydIPr2/ZYTL4PrZ4QvmXDyBhdWtGnW
 KKajz8kXmNjoP7pmBd1kiB+7A1nYzTSFGOmt7WE90iN89ivq7oCzcSe9R
 8woSc77LCCROUJStZrWgbqt4wO0cDsrJmrSSXIbUsLdLq6Lhly9GOY8fC
 U8PiCaHHG1AtWRK+GX2nGkFA6DncnTXR3b9o7p/TG83pfB3Ky3AxZDLGf
 MliOMCIfrxxHHodpeWFplAudlCoReQE85AjB2uufoMWyApb1NhJs/Sb6K
 Uf/LKuGeaCW9gjDBVO70vQdSGbx5dZv8gnKap2TK0y6ybZoBKpOzj3Vxd g==;
X-CSE-ConnectionGUID: j3p5JOB2SoitNBe7puuY3A==
X-CSE-MsgGUID: o3Epf+KhRKG3hAYVCoeP3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35613923"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="35613923"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 22:15:41 -0700
X-CSE-ConnectionGUID: M98MROhnSjiw0pDfxa8oUA==
X-CSE-MsgGUID: 90mL4jrXRZyQHBTNQOIY0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72388853"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa005.jf.intel.com with ESMTP; 11 Sep 2024 22:15:40 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/3] Some correction in the DP Link Training dequence
Date: Thu, 12 Sep 2024 10:35:49 +0530
Message-Id: <20240912050552.779356-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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


Arun R Murthy (3):
  drm/i915/dp: use fsleep instead of usleep_rage for LT
  drm/i915/dp: read Aux RD interval after reading the FFE preset
  drm/i915/dp: Include the time taken by AUX Tx for timeout

 .../drm/i915/display/intel_dp_link_training.c | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
2.25.1

