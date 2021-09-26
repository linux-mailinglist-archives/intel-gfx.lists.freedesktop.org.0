Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 048E1418A8E
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Sep 2021 20:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B2189D89;
	Sun, 26 Sep 2021 18:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4452889D42
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Sep 2021 18:45:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="224010102"
X-IronPort-AV: E=Sophos;i="5.85,324,1624345200"; d="scan'208";a="224010102"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2021 11:45:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,324,1624345200"; d="scan'208";a="475690614"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 26 Sep 2021 11:45:57 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.154.207])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 18QIjsYp013937; Sun, 26 Sep 2021 19:45:56 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 26 Sep 2021 20:45:43 +0200
Message-Id: <20210926184545.1407-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210926184545.1407-1-michal.wajdeczko@intel.com>
References: <20210926184545.1407-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 2/4] drm/i915/guc: Print error name on CTB
 (de)registration failure
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

Instead of plain error value (%d) print more user friendly error
name (%pe).

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index c39abb010181..b6c2f2a11dc5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -191,8 +191,8 @@ static int ct_register_buffer(struct intel_guc_ct *ct, u32 type,
 	err = guc_action_register_ct_buffer(ct_to_guc(ct), type,
 					    desc_addr, buff_addr, size);
 	if (unlikely(err))
-		CT_ERROR(ct, "Failed to register %s buffer (err=%d)\n",
-			 guc_ct_buffer_type_to_str(type), err);
+		CT_ERROR(ct, "Failed to register %s buffer (%pe)\n",
+			 guc_ct_buffer_type_to_str(type), ERR_PTR(err));
 	return err;
 }
 
@@ -219,8 +219,8 @@ static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
 	int err = guc_action_deregister_ct_buffer(ct_to_guc(ct), type);
 
 	if (unlikely(err))
-		CT_ERROR(ct, "Failed to deregister %s buffer (err=%d)\n",
-			 guc_ct_buffer_type_to_str(type), err);
+		CT_ERROR(ct, "Failed to deregister %s buffer (%pe)\n",
+			 guc_ct_buffer_type_to_str(type), ERR_PTR(err));
 	return err;
 }
 
-- 
2.25.1

