Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8439851A8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 05:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9309710E73E;
	Wed, 25 Sep 2024 03:54:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCfMYs8Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 297A810E2C8;
 Wed, 25 Sep 2024 03:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727236456; x=1758772456;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ebE+qg9dfnIbblvp5YNb6QkYkUu8WDLu0Q013ZYzUYU=;
 b=jCfMYs8Zk+HYJNXCPMD0aqWn5c7O234dTseFV1SkAPjB8F4fR7tKUjdj
 +xOcjAqbqVogr7LQhJrF/6tZek+Lyv68Vu0lm1qQlNDFI1YaGU08wr/UY
 4qG9wQv8WudYPgSV5yiJnpfOF9l+ahpZF5Kmba6x2Mteb1fDydKMOEx5E
 CCVkH3QdOC7XnC8Qa+ay7ldjr3kmpSVEhRR8HY03zi/3yoAKjIRIDBCxt
 hF8EQEl9BDuPVbd3WQQYM17W5f3lnjG2IjtQ86yVMCFH4KTNNViLIKXWx
 V4mSvvN4hf2+ePg6oOoLMdXvpRML15Hn/O96wp9iYT2BoqePFUprZlRF3 A==;
X-CSE-ConnectionGUID: wkWwi8FvQ4OaoQVXTxbNEw==
X-CSE-MsgGUID: B15Ir/34RZu4ZxT5qBbLKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="37640815"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="37640815"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 20:54:15 -0700
X-CSE-ConnectionGUID: gD7ydhkETJut01Bde+6rJw==
X-CSE-MsgGUID: bOyo3blDSj+LsUbIcExnLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71781142"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 24 Sep 2024 20:54:14 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2 0/3] Some correction in the DP Link Training sequence
Date: Wed, 25 Sep 2024 09:14:29 +0530
Message-Id: <20240925034432.1777029-1-arun.r.murthy@intel.com>
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
  drm/i915/dp: use fsleep instead of usleep_range for LT
  drm/i915/dp: read Aux RD interval just before setting the FFE preset
  drm/i915/dp: Include the time taken by AUX Tx for timeout

 .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

-- 
2.25.1

