Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057FA8A2302
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 02:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8830610E785;
	Fri, 12 Apr 2024 00:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e3qcq5DV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287AB10E785
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 00:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712882935; x=1744418935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QrNhv1wp5b20DP2N/z3xmhFeU9X4N61gXgxQ3wnKkSg=;
 b=e3qcq5DVVL54MedVko8kF/LK+LC6MFbE8aAsGmPBGnDSWB0kI/PgKPtU
 KqZ1BJF2+x/iSZi1mtkFpSz2XprvTtTBVOpirDBv+sdcw1qEu1FpyAWkc
 wkjKmccp05cj1v2V6Eq0dDvZDuTcoFB3Mj8BzmFOIbc2tmnREP9w9/0WQ
 RUMaRsLUL2js6Zd6wpkOVVSvFF0YKRgrCT+peiHYo/R8BI1IHqvBpEN9u
 /+SLpwob0HsaMaX5UziUIUkd5y47FX5j2I255jWQrna/GCWIN3MvNR3y2
 ji4I/k6O/4C4JaFNZw1IHwxuLnhMYOCnhu2ZxJ0fX1A/xYzI3+yOW5RYs w==;
X-CSE-ConnectionGUID: WcWY34N0TlWRSEOhmxO+lQ==
X-CSE-MsgGUID: NTvCNR9ZRleP/Zt2IiRpMQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="19037622"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="19037622"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:48:54 -0700
X-CSE-ConnectionGUID: eZ+re66NSXSi8j6+BSchIw==
X-CSE-MsgGUID: q0S8lb5WSZOSCp4R6NYbcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="52036125"
Received: from unknown (HELO intel.com) ([10.247.119.7])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:48:50 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v3 0/3] Add support for partial mapping
Date: Fri, 12 Apr 2024 02:48:05 +0200
Message-ID: <20240412004808.288130-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Hi,

this series based on a previous work from Chris adds support for
partial mapping.

Two preparatory patches are needed:

 - set the vm_pgoff when mapping frame buffer objects
 - do not fail when the exact address of a VM node is not the
   same as the starting address due to the offset.

Indeed I was receiving a negative offset at first.

Igt tests have been sent to the igt mailing list.

Andi

Test-with: 20240412004255.288046-1-andi.shyti@linux.intel.com

Changelog:
==========
v2 -> v3:
 - Add a patch in order to not fail when the exact address of a
   VM node is not the same as the starting address due to the
   offset.

v1 -> v2:
 - Enable support for CPU memory
 - Increment vm_pgoff for fb objects

Andi Shyti (3):
  drm/i915/gem: Increment vma offset when mapping fb objects
  drm/i915/gem: Do not look for the exact address in node
  drm/i915/gem: Calculate object page offset for partial memory mapping

 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 18 ++++++++++++------
 drivers/gpu/drm/i915/i915_mm.c           | 12 +++++++++++-
 drivers/gpu/drm/i915/i915_mm.h           |  3 ++-
 3 files changed, 25 insertions(+), 8 deletions(-)

-- 
2.43.0

