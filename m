Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 037185963BB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 22:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2E510E141;
	Tue, 16 Aug 2022 20:28:38 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9AB610E53A;
 Tue, 16 Aug 2022 20:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660681712; x=1692217712;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fE+IBJfY+OUwwe/hjYsUwkyts72b0BY4YoqRIr5dNbs=;
 b=VvMYUxQ4/l7MPC711tjVyss4P+vlM8Z2TPPYZUqys80mbgZdPg2CluHv
 whZcHCDassf1InqGrB8jdpX4DaNkStbqmMp3D80aYk68UDojcYXTV3ruk
 49gsFkk+8IRweki1NkQmTK1rVtrWIQjmSrw38GVNfvxCJZ6ufrzISxLuA
 AIIcbsBCYY1+PMXbDpEq/j3UtHju8yuCAz/FRpkgf0GVL4arhIXhCyyIv
 RpNfgrHq6KP549yWPdETlw0IpTljIlz9pR1UZzyc/nMYwhc2tn5IWtGjW
 fQdCfi9t0muzfY3SiUipy1xm5zszKBzqGjU2RNPc4tEn41ppH1FuwAq7t Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="318322853"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="318322853"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 13:28:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="749440780"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2022 13:28:31 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 16 Aug 2022 13:28:35 -0700
Message-Id: <20220816202837.1778495-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Drop version numbers from firmware files
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

Upstream direction is to include the bare minimum of version numbers
in firmware files and to replace them in the repo rather than
accumulating them. For HuC, that means going completely versionless.
For GuC, the major version needs to be kept as that indicates a break
in backwards compatibility with the KMD.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (2):
  drm/i915/uc: Support for version reduced and multiple firmware files
  drm/i915/uc: Enable version reduced firmware files for newest
    platforms

 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 400 +++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |  33 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  16 +-
 5 files changed, 279 insertions(+), 184 deletions(-)

-- 
2.37.2

