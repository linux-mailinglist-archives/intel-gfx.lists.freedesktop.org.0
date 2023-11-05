Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26137E1576
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Nov 2023 18:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A56110E125;
	Sun,  5 Nov 2023 17:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com
 [IPv6:2607:f8b0:4864:20::92c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A10D10E125
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Nov 2023 17:27:27 +0000 (UTC)
Received: by mail-ua1-x92c.google.com with SMTP id
 a1e0cc1a2514c-7ba7b361b22so1614873241.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 Nov 2023 09:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1699205246; x=1699810046;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=27FuzK5ZhNIAiarJZJb+WVFq6M3PPP0ewVP4DAogA48=;
 b=B/PwuwbeQpp1XV5GOYeZWfX6/TxVRpAOSuPbLfflSXhQmCmMbxAEgjT79j+gxdsr8q
 mV2lefZj2Em2I6KHBv4Vl+nPtEfwVRpT7orbVXBviu60NSzL1BHO4HXK74mBC4Mz0yty
 KnWNG98fKO9IsrfLXgqNHd1sQde/aJTNsNn4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699205246; x=1699810046;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=27FuzK5ZhNIAiarJZJb+WVFq6M3PPP0ewVP4DAogA48=;
 b=OO2z3HvCMXWYP7p4cUEm8hdCZdmF8qT+YSzwxEyafKutbzHurllvMJCeXKEYWKfiB1
 ggVofJWWnyM86hU0q8PiG5UCX9KVDCrm1KEW8kCabQ3CcNFwyc1ZB0Ct7Slziwg/xg8t
 BcKMUfqtiMBSzuc/Iy2dPqCRSC5d410HEI6cVJ0t0pnpRkJtgjI4PmwbqPzTb1NH2KPG
 HDvChaWaKlrKCRZanf/qCdVhxkPbPoLWVF7vRAJyW1jXRRpPqgYcH46FaVqf1N6n9wGl
 Y/5O3+YwgasnlaX/Gf9K4/TK7ZdfCi5XNq6AzogrtO3qVotkhSsxJERB8yEHAVDfnArT
 a1Fw==
X-Gm-Message-State: AOJu0Yx+vd3P0FlhrLgHjdckRuVr/EV6oYsKQcOktjUfuQoBUePjKqns
 FXXSY1DBmJfIuyctAyPeEO/+Cg==
X-Google-Smtp-Source: AGHT+IHnBSvxKGHMNSsayQ2PStwCHZkBQc8ZVPr8KEhVF5onVc3h55FT/zT95gdJePBz8TwPBbanXw==
X-Received: by 2002:a05:6102:1085:b0:45d:8660:b91 with SMTP id
 s5-20020a056102108500b0045d86600b91mr7395347vsr.9.1699205246307; 
 Sun, 05 Nov 2023 09:27:26 -0800 (PST)
Received: from pazz.c.googlers.com.com
 (129.177.85.34.bc.googleusercontent.com. [34.85.177.129])
 by smtp.gmail.com with ESMTPSA id
 h5-20020ac846c5000000b0041cbf113c28sm2635106qto.40.2023.11.05.09.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Nov 2023 09:27:25 -0800 (PST)
From: Paz Zcharya <pazz@chromium.org>
To: matthew.auld@intel.com,
	Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Date: Sun,  5 Nov 2023 17:27:03 +0000
Message-ID: <20231105172718.18673-1-pazz@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix phys_base to be relative
 not absolute
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
Cc: Daniel Vetter <daniel@ffwll.ch>, Subrata Banik <subratabanik@google.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <seanpaul@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Marcin Wojtas <mwojtas@chromium.org>,
 Drew Davenport <ddavenport@chromium.org>, David Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org, Paz Zcharya <pazz@chromium.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the value of variable `phys_base` to be the relative offset in
stolen memory, and not the absolute offset of the GSM.

Currently, the value of `phys_base` is set to "Surface Base Address,"
which in the case of Meter Lake is 0xfc00_0000. This causes the
function `i915_gem_object_create_region_at` to fail in line 128, when
it attempts to verify that the range does not overflow:

if (range_overflows(offset, size, resource_size(&mem->region)))
      return ERR_PTR(-EINVAL);

where:
  offset = 0xfc000000
  size = 0x8ca000
  mem->region.end + 1 = 0x4400000
  mem->region.start = 0x800000
  resource_size(&mem->region) = 0x3c00000

call stack:
  i915_gem_object_create_region_at
  initial_plane_vma
  intel_alloc_initial_plane_obj
  intel_find_initial_plane_obj
  intel_crtc_initial_plane_config

Looking at the flow coming next, we see that `phys_base` is only used
once, in function `_i915_gem_object_stolen_init`, in the context of
the offset *in* the stolen memory. Combining that with an
examinination of the history of the file seems to indicate the
current value set is invalid.

call stack (functions using `phys_base`)
  _i915_gem_object_stolen_init
  __i915_gem_object_create_region
  i915_gem_object_create_region_at
  initial_plane_vma
  intel_alloc_initial_plane_obj
  intel_find_initial_plane_obj
  intel_crtc_initial_plane_config

[drm:_i915_gem_object_stolen_init] creating preallocated stolen
object: stolen_offset=0x0000000000000000, size=0x00000000008ca000

Signed-off-by: Paz Zcharya <pazz@chromium.org>
---

 drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index a55c09cbd0e4..e696cb13756a 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -90,7 +90,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 			"Using phys_base=%pa, based on initial plane programming\n",
 			&phys_base);
 	} else {
-		phys_base = base;
+		phys_base = 0;
 		mem = i915->mm.stolen_region;
 	}
 
-- 
2.42.0.869.gea05f2083d-goog

