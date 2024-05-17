Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7161C8C8882
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0221A10E1E0;
	Fri, 17 May 2024 14:54:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZjttEAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20CB10E1E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957640; x=1747493640;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=to046pzFMsMMzGWYtYwWPxzaRCSWjoHqjzsyLvUYPJ8=;
 b=kZjttEANImr0k5QsPzLSaFQd3gwZc/gHJsKEmBb23YLsPUZGWHX9NzMc
 2SiKAAIKbPEaOOHU0UvSNpmY451uUu1rnEq+aR3RibhDxmuV7K8ULUaUQ
 5BSmwAb6WSiqBiKPsLIWcJhdbs11qnjHeS0kI6VjNNkIFriwOXdZ3IRAI
 7g9SmPtF++bUKedoqGOU2tfdjpdkgnnTihpcUT96A6pfZridLbl+e5Oa4
 DjEMnfkKF+FoHEXaHhFl3zLkwJjJohryTfn2sYL7yY94b8B71XZR10kVE
 S39SNkTno0Pk2YHzgNZp62k+o/21W6a54wF7p1hbRfQZJjMAijcFnqWsI w==;
X-CSE-ConnectionGUID: 2+x3+CrdTee7RMM9uLc4kQ==
X-CSE-MsgGUID: aeD++qCxT1yny0fF1RBCvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008021"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008021"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:53:59 -0700
X-CSE-ConnectionGUID: 1yXCPuIJTDO7KREwYUonqA==
X-CSE-MsgGUID: HjbQmEXcRgycm+hR6uQYmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31800946"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:53:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:53:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: DSC stuff
Date: Fri, 17 May 2024 17:53:49 +0300
Message-ID: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Respect the VBT's edp_disable_dsc bit, and do a bunch
of refactoring around checking for DSC support.

Also threw in a bonus cleanup to intel_dp_has_audio()
that caught my eye.

Ville Syrjälä (7):
  drm/i915: Drop redundant dsc_decompression_aux check
  drm/i915: Extract intel_dp_has_dsc()
  drm/i915: Handle MST in intel_dp_has_dsc()
  drm/i915: Use intel_dp_has_dsc() during .compute_config()
  drm/i915: Reuse intel_dp_supports_dsc() for MST
  drm/i915: Utilize edp_disable_dsc from VBT
  drm/i915: Remove bogus MST check in intel_dp_has_audio()

 drivers/gpu/drm/i915/display/intel_bios.c     |  4 ++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 42 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h       |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 +++-------
 5 files changed, 44 insertions(+), 30 deletions(-)

-- 
2.44.1

