Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0D59C0AEE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9816510E877;
	Thu,  7 Nov 2024 16:11:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tu3TzO3y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 738FF10E13D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995896; x=1762531896;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QbudKIqyCqeXaREQ5EyZ7fOQMH14qT8lC0v1mxnT6W4=;
 b=Tu3TzO3ySare6p7cEmgGY6KTxr/yQSG4VKCoASa+NcXJFJkOt3HlYrwG
 hU/yzR38LHqCvOTIE81NNhv14kT8XG7JfrMB+SQTeJF0kpaBEIruaxXEo
 JorelcA3OnN3s9POyiMLz0R8gWK4V3WOwnhDD/5ellU/OMXT14QjkEcIo
 J075UVKeYFJ6YZ7C+nmEr5uMq51wlVAiwQcpVCYTKQ6v7pAae962mMh2/
 9n8JKwOo6dK6j/tg+THiyKPH0swMz8jmQ30nhfNx57BE7+c7xGNBPdHNH
 uGGhch5n6jqzsfXMSMjC6z0Xeq8MwZoGBQ8BvfI+ZlPRjYos4bQUfkp2I w==;
X-CSE-ConnectionGUID: Y3DBzMQQQ2q3VSzUflaPyA==
X-CSE-MsgGUID: AkO7hbPPQyaa5QKNk7pbrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443045"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443045"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:34 -0800
X-CSE-ConnectionGUID: z9LUaBtKS3OJn8MQ9n2JXw==
X-CSE-MsgGUID: JRMa/3NVQXKiI8wHhJDa0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277849"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/10] drm/i915/crt: Drop the unused ADPA_DPMS bit definitions
Date: Thu,  7 Nov 2024 18:11:16 +0200
Message-ID: <20241107161123.16269-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
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

The ADPA_DPMS bit definitions aer just an alias for the
sync disable bits, and unused one at that. Drop the
pointless definitions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c160e087972a..f0757c4491f1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1188,11 +1188,6 @@
 #define   ADPA_VSYNC_ACTIVE_LOW	0
 #define   ADPA_HSYNC_ACTIVE_HIGH (1 << 3)
 #define   ADPA_HSYNC_ACTIVE_LOW	0
-#define   ADPA_DPMS_MASK	(~(3 << 10))
-#define   ADPA_DPMS_ON		(0 << 10)
-#define   ADPA_DPMS_SUSPEND	(1 << 10)
-#define   ADPA_DPMS_STANDBY	(2 << 10)
-#define   ADPA_DPMS_OFF		(3 << 10)
 
 /* Hotplug control (945+ only) */
 #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
-- 
2.45.2

