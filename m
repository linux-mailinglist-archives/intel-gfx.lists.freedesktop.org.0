Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB765820EC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 09:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2887EC1C2B;
	Wed, 27 Jul 2022 07:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF84BE4F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 07:18:46 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id oy13so29963285ejb.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 00:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mSx3wHVt7xAJmmMmIb8aW81Pol+b+vBcAqVHpxDw1YE=;
 b=vPPLAZkTvD5XkCEzh4ztZJr02ihnqDWfDjpcz48VEmrwOWsLCg3FbCUYkjTXGdxVSp
 0cJtZzJeEHur6jCRjr7TEOfindV2xd1V35jiE9fns0aon/JS2EtxRxTzbYQv7hS7/DXs
 qm/LSQVdfa4nztx6M0i7j62iyrdw8j1Fv/a2KSPxyoeLAThVj6I6+RAqwxdL/cLDCVvr
 mEh6xLr7a089GE97jcX7ScTz/xpCKQy8M8ozOXxqGOL4ho81ggdYr2L7C1XkEFib9c6D
 Dx+v5rVAfO1J4jZBZyskFmzd8i90dC6ua2ft2udBjL0n7l5W3RagPeK7UNX3fMV1S0e7
 b13Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mSx3wHVt7xAJmmMmIb8aW81Pol+b+vBcAqVHpxDw1YE=;
 b=AaLyWwHUyHOGQrwGZMON8V+OPoH/SYI2MatuRiFh75ce0B32SjjLub58aKsunQ9hbr
 aMQf1fggVctTH98PmyK2gYoTQ5ZoQ74H0D+lUVs9mqtSzBP/djlTmlSTyRWnrhOk33J/
 sRjeMi2ZCo7PHOjp3XyIeKTNzrGyUOFe/bEZbR9bZic1pHN7C4Fnf6K8tTkDqidrOjNv
 ZEe8gvsjyqCWyBjIBZ8EKe9DcU+7S8YnGrrMPhP7Fs1Keqgsrzp7yD3x4ei71LhBH2DZ
 /hzinRW52/Tj/jdkDzkCGtwjopnfiMhlDl2cyarenU7m76Cke+GGfTDGNOg1hzdgWKPZ
 5qiQ==
X-Gm-Message-State: AJIora+eGrc+oqMy8V026gNRUTN88KpminnW07aocovtztFctN2QUBgA
 +LAegjreGBrJRyi5KQ+1hLn/Z7FyWWUFygn2ZjbSaw==
X-Google-Smtp-Source: AGRyM1uOWuMb7hdqzBwxTZzJsWfLCr5rBYpu5OaNGOvW35Amyw+j4mlWvcvZj18uXu+oCVQcqT4sPb/HyrW/OICyuuE=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr17036681ejs.190.1658906324665; Wed, 27
 Jul 2022 00:18:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220721062345.46842-1-slark_xiao@163.com>
In-Reply-To: <20220721062345.46842-1-slark_xiao@163.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Jul 2022 09:18:33 +0200
Message-ID: <CACRpkdbM+RHcOrdzdfVE3qMb9-YJGqL8b1i0bqyMnFXEsSJQrA@mail.gmail.com>
To: Slark Xiao <slark_xiao@163.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm: Fix typo 'the the' in comment
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com, sam@ravnborg.org,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 21, 2022 at 8:24 AM Slark Xiao <slark_xiao@163.com> wrote:

> Replace 'the the' with 'the' in the comment.
>
> Signed-off-by: Slark Xiao <slark_xiao@163.com>

Patch applied!

Yours,
Linus Walleij
