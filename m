Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE749AD20AB
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8B110E3F2;
	Mon,  9 Jun 2025 14:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NYSGMtzC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F18510E3EF;
 Mon,  9 Jun 2025 14:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478321; x=1781014321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R2FRKVhGDhWYaPHMrMaTjRklBi46WDurf+L+YbI0qhE=;
 b=NYSGMtzCjCkWF5B8Hulxus+lrZAEVvRCbplNIzcasTQIl5e6R0c7CGiG
 VXmG1X5kRzOreSmQTbKFjdar4THEROYRsXskG2gEnWnkuy0x6gvdz8PRG
 uBq3P2D6GMy/ghyETNrEdF/Grt68gG54n8VfAIdKzXDb3UMTj9k8r/gjA
 ByV/bxChYibxXw4zM6AfYIFII4at32gtfiEm1bUhOR4suW/AdvtWWtQrb
 krcNfRokIHwlu0vIFtKegGmTuih5qKtsGcsUjfOBxuTf+JvGJkmQ+0zYC
 FRdJzR/J6/y7Se3GHr4CqcuCl7eaJCMX2gwpyh2gJzd/z1mwH1VdmDsbW A==;
X-CSE-ConnectionGUID: KrZO70F9SLeqX8KvzNA/ow==
X-CSE-MsgGUID: QiF4RVY7QGql6Y7ML39wig==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360921"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360921"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:12:01 -0700
X-CSE-ConnectionGUID: Qx4gcyZzT/ueA3oFu+Iyig==
X-CSE-MsgGUID: GYRF75EjRReTmYedN46+Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765890"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 21/21] drm/i915/flipq: Disable PSR for extra flip queue
 coverage
Date: Mon,  9 Jun 2025 17:10:46 +0300
Message-ID: <20250609141046.6244-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

Disable PSR to get more coverage for the flip queue in the CI.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 600bff5cddda..8ac717897af8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -45,7 +45,7 @@ struct drm_printer;
 	param(bool, nuclear_pageflip, false, 0400) \
 	param(bool, enable_dp_mst, true, 0600) \
 	param(int, enable_fbc, -1, 0600) \
-	param(int, enable_psr, -1, 0600) \
+	param(int, enable_psr, 0, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
 	param(int, enable_dmc_wl, -1, 0400) \
-- 
2.49.0

