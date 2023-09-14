Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8B97A002A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 11:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB16F10E562;
	Thu, 14 Sep 2023 09:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28EE10E55F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 09:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694684115; x=1726220115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nZ2e7e6gznTH6FcpmeDYIt3MPufv7iQ2TMFDb+uvoC0=;
 b=TG3kfylMV0LrCwPvuuc9vH5C4VfD3ziMSiU12yAjLe6hH3ARXmiTAtwr
 m/6PPVuemO3DjKf0YbFKNrztRm/otIy0btJOqJxdj6X5BJAKIm7Wi3uX0
 jOQEBz49ls27F06AdoEElW91gGk9Bwkmlqu6M0hltOn2McKDit/tLTrHl
 zrTGMEAn4RPrVJ986w7wXK9Q/M/GaU+MVE6TDgpvhp/sEPy7psSaLVqGV
 HK0tD0VndByMg/sVdp7i/5C+ZyyxBENJM9FyXf/0ciCfn6/LIq4yUHPiq
 dIDQDPuNXpKjPrnBZvlE+AAaIEjsvdfrVchodHdhBCA9sgnhuE9EZSRV4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="409856715"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="409856715"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="773825330"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="773825330"
Received: from haslam-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 12:34:59 +0300
Message-Id: <17e70eaf967bdfe99111cdbb3bcf6aa2f0b0e837.1694684044.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694684044.git.jani.nikula@intel.com>
References: <cover.1694684044.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/dpt: replace GEM_BUG_ON() with
 drm_WARN_ON()
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

Avoid using GEM_BUG_ON() in display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index fbfd8f959f17..48582b31b7f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -29,7 +29,7 @@ static inline struct i915_dpt *
 i915_vm_to_dpt(struct i915_address_space *vm)
 {
 	BUILD_BUG_ON(offsetof(struct i915_dpt, vm));
-	GEM_BUG_ON(!i915_is_dpt(vm));
+	drm_WARN_ON(&vm->i915->drm, !i915_is_dpt(vm));
 	return container_of(vm, struct i915_dpt, vm);
 }
 
-- 
2.39.2

