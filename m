Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA76D94C0C2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF4910E75F;
	Thu,  8 Aug 2024 15:16:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q42q63K1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600FB10E75E;
 Thu,  8 Aug 2024 15:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130171; x=1754666171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ysm8HuM0CPlvglpD4V4sNrjQFY4ILcsuZ0Gq7ohQpXY=;
 b=Q42q63K1oa+vg5cMhX/HcdcU62jGyb3dJhjQLMt3PmWo1KmzAXy8iejz
 x6NnzQT9pfA+tfufdk/cp8aCUVE2Kj68Gr7b0kzbqx40GEKwPAIpDkk+C
 4VJv3Zq1ZL2NlVgx+vpTTjSR7wkIlQaKVZusJYGjDObpuyXTOWOXZEnH3
 02JCC7ChP+nf/a2hxnzTVPPGL28TVIuVnYl3AUTn4aohgxABtQuayR+bp
 IiKLvSzon3AaXlm6I/3tm5lX/JpCX40gkYRDHTdUGaSs6Qov0HQImRLE0
 JK8BaOVRnw2zbQLL7jEQqpbpCppV6K24AuW2LsjPqCR1XLa1/Hrm12d/c g==;
X-CSE-ConnectionGUID: Nyui4zgqThyk4++iCsTdfw==
X-CSE-MsgGUID: oSW1fuY0SZme9LztxtGT4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="20832167"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="20832167"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:11 -0700
X-CSE-ConnectionGUID: 0edIDMJaSz+E795QDx89gw==
X-CSE-MsgGUID: Lyw+R5xuRHKgz9pnKrDHbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61878373"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 02/10] drm/xe: use pdev_to_xe_device() instead of
 pci_get_drvdata() directly
Date: Thu,  8 Aug 2024 18:15:47 +0300
Message-Id: <b82c5f2316bac546235977d762cf12ed7eb0580e.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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

We have a helper for converting pci device to xe device, use it.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index f818aa69f3ca..7bb811b4a057 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -752,7 +752,7 @@ static void xe_pci_remove(struct pci_dev *pdev)
 {
 	struct xe_device *xe;
 
-	xe = pci_get_drvdata(pdev);
+	xe = pdev_to_xe_device(pdev);
 	if (!xe) /* driver load aborted, nothing to cleanup */
 		return;
 
-- 
2.39.2

