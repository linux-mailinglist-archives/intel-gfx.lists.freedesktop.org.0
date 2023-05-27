Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA7C7130FD
	for <lists+intel-gfx@lfdr.de>; Sat, 27 May 2023 02:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE86A10E210;
	Sat, 27 May 2023 00:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37BB010E20A;
 Sat, 27 May 2023 00:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685148783; x=1716684783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+udcl7GkglUOwqBqtPikunHOfK6Y/Tqg0Xs/zqCOrZM=;
 b=Lca1ICASPzv7Qf06xNk81v+ZbMppB9eZliR6DmWfi0HnY4tVL/yJq/mL
 z/fPp59IFzd1nF/VFKaWRoJC/MbailgUie7GFnzdue21BmZGxZufmzLnD
 zLeZlB2cUcU52l+cnTskK5y9OJUWpsa57pfu5PwjiDeH7Vf5DXTjlp4AK
 maT/fhLEzAZ0m+vM/zwTFC8heBTBfi8FI+bPH9M2799zFhkAkkYuI1M3Z
 rZKvCSAx/feuzMKunxWKzT17Q4bhkq8rg2w/QYLZQXLvOoVOG3B90Cdmf
 dVVFQfe3To0PCIEdBIjCu4qUqHfu4Tehqxtb4WWQX4fzHps0t9ZGBX9+3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="440698959"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="440698959"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 17:53:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736191866"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="736191866"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 17:53:02 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 17:52:41 -0700
Message-Id: <20230527005242.1346093-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230527005242.1346093-1-daniele.ceraolospurio@intel.com>
References: <20230527005242.1346093-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl/huc: Use the media gt for
 the HuC getparam
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On MTL, for obvious reasons, HuC is only available on the media tile.
We already disable SW support for HuC on the root gt due to the
absence of VCS engines, but we also need to update the getparam to point
to the HuC struct in the media GT.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/i915_getparam.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 6f11d7eaa91a..890f2b382bee 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -100,7 +100,11 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		value = sseu->min_eu_in_pool;
 		break;
 	case I915_PARAM_HUC_STATUS:
-		value = intel_huc_check_status(&to_gt(i915)->uc.huc);
+		/* On platform with a media GT, the HuC is on that GT */
+		if (i915->media_gt)
+			value = intel_huc_check_status(&i915->media_gt->uc.huc);
+		else
+			value = intel_huc_check_status(&to_gt(i915)->uc.huc);
 		if (value < 0)
 			return value;
 		break;
-- 
2.40.0

