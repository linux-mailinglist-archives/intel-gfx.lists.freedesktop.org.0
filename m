Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B0F62066C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 03:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6B710E40F;
	Tue,  8 Nov 2022 02:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 031BE10E406
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 02:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667873027; x=1699409027;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fdg3eAQa/d63XQqPxcoeXRsDOFilRhnYGkdGacIO8i0=;
 b=Cqi5LBJCK1wPD88PIfCbo66r5pqRiPa9soKwf3WNRJddJ1OsqGZBX3Ia
 b9ow5ztFz7FhS4EODQYWiSp7XMRP10csgxzb71yHl/JVcrLnpNJ6HLO64
 /Dg0BAVGpdQPDC5ktrGm1S37aACtJzSujQweBIUwuxXNBjjAcXzoM2Z+u
 OnVcdaaINDjQ572/puRA0SlE8B7dT+09vJOBquA++985WRqgCqLyBKRqD
 xXBv3LKhqzmnhbzwM8LmZmspoqA/RP4omHY1g/FESLDGezqrWjaaToHjD
 IGfdQ5W0lCabmMNC5KpPtp7HGEQBmaGsR6SDyIGSwk+sV1iwD6Yft84mI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374850066"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374850066"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614097239"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="614097239"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:03 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 18:05:55 -0800
Message-Id: <20221108020600.3575467-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
References: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/7] drm/i915/uc: fetch uc firmwares for each GT
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

The FW binaries are independently loaded on each GT. On MTL, the memory
is shared so we could potentially re-use a single allocation, but on
discrete multi-gt platforms we are going to need independent copies,
so it is easier to do the same on MTL as well, given that the amount
of duplicated memory is relatively small (~500K).

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 299f94a9fb87..5c2bc6bc9b92 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1140,7 +1140,8 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	if (ret)
 		return ret;
 
-	intel_uc_fetch_firmwares(&to_gt(dev_priv)->uc);
+	for_each_gt(gt, dev_priv, i)
+		intel_uc_fetch_firmwares(&gt->uc);
 	intel_wopcm_init(&dev_priv->wopcm);
 
 	ret = i915_init_ggtt(dev_priv);
-- 
2.37.3

