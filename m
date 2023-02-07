Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF94068D6F8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 13:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FDE710E4F0;
	Tue,  7 Feb 2023 12:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C76310E4ED
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675773653; x=1707309653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9wgGd55iGmRn2+IPDamr/8N+rddDX5tm6Pknsw7O5eg=;
 b=iZNAAQMgu6MWsry5KCFzqWmSNMu4c7KTdn52HbLUqXfdN8AK7txecc0v
 E0zj38i3TQnaZ4MJgjBgMnENAUiuCxN27R11V0+IojugYpNdaCBycSTTr
 MxwZ+irUQTugLG7VcTCXUlHMjDx67dbqo5M0+bgyxZQOYLRi2KqKLpZZb
 1GyYD9yhobRcqBiZHmJTmkJ7kMO/LlIHBa3VES+WhErzQK0ZDSGZcz6nG
 BXuF4zK+UQAqWgjzFz64rzOyfr5mSAE7lVzXxBMzOsJSw0Mbs2DDWQKk9
 7avUz17v78lDhqGODALiW9LhfLkrLnprlhACvMxRUwLLp6LTP52pwd1hW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309141444"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309141444"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="697268450"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="697268450"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 14:40:26 +0200
Message-Id: <20230207124026.2105442-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207124026.2105442-1-jani.nikula@intel.com>
References: <20230207124026.2105442-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/pxp: fix __le64 access to get rid
 of sparse warning
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
Cc: jani.nikula@intel.com, Tomas Winkler <tomas.winkler@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

__le64 and friends should go through the cpu_to_* and *_to_cpu
accessors:

drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:41:35: warning: incorrect type in assignment (different base types)
drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:41:35:    expected restricted __le64 [assigned] [usertype] huc_base_address
drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:41:35:    got unsigned long long [assigned] [usertype] huc_phys_addr

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 64609d1b1c0f..23431c36b60b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -38,7 +38,7 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	huc_in.header.command_id  = PXP43_CMDID_START_HUC_AUTH;
 	huc_in.header.status      = 0;
 	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
-	huc_in.huc_base_address   = huc_phys_addr;
+	huc_in.huc_base_address   = cpu_to_le64(huc_phys_addr);
 
 	err = intel_pxp_tee_stream_message(pxp, client_id, fence_id,
 					   &huc_in, sizeof(huc_in),
-- 
2.34.1

