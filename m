Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 187B87A6B73
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460E210E24F;
	Tue, 19 Sep 2023 19:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E52110E1D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151286; x=1726687286;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wGTbYNpxv28eOxIDA7r3BsXv6aq5KwsCd6zEEOSnow4=;
 b=idgeb4JYpFrWp9jFqYcDYnFeaESTM0k/SFdm02Y6biWNW0MhhqztlmBd
 jiLrzzHRmqyW8pZaIido3VQttDRw7KMUd2qvxP7BVEmQpgKBjmJnhflPj
 RVobJnZim1aUTDptDBU66Ku5zENUoEQMZaKXJO9RiWRpQXCQcTPoKBpjR
 C4iwuuxKjVPB+rM4VGxbU+LGy8D6Vtts87MMXqCnbZdaQbAwk/y8nc09O
 Pd2XaWVLo049aPEQFvZQu7b9o3zWqhPfxTyYFdjJ9oz1WWLvf3SZr0SYz
 YRwZwYqF0fR1b6WHjjfDW0CZQh+syJG53lTaejUG67J6kXe+QL5fHQoDa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423130"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423130"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350048"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350048"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:08 -0700
Message-Id: <20230919192128.2045154-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 02/22] drm/i915/lnl: Add display definitions
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Add Lunar Lake platform definitions for i915 display. The support for
LNL will be added to the xe driver, with i915 only driving the display
side. Xe2 display is derived from the Xe_LPD+ IP; additional feature
deltas will be introduced in subsequent patches, so here it's just
adding a separate xe2_lpd_display struct.

v2: Use a LPDP_FEATURES macro (Matt Roper)

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b572ca16647d..5d6d771791df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -759,6 +759,10 @@ static const struct intel_display_device_info xe_lpdp_display = {
 	XE_LPDP_FEATURES,
 };
 
+static const struct intel_display_device_info xe2_lpd_display = {
+	XE_LPDP_FEATURES,
+};
+
 /*
  * Separate detection for no display cases to keep the display id array simple.
  *
@@ -838,6 +842,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 20,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
-- 
2.40.1

