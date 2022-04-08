Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E09144F9C33
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 20:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB7E710E740;
	Fri,  8 Apr 2022 18:03:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120E610E740;
 Fri,  8 Apr 2022 18:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649441007; x=1680977007;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0ShWcgCY6LWlsgOb7FqgBnYvGnG+2V68tUmDLnj0+3U=;
 b=IdOWuMhoVLVTKGh6IgUEJccsq+vJAZz4duOXMJi54neTjyxptNbQaEGJ
 cSbvKGyf4MwEc5MUUY7Pg4VX7LO1aBDeiI2c0yY1vlKwE+NAKHA9FCy++
 QFVxS0waxpc7PAByxNEoOAsSWpWHWAq5SWinftFj9XnrEQm0AJU4kz6tY
 YmJEBZMrKkRih47gAFU8SrIpmjYJjR0/DLJzGFUTlzOSz8GzQ4c0dEObU
 lWC/x4+1i25+Z7CHKJNmWgwLrtaoKw9/a0+ZjeZ34PEh1SrPF/IeounSP
 yNUWsRbt+LlKWseVmFgzc0lAcoat5enG/DFilEB4JeTfb2GJ3aqQoPmWv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10311"; a="241592238"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="241592238"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 11:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="557869590"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 08 Apr 2022 11:03:26 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  8 Apr 2022 11:03:23 -0700
Message-Id: <20220408180326.1454951-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Update to GuC v70
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Update to the latest GuC firmware release.

Note that this includes some significant backwards breaking API
changes. One is about context registration - the descriptor pool is
gone, all parameters are passed via the CTB instead. The second is
about scheduling policy updates - they are now done via a single KLV
based H2G instead of multiple direct H2Gs. The patches to implement
these two changes are being sent split initially for ease of review.
However, for final merge, they will need to be squashed into a single
atomic commit.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (3):
  drm/i915/guc: Update context registration to new GuC API
  drm/i915/guc: Update scheduling policies to new GuC API
  drm/i915/guc: Update to GuC version 70.1.1

 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   4 +-
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h |  15 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   5 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  67 ++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 375 +++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  32 +-
 6 files changed, 294 insertions(+), 204 deletions(-)

-- 
2.25.1

