Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 128B546369C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 15:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CAA6E082;
	Tue, 30 Nov 2021 14:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 382 seconds by postgrey-1.36 at gabe;
 Tue, 30 Nov 2021 14:23:23 UTC
Received: from mta-p8.oit.umn.edu (mta-p8.oit.umn.edu [134.84.196.208])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDC46E082
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 14:23:23 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 4J3PRc5Q51z9vCGw
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 14:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3CBlytb2hNQ6 for <intel-gfx@lists.freedesktop.org>;
 Tue, 30 Nov 2021 08:17:00 -0600 (CST)
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com
 [209.85.216.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 4J3PRc3KFhz9vCGP
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 08:17:00 -0600 (CST)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p8.oit.umn.edu 4J3PRc3KFhz9vCGP
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p8.oit.umn.edu 4J3PRc3KFhz9vCGP
Received: by mail-pj1-f72.google.com with SMTP id
 r23-20020a17090a941700b001a74be6cf80so6854481pjo.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 06:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Br9hM7P/V/R39racOZSbovY60IQqXaZlTn4ZHVtwfgE=;
 b=F/plmO+lDIBEUmhbzZT9f4kxQ1Xrqyir+jK2tT0U4wr8TJJ6EKuuTfxvk4jjv3vkJv
 BW3tZWfIWNTuRVA3ewqNODzHaWhICIFxNCqJDHWLTJrsExH1A1IYMkkREyn5kaFnallc
 KxPHQg6n+trmZGL5qLwkWqYF7ipwIdpXnXwE1g+XJw5cYoJ1fjTTOthppmJkR6e4Tm4F
 cmRiBb0rWHQR3yF/UIqg/+M99wJ1MpgaSfhRyq6QUvOYXYfNPgEVCZtb6sCTyA7wRFsO
 k4tcLiOLVewR714qjx69DdNvXujpyGDA8SBzDORGW/ojUgV9wJhkPtn//H4ChM8lHVHv
 S4Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Br9hM7P/V/R39racOZSbovY60IQqXaZlTn4ZHVtwfgE=;
 b=nW7hgYSn4llWPU5mCgXGmfs0KEer/xjq+AqTmxrlAYb5j8/K7+avEhs2antaAINx+k
 Zeoi63VnUPgHAxq/TwaJEzK0E2nQZB6qUFRuAkB5FfZoUXTmHgJ0nDAm5aZmVQm7YFeY
 1HfJdTwO7Ze/aT8daKwMnZPIuLcG0gJU+Bh0ZfrLKl47kKRsj4QbkMDS+1BfemgaeNaP
 0a3kwzxt+Gp418u+mBvpuJaJePcf6EfaSHISUj2lAkWOjFlOdrSjdRBiCO3GZh7F2hUh
 6UAtBwOmEeyGpcgjVx+SrctqEwi0QLhOOvDpdr3t0VGyIQRt0vCrLVSI6k7tNrcaUhCT
 mwnw==
X-Gm-Message-State: AOAM532RLh2tNE1WYSgkI9cBEzY34Q6GmThNG7u2ih4Ljhcp9Nrmeo8n
 RcDqc/LeXDo3wM3bSxXBRlLbThaMOnS0n2uT0lMSjWlF2rGgsbSjPDEqe5Qry//kmKTcM5BmAKn
 CMxmAreCxwUyfyyxsho3nH4VnsaxyHZ32
X-Received: by 2002:a65:4d03:: with SMTP id i3mr10181766pgt.623.1638281819755; 
 Tue, 30 Nov 2021 06:16:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwYhKO0APLVwerxxpbVWgXBtWNaBFn9ENpSead2gdy6fg/I7r3VA59NSxP8PMR0M6Q2gB5YBg==
X-Received: by 2002:a65:4d03:: with SMTP id i3mr10181744pgt.623.1638281819551; 
 Tue, 30 Nov 2021 06:16:59 -0800 (PST)
Received: from zqy787-GE5S.lan ([36.7.42.137])
 by smtp.gmail.com with ESMTPSA id q13sm21904082pfk.22.2021.11.30.06.16.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 06:16:59 -0800 (PST)
From: Zhou Qingyang <zhou1615@umn.edu>
To: zhou1615@umn.edu
Date: Tue, 30 Nov 2021 22:15:44 +0800
Message-Id: <20211130141545.153899-1-zhou1615@umn.edu>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 30 Nov 2021 14:25:49 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Fix a NULL pointer dereference in
 igt_request_rewind()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Zhihao Cheng <chengzhihao1@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In igt_request_rewind(), mock_context(i915, "A") is assigned to ctx[0]
and used in i915_gem_context_get_engine(). There is a dereference
of ctx[0] in i915_gem_context_get_engine(), which could lead to a NULL
pointer dereference on failure of mock_context(i915, "A") .

So as mock_context(i915, "B").

Although this bug is not serious for it belongs to testing code, it is
better to be fixed to avoid unexpected failure in testing.

Fix this bugs by adding checks about ctx[0] and ctx[1].

This bug was found by a static analyzer. The analysis employs
differential checking to identify inconsistent security operations
(e.g., checks or kfrees) between two code paths and confirms that the
inconsistent operations are not recovered in the current function or
the callers, so they constitute bugs.

Note that, as a bug found by static analysis, it can be a false
positive or hard to trigger. Multiple researchers have cross-reviewed
the bug.

Builds with CONFIG_DRM_I915_SELFTEST=y show no new warnings,
and our static analyzer no longer warns about this code.

Fixes: ca883c304f54 ("drm/i915/selftests: Pass intel_context to mock_request")
Signed-off-by: Zhou Qingyang <zhou1615@umn.edu>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index d67710d10615..d6fc7b892793 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -209,6 +209,10 @@ static int igt_request_rewind(void *arg)
 	int err = -EINVAL;
 
 	ctx[0] = mock_context(i915, "A");
+	if (!ctx[0]) {
+		err = -ENOMEM;
+		goto err_ctx_0;
+	}
 
 	ce = i915_gem_context_get_engine(ctx[0], RCS0);
 	GEM_BUG_ON(IS_ERR(ce));
@@ -223,6 +227,10 @@ static int igt_request_rewind(void *arg)
 	i915_request_add(request);
 
 	ctx[1] = mock_context(i915, "B");
+	if (!ctx[1]) {
+		err = -ENOMEM;
+		goto err_ctx_1;
+	}
 
 	ce = i915_gem_context_get_engine(ctx[1], RCS0);
 	GEM_BUG_ON(IS_ERR(ce));
@@ -261,9 +269,11 @@ static int igt_request_rewind(void *arg)
 	i915_request_put(vip);
 err_context_1:
 	mock_context_close(ctx[1]);
+err_ctx_1:
 	i915_request_put(request);
 err_context_0:
 	mock_context_close(ctx[0]);
+err_ctx_0:
 	mock_device_flush(i915);
 	return err;
 }
-- 
2.25.1

