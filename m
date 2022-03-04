Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BF54CDF80
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 22:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B7A10F4D6;
	Fri,  4 Mar 2022 21:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA5461138C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 21:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646427848;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=aB6Kk4CiP7ma9Bi5vpnU1x/1xVJ2+zGmFV9PkjhVvyE=;
 b=gGcddDWLc8a3OrCHm9HObJXk1v3kt3IX2c5ir/3p8AvIaoz2iejSBvAUVF4Au5bfJJJ2jg
 Z3MVaP7i/h2RDT2WV4D13XWZPPHSzIY6l7vuQYFLtGa13Wen5Lje32DZ1TGEW2KN7dq3FZ
 ViqM5tWX+6vq2chgkujpx5cyv3rZQYc=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-542-xSlIS0k8NDGxlNdPifyjUQ-1; Fri, 04 Mar 2022 16:04:06 -0500
X-MC-Unique: xSlIS0k8NDGxlNdPifyjUQ-1
Received: by mail-qv1-f71.google.com with SMTP id
 p12-20020a0c9a0c000000b0043299cbbd36so7891320qvd.16
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Mar 2022 13:04:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aB6Kk4CiP7ma9Bi5vpnU1x/1xVJ2+zGmFV9PkjhVvyE=;
 b=Cf17o1m9DLtevC9K0ULEwS9Rw0pEpJO5eCtgbvGAQNXezCFAXfJJc6wbWm0Bsi+Ngc
 qF8xTyILuwG1lbcxc+4FATo+123IkhKjfTWJ2zRcdWi53TfH2plp8NePeI8Ja6VHYH/h
 BSLg+YpL30/iAGgTVV/AS+Bl29hGx+PnQJ8re0Sh4um8dsf/V/gWzCOQQ9cipr+1Bz5i
 Au5UHZlH2LGjIKOh/m6CbxGVGkyZCfh3xBm3zsQgIDM+Tu/fIX62jtMrA61jyJEDy/uc
 n2Zm3kL7My5pJqKXt3jSv9PSJ78clIuWM8t/7XDdcpI2f8gez0XWGgcJZ4Wmkcbn3dCx
 VYdA==
X-Gm-Message-State: AOAM531qox06blif93Y6N/O6TF+byUzA4rcZKt+02hqdKwLe9eMyHhdu
 sD8WWeRPzG7Y5NeWA9I8jnM/JhtFbH/qOTO1LLVm29y3RfLVy1Oq9lnrG28EU5TCRiz8Ajh0MHW
 pUqAGdjFuxI/9YqX7/MM62cSlsr5m
X-Received: by 2002:ac8:7d0d:0:b0:2e0:4e16:d3e3 with SMTP id
 g13-20020ac87d0d000000b002e04e16d3e3mr596087qtb.140.1646427845904; 
 Fri, 04 Mar 2022 13:04:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzl8+Ou2jNdvl2lw+bUe6/hKRdnkUMPqvw52WVW8CnKDZfAXFw9zzSyaFkAoX7LqTGuVUhhjg==
X-Received: by 2002:ac8:7d0d:0:b0:2e0:4e16:d3e3 with SMTP id
 g13-20020ac87d0d000000b002e04e16d3e3mr596051qtb.140.1646427845459; 
 Fri, 04 Mar 2022 13:04:05 -0800 (PST)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 d15-20020a05622a15cf00b002de711a190bsm4066708qty.71.2022.03.04.13.04.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Mar 2022 13:04:05 -0800 (PST)
From: trix@redhat.com
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch, nathan@kernel.org, ndesaulniers@google.com,
 ville.syrjala@linux.intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, airlied@redhat.com, imre.deak@intel.com
Date: Fri,  4 Mar 2022 13:03:55 -0800
Message-Id: <20220304210355.608898-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH] drm/i915: rework the error handling in
 *_dpll_params
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tom Rix <trix@redhat.com>

Clang static analysis reports this issue
intel_dpll.c:472:31: warning: The left operand of '-'
  is a garbage value [core.UndefinedBinaryOperatorResult]
  this_err = abs(clock.dot - target);
                 ~~~~~~~~~ ^

In a loop clock.dot is set on successful call to
i9xx_calc_dpll_params().  If the call fails, the later
*is_valid() will use the previous loop's clock.dot.

The *_dpll_params functions return an arithmetic statement
with the clock.dot as the variable.  Change the error handler
to set clock.dot to 0 and jump to the return statement.

Fixes: dccbea3b0704 ("drm/i915: calculate the port clock rate along with other PLL params")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 32 ++++++++++++++---------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 0ae37fdbf2a5b..ba7cada704288 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -309,11 +309,13 @@ int pnv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m2 + 2;
 	clock->p = clock->p1 * clock->p2;
-	if (WARN_ON(clock->n == 0 || clock->p == 0))
-		return 0;
+	if (WARN_ON(clock->n == 0 || clock->p == 0)) {
+		clock->dot = 0;
+		goto end;
+	}
 	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
 	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
-
+end:
 	return clock->dot;
 }
 
@@ -326,11 +328,13 @@ int i9xx_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = i9xx_dpll_compute_m(clock);
 	clock->p = clock->p1 * clock->p2;
-	if (WARN_ON(clock->n + 2 == 0 || clock->p == 0))
-		return 0;
+	if (WARN_ON(clock->n + 2 == 0 || clock->p == 0)) {
+		clock->dot = 0;
+		goto end;
+	}
 	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n + 2);
 	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
-
+end:
 	return clock->dot;
 }
 
@@ -338,11 +342,13 @@ int vlv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m1 * clock->m2;
 	clock->p = clock->p1 * clock->p2;
-	if (WARN_ON(clock->n == 0 || clock->p == 0))
-		return 0;
+	if (WARN_ON(clock->n == 0 || clock->p == 0)) {
+		clock->dot = 0;
+		goto end;
+	}
 	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
 	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
-
+end:
 	return clock->dot / 5;
 }
 
@@ -350,12 +356,14 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m1 * clock->m2;
 	clock->p = clock->p1 * clock->p2;
-	if (WARN_ON(clock->n == 0 || clock->p == 0))
-		return 0;
+	if (WARN_ON(clock->n == 0 || clock->p == 0)) {
+		clock->dot = 0;
+		goto end;
+	}
 	clock->vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m),
 					   clock->n << 22);
 	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
-
+end:
 	return clock->dot / 5;
 }
 
-- 
2.26.3

