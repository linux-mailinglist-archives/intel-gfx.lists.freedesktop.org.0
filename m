Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F028E583205
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 20:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCC9C30DA;
	Wed, 27 Jul 2022 18:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C849C3073
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 18:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658946606; x=1690482606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9CPIEd8Cb6S7ZEROUSUVbeKvk+H6Dzgh7/Fkxms9xno=;
 b=YHIF6kJSapAnA67TNY/QAqELQYIJJO1v38KbcX9CUvqem5POV5vwSikK
 gEtq1gkrigx5F0CkPxpmrWc6UcK7YIzUF2bk/QqO9DGoFN0ZzudGpQyRF
 Kf4OQCO7OmZ3fN+1riLUT5Yj0bT+eWtK796JYxLEpAxrpDlwJvFrT51JU
 lhRFEVj6JUT4INRlzc5OrHRLiK3vwG1rcwEqWhXfL9ixBO2N/eCHJSDyl
 3n6+s1zduLV2CWwZhFCxGnCEU5uPlmg7AknBE6GCEGBtkwgDLcR9pexrP
 FHk/+jp1HRmb/f55CVK1TTrdobgK+TF52fjSvdySfNLmVb+19xCdSH2u2 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="289509400"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="289509400"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 11:29:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="600516515"
Received: from mtolakan-mobl1.amr.corp.intel.com (HELO
 mtolakan-mobl1.intel.com) ([10.213.178.167])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 11:29:29 -0700
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 11:29:18 -0700
Message-Id: <20220727182919.334136-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [CI] Bump DG2 DMC firmware to v2.07
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

The following changes since commit 150864a4d73e8c448eb1e2c68e65f07635fe1a66:

  amdgpu partially revert "amdgpu: update beige goby to release 22.20" (2022-07-25 14:16:04 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_dmc_2_07

for you to fetch changes up to 3ab394af47ab6b0139a3fa6a7b39564a4d18cb25:

  i915: Add DMC v2.07 for DG2 (2022-07-27 10:52:59 -0700)

----------------------------------------------------------------
Anusha Srivatsa (1):
      i915: Add DMC v2.07 for DG2

 WHENCE                   |   3 +++
 i915/dg2_dmc_ver2_07.bin | Bin 0 -> 22488 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_dmc_ver2_07.bin

--
2.37.1

