Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAEC141036
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 18:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C5B6F880;
	Fri, 17 Jan 2020 17:49:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74AF06F880
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 17:49:49 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id z24so9242485uam.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 09:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v8qZGFI/v0O4NPDW2/Om8EHbft20Fsh7nB3ayo9Wa1M=;
 b=WM5KvoauEWB9Xduodc29sflYFgc0gqjFbsZ9j908a+Lz0xJPfjUIAFPRkZoDEPNKKJ
 KcY9dI9FxFeKhTrF1rislwfOug7BhuuExVMhhiPn8huZk+y3HMvgPTTCIMXItZ8Gj5FX
 CotR9QsZL+fpk/fmRnKtSyeA8joFQ9JejYn+UBXSgO+uBy2ljL47XjA6JXxSMdkNM8o4
 g4hbqfUNcPuOP0XBhZNN8heKqTXwz44O55PtlsTn1FqYOV/uRirvjS+mM3uOIJ2EnvTZ
 AeVp3DUfO5uOQK6m4cwVffN/xy/VakgUnPMJ4nvGcfLuutN/ZSqkGjbQ/ucMdGEgxeAW
 6G2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v8qZGFI/v0O4NPDW2/Om8EHbft20Fsh7nB3ayo9Wa1M=;
 b=VoU851n6SI8hi7lBZVGmkaGmjNvc0Q1qf7mhD76ClxqR9EyoehRpXUYiFmm4UNXcGR
 pZUWUZ/yEMkSu++9nYoXEpN4yULZ6WqxAwQS41lnBcMQAyMQvHQ7XDXlzpOQRPu9WTRs
 kmSixcDBtz6j5Otop4NZO5TQlkffv9HCKxyKhW6KoRiQuDHV1LiDRj0zVOH0hpMaHRkr
 axqEKXAvPoovxm76q5jmNq/BQ6+R75cAyMsSDqVCYlVkiRZQHmQc9ZklN3mj4Nn6uSdG
 njxv0BnLC8pPXeirp7qpL07WD0hN1yvL2QN8qeh3dn95Io2rDoV+Ue3cOoFAFNm8t2it
 pFxQ==
X-Gm-Message-State: APjAAAUlNh71clTbeDlGAUkZ4Qod+dHiJEpJDRl3VTc89e9zIyG3wt62
 /CMdbSpSVeOdGrH5hmt8nZngIx45b8oZLzi9IgE=
X-Google-Smtp-Source: APXvYqw3pwnrd6hNbb/ZLluJDnUjLRllMLnT2D+hVubT403qTe+eggkimgn/iAJJnPDZsuI3sPKPIOELgSACIgZxSGw=
X-Received: by 2002:a9f:2635:: with SMTP id 50mr7548483uag.2.1579283388588;
 Fri, 17 Jan 2020 09:49:48 -0800 (PST)
MIME-Version: 1.0
References: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 17 Jan 2020 17:49:23 +0000
Message-ID: <CAM0jSHMdqWT7zGwEhEB_BgR9h6Z2e-QSoUxzYDA7XX5AiqYFaA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Be paranoid and reset the GPU
 before release
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Jan 2020 at 12:59, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Just in the very unlikely case we have not stopped the GPU before we
> return the pages being used by the GPU to the system, force a reset.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
