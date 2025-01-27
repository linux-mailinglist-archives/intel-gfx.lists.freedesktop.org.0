Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1AAA20054
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 23:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1405210E5C6;
	Mon, 27 Jan 2025 22:16:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elxZ784Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A57010E5C6;
 Mon, 27 Jan 2025 22:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738016168; x=1769552168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aB02eFJH5pZRfAfBak/d23/0qCXdDmmRHrX3CvFWaYg=;
 b=elxZ784QmFp2U4JRGQQumjMOPbKclcSvS2uVL/FMgIv2meSFydp+msSl
 9OfvhqyrypagHs+jrRuwNG2lC0ZoRjMWOjyXhyprTyg7Sfe7RZuT+1yvQ
 XCFut+HlAgktFIku2Ph9rT2eUiP2nuMiEo15b/YEXl7UjnWQbrmfXFA1H
 A4FNaVrlFV9l7mcoesT1kyFZgyeSGQoeTBTxrlN9WHpPUk+EOoYSkxjwA
 bRD1L4z9kGle/iwWbSQkFYxPeo9B2bR7OnskhKYaQppUB7Fbt9UPklWVb
 cb/HmnR/rBieRyUDhJm+nb16iRTERt7s2Tlf3iXvd05LjnGQL6tc12kIJ A==;
X-CSE-ConnectionGUID: H5/5NVr6RNqiYzO7s2bgQQ==
X-CSE-MsgGUID: r2/awxitQmOYlxDgee8/Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="41334234"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="41334234"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 14:16:08 -0800
X-CSE-ConnectionGUID: /8PNI0PsQoekYVjZM4FhZw==
X-CSE-MsgGUID: acshcE+kRlmYGVkIwfBQyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="145773718"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa001.jf.intel.com with ESMTP; 27 Jan 2025 14:16:07 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v5 0/2] tests/intel/xe_pmu: Add PMU tests
Date: Mon, 27 Jan 2025 14:12:35 -0800
Message-Id: <20250127221237.2811011-1-vinay.belgaumkar@intel.com>
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

 lib/igt_perf.c       |  70 ++++++++++++++++
 lib/igt_perf.h       |   2 +
 tests/intel/xe_pmu.c | 192 +++++++++++++++++++++++++++++++++++++++++++
 tests/meson.build    |   1 +
 4 files changed, 265 insertions(+)
 create mode 100644 tests/intel/xe_pmu.c

-- 
2.38.1

