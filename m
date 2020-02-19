Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A143716499A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 17:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA9AC6EC3C;
	Wed, 19 Feb 2020 16:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18DB6EC3C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 16:13:28 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id c23so553903lfi.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 08:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=22/PVbYKXHMADDhw0wzpGPRk2i7z5XpXWtaUk7jhSPc=;
 b=WIzcvICIqCO9Zlof090PeCcCxpyVkOi+7K+16gUgIRz0a3iLcbVsLJpJweZaSqGLP/
 p+KZMkUwhQPjUN6iv/91Z7b8gYeWJSqtfpOqlLWrUoF1QmHiCwc6D+qyGxwlEYaAP05T
 ZC8VFIglKc5DCKRNfusBnmMI9Y4A6PvDt4O1gNZLg9Q3KBrls59Efl6I49Y1kN86aveC
 59zReTM++k6+R9cc3sjJdUaIaS4Qfn9hptLMgHvEEI0vcpCWApRwls9EmbMeuL9zCZEy
 tdk2fI5aGK/0ZoooZiP+3OApW7qQy1a/oZtLG4kE7J3ZA+Ueostx3OKaoyRIaPvKvkKV
 5D3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=22/PVbYKXHMADDhw0wzpGPRk2i7z5XpXWtaUk7jhSPc=;
 b=GgHJeREh1a/p++PqtSzU/Q0bIZKd8h+Rpv/7UI7/SP+7HtDbo3Nbhk15odU0koqKpa
 bRiayntSR4fPahvphy26ZmkAI3kBeVO5AyW7ymSGcQvOCSChH1EJ9RHjEvsdj7E5NgYl
 +MZfL/F/oUSzzXwylddHGvr3cTDkekujzpvq/mk577rz8f8Q6zb9T3JBSQ/PLct4fh5n
 1f/CrilBYi/zOTbcNybXTqztqiCQggBc3cOU+KKvtVHeQIp29bDTq8bEHI4lwsmV7Pef
 rarsqZuStAM7dQYFZJT0Km7o9DXDC8rlV6CwyrRrI0vTLE4t7EKh9wANUe8Uov6r4xdb
 fn4Q==
X-Gm-Message-State: APjAAAW4JAhk2ybh8G4aJpVANguPgsjOcQtsZPxqBai5oYnuoteW2rfI
 R2fY4NsxlXFCVJlZ+p6ngN2zAesxa+CvNpl1Ixx6Z5joGLpEQQ==
X-Google-Smtp-Source: APXvYqw3VD6FmHX4qJfF16RzBYM36HdY6H5Tm+D6dP6mXLk3si7sNYGp6eQNFjw4N/S6mUKDfZu8qke/COBt01ynPKY=
X-Received: by 2002:ac2:4d04:: with SMTP id r4mr14008314lfi.77.1582128807267; 
 Wed, 19 Feb 2020 08:13:27 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-35-daniel.vetter@ffwll.ch>
In-Reply-To: <20200219102122.1607365-35-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Feb 2020 17:13:15 +0100
Message-ID: <CACRpkdZpSsZbVe-YyzXH9pLaim=3LTwQS4AVGjDTAKfq602DrA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 34/52] drm/mcde: More devm_drm_dev_init
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
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 11:22 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> Auto-unwind ftw, now possible with the fixed drm_device related
> management.
>
> Aside, clk/regulator seem to be missing devm versions for a bunch of
> functions, preventing a pile of these simpler drivers from outright
> losing their ->remove hook.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
