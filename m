Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA89724B2A4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 11:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEA56E92A;
	Thu, 20 Aug 2020 09:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C656E92A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 09:34:54 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id o184so734295vsc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 02:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x72BSpaLx4ICN/srUgTQUCZpl4nW2TSwH+6+Yk5U/SY=;
 b=Ciy4l1QE3R5Tva0+UzjZbqYULUrEEYroWN4y4I2zA6sF/F53RuFhtIQPzvHO4rXaMS
 4aMooA6pjPutdy6j16A6weqklMltY3Ix4gRFwATxxryfm2nTdwtnD6dAxt9my4qRg8J/
 Ix+71jHxmH94opMZX280yLVV7ntTfhZf/ZKTro7ecP1RoZWnXggNoed/+VKpexQKlp6T
 vQzdquaHWDTl1YTakHoVxIXToL+lwgO97RTAGMx2MQFGeaeC9X9WBCrvxxON3eqvkr4s
 kNSzafJNsaxVkRdu+3IG7qTLNr7zRk24JS21Bxf9MWPrlBCCcgKlz65Wm6IpTWIaNgm8
 FsVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x72BSpaLx4ICN/srUgTQUCZpl4nW2TSwH+6+Yk5U/SY=;
 b=aeLU4e3j0ilD73CkQhVwO+IhCLTZCB8EFTYW9uAj7gbkEGKIRdsstPQhExZ6J1kZHG
 vOGz6++2eJ3giDGPZfuNjSAPorTRsQOD29IbtHrY6JwzOS9Ge7BuIdMmJxyVlshyWHFr
 zo1TmO44/bfR3MJ/+mWKNZb84ag1J5112U1d8uxmXgssY/MLTIStk1oB9kCc10ApzcC7
 Fmjg7I8hzAv4kU7X/mFwrSVGFiZJxUegOoXOIa5zXPiTsDJs9Y/JfIeCWwbdqsL5rK/r
 eMQIC+O3JRVqrItSwACAN61dF3G5apc6Gd+feokXC5G8Ac2q7ZJbt6z48XOV+cs4OmFD
 4Uag==
X-Gm-Message-State: AOAM532aMNe/U+LNNAGB70qRaSexJa7L7AUoshKM0yOtJQm5jzCG7U6u
 fdi8rKBnwznjtMrn9VgZq2DklyiW/bRuxoA7p20=
X-Google-Smtp-Source: ABdhPJyySQPWQsm294RUrVDwIrN24V53R92M+Nhm3BcFW2jBoykGvhhhhy9ChPqeBU4m976YKkfr4A7feaaljNuFCXU=
X-Received: by 2002:a67:f30e:: with SMTP id p14mr597976vsf.119.1597916093246; 
 Thu, 20 Aug 2020 02:34:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200819203153.16000-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200819203153.16000-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 20 Aug 2020 10:34:26 +0100
Message-ID: <CAM0jSHPchm6wqpP9_sAZb70+3hLrFLUauNxcQPJHTpy1g-m_Bw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Prevent using
 pgprot_writecombine() if PAT is not supported
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 19 Aug 2020 at 21:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Let's not try and use PAT attributes for I915_MAP_WC is the CPU doesn't
> support PAT.
>
> Fixes: 6056e50033d9 ("drm/i915/gem: Support discontiguous lmem object maps")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: <stable@vger.kernel.org> # v5.6+
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
