Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4F1C2BC95
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D195610E3DB;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="UdR7bSxa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803C610EAFC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 10:09:41 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-475dbb524e4so12354035e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 03:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1761905380; x=1762510180; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uIEAHpZJgPenfQa0eR0eha1rgNHE8FkwlCwPAkqtADI=;
 b=UdR7bSxadN1D7NnOG/8atzU9iq5djtnBgXLH/tl/MD6I5kUzjXwNqoABdx40HfGOOK
 ag+ETuCf1YGFp6DwdBh4yOxfljV8PNLRzWSEBImGAJ1psu+2/kDuRRGs3HuhTHWH7iZg
 +/HncfDEx1winMW4d8Qd/f4LQAqe32vl2VMOa//hyYUoj5AX3k3LhIBNdsoR4aM8UDIQ
 n1CRaadA8KkzL8bPqvvX4tB59qER0aNCYuFJ3ctA/iZVKHxckk2xiTGHK3O46QJBA+nC
 92mWcaKKPc0Ssq0SqdMAfRgt3G4bISdsM52LcEXzyMRNHMrAZSkKOUXYLS6UamL1IRDC
 J5Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761905380; x=1762510180;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uIEAHpZJgPenfQa0eR0eha1rgNHE8FkwlCwPAkqtADI=;
 b=LXqslJhizGVNa73bXsuyx5pDuElsFpFYuD/UT5wFvTsWL39NjoSAsjoRs2dExQS8l7
 hgEHHG3Uiyz/PzzWvVPI5Vp9Iapy/mYKrvOXbWUmr1732v1/jSG5WaupRzxdCizer0F5
 ouOuZuzyO4teF+PlSYqf19QBsHAy4hNoWmHq7k/933X0ib5KKB8s4CqDqlPsJu2/HYh0
 rZAvNnYssI+gJh0Ry1jqEWaQTMRg3c4mqdfKc+P/CBBmIWxZVaW+cZQNDfnDs6lFejQ1
 glolIBbChC1fV1jkECj0NokpmIQy3s9QXOMnvOZMR4flXghgiR0z27qKEedcu4Fg+mZC
 rMFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKDW4zh09t7pZB0/sZTKvPEn0CFvqAkHFNNgIc/85tWOZmskmI0Q3dVmiZabZot8y3h1klCUoHE+o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwRTtaEQpooucp+n1TUqfnjcE4YUqAEmDULB2MgBJNKlY1t9Nti
 qdBNQ9o2d1Q/J/K5C2uBse6vodusBPcGgOO95RZtReVLjggaVxSEKzyzV0ps/EXod8Y=
X-Gm-Gg: ASbGncvoFDmJc5lEEmttevQXYnnlhmPibUNe1cesdN+m8Wo+/YlnTgubkK91p7mvoXh
 OsxZPWHA7VG0yPzS7dldiWmiTetctfbp6fFZMmFuSZwSRK8tBCP3JJKdUFEVkumsYfIgyzjiU5b
 4fReo8GCGsjStSRV3SMIHJIJXtleelJjwq5jkJoTMV1quQ60nUsIHsrnatxrxFGYUF/dyLrfN/U
 DpuAe1dpo1uuJAfh7MwUGs7jdDqxeyD82i3zwd0jXaJVQhPHnuaCdJ3DARmHgbrCUSNLuygRmbF
 Rc5ffmGFymf1CXm4+puuB7YnGxXFAC6KIPBV+L2u0QkwsygrPAj7liwyexfUDrgKSB3IVsZ9zxC
 V+kqJR6Kx5H3uJ2MkBiUl8d9Eg3QhV1nfzvnKe+5mdBPSvh54AB74cjnFnFY1o8yi2tjqrKO92i
 WPiRatT7AB1+qpygM25xhkEef7zYOTuoOfPLxNjoMbl7Ld1A==
X-Google-Smtp-Source: AGHT+IEuYSheTD0LAmCUTXMqTUnmXFPaQcuKHhOpSOYN7DCVbycYCPaNazgBhc5bsfGHuKVEiD6GEw==
X-Received: by 2002:a05:600c:4695:b0:471:1774:3003 with SMTP id
 5b1f17b1804b1-477308be7b3mr29933385e9.29.1761905379892; 
 Fri, 31 Oct 2025 03:09:39 -0700 (PDT)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429c13e1c9esm2839171f8f.22.2025.10.31.03.09.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Oct 2025 03:09:39 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Michal Hocko <mhocko@suse.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Subject: [PATCH 3/3] drm/i915: WQ_PERCPU added to alloc_workqueue users
Date: Fri, 31 Oct 2025 11:09:23 +0100
Message-ID: <20251031100923.85721-4-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031100923.85721-1-marco.crivellari@suse.com>
References: <20251031100923.85721-1-marco.crivellari@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Nov 2025 12:46:06 +0000
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

Currently if a user enqueue a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.
This lack of consistentcy cannot be addressed without refactoring the API.

alloc_workqueue() treats all queues as per-CPU by default, while unbound
workqueues must opt-in via WQ_UNBOUND.

This default is suboptimal: most workloads benefit from unbound queues,
allowing the scheduler to place worker threads where they’re needed and
reducing noise when CPUs are isolated.

This change adds a new WQ_PERCPU flag to explicitly request
alloc_workqueue() to be per-cpu when WQ_UNBOUND has not been specified.

With the introduction of the WQ_PERCPU flag (equivalent to !WQ_UNBOUND),
any alloc_workqueue() caller that doesn’t explicitly specify WQ_UNBOUND
must now use WQ_PERCPU.

Once migration is complete, WQ_UNBOUND can be removed and unbound will
become the implicit default.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++--
 drivers/gpu/drm/i915/i915_driver.c                  | 3 ++-
 drivers/gpu/drm/i915/selftests/i915_sw_fence.c      | 2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c    | 2 +-
 4 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index cf1c14412abe..e12f9126b155 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -257,13 +257,13 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 		goto cleanup_wq_modeset;
 	}
 
-	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI, 0);
+	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI | WQ_PERCPU, 0);
 	if (!display->wq.cleanup) {
 		ret = -ENOMEM;
 		goto cleanup_wq_flip;
 	}
 
-	display->wq.unordered = alloc_workqueue("display_unordered", 0, 0);
+	display->wq.unordered = alloc_workqueue("display_unordered", WQ_PERCPU, 0);
 	if (!display->wq.unordered) {
 		ret = -ENOMEM;
 		goto cleanup_wq_cleanup;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0f33cdc11736..380cb20a47c6 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -143,7 +143,8 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	 * to be scheduled on the system_percpu_wq before moving to a driver
 	 * instance due deprecation of flush_scheduled_work().
 	 */
-	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", 0, 0);
+	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", WQ_PERCPU,
+						 0);
 	if (dev_priv->unordered_wq == NULL)
 		goto out_free_wq;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
index 8f5ce71fa453..b81d65c77458 100644
--- a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
@@ -526,7 +526,7 @@ static int test_ipc(void *arg)
 	struct workqueue_struct *wq;
 	int ret = 0;
 
-	wq = alloc_workqueue("i1915-selftest", 0, 0);
+	wq = alloc_workqueue("i1915-selftest", WQ_PERCPU, 0);
 	if (wq == NULL)
 		return -ENOMEM;
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index fb8751bd5df0..684e6ca0f960 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -221,7 +221,7 @@ struct drm_i915_private *mock_gem_device(void)
 	if (!i915->wq)
 		goto err_drv;
 
-	i915->unordered_wq = alloc_workqueue("mock-unordered", 0, 0);
+	i915->unordered_wq = alloc_workqueue("mock-unordered", WQ_PERCPU, 0);
 	if (!i915->unordered_wq)
 		goto err_wq;
 
-- 
2.51.0

