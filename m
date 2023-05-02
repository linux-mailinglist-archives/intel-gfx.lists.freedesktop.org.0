Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ADA6F476C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27DD10E59B;
	Tue,  2 May 2023 15:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1AA10E37B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041909; x=1714577909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ItSHqdeJVvCIi7nfw3r8NnR5egE6znhQmpiurpqVfLA=;
 b=OitgPw+aJCEuHWuxwuzf5f/xk40uJbCMWOQrB7E7zWBnJiMc8vz4Lyso
 eNkNebv5EEKcJAppj57DqMuu7BTNaSsjZtmajlylyuQf5oVqY+3BEJPdF
 4R5VwvzG1T+CpsuFVoiyn0LBjT1EHTy+4YXcOVMhatjwZoB65kEirN1p6
 8rCGlv/Iw0vRfi1Cfli1Do2Dmhg4D5x12cqWCpviDssmCmwfcjzhfUymQ
 nAvmow8lQ0aUBvDEGqehSJTejJEbJgXF0Mpw2rv/3IaupsGH6GyIYCLKq
 iZFkUbmlJ++fnExIVNS6TLIjxnXV7ZRQoXum5eHxoyHV6bKZ5ZDTiRfib w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337554051"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="337554051"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="728976633"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="728976633"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:26 +0300
Message-Id: <80c96863b7a0755aaa07efb49bcccd9ba620c6d7.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/24] drm/i915/gem: fix
 i915_gem_object_lookup_rcu() kernel-doc parameter name
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

drivers/gpu/drm/i915/gem/i915_gem_object.h:94: warning: Function parameter or member 'file' not described in 'i915_gem_object_lookup_rcu'
drivers/gpu/drm/i915/gem/i915_gem_object.h:94: warning: Excess function parameter 'filp' description in 'i915_gem_object_lookup_rcu'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 885ccde9dc3c..bc1291887d4f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -80,7 +80,7 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj);
 
 /**
  * i915_gem_object_lookup_rcu - look up a temporary GEM object from its handle
- * @filp: DRM file private date
+ * @file: DRM file private date
  * @handle: userspace handle
  *
  * Returns:
-- 
2.39.2

