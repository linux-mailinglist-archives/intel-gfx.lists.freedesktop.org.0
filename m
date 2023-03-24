Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 198916C8611
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 20:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA8410EC66;
	Fri, 24 Mar 2023 19:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BA110EC6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 19:41:11 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id i7so3636667ybt.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 12:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1679686870;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IUCD+IxRLqwZzbEH30wWX1QCJBeJYUOVFgyf9bSu9hM=;
 b=kG7mEr+AyiSspI904z+BgOxO0ChJNkROnsq0QV+jI5dKx/vtfbi9ldMLD967dOzPIn
 fr1AjHm0vYdhY8RNYqgs8jBPt7vtGZcuXWLo81Wer4eszGIUI/zgis0PV9gU2l2U4WZ7
 L0aLLZ/yGqpciuFzH1Vb22wpt5ZY89HZEsgqg0srlSfWtMWMYQ7FCl6qplFzV8Y+WS4H
 L7XZCX6vYV/9PDvnZj8w2AwI9NDJxDcs9OY3CQg3zGYnCZmvlzTSFRb28s7BUaTyL6Vk
 nLbewqemd7B68TTFOTzerrXm99ib/mgoNYbg6KUOQsxfRZLG3XR2sxTzn/NIxwEjxL7E
 MAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679686870;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IUCD+IxRLqwZzbEH30wWX1QCJBeJYUOVFgyf9bSu9hM=;
 b=Lqf9MnjRkC+fUY5thAoSVxaiBdd0V7mFowGfOCOSeuKFXjUICIHu5CiZZFRVtU/7bi
 5q91mAk7Ys2/DeYUmwPxDFG1QQmEs7ORizUkvK8CBeni7ltvdMbbclG9PDWSayemc46R
 e3WRhC7il1J8hTESVZVi/YZGBYyYps/oK6W7GzM4uwPfOqv/qFaPLxDwO2rNIeTfmXrO
 15RTp9m6vo4E1I4tg44KWRX4ylqli8Pg9u58ZKXZ4/RiPd5wqi5orkQXDELIU0erXH5E
 qI8ie9H7oyKifanlOEu7Hf5vA4pcb4edaJPUsg9z7lFLjsUbdZ4HGm7T01H9TO0b6frx
 ETwA==
X-Gm-Message-State: AAQBX9fSwg/fBFfGITmhomqrzCG7Ec2eMKtKnojd7iP9rBYxDCMUpZZI
 Ljca2lb6s9R+sbJWMerKPAHASq1GYdU2rG2dTwEtDg==
X-Google-Smtp-Source: AKy350ab+2+iDDqjp/8MtBPau3csSAqLpql7w1Couc3tePNqHMKcEaSxPYFWamsrYuol36PWs6TWCUU1P72W7/eLEug=
X-Received: by 2002:a05:6902:a93:b0:b78:5f10:672d with SMTP id
 cd19-20020a0569020a9300b00b785f10672dmr674911ybb.9.1679686870645; Fri, 24 Mar
 2023 12:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230324192058.3916571-1-markyacoub@google.com>
 <20230324192058.3916571-2-markyacoub@google.com>
In-Reply-To: <20230324192058.3916571-2-markyacoub@google.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Mar 2023 21:40:59 +0200
Message-ID: <CAA8EJpo1Ki+Axav2FXc68AxXbM6Vof=FGLejW_EYUMZs=qdwQw@mail.gmail.com>
To: Mark Yacoub <markyacoub@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v7 01/10] drm/hdcp: Add
 drm_hdcp_atomic_check()
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dianders@chromium.org, linux-kernel@vger.kernel.org, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 24 Mar 2023 at 21:21, Mark Yacoub <markyacoub@chromium.org> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Move the hdcp atomic check from i915 to drm_hdcp so other
> drivers can use it. No functional changes, just cleaned up some of the
> code when moving it over.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>

Please:

1) Cc the cover letter to all parties, so that we know what is going on
2) Please also Cc the whole series including the cover letter to
freedreno@ so that it hits patchwork as a whole.

-- 
With best wishes
Dmitry
