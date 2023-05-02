Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A50266F4762
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD1410E57F;
	Tue,  2 May 2023 15:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02DDF10E375
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041890; x=1714577890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8XgWsDHwsj4hq1PRJXQRmwWP9zZIAIBj3NF2eFG1b4g=;
 b=PAVaYZZgFy0ANpZ90VyLYA9E0mRhPsgj++nrK9zksE4XZzrUpWvXfIL2
 +XELFSiRU2VXsM97pb/CRgX0IlTMMSjo4j1KZCm2vv8pQ/9ugf9i2o4OD
 okWgXvKi6asLaunjfjqWMOiHkpezOtar8kbLLTpVzLhHsuuJtwqSbnInT
 MbrZMJDkE3DOjMEHPLanbV8CdEVvNZihYxueix24MlUYR3UUnScZ/e1B+
 WaxfcmPZ/z45sHT648I6exwfYfJLVyEd0ncMkUsHNSmV9Y/hq552ZqNqJ
 KwSGjngGzmPwTo7eMq2PZejo5tGwKsX7LxKIveRaOTnH90NJMnRu/nECK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889316"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889316"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="807896124"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="807896124"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:37:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:19 +0300
Message-Id: <9fd58398ba6f86c55cc7a7c62efeab70c3311d59.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/24] drm/i915/vma: fix kernel-doc function
 name for i915_vma_size()
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

drivers/gpu/drm/i915/i915_vma.h:145: warning: expecting prototype for i915_vma_offset(). Prototype was for i915_vma_size() instead

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index ed5c9d682a1b..38c8c66ed724 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -132,7 +132,7 @@ static inline u64 __i915_vma_size(const struct i915_vma *vma)
 }
 
 /**
- * i915_vma_offset - Obtain the va range size of the vma
+ * i915_vma_size - Obtain the va range size of the vma
  * @vma: The vma
  *
  * GPU virtual address space may be allocated with padding. This
-- 
2.39.2

