Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B0AB1B6BD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8839910E69D;
	Tue,  5 Aug 2025 14:40:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="bERw0rBi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8421C10E69D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:40:12 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id
 d2e1a72fcca58-76be6f0557aso4866520b3a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404812; x=1755009612;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=be9H7BAmwgKWxtsO/0lz/N3igsHs1l6lpc1rGFGYxic=;
 b=bERw0rBi3thl/B8JuS6lKSNPGCLL347DUMKLlPeuwHwDAhjZU30TzRVFnlEQ+iqp5n
 urnXpVCzTtanRdIrihew009cyo5q/+QthNYsCX4uRUEQlQAov2c76Wc20Mw4i75vh+yM
 sAuYju38aMLdPDysuaIiK+NtBZan/vEwvT+GE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404812; x=1755009612;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=be9H7BAmwgKWxtsO/0lz/N3igsHs1l6lpc1rGFGYxic=;
 b=fmv4mrBSuu+WtWfgSF3ipBpl1OYGbHdEcGZCIUG3lfGrzAUsytbiJAtMge1gpWiLUM
 yBFbYIsTzuwlZ2njTOxftrjbweLIeV+Fc9HAbvYRI1K6zG4/RQtNKZwu/19lQZaewxPU
 I3gXW9hJFVB43q/uvJyokzY9BByDiekmlp1cxoseoXMANH5NOuam+kPnnK/3TqeDQG2N
 oiQXMcN7lyIN/X20Q8lf1FcTqBL5OTlUT5RwXm1Fhh5mdSvs2wiAjwLCSZNGnMM0eJZy
 dSq23yTOQvrXJDTe8z1I42qDW7raFj4YDDWrhpikPL7+NXJEOh5EerCCYuVBJQjXQFMI
 yyyQ==
X-Gm-Message-State: AOJu0Yx89xwRVLK0rRbTsaKSMqrexGMJcYoV7+HGPH1XvRBCxxp8iSc+
 VVRKh4kRhGRBTVFs37a1Cj5GX3oOkjgkWefhG2RueFFFxJ4fW168hgzZbWlFzo6TdOI=
X-Gm-Gg: ASbGnct9OGabgK/ZRJlWoYH1ILDtSACRq1+AslttC0OrI3+y7MIg4a/ssYI8beMX8gq
 W9d0fAgIbz7Ok7Q7xp6c7GMIXK4xKBaE2Qt7KL4QXbxtyV+2noLZ7hwubr/S7ne4Of3X0gUbBfz
 CAessuSbr5Xeyz5bdx3uyaKvI+BkT+YtFGxpq1kEYh5LlduVF2xbekuxmAa8+fMYvNaogPdC8aX
 M1YDyULSdYp4zNDEUNzi0Y7tTfurBuZqmewr3LTI6RdcjXzTas+bJBI9dcGblhN6Y8L/nIZlR6H
 uIdk5JVIpXZ9VfrWpHUR8AOnDBQysjFn9EdKESL5RDOXqpPmLTu7svSnO0qiHfr0WJ1MARCpF7w
 t+VqQiSVyLl6ZY8ZmwVFoC/XRTmh9rfKB
X-Google-Smtp-Source: AGHT+IEc2nDf5Gq17jLbGP+vzoGVon+Sbcq+3L7kBhx1EoT190gqUli69gs6Vs3d2LIftq7xidqnwQ==
X-Received: by 2002:a05:6a00:9287:b0:748:3385:a4a with SMTP id
 d2e1a72fcca58-76bec4f6a62mr17982850b3a.23.1754404811985; 
 Tue, 05 Aug 2025 07:40:11 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.40.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:40:11 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 7/9] drm/i915: Clean-up outdated struct_mutex comments
Date: Tue,  5 Aug 2025 11:39:02 -0300
Message-ID: <20250805143908.32343-8-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
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

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch updates various comments in the i915 codebase to
either remove or clarify references to struct_mutex, in order to
prevent future misunderstandings.

* i915_drv.h: Removed the statement that stolen_lock is the inner lock
  when overlaps with struct_mutex, since struct_mutex is no longer used
  in the driver.
* i915_gem.c: Removed parentheses suggesting usage of struct_mutex, which
  which is no longer used.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 +--
 drivers/gpu/drm/i915/i915_gem.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0384dae6fa97..2135ced0d93d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -116,8 +116,7 @@ struct i915_gem_mm {
 	struct intel_memory_region *stolen_region;
 	/** Memory allocator for GTT stolen memory */
 	struct drm_mm stolen;
-	/** Protects the usage of the GTT stolen memory allocator. This is
-	 * always the inner lock when overlapping with struct_mutex. */
+	/** Protects the usage of the GTT stolen memory allocator */
 	struct mutex stolen_lock;
 
 	/* Protects bound_list/unbound_list and #drm_i915_gem_object.mm.link */
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 8c8d43451f35..e14a0c3db999 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -847,8 +847,7 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	/*
 	 * Only called during RPM suspend. All users of the userfault_list
 	 * must be holding an RPM wakeref to ensure that this can not
-	 * run concurrently with themselves (and use the struct_mutex for
-	 * protection between themselves).
+	 * run concurrently with themselves.
 	 */
 
 	list_for_each_entry_safe(obj, on,
-- 
2.50.1

