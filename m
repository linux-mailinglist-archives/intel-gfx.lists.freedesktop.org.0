Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DCF8BAC59
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B65610FBF4;
	Fri,  3 May 2024 12:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YzzX6CfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06FE710FBFA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739098; x=1746275098;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NV4v1fypmz600q9s2ZPMCmhSt0EDN6/DOY9IYpY1u/o=;
 b=YzzX6CfS5ZQJJaIHhGgBPOlper2tqF1DzoGnh1tceih/2R+6kNaaTz1J
 PneprYvFXxZSUIwbtMDv8zdYiCngMyjbQcFOYwQABoYyoPBeebot1qTI+
 yiwmvpRKi42iVrgjhehnANSfU9M5xKm+soqJSqHEA0jnRH4P+XfpSpZi9
 tyxf7t/0ZZlW3DHdQoMep31zeHodkq43vTwkwvB0E4KQiQzcNXiU9M0OF
 rMPlt30VVoTqNyrpXl2IqW/nt9UePKWM3OyE3e88HjVNWkKnLis8IsrSq
 jauszPJtxepaMYO40SJlkQ58tstheobRNZUOFk4xHU7AkBsEPX0aErd0s A==;
X-CSE-ConnectionGUID: 9eLImuvyRBe0Q4tjvKqnaw==
X-CSE-MsgGUID: xUWqo+0vSW2KZfUmdgratg==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372721"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372721"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:24:58 -0700
X-CSE-ConnectionGUID: vKHk+fEOR8Sm37NnDQj+rg==
X-CSE-MsgGUID: ZOZcDk9rQnKSZOC5WWdyFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463559"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:24:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:24:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/35] drm/i915/bios: Remove version number comment from
 DEVICE_HANDLE_EFP4
Date: Fri,  3 May 2024 15:24:16 +0300
Message-ID: <20240503122449.27266-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
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

DEVICE_HANDLE_EFP4 has actually been in use since the very beginning,
or at least something has been occupying that bit because old
VBTs actually use it, and it definitely looks to be about external
displays given how its used. So let's ignore what the current spec
claims and remove the misleading version number comment.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index d7b9bde5dcc4..eebb91f4d88b 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -201,7 +201,7 @@ struct bdb_general_features {
 #define DEVICE_HANDLE_EFP1	0x0004
 #define DEVICE_HANDLE_EFP2	0x0040
 #define DEVICE_HANDLE_EFP3	0x0020
-#define DEVICE_HANDLE_EFP4	0x0010 /* 194+ */
+#define DEVICE_HANDLE_EFP4	0x0010
 #define DEVICE_HANDLE_EFP5	0x0002 /* 215+ */
 #define DEVICE_HANDLE_EFP6	0x0001 /* 217+ */
 #define DEVICE_HANDLE_EFP7	0x0100 /* 217+ */
-- 
2.43.2

