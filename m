Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00493A326F5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 14:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A9F10E89C;
	Wed, 12 Feb 2025 13:27:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MhLzBt0V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F84310E896;
 Wed, 12 Feb 2025 13:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366841; x=1770902841;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4lvCK3oVuO6UA5LnxKkNpiR4PHC4if9ntjBQdJ+0bBg=;
 b=MhLzBt0VJ+FTYzArQ4f1nkKJWSgSVdtC/TdVrs01X2HdbDaqGosPxb5Y
 0WDQRzdCpiB6wT77wM1wCQZb2p+UECdU0YgiYqriq1IOBR9HftTKxdvjZ
 tF9/TBuIAD6Fw5SUEB6H0SS9XcNWoCJtT96egoKGyj2P4M36GZSl5kfGs
 V3eYPNau4hwNc7hATaVcYwvbXpL8xgGShfk7iF+78IeFSeUVMlW/bcJjF
 4HvF/LV8v7Yf0ART9HYR+Pm1zGNdSXYP/LQjXZ9lpNjRM8aQ52f7HkoEV
 nP9ADHNrnLVE/kT8HwLh7AN2tG5z0aIUwanzVwAIJ7rpMQAlE5VyKQzdj g==;
X-CSE-ConnectionGUID: hTM7VykkQMG0RC13Kmce1Q==
X-CSE-MsgGUID: DFl5VumjS3yC2o8lSAodjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51416185"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="51416185"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:20 -0800
X-CSE-ConnectionGUID: cd+q5UfATI6bi87LpkINkw==
X-CSE-MsgGUID: dprAMcO7TC2H02Hg2+IQkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112655792"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.97])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:19 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 0/2] Improve type-safety on POWER_DOMAIN_*() macros
Date: Wed, 12 Feb 2025 10:26:36 -0300
Message-ID: <20250212132658.323640-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
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

Fix one issue[1] reported by the kernel test robot and also take this
opportunity to improve POWER_DOMAIN_*() macros by making them explicitly
return the expected enum type.

[1] https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/

Gustavo Sousa (2):
  drm/i915/display: Use explicit cast in POWER_DOMAIN_*() macros
  drm/i915/display: Make POWER_DOMAIN_*() always result in enum
    intel_display_power_domain

 drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
2.48.1

