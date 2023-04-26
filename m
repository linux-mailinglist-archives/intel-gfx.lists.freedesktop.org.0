Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4126EFC74
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 23:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF4C110E335;
	Wed, 26 Apr 2023 21:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C36010E335
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 21:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682544571; x=1714080571;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to;
 bh=XYLQIHkvfKeSvWSU6i9mepXyNVzspIxyZg3CCSkjC+Q=;
 b=HJYdp/xbsEmN91HxlTukIvzGMnNzW3UFDjE4lSyzbzk4qdm5v0Zcai3H
 GfZqQIPhhPWnnBt3w6DopM7jRbSwd42+f0+00ClHJZNcIkU19+MfPCoYH
 AQn9Tct+jof7Zb9/31nfSMW44rBnoroSLwlyzNb7+vfaBUE/8djGe2v7j
 QuiWN7IstRXi9xMmaXDDMyRy8Ai87mhumHiLyiLcTtnbanEKr8YLmeHsE
 U8PVdshsAKFG4HHMvrygvrF/wUjDN+PqjQ2tD6I3lZtZR+KLZoqi5c5di
 Ntx7FRI310UWKq0T7/QsEQKfure0s6v8+JndfISY/UXmJvfEP+y7wH9aQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="344691027"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="344691027"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 14:29:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="805679866"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="805679866"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 14:29:27 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 26 Apr 2023 23:28:48 +0200
Message-Id: <20230425-hugepage-migrate-v8-0-7868d54eaa27@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJCXSWQC/32PwY7CMAxEfwXljKskXULDif9AHEzrNpZoWjmhA
 qH++6Zcdk8cx6N543mrRMKU1Gn3VkILJ55iEc1+p9qAcSDgrmhlta31jz1AeAw0Y7mPPAhmAtM4
 j9jXBl2nSuyGieAmGNuwBTsZIfO8ObNQz89P2eVadC9T8YIQ/qsw1ppa66byxrtagwWMHVcpvDK
 f7xwfz4pjpnvVTuMGDZzyJK/PgOW4ob/8uhxBQ4/O6QP6xrX+/Me6ruv6CzEJP/kPAQAA
To: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH v8 0/2] drm/i915: Hugepage manager and test for
 MTL
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

This patchset patches sent by Jonathan and Andi, with 
addressed CI failures:
1. Fixed checking alignment of 64K pages on both Pre-Gen12 and Gen12.
2. Fixed start alignment of 2M pages.

Regards
Andrzej

Jonathan Cavitt (2):
  drm/i915: Migrate platform-dependent mock hugepage selftests to live
  drm/i915: Use correct huge page manager for MTL

.../gpu/drm/i915/gem/selftests/huge_pages.c   | 88 +++++++++++++++----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  3 +-
 2 files changed, 71 insertions(+), 20 deletions(-)

Cc: intel-gfx@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
-- 
2.39.2

---
Changes in v8:
- described in patches
- Link to v7: https://lore.kernel.org/r/20230425-hugepage-migrate-v7-0-fa6605a986c9@intel.com

---
Jonathan Cavitt (2):
      drm/i915: Migrate platform-dependent mock hugepage selftests to live
      drm/i915: Use correct huge page manager for MTL

 drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 106 ++++++++++++++++++------
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c            |   3 +-
 2 files changed, 83 insertions(+), 26 deletions(-)
---
base-commit: 4d0066a1c0763d50b6fb017e27d12b081ce21b57
change-id: 20230425-hugepage-migrate-1869aaf31a6d

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>
