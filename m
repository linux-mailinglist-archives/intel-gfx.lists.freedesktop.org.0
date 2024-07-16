Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C42E932761
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 15:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D2710E6B3;
	Tue, 16 Jul 2024 13:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l4jP0cAW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ABC010E5F7;
 Tue, 16 Jul 2024 13:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721136335; x=1752672335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2fQ+VWBYYYacFcCyE1irz+TmwpdaE5KV89tOlLouVBQ=;
 b=l4jP0cAW+bzCJc4iNl0qCcmPrT5RHQWvTCzg3H+Ff6Epw/grz/e4cTf7
 FkqHOcWuylRpd8gp02Zas/QF4naJkUF+ALquj/RfI4/wmS5eqGA/YhYC6
 E/Xal8FxdFJ/GLoFcOBt3Rwc17H32R9b3M7pWP/Z0z7AvubrGLKqK9Lx+
 Z7SocH34vDFlWiCslmhfwzakqoEJpKYN1anRu/mSn7pyvJdNjwnmJXQ8z
 w3sh/+Ym3YUUujSWcBSYiw1OWXRQ1pmyu4cR7FC0mtVFnHveqx+0120Jw
 hb8Viuhgg4bMoc/has/tvZhQAHjx8sB6zYu+RIl9G8r4UOFa74y88MvLg Q==;
X-CSE-ConnectionGUID: 0MnfnuytQG2EIRFrKC+Cbw==
X-CSE-MsgGUID: 0j0gmPclQ2uVQjhI+0mH8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="29179602"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="29179602"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2024 06:25:34 -0700
X-CSE-ConnectionGUID: bYtGuKwAT6yXQFHeQPNaIQ==
X-CSE-MsgGUID: a8OSRtTVQnK2PHhjJXoNmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="54859920"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.111.163])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2024 06:25:33 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: linux-firmware@kernel.org
Cc: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: PR for Xe2LPD DMC v2.21
Date: Tue, 16 Jul 2024 10:24:56 -0300
Message-ID: <20240716132455.8401-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.45.2
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

The following changes since commit 93f329774542b9b7d57abb18ea8b6542f2d8feac:

  Merge branch 'robot/pr-0-1709214990' into 'main' (2024-02-29 14:10:53 +0000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/firmware.git tags/intel-2024-07-16

for you to fetch changes up to 72e5970de400e6d55a31e38bcba439ec17cedfe1:

  i915: Update Xe2LPD DMC to v2.21 (2024-07-16 16:11:43 +0530)

----------------------------------------------------------------
Intel DRM firmware intel-2024-07-16

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add DG2 HuC 7.10.15

Dnyaneshwar Bhadane (2):
      i915: Update Xe2LPD DMC to v2.20
      i915: Update Xe2LPD DMC to v2.21

Gustavo Sousa (1):
      i915: Add BMG DMC v2.06

 WHENCE               |   7 +++++--
 i915/bmg_dmc.bin     | Bin 0 -> 45964 bytes
 i915/dg2_huc_gsc.bin | Bin 622592 -> 630784 bytes
 i915/xe2lpd_dmc.bin  | Bin 61208 -> 59872 bytes
 4 files changed, 5 insertions(+), 2 deletions(-)
 create mode 100644 i915/bmg_dmc.bin
 mode change 100755 => 100644 i915/dg2_huc_gsc.bin
