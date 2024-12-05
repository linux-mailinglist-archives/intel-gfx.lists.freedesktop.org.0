Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1690B9E58C5
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B466410EEA8;
	Thu,  5 Dec 2024 14:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GetfF4Fj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87C410EEA2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 14:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733409948; x=1764945948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9CRhietudlbjjEZ8syYEmiovY9PyJCbP7FtiaA/3lUY=;
 b=GetfF4Fj70pa8uoBeUWaFCy0lOPmmzYlf4X3BRwOAwoqgG55wwqAvpg8
 TsqnEaY21JvJMlVT0q1s2hwt+NLq8O8MEkKlBz+IrSrjtXhBrN9KPsKT5
 CkKUJ0003x6VqS5YHbYf4VyB/XfHr+4lQvHU/rLPwUaV3UPjDG4ghWRCa
 0WhDSQKxH5IgtRNGnCfBlJKJcZH7BCLXtDAuMP1QDEFj/fY+Hh05dGdlO
 AXDHes8erfQ1mjr/zp7/yZDT1jgDFmOYUJ8TFJYTc2Wymh1NvZJM25FHA
 qFbqvHkJIUELwDB/c3bKT9tr4ucGQUasD+kJz7JLYOzShiFfgKjIk3AOh w==;
X-CSE-ConnectionGUID: bgL/FraSRW6ylWKebh8qvw==
X-CSE-MsgGUID: k/a1/ZmjTua7rXlNjnIMFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33640781"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33640781"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:47 -0800
X-CSE-ConnectionGUID: 4WQsVZESSSyABV1+aHm5nw==
X-CSE-MsgGUID: VyBdEab5RzKlEDETwXGwfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="94589145"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/dsi: fix PIX_FMT_MASK width
Date: Thu,  5 Dec 2024 16:45:35 +0200
Message-Id: <0e1a433b3842d38df4334cf8e896c4b2f0a96f35.1733409899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733409899.git.jani.nikula@intel.com>
References: <cover.1733409899.git.jani.nikula@intel.com>
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

It's really bits 18:16 not 17:16.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index d4845ac65acc..0cb9a5f714d2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -203,7 +203,7 @@
 #define  VIDEO_MODE_SYNC_PULSE		(0x3 << 28)
 #define  TE_SOURCE_GPIO			(1 << 27)
 #define  LINK_READY			(1 << 20)
-#define  PIX_FMT_MASK			(0x3 << 16)
+#define  PIX_FMT_MASK			(0x7 << 16)
 #define  PIX_FMT_SHIFT			16
 #define  PIX_FMT_RGB565			(0x0 << 16)
 #define  PIX_FMT_RGB666_PACKED		(0x1 << 16)
-- 
2.39.5

