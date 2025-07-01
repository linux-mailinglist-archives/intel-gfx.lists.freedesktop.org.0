Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14737AF0112
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 19:03:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8273810E5F2;
	Tue,  1 Jul 2025 17:03:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHUczL5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B37710E5F0;
 Tue,  1 Jul 2025 17:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751389387; x=1782925387;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/aPrPMl+lS3fHH0K/LXP6xfGHxlVQ7DLY5KoX+JhEDE=;
 b=PHUczL5TGpHevt2k9aZfMaN0+xUTprmTB8Gp7XUndfu+T5DD3LHid3Cf
 rro9qXTtMDIj8wF4vOth4GWv8B7huTNHV0iokVTFWV2UmoDcWGsf+vj2Y
 un0wRLAmx3Mqf8To78/hG8O6OqzAmfWJYt8bh/3kQfnUKQZOZnb62CWmh
 7wlbWjy2QUZAtpb5uU+z1QvYWcCQLt8NZssYMJjgolboc1KfIN13EtCk4
 ua6n3KwsLWSm0o2Kw4LwQxfWeYhb47neszRSnoXYARZebHhqQgcACIVQK
 P2AOzhLB7UCXwsNX/JXYc9eqxsxQYpAP30ErQ7TtPQAjppdrhvjah1rJo A==;
X-CSE-ConnectionGUID: CN0NJ5Q5S7moyIvP++UT/Q==
X-CSE-MsgGUID: VN4kR/9cQLKFdW9+A0vN4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="41298971"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="41298971"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 10:03:07 -0700
X-CSE-ConnectionGUID: pg8vjNeJRNOrouhMr+JCRg==
X-CSE-MsgGUID: rRt/20nsTxaq7pB0ckIwjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="153239792"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 01 Jul 2025 10:03:05 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 RERUN 0/1] drm/i915/display: Add no_psr_reason to PSR
 debugfs
Date: Tue,  1 Jul 2025 19:02:33 +0200
Message-ID: <20250701170234.443586-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

Rerun of v3 [1]. 

[1] https://lore.kernel.org/intel-gfx/20250624164823.4118263-1-michal.grzelak@intel.com

Test-with: <20250701165913.443515-2-michal.grzelak@intel.com>

Best regards,
Michał

---
Changelog:
v2->v3
- change reason description to be more specific [Mika]
- remove BSpecs number & WA number from being written into no_psr_reason
- replace spaces with tabs
- provide correct Test-with tag to the IGT patch, instead of series

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++++-------
 2 files changed, 26 insertions(+), 14 deletions(-)

-- 
2.45.2

