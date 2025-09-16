Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8209AB59FA6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 19:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D7210E133;
	Tue, 16 Sep 2025 17:43:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E3zjl9d3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 544B010E12D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 17:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758044602; x=1789580602;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0YLfUOse7nO/JYN/m/x77fYPzV2oUJFdU+o9iz4Ete4=;
 b=E3zjl9d3tuU8Me1aNZJ1mPlwxAtWBRSHEd/39NuDnRSLqW2HfTRs7etq
 eOBh2Laqxyk7CJahaEpiGi5J/CemnL3ZuAj/AL1HiVLSqVm6gbNF8IEtK
 OnZIFF65s0lJmdNdIxi3n5PkztRHWz3ffsw9A3svDiHjq4NeGreczBxUM
 KI+vZ2FismajL44kUDlZVgvkTZtajusBXyctRxc97kD7BwYPr+YSN4gjU
 6pvw0JvMj7iD92mAiTr+OahdVS3Ts2jSLklQ23aN/xEmNFH4vWmtOVR1K
 ZElcm0D+K3UO5II0IPGZOpYlc+D4yScHR3gc4tvxG+HB4poZ5tIMAkUQ7 Q==;
X-CSE-ConnectionGUID: l8ahPJqvT8qB1dUf+U7B/w==
X-CSE-MsgGUID: XQxCeaklQYuht8jIISIftw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60252288"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60252288"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:43:19 -0700
X-CSE-ConnectionGUID: CmsNQn4PSvmYEOUov5ZgVg==
X-CSE-MsgGUID: u/pVEsd2Roqv6zN0AlcMUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="212165761"
Received: from dut4412lnl.fm.intel.com ([10.105.8.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:43:18 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com,
	alex.zuo@intel.com,
	jonathan.cavitt@intel.com
Subject: [PATCH 0/2] drm/i915/gvt: Various mmio.c fixes
Date: Tue, 16 Sep 2025 17:43:18 +0000
Message-ID: <20250916174317.76521-4-jonathan.cavitt@intel.com>
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

Remove the 'reg >= 0' check from reg_is_mmio because it's unnecessary
due to it always being true.  Also, fix the kernel docs for
intel_vgpu_gpa_to_mmio_offset, as they incorrectly assert it returns
'Zero on success, negative error code if failed', when in reality it
returns 'the MMIO offset of the given GPA'.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Jonathan Cavitt (2):
  drm/i915/gvt: Remove unnecessary check in reg_is_mmio
  drm/i915/gvt: Fix intel_vgpu_gpa_to_mmio_offset kernel docs

 drivers/gpu/drm/i915/gvt/mmio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.43.0

