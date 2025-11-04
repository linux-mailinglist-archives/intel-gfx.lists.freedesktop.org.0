Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D30C3064C
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 11:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA6710E59D;
	Tue,  4 Nov 2025 10:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="dvS66ejU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5616E10E59B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 10:00:49 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id
 5b1f17b1804b1-475dae5d473so3828045e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Nov 2025 02:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762250447; x=1762855247; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+YWljBZFP2887OuvpstRsY0qgr/ICFMYNoEOshswZBI=;
 b=dvS66ejUTrAauudPCZzXsHeWGrJGAnStaV5osChblruXpE2sUWJ6rC6hXh7MULzoLS
 5kLGJaq+EfOiTnXqjScpEEddURrhB24fS+LxN8a6tG6XNxFpX7segYzGLOwjR6p+PYtG
 D75SLOoxvU/MdxsNrUpqDa13TyD0uH0i0imv72mOwwu1EQOvw2BPT+9NBlZXvkyzgUp0
 o4njN0zeyFBf2+TMh1cviaiV1IwyfJFBC/ruCmSLXfeS6MSQR7Db01/8ZU9EN7gM5SVh
 Mp/z2b+eWORgh+WeLd03JANsjQ4bar+DpzNCpxiOYbD4tiuTFc81x2PnGxwZLNXeOvV9
 WNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762250447; x=1762855247;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+YWljBZFP2887OuvpstRsY0qgr/ICFMYNoEOshswZBI=;
 b=eCAeowMHHA59qHaRr8R/qjlFfbNwlHo/nBJvFx+N7h8ZPLbt9RD9TtfSEo65Kr9j9y
 8PYcdvVzws4J3cOUrT74+jOO8yAqlX4QSb/jg+fX+6AwJBDzz24U42APf51vKXxyCJwf
 tE0ThuLcBTYNzj2ghpBp5/iTF2VbmnJLaqOMpJzmZWDV/GcmNZVMiD8Bu+IGjv/8RjwZ
 z1Rjhw1oE0hTNjXu1C22VHJ/mg6TEB1XGVWnJ4VmoQRYJJYMOZR4Nyp2yntgDVtZ5hWm
 lVnpsumR6SXyW79FSjIGFLSBxyHt8JIJGNx2itbS4c9aulwOSBrMgaFKLbJZWl+b4SiW
 D0MA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQgqVkgl5eh6LEEhqZzJANBnVFGjXXp11QJaVnRDQkeYjiqRoEEf5cn998PmdD4ZQMYDocHYletbc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwH1SWEcgpigLAB8I1miRdyA0ihgpAj8A6jtPie7UrMEDyu82MR
 cemHo01HNon/xcvjVnKhArQ1eFkcsawZJfHa+w0lxZkHcszNozkRUswdjVc9p02k4x0=
X-Gm-Gg: ASbGncue1oQ3vnGPbhumbNaAldw7CAizI2gFdzOKtwNOcRWZPTLy8QQCe7JaW8KLXGJ
 okJSYYYdeBokZbutcwlQOmuIp0UPsp3lx4TgBJhX1ehDEUUcKukloT5V8xUSmQaWt8RrRxlYvpv
 2hH903OQ5FdxU2pWglpQg5VyYYUT25cNh/p+FpgOIRfErdxUe+ohWmqhQ9mlZ1OcrkPBJF/Mt32
 e4QOv5VfggfV5ZP0fc02dzd9XRorQaYkxDkBGWL6mL9v4SGmGTidQN28RQTqPB/2u2Xu7L9QwN2
 G4Zn/83VTq8HjaxSEuq+3MhvTgRJgxNo7wSMCqaUDZQD2LFdDEzuB1fm/lK42ijuLpUqaG+pstH
 A5oCcUYdDkoC74F2sXqA65X/Jc9XaIIodsAUTxDVYwbeR9o+kMi7uQENpAz8NBYcKQ+RpWR0nto
 G+fa5EgBJTOb0pftqI1i9I57E4
X-Google-Smtp-Source: AGHT+IGvS7J2hj1U1MzFKWpFjl4ALAZBw0xlOFIDItGj9fOM4XvJHZNMdTDM/EPubX5EUajXp8ZbNQ==
X-Received: by 2002:a05:600c:8b66:b0:45d:f83b:96aa with SMTP id
 5b1f17b1804b1-477307c1f31mr164394635e9.7.1762250447236; 
 Tue, 04 Nov 2025 02:00:47 -0800 (PST)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47755942772sm14325865e9.5.2025.11.04.02.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Nov 2025 02:00:46 -0800 (PST)
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
Subject: [PATCH v3 2/3] drm/i915: replace use of system_wq with
 system_percpu_wq in the documentation
Date: Tue,  4 Nov 2025 11:00:31 +0100
Message-ID: <20251104100032.61525-3-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251104100032.61525-1-marco.crivellari@suse.com>
References: <20251104100032.61525-1-marco.crivellari@suse.com>
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

Currently if a user enqueue a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.

This lack of consistency cannot be addressed without refactoring the API.

system_wq should be the per-cpu workqueue, yet in this name nothing makes
that clear, so replace system_wq with system_percpu_wq.

This patch continues the effort to refactor worqueue APIs, which has
begun with the change introducing new workqueues:

commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")

The old wq (system_wq) will be kept for a few release cycles.

This change only update the documentation of drm/i915.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a28c3710c4d5..0f33cdc11736 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -140,7 +140,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	/*
 	 * The unordered i915 workqueue should be used for all work
 	 * scheduling that do not require running in order, which used
-	 * to be scheduled on the system_wq before moving to a driver
+	 * to be scheduled on the system_percpu_wq before moving to a driver
 	 * instance due deprecation of flush_scheduled_work().
 	 */
 	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", 0, 0);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6a768aad8edd..d9f73b9995cf 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -256,7 +256,7 @@ struct drm_i915_private {
 	 *
 	 * This workqueue should be used for all unordered work
 	 * scheduling within i915, which used to be scheduled on the
-	 * system_wq before moving to a driver instance due
+	 * system_percpu_wq before moving to a driver instance due
 	 * deprecation of flush_scheduled_work().
 	 */
 	struct workqueue_struct *unordered_wq;
-- 
2.51.1

