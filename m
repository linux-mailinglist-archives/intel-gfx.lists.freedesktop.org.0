Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26E3A7809F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 18:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E9310E625;
	Tue,  1 Apr 2025 16:38:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LnyeopXc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B309210E625
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 16:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743525487; x=1775061487;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dMxyxxnKKN/vBiaxtqlVLyRADMYAM7HzRfK+EXj8A5Q=;
 b=LnyeopXcAW9jJNrsKFaI3gI6oBia+wD6VmHf913RDAyM6azmSvAQSHd3
 uATX5DYmmj7n+ZeqCdkGDrrY4rkrMaoc4BzUnD9xk5uW52GNWUAnXu61g
 1E+1vFDhzhkMhtz4tp6oKC/v85GrHMCA3t8tzNDrekf4/c/5D71xcVRG4
 Ln6HTFlJ/iE80g+jKTT1mHpdarz0aYN3hsS5o7hw/ZlBJxwVnXkr5V1pi
 kFiujW636qWdQMCKi4sbf7S8d7i1+Qhhowq28UAIt4aI6G4FbFQ1lKAgm
 tg/HGmFM/QzSiiymr4k8o/5r3WZhRqfPtYu1tmuLvwYTutr5EAamuKpFY w==;
X-CSE-ConnectionGUID: 5eolmekiTv2075WycyYyYw==
X-CSE-MsgGUID: +kow3nyZRYurUpNFNRr6PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55520052"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="55520052"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 09:38:07 -0700
X-CSE-ConnectionGUID: MDtPvVbwTZmptofy3bGjnA==
X-CSE-MsgGUID: 72J0RaNhQ2eS88/hQkqzPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="131638613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 09:38:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Apr 2025 19:38:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/pci: Remove force_probe requirement for DG1
Date: Tue,  1 Apr 2025 19:37:52 +0300
Message-ID: <20250401163752.6412-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
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

Dunno why we still have .require_force_probe=1 on DG1 after
all this time. I'm not aware of any real problems with DG1,
so get rid of the force_probe requirement.

Generally the difficulty with DG1 is that it requires a
4GiB BAR for the local memory, and that's not something
that works on every system.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 21006c7f615c..b2e311f4791a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -663,7 +663,6 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
-	.require_force_probe = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
-- 
2.45.3

