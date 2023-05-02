Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A72F46F477C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6D310E5AB;
	Tue,  2 May 2023 15:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D29310E5AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041961; x=1714577961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aDbI5PG2C7kouLV4lw9ttCH+jrWo0+OZstXU5AbH/zM=;
 b=nmPlr1kcvZJW/yUCOfN4f7fCVTvc2EMsoNKLECaM0ayNPvei8nfYf2QK
 +1mf1JVtZv4B+SyUgQmkOypiNg6v3MwqeBRWAxHicySfjy4+JUfUAa0hz
 /FJY4G4YtonarYE7scFgwWqUDN0UdQYNdtHZSo5vcYyMUALDUD15ytVsu
 6OYsUjIsa2VzE5aiNW8Gi5Ylcrxfg2foyGdwQHmGSFXF1HVsF3lzOT60g
 2uLFBXOCrv+JwflclPKgKBGvVNl2UOrU52V5K+KTmopdykBEnzER9D5X9
 yNPgYX+MskwTPue49Mm8DnlWGFGJ2tzjycNC/pqA8t4ORb8LEXLa5IyMY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="332791024"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="332791024"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="699016135"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="699016135"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:38 +0300
Message-Id: <84f89a3332fa323888f1e3241fb51ae10417ecd7.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/24] drm/i915/pxp: fix kernel-doc for member
 dev_link
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

Add /** to make it a kernel-doc.

drivers/gpu/drm/i915/pxp/intel_pxp_types.h:96: warning: Function parameter or member 'dev_link' not described in 'intel_pxp'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 007de49e1ea4..c445f7f2f47a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -33,7 +33,9 @@ struct intel_pxp {
 	 */
 	struct i915_pxp_component *pxp_component;
 
-	/* @dev_link: Enforce module relationship for power management ordering. */
+	/**
+	 * @dev_link: Enforce module relationship for power management ordering.
+	 */
 	struct device_link *dev_link;
 	/**
 	 * @pxp_component_added: track if the pxp component has been added.
-- 
2.39.2

