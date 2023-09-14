Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8D67A497E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 14:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9054710E0A6;
	Mon, 18 Sep 2023 12:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A241410E58A
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 21:14:10 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-59b50b45481so18476007b3.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 14:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1694726050; x=1695330850;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Utwbn05dq1P3cRtHOia0ZZtBcmsSMx5ruKCs/P2Bvow=;
 b=VyyolRZPJoj7ga9Qoj5b38+H0nIqcltISGMYPAxZ5WthEHeXDSJCWveUY8r8KegHJh
 oaqrQH7YhpnPmxeA7jIb0hS9VTWzzTBVJ4oV4KPdD89sMVg6wnE5RUJ5364d7A3sBYcE
 1NxSo1bIMmvWl6iUJzAhDXM5BeaT43FBeovgsH2YqVWGHMEN5huB/Cr1TDqmccHV9mw2
 uWId/ODcfsJzS/QCTQqt66iniiWtObfX1RdX35B3VUbItYofGwDdr0GLUWoCv+Oh73DG
 HUMpVA8GfY2KQB/IOD7tdPeNE6WMpYeTIxE1WBCN+YaznAqNrL+s3drRI9ilboeqHBIU
 1OMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694726050; x=1695330850;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Utwbn05dq1P3cRtHOia0ZZtBcmsSMx5ruKCs/P2Bvow=;
 b=v8tkIHRituXPbAn1Vst5KSomzwrYOvoP330x/GeMMLswdkNb1Cp7H3MCPzk+FCbJ/g
 SPIUaItMjTt36IwTWcrnyLzENN3TILC57k86jPqLiO1yMqeTtpncfkbVMA/qEMC9suRo
 zVCNG+Q4d+qlgGIA16aizZKPgW2Hv/JoLPXzvIgItlCJhvgQtn5fXnxRK1oUMU0Z5JbT
 Wnv7tOp40v0/hvA0WZmTzXJxHbW6m8xWF/6fPGVG/ZLjpOgKWfLfX981oujaX7fAz1I6
 mFQaXz5Ze9GtppuamnTwyygJcr7Ki+obMvFADRRhiw2UU6h9wJUNWlGds9lr0Po2xT3G
 HYfA==
X-Gm-Message-State: AOJu0Yx9iMFcV6/lA06gP5qam3fsdy6ZOSU6X3Da/HWqwNGa9YEyOeu5
 kMfl9Etm8S18QDa+9hpv8pcZRPH3yGyvOA3TFA==
X-Google-Smtp-Source: AGHT+IER36kioS8OEQ6mW1MX0UaEyRGxkscXFet8xuTfWHv4C/xW3RLVWiv7TxQnUUbCzU6IzHZhFSDlYovg3BK4jA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:385:0:b0:d81:bb31:d2fa with SMTP
 id 127-20020a250385000000b00d81bb31d2famr27447ybd.3.1694726049875; Thu, 14
 Sep 2023 14:14:09 -0700 (PDT)
Date: Thu, 14 Sep 2023 21:14:07 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ93A2UC/x2NywrCMBAAf6Xk7EISFRp/RURku42L5sFuLJXSf
 zd4m7nMbEZJmNRchs0ILaxcchd3GAw+HzkS8NTdeOuPNrgTaJOM9QuT8EKiEOuncwIO7gyREii
 950baFFLB1x1LbrQ2QAijxZEQe8Wb3q9CM6//9/W27z+CzKY7iwAAAA==
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694726048; l=1748;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=rUGaAKYDAI4tRkXj4vLoGXXH5bgLIpzt3gFa14KFRqo=;
 b=UKJjqLcZ98/YSLUUQU9h/fX9EPUL6MGCgnZQv0LIXvqtcWCkalUmCEO2+q3xYXDVzZmuDBhh3
 5Vr6lYASBMSBjn/LjbYtIm2jODAgQdE0C1Pnma6HaMChyGag60U+ITo
X-Mailer: b4 0.12.3
Message-ID: <20230914-strncpy-drivers-gpu-drm-i915-gem-selftests-mock_context-c-v1-1-c3f92df942e0@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Mon, 18 Sep 2023 12:24:43 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: refactor deprecated strncpy
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
Cc: intel-gfx@lists.freedesktop.org, Justin Stitt <justinstitt@google.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-hardening@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

`strncpy` is deprecated for use on NUL-terminated destination strings [1].

We should prefer more robust and less ambiguous string interfaces.

A suitable replacement is `strscpy` [2] due to the fact that it guarantees
NUL-termination on the destination buffer without unnecessarily NUL-padding.

`ctx` is zero allocated and as such strncpy's NUL-padding behavior was
strictly a performance hit which should now be resolved. It should be
noted, however, that performance is not critical in these selftests,
especially by these margins.

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
 drivers/gpu/drm/i915/gem/selftests/mock_context.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 8ac6726ec16b..025b9c773b93 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -36,7 +36,7 @@ mock_context(struct drm_i915_private *i915,
 	if (name) {
 		struct i915_ppgtt *ppgtt;
 
-		strncpy(ctx->name, name, sizeof(ctx->name) - 1);
+		strscpy(ctx->name, name, sizeof(ctx->name) - 1);
 
 		ppgtt = mock_ppgtt(i915, name);
 		if (!ppgtt)

---
base-commit: 3669558bdf354cd352be955ef2764cde6a9bf5ec
change-id: 20230914-strncpy-drivers-gpu-drm-i915-gem-selftests-mock_context-c-980c8ecc9142

Best regards,
--
Justin Stitt <justinstitt@google.com>

