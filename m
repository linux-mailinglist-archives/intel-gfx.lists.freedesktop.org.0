Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2F16F4779
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3B910E5A8;
	Tue,  2 May 2023 15:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E3010E5A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041949; x=1714577949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DagXNRBDtIZU3sb9fLqglGU64Zc0DHRJRTKr0O6i5Ek=;
 b=Xl6nMu+61jBnkex+tUjztJ77B4PIeoS77Y05UONL+U+uFDlUwLEB2oN0
 2RdZ40aFex3H23rOBIMaptPWr0kPzyKLE75VQiPJM1XQWQf//OGdxMITq
 Va+73ZmSZP1kk7BUorQOvPGP92jWfUqhSnZkGnzHFL4/5KKoJxFrxgm+1
 sMnYuof9oE5wsOn8PQpkYuRLFYH+jaYujJKiEfpto4n3SEyfcK1uR5iD3
 GjZi7j5mPQozHEZEm4qavhC3+BKaS7ODSInmu/T+rqcxCQla/FoaoFbZ5
 lSlrOzmA5f3DrlvOrtGMQyX1eDVtfQ7ckIArzNsldzH4hi+0Ic2w2lN15 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="350508149"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="350508149"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="761141485"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="761141485"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:35 +0300
Message-Id: <c83878163221ed3684a6de5d5e1c5373ddd5c06f.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/24] drm/i915/guc: add intel_guc_state_capture
 member docs for ads_null_cache and max_mmio_per_node
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'ads_null_cache' not described in 'intel_guc_state_capture'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'max_mmio_per_node' not described in 'intel_guc_state_capture'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index 1b6c219e1675..1fc0c17b1230 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -187,6 +187,10 @@ struct intel_guc_state_capture {
 	struct __guc_capture_ads_cache ads_cache[GUC_CAPTURE_LIST_INDEX_MAX]
 						[GUC_CAPTURE_LIST_TYPE_MAX]
 						[GUC_MAX_ENGINE_CLASSES];
+
+	/**
+	 * @ads_null_cache: ADS null cache.
+	 */
 	void *ads_null_cache;
 
 	/**
@@ -202,6 +206,10 @@ struct intel_guc_state_capture {
 	struct list_head cachelist;
 #define PREALLOC_NODES_MAX_COUNT (3 * GUC_MAX_ENGINE_CLASSES * GUC_MAX_INSTANCES_PER_CLASS)
 #define PREALLOC_NODES_DEFAULT_NUMREGS 64
+
+	/**
+	 * @max_mmio_per_node: Max MMIO per node.
+	 */
 	int max_mmio_per_node;
 
 	/**
-- 
2.39.2

