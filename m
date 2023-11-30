Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D00C7FF47E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 17:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A428E10E025;
	Thu, 30 Nov 2023 16:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D7F10E72D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 16:17:16 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id
 af79cd13be357-777754138bdso54332285a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 08:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1701361035; x=1701965835;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7ZVJygFoxlCvYJvp9UVcwgwa6qE6VPVWJwn+rUhq2G4=;
 b=fV1Ag23uKM6jcIK+RjYqHP2dEMAwWOGsRyIw/1d0mepFpHGsqUvOjQATsnzmVbTZp7
 hgkSh0OeBUdPbqS//pMsU8rSHBvRQOsfUQjxBvbDXKnq5hYxCm8YGXE/TyXs80z0vQYq
 j9HDnH5IVh45LHSfUIUsaqWxgS+JBM/vLzJqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701361035; x=1701965835;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7ZVJygFoxlCvYJvp9UVcwgwa6qE6VPVWJwn+rUhq2G4=;
 b=jJKZFK/URlIZIyY9dlr8iFbK6gwAlHAISl/Y3IdrQAIGY5JvBrl65REd4X+uszPxF7
 3QxSmQyQRkDpG4Kj7tCCl/oWp5CwG6IwiSJluOtSRGjGCJQWYR4VbRg4vHn94aWMDpvU
 QLrZIepD/0GiiyHSp8tix+roofQJ5dFV5qBEfctoNDddgVmniMmQ832pF3pIOS+0YhVn
 4pQSec9yDcL/jSk9FyNL46qV21PQryaHqkdjVDjCV3gRDXOieOTW/aj7N18BVfyFQ0zq
 DqED2Bg6k55yJF5sOw7ZkpVDhMKWT9ZfVrW7qfmUagU7iDKgccFJ7TRedqBEK6umt07F
 oyCA==
X-Gm-Message-State: AOJu0Yw9XwyYa+8NmBol62rfj8la1+w1DuoK2SFYfH0O1EGkgNdD8efj
 HSr/CILCxPNPwG36FeDhONQXBQ==
X-Google-Smtp-Source: AGHT+IErMrgaIDjOcHVAZtmeSk15ZaD/Q3M/cJlyYmDzrPUA/Zy/eZCr1Ui99i1KLeCN7mHizwa5jQ==
X-Received: by 2002:a05:620a:4883:b0:77d:7843:a06b with SMTP id
 ea3-20020a05620a488300b0077d7843a06bmr27795774qkb.4.1701361035350; 
 Thu, 30 Nov 2023 08:17:15 -0800 (PST)
Received: from pazz.c.googlers.com.com
 (193.132.150.34.bc.googleusercontent.com. [34.150.132.193])
 by smtp.gmail.com with ESMTPSA id
 y13-20020a05620a09cd00b0077731466526sm617093qky.70.2023.11.30.08.17.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Nov 2023 08:17:14 -0800 (PST)
From: Paz Zcharya <pazz@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Date: Thu, 30 Nov 2023 16:16:37 +0000
Message-ID: <20231130161651.1836047-1-pazz@chromium.org>
X-Mailer: git-send-email 2.43.0.rc1.413.gea7ed67945-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Check GGTT to determine
 phys_base
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
Cc: Subrata Banik <subratabanik@google.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Paz Zcharya <pazz@chromium.org>, matthew.auld@intel.com,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Drew Davenport <ddavenport@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@gmail.com>, Marcin Wojtas <mwojtas@chromium.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There was an assumption that for iGPU there should be a 1:1 mapping
of GGTT to physical address pointing to actual framebuffer.
This assumption is not valid anymore for MTL.
Fix that by checking GGTT to determine the phys address.

The following algorithm for phys_base should be valid for all platforms:
1. Find pte
2. if(IS_DGFX(i915) && pte & GEN12_GGTT_PTE_LM) mem =
i915->mm.regions[INTEL_REGION_LMEM_0] else mem = i915->mm.stolen_region
3. phys_base = (pte & I915_GTT_PAGE_MASK) - mem->region.start;

- On older platforms, stolen_region points to system memory, starting at 0
- on DG2, it uses lmem region which starts at 0 as well
- on MTL, stolen_region points to stolen-local which starts at 0x800000

Signed-off-by: Paz Zcharya <pazz@chromium.org>
---

 .../drm/i915/display/intel_plane_initial.c    | 45 +++++++++----------
 1 file changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index a55c09cbd0e4..c4bf02ea966c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -51,6 +51,8 @@ initial_plane_vma(struct drm_i915_private *i915,
 	struct intel_memory_region *mem;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
+	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
+	gen8_pte_t pte;
 	resource_size_t phys_base;
 	u32 base, size;
 	u64 pinctl;
@@ -59,44 +61,41 @@ initial_plane_vma(struct drm_i915_private *i915,
 		return NULL;
 
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
-	if (IS_DGFX(i915)) {
-		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
-		gen8_pte_t pte;
+	gte += base / I915_GTT_PAGE_SIZE;
 
-		gte += base / I915_GTT_PAGE_SIZE;
+	pte = ioread64(gte);
 
-		pte = ioread64(gte);
+	if (IS_DGFX(i915)) {
 		if (!(pte & GEN12_GGTT_PTE_LM)) {
 			drm_err(&i915->drm,
 				"Initial plane programming missing PTE_LM bit\n");
 			return NULL;
 		}
-
-		phys_base = pte & I915_GTT_PAGE_MASK;
 		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
-
-		/*
-		 * We don't currently expect this to ever be placed in the
-		 * stolen portion.
-		 */
-		if (phys_base >= resource_size(&mem->region)) {
-			drm_err(&i915->drm,
-				"Initial plane programming using invalid range, phys_base=%pa\n",
-				&phys_base);
-			return NULL;
-		}
-
-		drm_dbg(&i915->drm,
-			"Using phys_base=%pa, based on initial plane programming\n",
-			&phys_base);
 	} else {
-		phys_base = base;
 		mem = i915->mm.stolen_region;
 	}
 
+	phys_base = (pte & I915_GTT_PAGE_MASK) - mem->region.start;
+
 	if (!mem)
 		return NULL;
 
+	/*
+	 * We don't currently expect this to ever be placed in the
+	 * stolen portion.
+	 */
+	if (phys_base >= resource_size(&mem->region)) {
+		drm_err(&i915->drm,
+			"Initial plane programming using invalid range, phys_base=%pa\n",
+			&phys_base);
+		return NULL;
+	}
+
+	drm_dbg(&i915->drm,
+		"Using phys_base=%pa, based on initial plane programming\n",
+		&phys_base);
+
 	size = round_up(plane_config->base + plane_config->size,
 			mem->min_page_size);
 	size -= base;
-- 
2.43.0.rc1.413.gea7ed67945-goog

