Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67674A200A4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 23:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5721E10E1CD;
	Mon, 27 Jan 2025 22:36:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPJYlMGH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAB110E1CD;
 Mon, 27 Jan 2025 22:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738017391; x=1769553391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DTa6uia5/FymYzV5gcep5+qj0qgtpehUaJH1i4qVm54=;
 b=XPJYlMGHI8HYs3quNwqCHZ3OoCSVN03ma/nl0Z1mRYObb/W6/YnDGz/A
 7IjeinNFKkQjA+zdKp5I/E3wbmFGwqh96UD1/pnfkXbbbuPTPQE8erugq
 iIUPW8+3wcs+Ih7eJ6Cd4kTndfpkhoCYliik6hb51ctU96w9lLkHr8Ima
 B+aC3/uJk1jJdzHBDBW7U5O9BxeZ3FhHiUhTxUkRrBsTpzDZK03C32xbD
 TmwYlZHL1M3yANmx8jyG21MXciBogksVs/tDhmVDyy82MSHKjHtecwW2T
 n9+aXzfaJiDWab6x+/7buWHYbcJ+2ALmHO5axjiq799+QJtJKbSTeTwHz w==;
X-CSE-ConnectionGUID: cd/AJb5WQIiLlUE0EPPTBg==
X-CSE-MsgGUID: 1E9hzYDNTTO/gISwIsqY3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="56035018"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="56035018"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 14:36:29 -0800
X-CSE-ConnectionGUID: 5l6fS2SsSsqW8ADJVYKAhQ==
X-CSE-MsgGUID: UQrW/yraRUCICDkGUU1FPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="113601918"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa004.jf.intel.com with ESMTP; 27 Jan 2025 14:36:29 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v6 0/2] tests/intel/xe_pmu: Add PMU tests
Date: Mon, 27 Jan 2025 14:32:59 -0800
Message-Id: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
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

Add utils and gt-c6 tests that utilize PMU counters.

Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  lib/igt_perf: Add utils to extract PMU event info
  tests/xe/pmu: Add pmu tests

 lib/igt_perf.c       |  70 +++++++++++++++++
 lib/igt_perf.h       |   2 +
 tests/intel/xe_pmu.c | 176 +++++++++++++++++++++++++++++++++++++++++++
 tests/meson.build    |   1 +
 4 files changed, 249 insertions(+)
 create mode 100644 tests/intel/xe_pmu.c

-- 
2.38.1

