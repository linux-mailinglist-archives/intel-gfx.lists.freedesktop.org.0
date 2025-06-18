Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1893ADEDA9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10B210E82C;
	Wed, 18 Jun 2025 13:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nSq4QVj5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A27310E829;
 Wed, 18 Jun 2025 13:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750252839; x=1781788839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nU3kkYjX02w+ev8NGYBcO1oHnilazxL10dM0JMOQVVM=;
 b=nSq4QVj56iP7hRfH2bug6bC8n6pESED/RFKUapDS5nZybDk5Kdqh11k+
 JuJ2DH4Dy3dgjmBLbzqilU3Evhn+yCDoK0dKqye4XyWtUu0Fwd+a1uyVI
 yO8Gn0nXkObkyKlWv6mbbcFD9nYrENZ2pOp3S3InGKgqf/SNtP8D++rXC
 7jnuONBa9NBlymwt7IkwuCuL1tg8RJrvCzlSos0X04XHTOHNIAs5I9rbH
 PH5r0nYvITyv2TNUd4dDuOjc/fYEHvRlSfinQ449eyxISZIOgU5tfvDFe
 sB+7z9nVWSu0pWXPvnmONgxssNKK/inbb8jbHZPRHsxla87M6KzaTA0Jh g==;
X-CSE-ConnectionGUID: 0dC1krUqSZ24/KS591BQxQ==
X-CSE-MsgGUID: tI+SojSjQ4CVa7d5ZGLVeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56272568"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="56272568"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:20:37 -0700
X-CSE-ConnectionGUID: 1AhCHAVjQd2R7vfWFq5Heg==
X-CSE-MsgGUID: 9can9AKaS/+QNa+VwGOoyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150297010"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:20:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, stable@vger.kernel.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Fixes in snps-phy HDMI PLL algorithm
Date: Wed, 18 Jun 2025 18:39:49 +0530
Message-ID: <20250618130951.1596587-1-ankit.k.nautiyal@intel.com>
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

Fixes/improvement in snps-phy HDMI PLL algorithm.

Ankit Nautiyal (2):
  drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by using
    div64_u64
  drm/i915/snps_hdmi_pll: Use clamp() instead of max(min())

 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.45.2

