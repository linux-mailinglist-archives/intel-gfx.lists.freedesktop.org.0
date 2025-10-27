Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E501C0E1B8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 14:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887F510E4AA;
	Mon, 27 Oct 2025 13:40:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="intHpnEe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96C010E4A8;
 Mon, 27 Oct 2025 13:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761572433; x=1793108433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bvOMlztuGDHyyWw9GF61UyQZfWxFr0h489XDoRMdBQk=;
 b=intHpnEe4XRncb9CnW/domczjTBFDxia2SjrHZfNjTbLhDs7TGCY8uFz
 6FHTqBLSOG5kNfVszdoUvTqJpTSYkiYEpIvQr8bAJ5xAMu5A3Oj9GetLe
 zuLq/BwyPGZZ/2xQBE7AY3FEfFMapgbRD2q2c8F4IhihWr4SpRCYNnU7l
 pGPmFzyZ97FUmE7fOahFz/k+U84ca/iJOs8AVgxxaYZMdtRV0FJqxt1v4
 BzF76QYr5MZSEwJbjiRw90yu2vc8vxyHvyKYRXEQe5yJ1seNLqn7zBSq6
 B/+YYLHp51hfjINe1JhNsA5TeqpkUeotNdrMmNV/SUFt+nl0/5mGXUQ2/ g==;
X-CSE-ConnectionGUID: Joo8Xb2TQSi681Zummw7qQ==
X-CSE-MsgGUID: jfK50YSaQVuzuPn3sH9fuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75096376"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="75096376"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:32 -0700
X-CSE-ConnectionGUID: xyyL1MiGSGuJqT0MX9nHKw==
X-CSE-MsgGUID: 93xZurqIQCSDJjLDjRfEMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184271198"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:30 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, gustavo.sousa@intel.com,
 jani.nikula@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com
Subject: [PATCH v2 2/4] drm/i915/xe3p_lpd: Add FBC support for FP16 formats
Date: Mon, 27 Oct 2025 15:39:59 +0200
Message-ID: <20251027134001.325064-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027134001.325064-1-vinod.govindapillai@intel.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add supported FP16 formats for FBC. FBC can be enabled with
FP16 formats only when plane pixel normalizer block is enabled.
The follow up patches will handle the pixel normalizer block
configuration.

v2: changes related to comments to use better tracking of pixel
    normalizer

Bspec: 6881, 69863, 68904
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 83dcf62e4ebe..c831bd883395 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1096,6 +1096,8 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
 	case DRM_FORMAT_XBGR16161616:
 	case DRM_FORMAT_ARGB16161616:
 	case DRM_FORMAT_ABGR16161616:
+	case DRM_FORMAT_ARGB16161616F:
+	case DRM_FORMAT_ABGR16161616F:
 		return true;
 	default:
 		return false;
-- 
2.43.0

