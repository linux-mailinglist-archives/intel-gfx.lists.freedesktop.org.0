Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0C66F477D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6296610E5AA;
	Tue,  2 May 2023 15:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB5D610E5AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041964; x=1714577964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6nAXGc8sCUHX8OJ4dbGzHA6yoV1oQqIyjHrhAULgxT0=;
 b=bi4yzJXCeAm9n1V3hC6wkEYHa7Za2z/RrE6i+tMBE4wdcKZpbL3cAnD9
 hJ/EoG0/YXsgVIVQWCrhaCB7cOK9rh68D6cvrPuTVwqBdSk9hmo4dxtis
 LUl0gRqZzIN+A4wRoesuR7XCxx0GiAkeDjcSDjJnjUkjJp1aRHMI2SEKt
 VyD0PgI2mdzmyzCiuJYN656MGZ+m/ajB3ohrDBCgDctbmIyiHm0EMmrdg
 Z2mcbF042Hi7c+P+zDfMB7tygpeKosREp9cQT9/Rl+TtRfEi18sel/6wE
 6C/yn9yvTv1vIdJAe304T7B4HQPZYsqkNU751DqBGG7Yq0TPTrpiiwHtu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="332791046"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="332791046"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="699016139"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="699016139"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:39 +0300
Message-Id: <a0c099707ec4f1911b14b0f286848a298b2b29e0.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 22/24] drm/i915/scatterlist: fix kernel-doc
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

Can't document function pointer members as if they are functions.

drivers/gpu/drm/i915/i915_scatterlist.h:160: warning: Incorrect use of kernel-doc format:          * release() - Free the memory of the struct i915_refct_sgt

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_scatterlist.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index b0a1db44f895..fe9ae863f9b9 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -157,8 +157,7 @@ bool i915_sg_trim(struct sg_table *orig_st);
  */
 struct i915_refct_sgt_ops {
 	/**
-	 * release() - Free the memory of the struct i915_refct_sgt
-	 * @ref: struct kref that is embedded in the struct i915_refct_sgt
+	 * @release: Free the memory of the struct i915_refct_sgt
 	 */
 	void (*release)(struct kref *ref);
 };
-- 
2.39.2

