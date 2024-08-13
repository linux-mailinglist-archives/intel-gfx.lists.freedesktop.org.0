Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF23950728
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 16:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B919F10E35E;
	Tue, 13 Aug 2024 14:06:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tlv3WonI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D1210E35E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 14:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723557991; x=1755093991;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SsIb22YCaA/jAD0UiIQXEXXzL14Z9zrlbQG1LFEZG1s=;
 b=Tlv3WonIvBRNbia5fCSwMUBQElmX5o7OaqZL2kCtMZ0b4X/oX4tqN5dG
 ZCKhJxScW7XfZ3z3bwf7CqzyHewK6FFnzcbd5AoyzYKelfmLcYeoNrGqZ
 b8egjtAFr2Hhd5usK9kPRRKQb9CDMrtXDaUoUD/IPkan+F9cypx8PHON/
 f+baY6XoPsS8kR9RBXWRY1RS9SkwZPz07y9RIC0nqXGLRvDMZaQMuN4rd
 bsdRMDhM/JwDIt+PPodRTANx18lUmH9bAOCeqMGhk1Eg0iIujX7UsqUY3
 MPjSncW3JFXin2xa1G2hr59RmY+6Z3dkRTapWmOJ8AAC+xY7GaBURFcBg g==;
X-CSE-ConnectionGUID: 5y9TCC9gRMy3KHOktLKNrg==
X-CSE-MsgGUID: 6oflIMfVTGqE2YwueRKS8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21366756"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="21366756"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 07:06:31 -0700
X-CSE-ConnectionGUID: 1nRbKO/ETLCNBccPfXOa6Q==
X-CSE-MsgGUID: MiqiUU9MTuqalhjkKhG7YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="62828305"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.219])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 07:06:30 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/gt: remove stray declaration of
 intel_gt_release_all()
Date: Tue, 13 Aug 2024 17:06:18 +0300
Message-Id: <20240813140618.387553-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

When intel_gt_release_all() was removed from the code in commit
e89950553385 ("drm/i915: do not clean GT table on error path"), its
declaration in the header file remained.  Remove it.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

I deliberately have not included a Fixes tag here because this is a
minor clean up and it doesn't make sense to get it into stable
kernels.


drivers/gpu/drm/i915/gt/intel_gt.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index b73555889d50..998ca029b73a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -174,7 +174,6 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
 
 int intel_gt_probe_all(struct drm_i915_private *i915);
 int intel_gt_tiles_init(struct drm_i915_private *i915);
-void intel_gt_release_all(struct drm_i915_private *i915);
 
 #define for_each_gt(gt__, i915__, id__) \
 	for ((id__) = 0; \
-- 
2.39.2

