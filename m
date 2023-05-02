Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8C86F4764
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E5E10E592;
	Tue,  2 May 2023 15:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE94B10E587
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041892; x=1714577892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3TN5ewLEF33DbNNCwZfJ3aR+uuwTcwCCAQwWvmPqtSs=;
 b=MUERfPemq8sZgT/uwIUBNGnMstpDhupvsABXmC2b06vW+o4wAcbngT8B
 yWLsXrZMm4ToE2Mz43VAo7psfM5Gqg8lNWGXDDCOPrn9SjeTbN9A0ojC1
 TuK6SMNacH6e2DmG/3ZygiobRrbiPI+hOY1ovt6B8NPtetIvdRQk1e8vV
 VJupLmrSmBfOzLBRDnGqmNGlM6vfk3hwZ/3/nRc50uN7j9C0fzWSEJ2W0
 FVPYaYKSiMVgZdOPf8lBvtaBaq4ryIOmBaiWNEItdREs2ex1YNBCiIMcN
 SdpPcean3ceJp1okwqe26mSn1Dae+GeSG0HP7G0bJ1+2vdLRJxUsMuKZf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889343"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889343"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="807896204"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="807896204"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:21 +0300
Message-Id: <50389365e095dc564ab5f1f1e3647934163ffefa.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/24] drm/i915/vma: document struct
 i915_vma_resource wakeref member
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

drivers/gpu/drm/i915/i915_vma_resource.h:129: warning: Function parameter or member 'wakeref' not described in 'i915_vma_resource'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_vma_resource.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
index c1864e3d0b43..2053c037dbfb 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.h
+++ b/drivers/gpu/drm/i915/i915_vma_resource.h
@@ -47,6 +47,7 @@ struct i915_page_sizes {
  * @chain: Pointer to struct i915_sw_fence used to await dependencies.
  * @rb: Rb node for the vm's pending unbind interval tree.
  * @__subtree_last: Interval tree private member.
+ * @wakeref: wakeref.
  * @vm: non-refcounted pointer to the vm. This is for internal use only and
  * this member is cleared after vm_resource unbind.
  * @mr: The memory region of the object pointed to by the vma.
-- 
2.39.2

