Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D582B8955CC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B3810FD48;
	Tue,  2 Apr 2024 13:52:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IfkErna5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8BC10FD47
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065930; x=1743601930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6y94Au0dKoiD+Lzob3pMYSPvdFeKWhSKorw4wVvHPtI=;
 b=IfkErna52OGwHBZ57qNbZxN2b1HHEBpjHY7F7ur4wt1VRZ3kfvXn9tzr
 anxz82OX+yHDh7NsVE5tcFQSXB4IM7s0cJiU2lobdNgb+eXpKnb9Oma7c
 1w+SOmcJzK2Y+TEqZqJNMEnpQRcIL132i2/Kjvuuxm6yZpz+hlXcq2B0F
 zPk7Da+ersCBlQkGEc9HnNtCWWkYpHySLu6fWUgJMEgEOS+8NKszkdl0y
 a4pUxw89aRjVW5VKTV+NEOkbsqP4wKH62wg4+ihljMVtfdxGwid7O8YCF
 l+vJItyF5wOlnN0/LlIWehYYPpkaCta6siYw4IjtxW9WFjQtJB46DiA9Y g==;
X-CSE-ConnectionGUID: oKJd7QSUSDyMnovaLOofqQ==
X-CSE-MsgGUID: pB0hAZwoSAu8txrX3k2vDg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804670"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804670"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:52:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789400"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789400"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:52:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:52:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 6/7] drm/i915/mst: Reject FEC+MST on ICL
Date: Tue,  2 Apr 2024 16:51:47 +0300
Message-ID: <20240402135148.23011-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
References: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
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

ICL supposedly doesn't support FEC on MST. Reject it.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 819f3234de03..a11bc4fd3d65 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1418,7 +1418,8 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(dev_priv) >= 12)
 		return true;
 
-	if (DISPLAY_VER(dev_priv) == 11 && encoder->port != PORT_A)
+	if (DISPLAY_VER(dev_priv) == 11 && encoder->port != PORT_A &&
+	    !intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST))
 		return true;
 
 	return false;
-- 
2.43.2

