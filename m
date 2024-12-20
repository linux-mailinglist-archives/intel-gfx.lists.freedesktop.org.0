Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3669F8908
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 01:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BD210EE1B;
	Fri, 20 Dec 2024 00:40:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SNvZIUMm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952E810EE10;
 Fri, 20 Dec 2024 00:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734655247; x=1766191247;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sff5wGjeLKxBXHVVYAzPpbw6hSRjiIIeu+tZHsnGMIc=;
 b=SNvZIUMm6FPYhyu0986cIrkfAW2VU1ZrmD7FHOlF5I960SijrGOyMEmy
 89/6/s7jdNWEP2m4wX70N7vEUWGI2vUXN3D+Ax5j/BySEaq13KDkpR/VZ
 r3bm5jvGWVfjJZZQ1qrLPzB4n2ZtRs7OnygLL0JMMbcy74a4SEDkZgBl4
 tTzphUAXRXsVB3784ha4Dt8iE2Qe8cipQM5r5ON7OErW7PW15YtiXRJAr
 cte+l17tYPuwBDYYXLtTmAzF54gI82Ld03azFbp56DWUt1zrWlHw92FH0
 qrW6h3k+wPrD2zb4uCxJ9pLPiUIvjujJ4ESybBFF8/mE9bf63g9Bck7rJ A==;
X-CSE-ConnectionGUID: gCb+5mfaQTSnGkmrtGgSzg==
X-CSE-MsgGUID: b0mbtZ7iQRWHJF4xhVOfZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="46576424"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="46576424"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 16:40:47 -0800
X-CSE-ConnectionGUID: MO8k/kKlQtqnLk2cHJIshg==
X-CSE-MsgGUID: dXokXYPOSYKNQm8+bkTbnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="103233309"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 19 Dec 2024 16:40:46 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t v2 0/4] tools/gputop: Add PMU stats
Date: Thu, 19 Dec 2024 16:37:30 -0800
Message-Id: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
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

Use the PMU support being added in
https://patchwork.freedesktop.org/series/139121/ to add freq/c6 stats.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (4):
  tools/gputop: Define data structs for PMU stats
  lib/igt_drm_clients: Add pdev and driver info
  lib/igt_perf: Add utils to extract PMU event info
  tools/gputop: Add GT freq and c6 stats

 lib/igt_drm_clients.c |   6 ++
 lib/igt_drm_clients.h |   4 +
 lib/igt_perf.c        |  68 +++++++++++++
 lib/igt_perf.h        |   2 +
 tools/gputop.c        | 225 ++++++++++++++++++++++++++++++++++++++++++
 tools/meson.build     |   2 +-
 6 files changed, 306 insertions(+), 1 deletion(-)

-- 
2.38.1

