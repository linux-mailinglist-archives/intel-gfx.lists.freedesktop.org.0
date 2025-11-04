Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB41C30654
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 11:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4C710E59F;
	Tue,  4 Nov 2025 10:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="UYXCNiyz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE4010E59F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 10:00:50 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-471191ac79dso59399215e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Nov 2025 02:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762250449; x=1762855249; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JlVwKwolM5sjAhAjoNFJjS/Et/bs8gMf2Li6ilbi0sk=;
 b=UYXCNiyzke6/K5HgG3jcj9xB1KQcMINwRYD3JFdn4Ofmf9Za40emzlC9FiRUyg6R+E
 E7BgFo1R6/QkUf72UJ4fVV3G6BLbpC68kwm59+S7IpWUxSyJnyUOqwp9KxoByiVk4PKH
 TVATlxptWgbsXrAjfjurlHXwsv/nFbn6gxY6x3YQBZxTRIX8tj7yAdCAVs1+ANFq6BJK
 VrYkFeKCyK5YbnOs5Fmhk1SovoULI+oUr3uKvxgyNgtsH40On6PmNV1yLVQ1n4ilpPi0
 b3EBUnDLYCRenI/ae5zM1OxoBzGyVGN4Jz3TGzQzoE5HD46z1mNgPZjG9wnjxihLc9FN
 /1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762250449; x=1762855249;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JlVwKwolM5sjAhAjoNFJjS/Et/bs8gMf2Li6ilbi0sk=;
 b=amhYE+apfOgwhImuBlTlC5uJfUodxeLDP8wpBe+vwt7+TGu8yJmNEG7XwN1SrziEar
 /24hAox1Se/RLU7rHF+pGWi14bN/n2pPd0xWmUkqEnX2EniKVxBq8RmsSUvMROQ78eZm
 VAO24YwVdvcGgMhx1A1n5R93LubuwAN49Xqw2/hTjuowdxTE7jmc7Kbhsd5KCP+UcLC4
 BqnkYSFGEnpriHz25Ilk4XU/mOAwOqlw4HfLcyMfnowvD1ScMhhGbk1N9QcptXZHlIs6
 lpNE1RsixkuhtH0bb8QnmuQ/X/IQwafIIpwHETuJEGK9//JJ61TKkOX8KAa4C8EMQhCl
 wNog==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIpaYqf7mmh9Zk3YX26QJSoiO0LqvEHp3SI8YLantbO0pSVxbw4WYeArekyIhEsXyuKXGOR+wVIfU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyFoiWc5v5GLZ6rUw+jXV9NANTS8zJKCEFXG2497ncbGIHFl9M9
 CqJGealjY6KWMesfe1u7HL7wZzBamcysUp9WAgnANe/OwZMmaLURFs/iHBKtj85WhiU=
X-Gm-Gg: ASbGncvLJ6dbevjyUHP53majXSx89alvVDC9fAlLuLnRaeCRlESPuvTehvDuUxM+tTv
 idaXepsRv0bIC3BiAjeE5GXO+t66xmbjWkpx3l63nt4ZXQKMSZPv2KOo+LJJ0HvwQTodrCl/FNG
 URuJt/Vl0Zhr/1uh2uc+dpV+Y85Fvvj6Cn4mGPUNETu7pRdN6ji2O4J1NcJ/kd0gLa8FGk4Ny5e
 Ojas4K6UglFJC0arzXfPag3IF4SktdY5ltlQIlQiaLZLHSQ2ujQy9q1C72r/EYp/rCRG/7n8MIM
 XtDTQ39wyehdCV4OMOGF+8Bvu7lHyuOPT5g/bz7dNTWT9MwegsuuoMKEk3VTKaUp1GuEER3vwcM
 5z1cjKU95+ZoRESqw1UyC5hJdrZZQwyAglPKgVtKN5RSWKgzmtGuJ/fwot4hKt5fiRYhzAqUCiq
 0QiY61MMV7hNai0BI6ttbuI9lp
X-Google-Smtp-Source: AGHT+IE35Zr7TnYBf7Tgb5joKNHpDdpqyjXIULZRst3eRHtFoQa+qKm5wqipI7KhNj5WLe8NJxZfFQ==
X-Received: by 2002:a05:600c:1f91:b0:471:13fa:1b84 with SMTP id
 5b1f17b1804b1-4773082e1e3mr138207635e9.12.1762250448895; 
 Tue, 04 Nov 2025 02:00:48 -0800 (PST)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47755942772sm14325865e9.5.2025.11.04.02.00.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Nov 2025 02:00:48 -0800 (PST)
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
 Simona Vetter <simona@ffwll.ch>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 3/3] drm/i915: add WQ_PERCPU to alloc_workqueue users
Date: Tue,  4 Nov 2025 11:00:32 +0100
Message-ID: <20251104100032.61525-4-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251104100032.61525-1-marco.crivellari@suse.com>
References: <20251104100032.61525-1-marco.crivellari@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch continues the effort to refactor worqueue APIs, which has
begun with the change introducing new workqueues:

commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")

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
2.51.1

