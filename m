Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8B9A60761
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 03:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2ED10E259;
	Fri, 14 Mar 2025 02:12:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NKn1JqbO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F3210E260
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 02:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741918364; x=1773454364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/lqT8gLl7+CpgxfEKD5YRVqzd/RhDdqJOfK0eGBYtQ0=;
 b=NKn1JqbOkWp4t/KX5dGyBXcAwYHpX0NOOJnoVOmjQtw7YUbIFd8nLW2s
 7BDr/rbc17uwaFaevPpTJLlNWezWnpEIGfycY9GrynwSgK0TLaHGPMQ+C
 ZE6McZcPYSP23LKyEX99MdHmOacT4HPHth3bqTZJY2NORe/6U+WrcjoWJ
 6V1TPaMVWjstDFAuAJgoIqhm0QVtwCQHWelNaIysL/efxRWriuusXscjh
 6518pNjAht4VwAOJFZzMztzbAp5wzb8ajjumms/f7E/ZPDMtjiRN8iHoG
 RMfAcVgrxjcnO6hZh/P2znWMrUBDo0LKQPqXnwNl49hjpDR2MHCEQY+ej Q==;
X-CSE-ConnectionGUID: Ob8Xb1CRQwKqzwGWx7f4yg==
X-CSE-MsgGUID: 0Rq+v0WiThW7RSv80FONVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="65520027"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="65520027"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:44 -0700
X-CSE-ConnectionGUID: 0ZlfkpRTQA6nVm88ilPKGA==
X-CSE-MsgGUID: jzP1C8SWTv+48l62ZKhImA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126009277"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:42 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH 2/4] drm/i915/gt: Fix SPDX license format
Date: Fri, 14 Mar 2025 03:12:22 +0100
Message-ID: <20250314021225.11813-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250314021225.11813-1-andi.shyti@linux.intel.com>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
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

Header files need to declare the SPDX under /* ... */ style
comments at the beginning of the file.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_wopcm.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_wopcm.h b/drivers/gpu/drm/i915/gt/intel_wopcm.h
index 17d6aa86008a..d2038b6de5e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_wopcm.h
+++ b/drivers/gpu/drm/i915/gt/intel_wopcm.h
@@ -1,6 +1,5 @@
+/* SPDX-License-Identifier: MIT */
 /*
- * SPDX-License-Identifier: MIT
- *
  * Copyright © 2017-2018 Intel Corporation
  */
 
-- 
2.47.2

