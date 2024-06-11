Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BCB903B9C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CD610E605;
	Tue, 11 Jun 2024 12:13:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="njnoz93L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8C4F10E600
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107985; x=1749643985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YlXzxsWh9m9qtgzQOEdD8VqKEAHfBrxhC61soxNPGHg=;
 b=njnoz93La1nHj8SWwo+gDjCCKPFupXK2rjQ6JTOWObtBUXWampF8XPQC
 wQw/6i1F7emX1JHJ3rboalza6kF/OWsJjiyCx+gLYw/B9+hWDnRMStri0
 lKPiWT+r9H78uYH3gP3ARhMJqyKM/ZKOwh+8SOa9Xcs+w86TPY8H6Kypc
 xCWQr/PefeqgH5rH2ofkbsfVSd0PyA2g513bgvU/sIExtVRRrsT+xfuGK
 ZM61rn1o5tX8Y/Qo9Iy6joW7pRr+pgqzlLd9Xtdrkfa4NZvPF1d563Dk1
 8ziJ/ksYomcVotjojLihg8eR9j3eC+HtPwiDY+/tXLxItEvmn4xzkT81P A==;
X-CSE-ConnectionGUID: JDRV9rDDQRqoWY0mQPM5Rg==
X-CSE-MsgGUID: jbDn8WwyTiuhavKyvUNnzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296820"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296820"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:05 -0700
X-CSE-ConnectionGUID: SVEuz2puRsKqmzMlvcLJdA==
X-CSE-MsgGUID: UV9bOsrdQtOfgQuNsJJuUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118600"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 02/18] drm/i915/display: Wa 16021440873 is writing wrong
 register
Date: Tue, 11 Jun 2024 15:12:27 +0300
Message-Id: <20240611121243.3366990-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Wa 16021440873 is writing wrong register. Instead of PIPE_SRCSZ_ERLY_TPT
write CURPOS_ERLY_TPT.

Fixes: 29cdef8539c3 ("drm/i915/display: Implement Wa_16021440873")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index cea0cfed569d..0b0b17d0831d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -524,7 +524,7 @@ static void wa_16021440873(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
+	intel_de_write(dev_priv, CURPOS_ERLY_TPT(dev_priv, pipe),
 		       PIPESRC_HEIGHT(et_y_position));
 }
 
-- 
2.34.1

