Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9387609C6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 07:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF0A10E345;
	Tue, 25 Jul 2023 05:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D086710E2D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 05:51:54 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-3fbc63c2e84so51183505e9.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 22:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1690264313; x=1690869113;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LDa0fqzt30Ptcdn+Rp2moDt3uwTqaLbOBTSNBvQHsow=;
 b=Fm732xFUENH32uKlXGBO66pTUcan0hi8UvbXIOsmsajrmKgF65+VKuAsgwl0h2rEvm
 8bVGJCXxJ7Lo3CDTY397Y4mxix0VJtW/pkEXHkkLKO800NxhaPqfFFKex6vpdJLCOa4w
 CmI8aGs1OSFpz1ZKdyfS0I94dx6bSwxKd8BBKpUZIt+arN+GsWHCduZZv9YOaAYpEwDJ
 Kpqga4FAeLkxMrOnhuZRX4J7HcS3KeKVchXAMmblYLn9CvHnXCAxAdBbWFocNGUcqeMO
 Tu3SmXJtzR2hdcpIZzcJs/EIeI/+pl0EtvFzM5PA5rL69dp57n8daVKEcMuVDnfOpImi
 zo/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690264313; x=1690869113;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LDa0fqzt30Ptcdn+Rp2moDt3uwTqaLbOBTSNBvQHsow=;
 b=L/e+mou50euhMly/Dr8nCjo7rpEhUC1Wf3rJjtuXnQuxeJ8P+jBGtHdQX23P1TsrqE
 W3DQ3U3wCmPh50K1/CU99DJeBrDdDrXZu09HD431oWnVnWoKSHFJyulFvfqIT19vWZdc
 0qiw5SBrfgJUcGlFzZCbPboaJ8HA1s8Iz+q2aopDkVicB6Ad1WRmcziVNWaBAS+VqkZU
 JSdi4k6tgAsx2fvxvPkxJm2PILWuij1YAm2QbGFEAJ/a7y4JbDHGFSquBgTIeGXGpyiX
 cDeenMyNWvIuw6W9nr3ZkCbAxeFmmBg8O6KTFvsaK68UiMXriJFnsQ35BvaM1mE1DIOH
 0gJA==
X-Gm-Message-State: ABy/qLbPmvL7Gk/DX6Tpzhi2O/AIGe8krwvuIdmZWP+nwHruAAdKwBi2
 4hh3TRulWHVjlu+iiUXkbJ5nFg==
X-Google-Smtp-Source: APBJJlFxsS3y+cMdX48jiFbTMmksWQoLUG07CWaL93WGXpO5sZmPQJoOQhas8KWkVrn1RtL/72a08g==
X-Received: by 2002:a05:600c:152:b0:3fb:e200:b2b3 with SMTP id
 w18-20020a05600c015200b003fbe200b2b3mr9548144wmm.37.1690264313064; 
 Mon, 24 Jul 2023 22:51:53 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 w9-20020adfd4c9000000b0031423a8f4f7sm15243623wrk.56.2023.07.24.22.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jul 2023 22:51:52 -0700 (PDT)
Date: Tue, 25 Jul 2023 08:51:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Su Hui <suhui@nfschina.com>
Message-ID: <5d096bcf-c394-4dad-b307-3d7e33ab6e6f@kadam.mountain>
References: <ZL62X3/CnsJcWWU4@ashyti-mobl2.lan>
 <352f7c10-3592-4a18-abdc-ab554a992d10@nfschina.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <352f7c10-3592-4a18-abdc-ab554a992d10@nfschina.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tv: avoid possible division by
 zero
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
Cc: mripard@kernel.org, kernel-janitors@vger.kernel.org, llvm@lists.linux.dev,
 daniel@ffwll.ch, trix@redhat.com, intel-gfx@lists.freedesktop.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, nathan@kernel.org,
 andrzej.hajda@intel.com, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The reason why the first five attempts had bugs is because we are
trying to write it in the most complicated way possible, shifting by
logical not what?

regards,
dan carpenter

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 36b479b46b60..6997b6cb1df2 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -988,7 +988,13 @@ intel_tv_mode_to_mode(struct drm_display_mode *mode,
 		      const struct tv_mode *tv_mode,
 		      int clock)
 {
-	mode->clock = clock / (tv_mode->oversample >> !tv_mode->progressive);
+	int div = tv_mode->oversample;
+
+	if (!tv_mode->progressive)
+		div >>= 1;
+	if (div == 0)
+		div = 1;
+	mode->clock = clock / div;
 
 	/*
 	 * tv_mode horizontal timings:
@@ -1135,6 +1141,8 @@ intel_tv_get_config(struct intel_encoder *encoder,
 		break;
 	default:
 		tv_mode.oversample = 1;
+		WARN_ON_ONCE(!tv_mode.progressive);
+		tv_mode.progressive = true;
 		break;
 	}
 

