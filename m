Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC9392E1C4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 10:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347ED10E997;
	Thu, 11 Jul 2024 08:14:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNGJKrdP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F7710E997
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 08:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720685689; x=1752221689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DbjfNTKFLBd9TU+A/jJsAKltRhGogc5345Ki2ibNZ78=;
 b=kNGJKrdPjULnXIM7gK/xodOEPFOIfJxVCg/faoFAvyK4xX4wqDvoSpDV
 lskJCR6aJyniRx7xETWG7K+f1mSoYJ0gLx5JkwFm8ckqWX7awlAjmYufr
 /F1OFPewc+MTQ5mk+brS6rgErqKGqQKgTtNERL5wfDGJyCq5eUnzvZtC+
 3DWsbiirRW6/vmGckhZIOtALmXtyKJjPH+YCdBtmgTMxvBJKs6QIVII99
 V6JRp8xYsiiU6w0AYax5rS1jRYYp2wcBjL8v8o9VJwC/LzuIwVFubts4v
 pSr8UNjfHcVeLP8BJQWeOC+aFWL3tsr9QdPwZ0ZBwRWFcjn6ALlTcHOz0 w==;
X-CSE-ConnectionGUID: DsIzE1ddQfa4gr7WqBmMBQ==
X-CSE-MsgGUID: fVR+iYu9QOqgPSxo8sUrFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21814088"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21814088"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 01:14:48 -0700
X-CSE-ConnectionGUID: +St6ftlWRuOU3iLtgjo2Cw==
X-CSE-MsgGUID: iUajAenXT46GsxS/tj4Pxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="52785644"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa003.fm.intel.com with ESMTP; 11 Jul 2024 01:14:47 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, ville.syrjala@linux.intel.com,
 ankit.k.nautiyal@intel.com
Subject: [PATCH 3/6] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Date: Thu, 11 Jul 2024 11:14:38 +0300
Message-Id: <20240711081441.17415-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
References: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
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

Adding sanity checks for primary and secondary bigjoiner/uncompressed
bitmasks, should make it easier to spot possible issues.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3954b13ba662..efc145f7e9a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3639,11 +3639,17 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
 	}
 }
 
+static u8 expected_secondary_pipes(u8 primary_pipes)
+{
+	return primary_pipes << 1;
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
@@ -3651,11 +3657,28 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
+				    secondary_uncompressed_joiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
+		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) can't intersect\n",
+		 uncompressed_joiner_pipes, bigjoiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
+		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
+		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 secondary_bigjoiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 secondary_uncompressed_joiner_pipes);
+
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
 	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
-
 	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 }
 
-- 
2.37.3

