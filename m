Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7575B19E116
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 00:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC30E6ECBE;
	Fri,  3 Apr 2020 22:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936706ECBE
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 22:31:18 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id m17so10326284wrw.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 15:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gLSuh6EO1GzCkk06dek1V3HlZUbR1MfQSKT+7Ct94+A=;
 b=goDZ6hV+fSgP22ZeB6JYjCk9EAK+3F4vpu1Ghen5aHuUq/2TU6HcqET26u3ecwqNYS
 +6E01sWbLFJMBwSeUU3s4ljcYJ8tnSQqAImZJ+Tau8RHn0LyYLXtdRY57XW7v6rjUMqq
 YaWjkW5Pa+y8g2Q5zZAqcM40IP+Rho3fzbClk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gLSuh6EO1GzCkk06dek1V3HlZUbR1MfQSKT+7Ct94+A=;
 b=Ba9o5TXV6pWvWNojcAAs7byjQsYmwDj9MT2LeZ7lR3/5z3cAq0v+Afk4RV7RHt9HD+
 pkXbAb0vU5YkzmQ9/A8XYhU8whuKpNID1CZxUCzEVUr/rwbO43GmfSEqO9WjkowWnqDd
 4OrwGFwcS5RNZHz5kNN540b1071p7MzCYlYZj2TWrHGQrQ5szkJOncoL8HXW+5Zwrq42
 DM/P7kF4ayt3h/DqwPPO2g3iUzAIxuF98w26M5cG1zAe89WF42wqApM4iwOL0cvJCI8l
 aHc4YISiDMBPbtMOKIdOchGF+yOCbRwBhiZK4gO15ag1jCWTuMK8A3p037391/xD8kSC
 xF8w==
X-Gm-Message-State: AGi0PuZO9JU7A0fkUaU4fSpxB9fmUgtU7vBocAGHfHU6TLwmbkecS1uR
 PXTBfb70971j8CFlWCCJo0v5TA==
X-Google-Smtp-Source: APiQypLrhqE3tlgsFpo/6o7IAUfkk7i77WoW5L/O31tTDbkr5jFc7y6S/gTz5EzvM/iRz9tGku9V9A==
X-Received: by 2002:adf:8b8e:: with SMTP id o14mr5629346wra.392.1585953077107; 
 Fri, 03 Apr 2020 15:31:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k84sm13274215wmk.2.2020.04.03.15.31.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 15:31:16 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Sat,  4 Apr 2020 00:31:11 +0200
Message-Id: <20200403223111.2729796-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-43-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-43-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Create mock_destroy_device
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just some prep work before we rework the lifetime handling, which
requires replacing all the drm_dev_put in selftests by something else.

v2: Don't go with a static inline, upsets the header tests and
separation.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c       | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c  | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c  | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c    | 2 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c           | 2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_evict.c       | 2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c         | 2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c         | 2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c             | 2 +-
 drivers/gpu/drm/i915/selftests/intel_memory_region.c  | 2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c      | 7 ++++++-
 drivers/gpu/drm/i915/selftests/mock_gem_device.h      | 2 ++
 13 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 2d0fd50c5312..d19bb011fc6b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1789,7 +1789,7 @@ int i915_gem_huge_page_mock_selftests(void)
 	i915_vm_put(&ppgtt->vm);
 
 out_unlock:
-	drm_dev_put(&dev_priv->drm);
+	mock_destroy_device(dev_priv);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index f4f933240b39..d9d96d23e37e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1986,7 +1986,7 @@ int i915_gem_context_mock_selftests(void)
 
 	err = i915_subtests(tests, i915);
 
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index 2a52b92586b9..0845ce1ae37c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -272,7 +272,7 @@ int i915_gem_dmabuf_mock_selftests(void)
 
 	err = i915_subtests(tests, i915);
 
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
index 2b6db6f799de..085644edebfc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
@@ -85,7 +85,7 @@ int i915_gem_object_mock_selftests(void)
 
 	err = i915_subtests(tests, i915);
 
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
index 34932871b3a5..2a9709eb5a42 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
@@ -73,6 +73,6 @@ int i915_gem_phys_mock_selftests(void)
 
 	err = i915_subtests(tests, i915);
 
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index c2578a0f2f14..1c0865227714 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -157,7 +157,7 @@ static int mock_hwsp_freelist(void *arg)
 		__mock_hwsp_record(&state, na, NULL);
 	kfree(state.history);
 err_put:
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 028baae9631f..f88473d396f4 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -536,7 +536,7 @@ int i915_gem_evict_mock_selftests(void)
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
 		err = i915_subtests(tests, &i915->gt);
 
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 5d2a02fcf595..035e4f77f06f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1714,7 +1714,7 @@ int i915_gem_gtt_mock_selftests(void)
 	mock_fini_ggtt(ggtt);
 	kfree(ggtt);
 out_put:
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 1dab0360f76a..6bc6a2fc83ab 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -521,7 +521,7 @@ int i915_request_mock_selftests(void)
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
 		err = i915_subtests(tests, i915);
 
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 58b5f40a07dd..7d51cc2da36f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -841,7 +841,7 @@ int i915_vma_mock_selftests(void)
 	mock_fini_ggtt(ggtt);
 	kfree(ggtt);
 out_put:
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 6e80d99048e4..5226767d5384 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -791,7 +791,7 @@ int intel_memory_region_mock_selftests(void)
 
 	intel_memory_region_put(mem);
 out_unref:
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 9b105b811f1f..41afc357f4d0 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -214,7 +214,12 @@ struct drm_i915_private *mock_gem_device(void)
 	intel_gt_driver_late_release(&i915->gt);
 	intel_memory_regions_driver_release(i915);
 	drm_mode_config_cleanup(&i915->drm);
-	drm_dev_put(&i915->drm);
+	mock_destroy_device(i915);
 
 	return NULL;
 }
+
+void mock_destroy_device(struct drm_i915_private *i915)
+{
+	drm_dev_put(&i915->drm);
+}
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.h b/drivers/gpu/drm/i915/selftests/mock_gem_device.h
index b5dc4e394555..953cfe4fab34 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.h
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.h
@@ -7,4 +7,6 @@ struct drm_i915_private;
 struct drm_i915_private *mock_gem_device(void);
 void mock_device_flush(struct drm_i915_private *i915);
 
+void mock_destroy_device(struct drm_i915_private *i915);
+
 #endif /* !__MOCK_GEM_DEVICE_H__ */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
