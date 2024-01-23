Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03E583795A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 01:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383B610E717;
	Tue, 23 Jan 2024 00:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4371F10F186
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 00:37:12 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id
 98e67ed59e1d1-29026523507so2861259a91.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 16:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1705970172; x=1706574972;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ci14tXfoLWF8H9KP6TbhVJPvd4jolXPuWJ+qfgosDMI=;
 b=a/5e/l9BsAGxzmAjvgSC6N2bFCkGFfHJOrT8+ibsKzslv1iCO2YwljyvrO4a8L65Jk
 Vyw9xsZSN2ccrFoNfORY9rN69rQS6uMjXdyxCxYRPSEEnfLY0CmeaDc64hdJvNN9iYcr
 6LiSa4lRWR6LasZRtdqbQFl2jWPjKWkli9e2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705970172; x=1706574972;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ci14tXfoLWF8H9KP6TbhVJPvd4jolXPuWJ+qfgosDMI=;
 b=eGzFUVymsPxjgFF1WFY9eFAMu3HlFG4ICsX54HBOGimmJWnk6NT31nbeRvi4fuQqk+
 wWqN2mF7iO/u5cbdmm1mg+rUgp8gUA//yDVV34JNy3yAEsYAiiYJWrKmRNV19vvCIp2u
 KiCjPiopTR4TPiSfv8SLrGJreywFFiAMOeRNPITzxCAaBphWPNl/6aObcV4B/1cXVmUo
 GsbVYnzMDn50/6FVi4YB6INdk27FRHDAId+/Ze83F/Zh4FAHTDOM0BD3QWJwXvRKf1Qh
 TUw9y6Q5+T+IONQKLJcotGVnYDWZtwB3XtwVxxru7JxVYc0rNGFlkQ90CPuTuzJ87T+P
 BLuA==
X-Gm-Message-State: AOJu0YyIshXFC3wFaY0e30LY/OIRAhRLCQM5aiLdS9NzOZ44sE0MtVcd
 V8QgzqqbUT2CDcysjxcvrDj2e+v/WrCZFxK8N1j61sUlPTHmAmFL725cbjmBWQ==
X-Google-Smtp-Source: AGHT+IHbtzvrk4iZs4Gm8Yr+QrGFjKqhpB03Ocxh4U4TLvusg96tLGgJ15R5wkOaXT55grFNSwGjcg==
X-Received: by 2002:a17:90a:62c7:b0:28f:ef2b:e0ed with SMTP id
 k7-20020a17090a62c700b0028fef2be0edmr2421887pjs.5.1705970171811; 
 Mon, 22 Jan 2024 16:36:11 -0800 (PST)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 sd14-20020a17090b514e00b0028d9fc97c29sm10365268pjb.14.2024.01.22.16.36.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jan 2024 16:36:08 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Subject: [PATCH 49/82] drm/i915: Refactor intentional wrap-around test
Date: Mon, 22 Jan 2024 16:27:24 -0800
Message-Id: <20240123002814.1396804-49-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240122235208.work.748-kees@kernel.org>
References: <20240122235208.work.748-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2342; i=keescook@chromium.org; 
 h=from:subject;
 bh=oiG+TsWcxpCmRd1+V7WC6Rzkst0Tmp3FWPUBfyk7tD0=; 
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBlrwgJM8j5gj77tQNAWNgLrGW9Rf152U5LzsLsJ
 LLY7jY3zQCJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZa8ICQAKCRCJcvTf3G3A
 JlTyD/9tInsgMQJNhzXLV4lkjEdwrZuxy10l8+2Dh6eeSAQbaL+DgNMujkfU/ewIc6vsc6zeZLn
 3ACm3O16LQN/0j5S0RYKIeVgjfXSZAYGJuwYmW3jBM3o8s9hNPi/SXXGp0toQyaZ73L3hcRB4AO
 2C01S7JnD87/2LBgN5VfyCDAUOfgYSqdE4ibXD+3+uyUSrbM8B+GimE4cH4ORUxm7YMLto9zpu+
 oxqd7qMyF6AyMavkv5ySlinqmiOVJ83f+YZ+oRowh0q5fTfSibio56QvEqpQZCtefn09GEz+IoC
 Tnb8E/IS3JJOLLdskrUiX3bNAd51XjStK5+qpc0F35indv1uLzV53YFhU5912hmIDcxwPmmtHTi
 OXiRWa2TWfKEgQKSVyJmGL9esA3rmPtERr7goeI8/nFMWEb4Qy+cpevxG1qft33h0Z7enHXDTBT
 JHJYXrmewrWmRrBpNFH54MHVPInL6YqLuU56FYnU3go2zz3tsoo8VutSaww+foZj6VUcti/X6fF
 PHZBFPajfhvY94xWQMXnk+iHmY7GJNwyVxOdnF8YsTZv23cXzWc9GXdAMMp6lw4By2hz73i3BNZ
 JSnAMxGSHmwnz/DNjaVSvjUSE5b/U82hIxtLLj6mKkDb5Osg8f47u2KWYVVd868CRAaVvfeVUVJ
 1IBIdYvVvwQ4wvw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
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
Cc: dri-devel@lists.freedesktop.org, Justin Stitt <justinstitt@google.com>,
 Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Bill Wendling <morbo@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In an effort to separate intentional arithmetic wrap-around from
unexpected wrap-around, we need to refactor places that depend on this
kind of math. One of the most common code patterns of this is:

	VAR + value < VAR

Notably, this is considered "undefined behavior" for signed and pointer
types, which the kernel works around by using the -fno-strict-overflow
option in the build[1] (which used to just be -fwrapv). Regardless, we
want to get the kernel source to the position where we can meaningfully
instrument arithmetic wrap-around conditions and catch them when they
are unexpected, regardless of whether they are signed[2], unsigned[3],
or pointer[4] types.

Refactor open-coded wrap-around addition test to use add_would_overflow().
This paves the way to enabling the wrap-around sanitizers in the future.

Link: https://git.kernel.org/linus/68df3755e383e6fecf2354a67b08f92f18536594 [1]
Link: https://github.com/KSPP/linux/issues/26 [2]
Link: https://github.com/KSPP/linux/issues/27 [3]
Link: https://github.com/KSPP/linux/issues/344 [4]
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/gpu/drm/i915/i915_vma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index d09aad34ba37..1a4f048a5df9 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1535,7 +1535,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		goto err_remove;
 
 	/* There should only be at most 2 active bindings (user, global) */
-	GEM_BUG_ON(bound + I915_VMA_PAGES_ACTIVE < bound);
+	GEM_BUG_ON(add_would_overflow(bound, I915_VMA_PAGES_ACTIVE));
 	atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
 	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 
-- 
2.34.1

