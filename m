Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95259903D80
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55EE10E655;
	Tue, 11 Jun 2024 13:34:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMJu3mFL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78A710E64F
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112852; x=1749648852;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EHGWvPDsaZHfyKoOJx1OCv8qft4aNurMkzc+ggF7iEY=;
 b=MMJu3mFLwT7SlT4EJdktbdUmX1V5l+WTnSKWt1kKFCUmO2GMS20jI4q4
 CLfidQlsH2tLFIWmBbXyUt8COTiaVOXIBp1AFauDp24X7SRyox/meSnHp
 hr7eoJb01pDGygBPk01xjxbNoIX9X6zVU6H757k7T5WySRAkjyk8dtjgx
 b1wYtg2XRxTlw+A1xIWdOz6dRjjNq2/qGcv2790vqUhOojAZSwonrI0Id
 xRHHte2QZXI36ljghxX9A/posUABdAIt7HbkbDlfdwXQ+IHxvQgSXPf+j
 y4rvIviDMUUwxCdGXhigoqFW9CafSWLyOIp84zJJ9BlKhd42GnazS3MB3 w==;
X-CSE-ConnectionGUID: vmGch0L2S4SH9PJg+FudAg==
X-CSE-MsgGUID: K2jxOvMdQ52NG97X7Rkd4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018243"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018243"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:34:12 -0700
X-CSE-ConnectionGUID: +iaJo4PMQdKr6xr62rY0ag==
X-CSE-MsgGUID: 68H9ZKjCQ4WCTqMTshF5zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421452"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:34:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:34:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/11] drm/i915: Drop useless intel_dsb.h include
Date: Tue, 11 Jun 2024 16:33:42 +0300
Message-ID: <20240611133344.30673-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

intel_crtc.c doens't need intel_dsb.h so don't include it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 6831060a792a..a2b8953d7283 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -24,7 +24,6 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
-#include "intel_dsb.h"
 #include "intel_dsi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_pipe_crc.h"
-- 
2.44.2

