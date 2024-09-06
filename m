Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 449F496F6D0
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697A510E778;
	Fri,  6 Sep 2024 14:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQwEVe4P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3224010E778;
 Fri,  6 Sep 2024 14:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725633192; x=1757169192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8qwluuTwqNWN7Pcx6d5AT4px4wEsvlxvFMUfDQ5ZOqA=;
 b=TQwEVe4PDrAgKaHlBH9Z9knaobf/ZwFQbRG8DeLj65GrHQOZUGk5mA82
 5LVaYn1kT0dtX9r1Yt9ny7aWy16vhuZxc4igtEpH+Bx3gB3s+lobxsr5J
 pKz3EmNAeTuhLG+0dIcok4o66vqn1BR3pJ8DaTk6A1fCnhs8bSDEfheJU
 y2NjhT5eiZgdKf8JHHlljunXSfSjbJJ4j/fZahO9gtqq50moAkgB+EZ4O
 1t3sjcH3DUm+IaCAgDndw3PROIvfJ7tGy2I6IHQbrNs9k8eszCw4li+ce
 HR33tGpceiqrK1+s2x5PAYzKwOxGTyv/n+xRE69/dzcY5SxMGdy/pVXfF A==;
X-CSE-ConnectionGUID: IF4WmDCFRQ6uK1ZPdIzikw==
X-CSE-MsgGUID: wqY8s1kNQIyveZeVpA+Gcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41903035"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="41903035"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 07:33:12 -0700
X-CSE-ConnectionGUID: abZXElvPQUWlzFppWnNrVg==
X-CSE-MsgGUID: uZP2ibMnT1iwh3SurFTzMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66003889"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 07:33:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 17:33:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915/cdclk: Add missing braces
Date: Fri,  6 Sep 2024 17:33:01 +0300
Message-ID: <20240906143306.15937-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
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

CodingStyle says when one branch of an if ladder is braced
then all of them should be. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 66964c7d2a2c..9d870d15d888 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2053,8 +2053,9 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			dg2_cdclk_squash_program(dev_priv, 0);
 
 		icl_cdclk_pll_update(dev_priv, vco);
-	} else
+	} else {
 		bxt_cdclk_pll_update(dev_priv, vco);
+	}
 
 	if (HAS_CDCLK_SQUASH(dev_priv)) {
 		u16 waveform = cdclk_squash_waveform(dev_priv, cdclk);
-- 
2.44.2

