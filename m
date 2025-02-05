Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C063FA2887B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 11:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD4510E770;
	Wed,  5 Feb 2025 10:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="qQyFq5EQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339C010E770
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2025 10:49:42 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-436281c8a38so46623915e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Feb 2025 02:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1738752580; x=1739357380; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=94BD5iI+yWzM76aL9CNZROMdgLt+6AsjoeKjE7TI6QY=;
 b=qQyFq5EQgB+hZZloZs0VdVInOCl8hTEjyuMeJVT4/FlUaDUBMbV3muXvh5RiME5H9K
 pf8Nv3puQucMWtXsIt2CLjJKKPgEoSR0LFOmn1SkNF2YDdGt+4XxElL561zPmvfROGCu
 yNu6yfA24uC/C6jLMsQSiVJvmD9NTnk0+tZvFvEp2MJee7Nl72oY4ZPaS4SoniwVu9So
 QqYSYw4VGgFnlB0T7kp+kJp6DAHd7ztyLY2OasCZQ8eyoh+rFHUpbdwxllgcpPyfcfF3
 7UvtNQZ4HxvqNOWtl7WBqpkJvJcm5Ol83S7O2NWyUs334H/0kPQMVBx/LJiRY5b5+T7j
 dnvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738752580; x=1739357380;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=94BD5iI+yWzM76aL9CNZROMdgLt+6AsjoeKjE7TI6QY=;
 b=R/FBX/2R3OUL/k6m10JfzbEa7HpYA3eULc22LJmacF4C8ofZMJdsMrdsp9SCQ4ZzVm
 6H5ARhHRxIOqJBtKoiupjJWTqejUTSDWWQ7uRxuCfeZduK03iWk9dCCsaeROlODC1vdy
 D70JWUlVH3dGOJWZkivxHiYIS34KXBZEJ1q+YzywEel04rBGwHtyllWpNuwdMk3NQrqj
 kmB8xfEHHfPTbS/JRWWKPn8O19ht1/OeRlfaWjUeTxkuuOgt4jJgK3+wQ3KXW+Puty3E
 JUTz1stilVWeZ0+ST09HdjJNIzeo8HXoGNodHVLOPGdy5WhosCKP/zjjHyxQ0rsNxjy/
 zeAw==
X-Gm-Message-State: AOJu0Ywg38NfPoqzbuuABlr3yLU965yvfxwBofVznJCTcQAlYv1V0ZPy
 Odf+ux3KODH39ExJtdY8e2k2wPrM4FaNExDGYREPiX1AJGEOQpkSdPSBhH/pIuk=
X-Gm-Gg: ASbGnctvUloKmx1eKIUC6vRlu7zQxNn+F2Kp1VhfKwYSotNPAw3f2zSQyyv8HqAFbnw
 OIla2QTLFX5erkn4UQOv865/R5ztR8PXD9x6iu74l68mq9ltaLKHVNWDw1fKee5/mezXf0guL+f
 jRjc+34BI9dpyqb7wOHKC279Utc3UOp0Y+dIshZlQqQ0020CwW9XuLGpGMOP+9n3DymHU+yj2TS
 r7T7c3/Z3evkQyYxvjLRikwxxhLgy6koMaZM9dd54sO72hqK3k8YErXAt0KOT9ZIsHFh/tePLoQ
 zbpJPdk4QnB2MNwTAIxa
X-Google-Smtp-Source: AGHT+IFF2k60IjeyTH2kEiK1YFUiTtSBUfazPnEGnPzHX1XMt0v2IqhXTQePyo6//XkYSMCC1KB8RA==
X-Received: by 2002:a05:600c:3b93:b0:435:192:63ca with SMTP id
 5b1f17b1804b1-4390d590682mr13888985e9.21.1738752580561; 
 Wed, 05 Feb 2025 02:49:40 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-38c5c1cf896sm18944543f8f.94.2025.02.05.02.49.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2025 02:49:40 -0800 (PST)
Date: Wed, 5 Feb 2025 13:49:37 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [bug report] drm/i915/dp: Get optimal link config to have best
 compressed bpp
Message-ID: <9a7d7064-3b79-4bcb-964a-cad317ab136d@stanley.mountain>
References: <6d13f0d4-9644-40eb-a0f4-71691ae93697@stanley.mountain>
 <6f03eacf-1f00-445d-b85c-296b9872347f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f03eacf-1f00-445d-b85c-296b9872347f@intel.com>
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

On Wed, Feb 05, 2025 at 04:09:00PM +0530, Nautiyal, Ankit K wrote:
> If DSC is not used, intel_dp_dsc_compute_pipe_bpp_limits() does not get
> called, and the clamping to 24 bpp does not occur.
> 
> I hope this clarifies the distinction and the logic behind the clamping.
> 

Yes, thanks!

regards,
dan carpenter

