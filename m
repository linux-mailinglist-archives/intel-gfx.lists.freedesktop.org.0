Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08077983D49
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0910A10E27D;
	Tue, 24 Sep 2024 06:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="abYqtUfD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6466310E1BE;
 Tue, 24 Sep 2024 06:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727160360; x=1758696360;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ebE+qg9dfnIbblvp5YNb6QkYkUu8WDLu0Q013ZYzUYU=;
 b=abYqtUfDYO+8hZ8867ctC8+Tx7gfxT/l1VOE8ZFALcxAOyPTDW5S6oFH
 WyFJm0tsJWUrZQDx8VUMzGppQea6z7OtP+4Wi6IHuyVPOODgr/U1JmGbA
 mrpEl4oNfL3GivDbV2ZH1tS4XN5lqZOFBMY4tp0ilKs7z0Mjj6reEikzn
 iefYuKaHxfPHIc9FFahD1A4olSSKW/qmw79IkSP6rCtn5lPcI+hlJXB/V
 LJjKvWXi24Wjs7ZwXOwwFS2NUgzPBJ1KY4JyMQ0Nmvio7b0z09rQ62bo3
 zVd3u3s3Nq1QNOCRqg66SZbh3QC83dtmufLJLRiCnaG9YgoxH9VUyJnLn A==;
X-CSE-ConnectionGUID: FvZnl54IT+i3NcyF+IFPOw==
X-CSE-MsgGUID: AjusI64KSJSGw/GqzeLrpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="25610971"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="25610971"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:46:00 -0700
X-CSE-ConnectionGUID: vDniaz6bRsC3HvVq+CC50w==
X-CSE-MsgGUID: VX/XadN5RASu/iAfqSeIvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="102058149"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa002.jf.intel.com with ESMTP; 23 Sep 2024 23:45:59 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2 0/3] Some correction in the DP Link Training sequence
Date: Tue, 24 Sep 2024 12:06:13 +0530
Message-Id: <20240924063616.1726369-1-arun.r.murthy@intel.com>
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

