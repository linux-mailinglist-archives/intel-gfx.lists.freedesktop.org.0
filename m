Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E828983D14
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2166610E4D8;
	Tue, 24 Sep 2024 06:23:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQ2GMxK6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF8A410E4D8;
 Tue, 24 Sep 2024 06:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727159028; x=1758695028;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wk/GbHmB/gCsAy7gRQj1l8LNpI9V3QfQiphaPbL6J78=;
 b=gQ2GMxK6NjwRFpgcZnNkNHzTtgwNePfixtOFKfGYI55pEQI7yI9JxLiT
 klgOst66GNHnqAhvwg9pO4NCWqMpdw70UUIlrfmuP2ag3iw4NPn4LNgNF
 knFepfoj6xYrGPxMInBq+vR/LYS3u10d/qRCWOSuEJRiuA1VTRbR/0Yx+
 R6oYbizHKTu91qXeJitFIDR5PSRgoV/ZPojI2OTHqduS39pPiCR++QCJm
 szE6FlaFIppEocYy+inch9ynL/BennZMITyWSDhNd5DHCKIGXvNHEaULv
 aRI4OukMGqyaXDKhzBhOllb5dtfgiqyBuZZotnnerrUb/uSJfEVSomu1i g==;
X-CSE-ConnectionGUID: eex+TndmRIWxIzi5CkJzOw==
X-CSE-MsgGUID: AnhVPsD6SK6nIOzj+4a1bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26229852"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="26229852"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:23:47 -0700
X-CSE-ConnectionGUID: uVgqzcHaQdanczCOYDDIZQ==
X-CSE-MsgGUID: t8fjvQ4oTN2K4jQNt2K2Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="76085944"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa003.jf.intel.com with ESMTP; 23 Sep 2024 23:23:46 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2 0/3] Some correction in the DP Link Training sequence
Date: Tue, 24 Sep 2024 11:43:55 +0530
Message-Id: <20240924061358.1725306-1-arun.r.murthy@intel.com>
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
  drm/i915/dp: read Aux RD interval just before reading the FFE preset
  drm/i915/dp: Include the time taken by AUX Tx for timeout

 .../drm/i915/display/intel_dp_link_training.c | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
2.25.1

