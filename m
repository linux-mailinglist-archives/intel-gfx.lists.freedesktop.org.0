Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB9BA6B8C1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EBC10E781;
	Fri, 21 Mar 2025 10:27:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.b="UsncP2e9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68E410E781
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 10:27:04 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id
 af79cd13be357-7c5ba363f1aso106926185a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 03:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1742552823; x=1743157623;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=C6XBFDQAIe6jgF6F40xRB15uQkrbHzlxj9SySg4AP08=;
 b=UsncP2e9n3QNbKNxZR9VuO0EAMPJbvKSYfFP1ZrgDxZcz93zOv/jaLFIWidxpfe7Oj
 vCWo9ZgtxCdavBaeguknpbzXxjVVfrf//zmC1Phd6eRPKrrUxiDNCtotg5BNtnPhThgY
 GMlqnQo9e2WDFoFLNeBtJhpnbV6qkNBwrAwErTZoC/PRbCDjvBqa/87HGn65lwvxvsqk
 UBeJN/cRvZx+zH/IsIGWFYwQ2JWTRSrTS9S50sqEyEykyla6gax6cZ6ZqNu3HVpU6tZE
 r3OihHp3BHjebgW3DnH2d6E9rLjtmYUUbe9lZqThPl+alpzH1agT72Xzh8sI+d0NimFI
 YYIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742552823; x=1743157623;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C6XBFDQAIe6jgF6F40xRB15uQkrbHzlxj9SySg4AP08=;
 b=eYoFlCUwBxz0Y1bMXuYaCXDUN/FeZbpPYs1bFmWOsIKpyXX2Ia9gUeR28boh5yIWjD
 KPpw844ewGhr7O8SPtPWKqVRZWMQHJ+QTpxYXNYhk1PWZU+3YvLMJWoHMFIXPktgjtAp
 tMKe2GHVr8I6JJgSOM3UjByT5v5osjZfqOQmQdlNolT4zCwpyANX5D6g9UdAFxNQqxuq
 l8imeVRTBo01Z/5N4XJa/eHM5qe5EzhIEbef0c5UZWmhyWEZ7Lnh3Pwl9XKLAHJ51iq1
 P1v6vXsIdgo4MXwO409WVVD4xbHl4EOj4m2/sN9fGAojwx0BQvy3vjo/ADjOoY8X/wA9
 05KA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCylocSHZdmY1FKUqRbnjtMTu+dpHWNVZdmZymu5euvHhlAa31TB5uWY7Nr7CAYYs/M46hNcRxdnI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwAIkrg7C3x1GZyPNLzUlXO8kokkYKYhtULbAWRlqA2Rs35VSvg
 CFWUlg/VyIL9o6Aoz2ZZx8e3hTynU3GoKmt6AXAv+5Ij5kB8D4zEFACLZ1zaN0RwvaAZuOzyyvf
 agcskm45ctWBf1NRySmIafGJojCexF55LskVQvw==
X-Gm-Gg: ASbGncsvakByiDvt0RYKXstyfkgFuGq7gtfMuQCGRlZtB6NnVkcS/+RtAbxtws6UpOZ
 Lbfm7t/kUrtreTJQLm8vIok4C9WIUGIKBD/hAZnzwPEfWkAtJJLdrC5WfIPnHEIAl24232KfCa9
 NU7tqbGzMpOkr386UNAb6wHQLc
X-Google-Smtp-Source: AGHT+IGtKZxKAoZgtR0aBlIVmyFJdz4vLgELnLl5z6u4LuYLjXNoyuq0UVrTF+CIIc7xPDTVRmAHZ+SRVPvG/7TyZXI=
X-Received: by 2002:a05:620a:4055:b0:7c5:a423:f5b0 with SMTP id
 af79cd13be357-7c5ba13361dmr406693385a.7.1742552823192; Fri, 21 Mar 2025
 03:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250314085858.39328-1-vignesh.raman@collabora.com>
 <20250314085858.39328-2-vignesh.raman@collabora.com>
In-Reply-To: <20250314085858.39328-2-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 Mar 2025 10:26:52 +0000
X-Gm-Features: AQ5f1JpymW7UP78_0g_Z-sNByprYGBFX-xYqr_OlbVrsK0-Hob7Zk88vIu6Znbc
Message-ID: <CAPj87rMjF84yyPqBshuGu=8qx6Xhq9Z-HgEnQe=tRtbu3E8OtQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] drm/ci: uprev mesa
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch, 
 robdclark@gmail.com, guilherme.gallo@collabora.com, 
 sergi.blanch.torne@collabora.com, valentine.burley@collabora.com, 
 lumag@kernel.org, quic_abhinavk@quicinc.com, mripard@kernel.org, 
 jani.nikula@linux.intel.com, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Hi Vignesh,

On Fri, 14 Mar 2025 at 08:59, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> LAVA was recently patched [1] with a fix on how parameters are parsed in
> `lava-test-case`, so we don't need to repeat quotes to send the
> arguments properly to it. Uprev mesa to fix this issue.

Thanks a lot; the series is:
Acked-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel
