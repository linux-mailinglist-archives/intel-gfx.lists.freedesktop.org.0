Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB57BB2BA1B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 09:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AAB210E540;
	Tue, 19 Aug 2025 07:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4nW551S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8D810E53D;
 Tue, 19 Aug 2025 07:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755587052; x=1787123052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jZSkKAsCHAYvcxMb9IwZdhmSg4Y1RQopAykb5XbKlbM=;
 b=Q4nW551SnEOwKn4bUdp8OwHH5ZjR/y095IyISf0MYgrVqTohTCr292vO
 0ADQhTQFC635O2Uo55F/tsP3drhQ+DwByFM8KT4gNkzotia/VhNp0xbDM
 3umvwkxiGGg5DbNcwOKcKfT4rVG2tgOqWRCjJNN+S2t3vOHE0X3Th8Pfi
 qM/8ThkuxOti4Njra+BRDaJWJV2UC35sVu1hJh4ZZv4+gE/6INz2v2pAk
 CnwbCYVIWBSSTIRFlnQruVfLyaEAf0/FrfeaFYxAcygLvnAjiymYdywLR
 ZoBdLqu22tP38AkC009VgoxCGy2yb3rCUm9s7o8u5QShT5QEu0w1KO2yF w==;
X-CSE-ConnectionGUID: 3b8Ies3nSbaFiRitDNDhXQ==
X-CSE-MsgGUID: m7MB+hhkRMK2QiIRNfu6Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="75392353"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75392353"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 00:04:12 -0700
X-CSE-ConnectionGUID: 3SBdjgdwTnmxXDHjGQsU8Q==
X-CSE-MsgGUID: wac7F+d8R8W8Kzv+LznpgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168008238"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.65])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 00:04:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v7 1/6] drm/i915/psr: Add TRANS_PUSH register bit definition
 for PSR
Date: Tue, 19 Aug 2025 10:03:48 +0300
Message-ID: <20250819070353.3062341-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819070353.3062341-1-jouni.hogander@intel.com>
References: <20250819070353.3062341-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add TRANS_PUSH register bit LNL_TRANS_PUSH_PSR_PR_EN definition for PSR
usage.

v2: add bspec reference

Bspec: 69984
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index ba9b9215dc11..a67b2eb125ce 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -97,6 +97,7 @@
 #define TRANS_PUSH(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_PUSH_A)
 #define   TRANS_PUSH_EN				REG_BIT(31)
 #define   TRANS_PUSH_SEND			REG_BIT(30)
+#define   LNL_TRANS_PUSH_PSR_PR_EN		REG_BIT(16)
 
 #define _TRANS_VRR_VSYNC_A			0x60078
 #define TRANS_VRR_VSYNC(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VSYNC_A)
-- 
2.43.0

