Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPW3HE2VmGlaJwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6C16998C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D9C10E822;
	Fri, 20 Feb 2026 17:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUUURv0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C02310E822;
 Fri, 20 Feb 2026 17:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771607370; x=1803143370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M3S2UPRulMD/x8ogNAKuv+99ArmBGb8oNjorw//H3Mc=;
 b=kUUURv0USyTcsD0xVK15V9aysfBXcOfY7FeTGGSXYawdszU2M1UHhl1d
 pKpJcyQ/CSBI6ZUykqFTMkwD/cPlfmfzA2ywMRJKtVfw0sWvtwtIl4fK8
 0Yc3beC7ZOYCzMRS584bZa98HlGZRkJGqilHMX20q3mLQOp4saNryNOIH
 +syU/OzGpn4iwFX2Am687Qv0VKji85Sirn3NkRRiKp5osD80ijauqgttw
 n6hCEhbVyPLbV8ngm/4lmO4EgsSO2djaXsr4ilJEnoU/uC/DPudfsob0+
 GHbGpidH1TYOH2EJA0faxwX1xrmGFn0Lgq7Qcu7YIivCStOHlp3vGJJuY g==;
X-CSE-ConnectionGUID: 1wuvyXNwRFq6TSA9tYw/SQ==
X-CSE-MsgGUID: pzR5lm0nQsutMslucm6mSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="98164377"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="98164377"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:30 -0800
X-CSE-ConnectionGUID: hC25qYrHRYOYy6SoA/nnZg==
X-CSE-MsgGUID: n8CeDRBgSGOKQptbQUZpoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="237863926"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.18])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:28 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v2 2/6] drm/i915/display: remove the usage of dev_priv
Date: Fri, 20 Feb 2026 19:09:04 +0200
Message-ID: <20260220170908.201422-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220170908.201422-1-vinod.govindapillai@intel.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 3FC6C16998C
X-Rspamd-Action: no action

Remove the remaining usage of dev_priv in intel_fbdev_fb.c
and use i915 instead.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index c3202ba141c5..e5251ed15948 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -19,12 +19,12 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
-	struct drm_i915_private *dev_priv = to_i915(drm);
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct drm_i915_gem_object *obj;
 
 	obj = ERR_PTR(-ENODEV);
-	if (HAS_LMEM(dev_priv)) {
-		obj = i915_gem_object_create_lmem(dev_priv, size,
+	if (HAS_LMEM(i915)) {
+		obj = i915_gem_object_create_lmem(i915, size,
 						  I915_BO_ALLOC_CONTIGUOUS |
 						  I915_BO_ALLOC_USER);
 	} else {
@@ -35,10 +35,10 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 		 *
 		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
 		 */
-		if (!IS_METEORLAKE(dev_priv) && size * 2 < dev_priv->dsm.usable_size)
-			obj = i915_gem_object_create_stolen(dev_priv, size);
+		if (!IS_METEORLAKE(i915) && size * 2 < i915->dsm.usable_size)
+			obj = i915_gem_object_create_stolen(i915, size);
 		if (IS_ERR(obj))
-			obj = i915_gem_object_create_shmem(dev_priv, size);
+			obj = i915_gem_object_create_shmem(i915, size);
 	}
 
 	if (IS_ERR(obj)) {
-- 
2.43.0

