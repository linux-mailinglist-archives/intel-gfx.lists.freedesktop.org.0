Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C475729C7B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3A710E6BC;
	Fri,  9 Jun 2023 14:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 031B110E6BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320068; x=1717856068;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nW1pK9ODflZbuzMx/moPP3Ht0p3E8EHiVJbKaHUUThM=;
 b=kKIhH5H9SjXqDa/nzes4qvhs4UvSPVrgTZLqoKiJl+JApBSQy9mGAtXc
 7DIrkJs+TvYbsOLbWwOuofOLMpPrk6GtOgNlu2ao20QuAImg3O4dOss5X
 /COYqaZJcaLYtid5s8GgdDV75Nhv9zzb8MKjrDTNTAWvz2vQKtQpGLwKp
 IvzoZq3wwwkvsv6E96gpGxOcdgGtW/tEuxHhYK28g9+HdbRI3/AnZnZll
 Un8LtEIbv3KQyARYJv5+WsA1DHOlAYpz70idaeE642QY+iCIdf0ifaqP0
 znjqPSbystOKb3LMDykQQPVWKQKpQKer9nC8y8NUfUgvU54+Kv6npzJAQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966398"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966398"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183099"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183099"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:57 +0300
Message-Id: <20230609141404.12729-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/13] drm/i915/psr: HSW/BDW have no PSR2
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

Deal with HSW/BDW in transcoder_has_psr2().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5451f44c620f..67de5c7267b9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -797,8 +797,10 @@ transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder cpu_trans
 		return cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B;
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		return cpu_transcoder == TRANSCODER_A;
-	else
+	else if (DISPLAY_VER(dev_priv) >= 9)
 		return cpu_transcoder == TRANSCODER_EDP;
+	else
+		return false;
 }
 
 static u32 intel_get_frame_time_us(const struct intel_crtc_state *cstate)
-- 
2.39.3

