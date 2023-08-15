Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F8C77D090
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C9010E253;
	Tue, 15 Aug 2023 17:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4732210E088
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692119198; x=1723655198;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O8u4RBBBCzd2+ZQaxFqIgwNy746EyR1JA6EnEhGfxU8=;
 b=lqcBR7xBDz+zg5pe4i9j/tNsguGHHrnDik5CAcujLd7VnjgHqWWfSe9A
 OOP2YEFB/PsiWxM36beZ8R1iixmKfGGKsYw0Eb6NfVSRPfvpU9OJJLaqP
 b5iwDOODbP9QBWPgkYzQonmLDEc/eYSFqcSWzbDbCQdPWil2ujly6Rj81
 wqflmS+ae5iHX1hQtLvgGYU2Z7OQbki+h9bluQmEzoRgcOkZrynoeoxev
 EdTc4Txr/DSXWJLAi8C1TlumyVDQzPgnxZlAkCKLvZzBXpG8uwcyZXiWE
 0OxHpFfkeM9uqT+7L0N318l5ogCTBK1cIGx/JDe6UpGcyL+l8tI7BokPU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372327566"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372327566"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064531926"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="1064531926"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:04:23 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 09:53:43 -0700
Message-Id: <20230815165345.964068-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com, matthew.d.roper@intel.com,
 jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Align igt_spinner_create_request with the hang_create_request
implementation in selftest_hangcheck.c, since they perform the same
actions.  Additionally, refactor the hangcheck live selftest to use
igt_spinner functions and structures instead of those internally
declared for the same reason.

v2:
- Refactor hangcheck selftest to use igt_spinner.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: Saurabhg Gupta <saurabhg.gupta@intel.com>
CC: Andi Shyti <andi.shyti@intel.com>
CC: Stuart Summers <stuart.summers@intel.com>
CC: Nirmoy Das <nirmoy.das@intel.com>
CC: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: Michal Winiarski <michal.winiarski@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>

Jonathan Cavitt (2):
  drm/i915/selftests: Align igt_spinner_create_request with hangcheck
  drm/i915/gt: Refactor hangcheck selftest to use igt_spinner

 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 457 ++++++-------------
 drivers/gpu/drm/i915/selftests/igt_spinner.c |  18 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.h |   9 +
 3 files changed, 158 insertions(+), 326 deletions(-)

-- 
2.25.1

