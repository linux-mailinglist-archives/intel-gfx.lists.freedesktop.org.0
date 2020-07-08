Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DEA218D9C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 18:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23DE6E57E;
	Wed,  8 Jul 2020 16:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2796C6E57E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 16:56:22 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id o15so24828010vsp.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 09:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u18Nvn6KHXjT9L5v+GPKiuTCPEOfwbU9W1G4WUvE+rE=;
 b=evdMQpwONDPPf53TaEdVSJaiWtOk9tJghkPjOzA1adgVlLpm+5Uc9goMLTFXtJLP9X
 Nz6iTB7MPj0or01PlMm3+56FJyhjGA50SdDx52op0bIFG9ax1Js1DxOZYvAIOvyf6Yhc
 k5wnjvYJ6SEL+npzGki4yU/0o2ZETa5lQW69Y9HOEiRpuHB34aeTc35nPS2TbQngYZAa
 e3nLuRaQAuToY6M1W4DfWq4ZtNeDs6BIyHpI7gKo/wTyadzOwNyrq5GKJGnbNJem3Bgt
 ayKc1KEqIx55jBZexKmdzrwbT5UgVXmVGc3jN0q3iCM1VXDQeUiRUMV7Ts9gziITjHZc
 KU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u18Nvn6KHXjT9L5v+GPKiuTCPEOfwbU9W1G4WUvE+rE=;
 b=hzUFC2d6qX7gAojdMeE/fObrf82JoroThXMvbMXN+hSHsYhyM+Fjjl/DfVh21yXYMs
 2wf4r2yZtENv0R3n+swvsQa7bvIQ2cJm6Yhlhm1uWyM6OpeaufpH7++JKASpZUMV/2Oj
 dV9YkKmIkr+acs88nXva9ryDTfJAwrEXrjIrQnptSmmXksVqqJdEnLZgZ9D2/OcrC2H+
 /EqLEJf2hRcGQxKsm0EtW7Cpevo/t188dnQceaxlA1QQJ6EBKakRku4oPJJFIEFN6IKB
 KJ0RTIPIkxJyqP0KXNPrayPUk+0/Qzc6K7AdwVOgcwXNyi39nb4yun5ooYoyHywiSphj
 0YFg==
X-Gm-Message-State: AOAM531oKgITg9DSWGZMtDojdJPnnfSeTM81DiHM2SwTlgtqtbiU7Hbs
 HyMDGoyqSC7VfKgqPAOZH9f+yGqKvv/hII1kmSI=
X-Google-Smtp-Source: ABdhPJyDM5PXtxgOMOD25wIrATZkUp38ccsXqUDd2ZyLMVMZkgoTk7BFcqW0mkxNYhBJ5KWTCgdHOLs04AU1pIIwZeU=
X-Received: by 2002:a67:79d6:: with SMTP id u205mr7354687vsc.178.1594227381334; 
 Wed, 08 Jul 2020 09:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-7-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 8 Jul 2020 17:55:55 +0100
Message-ID: <CAM0jSHMhpAJ3Y__ZmUAeQTz_x6nGGy6+7XdagjjCjws9sZNrDQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Optimise aliasing-ppgtt
 allocations
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 8 Jul 2020 at 14:47, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since the aliasing-ppgtt remains the default for gen6/gen7, it is worth
> optimising the ppgtt allocation for it. In this case, we do not need to
> flush the GGTT page directories entries as they are fixed during setup.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
