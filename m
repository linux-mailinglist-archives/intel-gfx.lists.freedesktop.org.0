Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAA41A9F9B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 14:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2036E9BD;
	Wed, 15 Apr 2020 12:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92956E9C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 12:21:01 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id u6so1820052ljl.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 05:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gf4JKz8G7G+RjuxPUQbROZcRoIiDOaO3pVHjI8FiM28=;
 b=hdLQvp4xXexsPNf8SvM98AkXj+2vHccxZyduR99WtsZamr+si18rNTK/Lf08fP+RL4
 y7QmlU3K400hh/QpZ6fVLZbWDMkdSx7XcSfG5bdLfscCO7BsIzBujwkpSQqNRozf6h4e
 QOPGCqfoQ+8+Mm/FC1NhDlcuC7anHuEpSq11X0AqZuHZfpLp+cg24+Tkse4WBQTHK11p
 x/LHmWpflAe/ifl9zN0scbTsOp8ZFKitcUiYS7my9wvG1Wjg37nGSIQPSPZbNLIr2HxI
 AjleSi+HdwisiD7zmDqT3w9d06fcaxLffhiPdm/ZNKx/KvFneH8MCyP5EbLj5GpKYqmR
 HuRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gf4JKz8G7G+RjuxPUQbROZcRoIiDOaO3pVHjI8FiM28=;
 b=STGLM5PANbgVpL6VE785qqoXbwHDxwNfh6e9TLeI36rth8uhg4lgfZogzpX5nJmRt9
 ysRw8jeYEZ3DORxO/EJNKH1IhgZqrc6MGNAfOmhu06op2HAfH3rgoR4fTlQCMqrW/8bi
 0TM/PHPTp4ORUxJERWAgsQ9JFGryocC2MTbX3E4yaIbvu0M3IOV/CeD7lbxUU8d2XjE2
 Q6hf73Qc+E5xGb5FLlSdIh2V2l1SB8udfKBpSVgvAUzy4nr3sK5B2+mSmWuk4BKNb4kB
 swOWyuKH4s+jqvHAfeRpxeZMgKncHaHLIk+1xBoW/L1aoE58cZk5nhFac4DxeSFSvxA3
 4iew==
X-Gm-Message-State: AGi0PuYMWKt+28gxZ0GpkGuZzHCGYkDPgQ6Fl13s6yS0se6G/P+oor2w
 8sh++c4eHzbUgAsOQTjakNmXh5YShuKtK5ngxe9y5Q==
X-Google-Smtp-Source: APiQypJeRj5KclZmKitqCFQrAgzzgpXQhsRU3AvPywLr8Cq6njjwRUuW8ZRT4PD5wXqIbWQ4Ow664bYE/dk3AZnH2y8=
X-Received: by 2002:a2e:9605:: with SMTP id v5mr3018795ljh.258.1586953260384; 
 Wed, 15 Apr 2020 05:21:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-29-daniel.vetter@ffwll.ch>
In-Reply-To: <20200415074034.175360-29-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Apr 2020 14:20:49 +0200
Message-ID: <CACRpkdb8gWz_R=5Ca0tLMVWr+Xrvi_eOsMgb9rkWnPshhMeZwg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 28/59] drm/mcde: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 9:41 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> Already using devm_drm_dev_init, so very simple replacment.
>
> v2: Move misplaced double-assignement to next patch (Sam)
>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
