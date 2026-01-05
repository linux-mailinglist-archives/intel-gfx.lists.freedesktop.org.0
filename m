Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C685CF35BF
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 12:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1A110E3BA;
	Mon,  5 Jan 2026 11:51:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RGCm19fr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 123D310E3B9;
 Mon,  5 Jan 2026 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767613913; x=1799149913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ofOtQ2s1O9eyTseocLg/pm/D68lL/2Jww/407v31ruM=;
 b=RGCm19fr2FHe+Di107UtJ0GPVyks5Ig+5etp6KswpTBwuupGI8CODBhs
 flbn3CYs0LZlwhgII+8STwquiCETlI57m0S5sKe3I2DsqH8AFbII0fbAL
 gA7SSJ2CbvqyL8s0bx3Q4nI8SrDVNnByp5VXBkkXK8V/0Uh1S9ykShMKD
 U9Z/3v4/sX7Nx39GD9QSRH91KE4JghTlp9xsdfMbi9afy7YHUr5riJYgD
 0cw6Y+RdRyZWk8OeY5uMZDJCKe7QDFozJefIHuJO955US+jsq8YtxS9+L
 /rJnWSrpycM9GDeaSlZKeS3k6KIj44aaIsCLjmXT7N5T4MzqG7OaI4mzx A==;
X-CSE-ConnectionGUID: MS/u4t1zSsujTmq+kbj8JQ==
X-CSE-MsgGUID: ncKODA59QUWT06C32kV2oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69050653"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69050653"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:53 -0800
X-CSE-ConnectionGUID: KnJUUdT9TYCadNkGtdWZDA==
X-CSE-MsgGUID: hiyNJlakRaa02ACp4R8sqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202614055"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:51 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/9] drm/i915/intel_alpm: Fix the SPDX identifier comment
Date: Mon,  5 Jan 2026 17:05:35 +0530
Message-ID: <20260105113544.574323-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
References: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Fix the SPDX identifier comment as per the licensing rules [1].

[1] https://www.kernel.org/doc/html/latest/process/license-rules.html

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 53599b464dea..c6a4ec5b9561 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: MIT
- *
+/* SPDX-License-Identifier: MIT */
+/*
  * Copyright © 2024 Intel Corporation
  */
 
-- 
2.45.2

