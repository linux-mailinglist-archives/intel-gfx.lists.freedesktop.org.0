Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6746ACFEB9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 11:04:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BD310EA08;
	Fri,  6 Jun 2025 09:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="pML5cLSh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D7210EA08
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jun 2025 09:04:55 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-43edecbfb94so21395315e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Jun 2025 02:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1749200694; x=1749805494; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=u22QGRwwJcexG344pLAuyEqJQtDbVkBJOvRPUpkYyrs=;
 b=pML5cLShrD5fhZe37+M+EXgKcdMxrmZ5NUZPtJcWqOK6rYYeqV8+pgscoBFXuheCEg
 ZHZJpYFyMYaty1SFDxZ0IpSmUBhTB+lxPeZPWPekShAKLqsbJmi12ge5YYnRrWN3r0l0
 7Z5C7Bqmodin4U0npQ2e/y9FgZMFHN2O3DkWCd42CG9BNf2bdG/VQdZG1AVWdSRExvyr
 C4g/kpwGOXasxAifGFvKk/A7DXg8wgmcLbBJ4Rn2YFjp7BeKlRfTjllsEtHVznrHr0uR
 jTpHqDce7qNmO7RRxZAOzBjCcx6dTq0caqLS7iEnKCW5DsEIelfc9Xks4MD5mToOD3y6
 Sd1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749200694; x=1749805494;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=u22QGRwwJcexG344pLAuyEqJQtDbVkBJOvRPUpkYyrs=;
 b=Y90kHNKH/788X2tSOL1z0CjThn9nLpr0NYYRSSRBGVght4mWfj/PjFSpzp6UDRdRg8
 IKjAufDTGYbbwUFEoJ11KF9q/EkyntAW4UYGlmMtEt6enCDqgmnPLwg1a4WhjWsCle8j
 uPDBW5AyEwXKBDhw1QG3M2E2Okm+DdcGj2d3PTK0OYNNMjoZLJpzN2lTvjz05HnykKZX
 LPJLXh63sTAzWDmg3Wfa1JopnVByJGZmtqKl8MyZUl8L4BaShllekCJ1XRQ/Vn83spNK
 4ZSyNTkArZCLDiSzzc51whNwlvMT8AUxG1LgtVP0ZZLQkxaidGzAHy9ZqJ6xZhK1ipfx
 hfuw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHVvk7oZL/IDti5BepBzzbRwiItOmO9fS5LUHhPz4uDfl4ptIXYfaaDYSRpI5LbsI1XeA6hJ3anLk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz+o4ajXgaRqIkYEEwkD2rCOCUOH77Dld+T8/4cptwtKB0A0F04
 nelpHfMMKEg7F6uCFueAWzVBnYcXySdh7ommZDSaYk3zmRnEh4lIMvg29mzbN3/bQ3c=
X-Gm-Gg: ASbGncuK6czJGo2maIMAlvoRsgChKvli5v+ujbovc6zIfwVpJYbcx23m0mIOyNYyWUE
 25fvpnMG83/FZBCqZasF5Db3N5RkMMZA3h/KulxcuWasSWpgM3cmZjR1NROfNS2uuc1C9TcEQ42
 wswSi9HcKNivDN47vXu+vdzF2LKula12TeRVz4pAeZ9v3isCXXRsvqLEnX24cvRSc6yI8agiJ6W
 ++ArQ4EODOE//N0DnZLkQtGEUE14g7Fzok42jp2xd7bZsM1KLhxy0lNGuFhkqgn/OdJVeJa7wtI
 wE49h++8Z7c/RqPwzsz8bimO4MbI7jnKgaf195BI/vIZ5HgeACHv5aZu
X-Google-Smtp-Source: AGHT+IGH8f3CnE94XpqqdfYVCG9k/7hxNJbSdjv+c/qZQ3TVj4IPHFuU+kXHjf6bXNo01qdvKdGN4w==
X-Received: by 2002:a05:600c:871a:b0:442:cab1:e092 with SMTP id
 5b1f17b1804b1-4520135f5cemr25871865e9.11.1749200693818; 
 Fri, 06 Jun 2025 02:04:53 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45203e6e424sm17461325e9.0.2025.06.06.02.04.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Jun 2025 02:04:53 -0700 (PDT)
Date: Fri, 6 Jun 2025 12:04:49 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Frederic Weisbecker <frederic@kernel.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: [PATCH] drm/i915/selftests: Fix error pointer vs NULL in
 __mock_request_alloc()
Message-ID: <aEKvMfJ63V7i-6xU@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
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

The __mock_request_alloc() implements the smoketest->request_alloc()
function pointer.  It's called from __igt_breadcrumbs_smoketest().
It's supposed to return error pointers, and returning NULL will lead to
a NULL pointer dereference.

Fixes: 52c0fdb25c7c ("drm/i915: Replace global breadcrumbs with per-context interrupt tracking")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 88870844b5bd..e349244a5fba 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -290,7 +290,12 @@ struct smoketest {
 static struct i915_request *
 __mock_request_alloc(struct intel_context *ce)
 {
-	return mock_request(ce, 0);
+	struct i915_request *rq;
+
+	rq = mock_request(ce, 0);
+	if (!rq)
+		return ERR_PTR(-ENOMEM);
+	return rq;
 }
 
 static struct i915_request *
-- 
2.47.2

