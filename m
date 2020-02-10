Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BCE1575E5
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 13:48:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23A36E970;
	Mon, 10 Feb 2020 12:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1846E970
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 12:48:03 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id b79so3975840vsd.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 04:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ie8D0MtwPHgz8hwmWf4JkfsqvjBoCG9Uuklpq5AAqX8=;
 b=um6h4EE740tu0PR82u9kgbjYY38z8zCy3kJJAuWOjkdhMekmK1fSlOnqPHq2wV9epI
 6D3wG9FuJ91QMl/cwNBleR2lQuB5bM9l8ETm12qjPOtNzcQizuz+2oOvWT8L2Wt00YfR
 8oZAYxDayX7hVUzevc/ncG+tINyW8SxnOiJAPtQlkn7/AJQ+RyS3oyXqGnNhE5dvjIM2
 sGW389dvEcfbDydmuD4wcalybTLUHj2Qx8PLqBPdB6pdGveWBdRgoIf5JrID7YOuhLHH
 GC0OMzgW7+Z0CUnIFBR440159akvqDSk5nO2Igof/rMY1QDWsr1E7G60vO/LcaabNN8E
 Ap9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ie8D0MtwPHgz8hwmWf4JkfsqvjBoCG9Uuklpq5AAqX8=;
 b=sX9kZNIbg7ZcrMBnYlje6b5Td8nTs/v1ElOzjuOaFxtEvBYM37l860g6J4aNuF++05
 7vyolmn4HYbBO5a6Aauqb9Hdru3aLpCEYu+e0xPaCKDU3wX0ndIAsp/30qk6ne7ciBoq
 GzNWu0afefirsGwedkDjppb0TwtsB67+8qS00hZCBlcj9Ki2+CeA0ZIirJQ15oe6QceL
 GeDO3vN/k8u8clRtmzLGQj4qt/aw2pXYtmIYeCRo6MFfA34WCcpaC5YMyiM/A9wCasvP
 jMFu3a7Qi1jU7AXstzceeCTwCAcOYwqPwwXV2ZeoAGWU38NiPFyl6KsJ00k8tJwTaJ/n
 EX7w==
X-Gm-Message-State: APjAAAVg8H4V0KzWkLuFO2g8Rf2t8Cff6DZxmCPQatCT0MznrPPTONa2
 COSEeUMynzAMoYi1Ev9qCpvjjfAYsVkb/RAdu2xBRfVm
X-Google-Smtp-Source: APXvYqzlfZuWH95M6rPgSzafgPb2LiiA391wULYJby/IsZj4QQrKYzQ7Eq0l07aAYYMzYUtlr/X6l+wMkvQ1NNi/nXU=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr6211343vsv.178.1581338882955; 
 Mon, 10 Feb 2020 04:48:02 -0800 (PST)
MIME-Version: 1.0
References: <20200206140948.2491620-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206140948.2491620-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 10 Feb 2020 12:47:35 +0000
Message-ID: <CAM0jSHPGpkO4TEXCpT7w7DM7kFpMT9+jRL3R=uiaNDGXfz=-XQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Trim blitter block size
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

On Thu, 6 Feb 2020 at 14:10, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Reduce the amount of work we do to verify client blt correctness as
> currently our 0.5s subtests takes about 15s on slower devices!
>
> v2: Grow the maximum block size until we run out of time
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Is that bsw-kefka issue(coherency?) something new?

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
