Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0434EA299
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 23:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0FD10EDC0;
	Mon, 28 Mar 2022 21:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2573C10EDC1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 21:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648504751; x=1680040751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ae+38MuCG1rDihjdakDeHihporQNGFHbUo95dkf9ynQ=;
 b=U6UxuZYEGyJmb5OJQyEBEybqsR/XG59HXTNCMpdZpV5L32y33wGZtKUw
 SaJ/yUgpwl1UkxedlLWXnZJJf2mzPsOolZQB2+9SM1FHaDhVxPZ7InPEb
 QabIKQWNixuj+XSwu7oJZLEVssGdPlJFvcucdgDgoasN4fG7z1zioNz/R
 W1ENwcpc3B3FSQ70F0sbyJeEFXbNZjk0LDxQKxjNbxIC1U9wJrY4QpXKO
 sNIxGWPFfhfmrEmezfZOffHYvjREIEbwWF4BiUakdGIqBXs3Qh3tHgmi8
 CUYk0wynDMj5A6fxX7t7/nVLwzhKiMyn+DP5RmX5DpgLaO3aGFmp2SMYP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="246599335"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="246599335"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 14:59:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="546129300"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 14:59:10 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 14:53:58 -0700
Message-Id: <20220328215358.2866707-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220328215358.2866707-1-daniele.ceraolospurio@intel.com>
References: <20220328215358.2866707-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 6/6] HAX: drm/i915: force INTEL_MEI_GSC on for CI
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After the new config option is merged we'll enable it by default in the
CI config, but for now just force it on via the i915 Kconfig so we can
get pre-merge CI results for it.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index e7fd3e76f8a20..be4ef485d6c1d 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -48,6 +48,7 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
+	select INTEL_MEI_GSC
 	select BROKEN # for prototype uAPI
 	default n
 	help
-- 
2.25.1

