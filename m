Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C1340F093
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 05:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 971316EB4E;
	Fri, 17 Sep 2021 03:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF6E36EB51
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 03:54:08 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 77-20020a9d0ed3000000b00546e10e6699so70742otj.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 20:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=d5KyeDq946nuEeP72I+rCwfJA6i1ndu160NKjlUa2U0=;
 b=mt1KgHCUrzi0gHUfIAMUuM50Mo8Ku7RFyKsj1qvnM2za0GMZ7eHfB+N2t9eBxjt7vS
 MVnIxvn0Uz1RI0WYgj1ULdJJHLoi4wAHt2ST37m5sfn7bGAXLpGsbL/FULbxhsq2T37v
 DkIQseFnkfaed/TqEmvIaV7jHFC+81p/zsZxw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=d5KyeDq946nuEeP72I+rCwfJA6i1ndu160NKjlUa2U0=;
 b=yLSckCgZycrj1/AETgcpUw82phxa3bJv70Xuc6dC9YyDqnbm6PUlaLo0Xa/+hY109d
 JONjDIrKcyKv0LZ7i01SV4cGJNLMZXsx6KYS3705FsXtNCgE1cEt75UrR1R8fb0Hw2Z4
 Jcuz7ijkn5Z1VLNo2pk+9ngEiUQ7f1tIx6i3tWmD7BsFW2pvusUJJy0md5tPuOYdaCUE
 STcKgu3rmsiNHbDbDgJsA1N/TSx62WycGKf9EEMibEoHvhtnJ3xVriQlvC2exvdBvG22
 RVyLngayDv+kQJLRPBjm6YhmNKDjZdn8JXALXaFbEBM8DN5m8RyZcQBdbmoiOtBpqBtN
 Pa3g==
X-Gm-Message-State: AOAM533vTGe862oTwUhBrtNm/blTt1pmXkoXjL1T0R677kDtv4/GzOLH
 4x05mcBqgkL/vI1NOEYQc+sy0KiK/t6RW8YKJGHn/a/7TLQ=
X-Google-Smtp-Source: ABdhPJzcbhAQp1Hj5R9izqiK2ZL89sVw4r1RXvzPY1p8ELBpYgolJMvLXTBcI+y11f9ZXleFHZ3dGmm68Ou4VgvCCb8=
X-Received: by 2002:a05:6830:1212:: with SMTP id
 r18mr7334996otp.159.1631850848045; 
 Thu, 16 Sep 2021 20:54:08 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 16 Sep 2021 20:54:07 -0700
MIME-Version: 1.0
In-Reply-To: <20210915203834.1439-10-sean@poorly.run>
References: <20210915203834.1439-1-sean@poorly.run>
 <20210915203834.1439-10-sean@poorly.run>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Thu, 16 Sep 2021 20:54:07 -0700
Message-ID: <CAE-0n504ZgOW-=3_DgPy+rFxNnkYjjp2U83X=K1ZMne-cN0ZPw@mail.gmail.com>
To: Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>, Rob Clark <robdclark@gmail.com>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2 09/13] drm/msm/dpu: Remove useless checks
 in dpu_encoder
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

Quoting Sean Paul (2021-09-15 13:38:28)
> From: Sean Paul <seanpaul@chromium.org>
>
> A couple more useless checks to remove in dpu_encoder.
>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-10-sean@poorly.run #v1
>
> Changes in v2:
> -None
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
