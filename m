Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C925A8FB758
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D7210E518;
	Tue,  4 Jun 2024 15:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5PCzx6/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F6F10E524
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515090; x=1749051090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0d6zeO+4rEi27T+7YnaC80ZytwlXfPpdnVsuT2+0FSI=;
 b=l5PCzx6/hA06Abgt0pYobM9jRaS1rBVrxs5mbwkgcaa8DqecSjL1WhCT
 qBQ3E66tkG0YmWkT99Cj5KOmeBXNktUAT26yWoHhI4OM73kGl0x9B6kj+
 rzxXyJqKaZLATi7OGTdSk/67qOJdd5smhnBN6M+/5FsVsYhnpuGzRs1mh
 Iu2QVktnAfEMJQs01oT9xoTfVDNnEjhl6Blg7Gl8omM5k/hEq+RO9pssO
 82Van588GpE/lUrnR++gLHucODERHg/E/7UBbEtfA9EUc397Wp6pwhpqU
 k6A5u8CSBEbt17dbup5/nAnNPhJNpA1Y+DA7q2h588II0tjLyykJwKfcD g==;
X-CSE-ConnectionGUID: C3e6udZnT+SzBeKCAXkRDg==
X-CSE-MsgGUID: qmvkCoKlTnWD8jd4Txw9UQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13822238"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13822238"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:04 -0700
X-CSE-ConnectionGUID: EQTOpmRAR3ugv20FddoJgA==
X-CSE-MsgGUID: T3I8w0YLS5yf+asRforpiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37859473"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 58/65] drm/i915: pass dev_priv explicitly to HSW_STEREO_3D_CTL
Date: Tue,  4 Jun 2024 18:26:16 +0300
Message-Id: <76f980f5ed3638746c6b58dec7d0bd8c43a37987.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the HSW_STEREO_3D_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 70e549b38984..c8488877dd68 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3493,7 +3493,7 @@
 #define   S3D_ENABLE			(1 << 31)
 #define _HSW_STEREO_3D_CTL_B		0x71020
 
-#define HSW_STEREO_3D_CTL(trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
+#define HSW_STEREO_3D_CTL(dev_priv, trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
 
 #define _PCH_TRANS_HTOTAL_B          0xe1000
 #define _PCH_TRANS_HBLANK_B          0xe1004
-- 
2.39.2

