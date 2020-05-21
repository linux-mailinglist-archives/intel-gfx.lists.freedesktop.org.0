Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A02711DD02D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 16:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 195086E937;
	Thu, 21 May 2020 14:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BB26E937
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 14:37:23 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id v26so4153084vsa.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 07:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v6yiQJ0pELCjxrOIfWzMqbctXXfP/KVafvITur9ozuM=;
 b=DmBrH9qGhPkAhY7+OriWPzuwMCerpOjVfzpzZmdk+6rwPzJEfTNBv5GrA0Et56sYni
 Il3YdwYIrUaPgg0wG8Ed4KXWd3PqZXqZpcIn8qnPkxYApsPF1gDT3PXQ8ypbfRReAorO
 tehibSxGfkC0JUxG9HLevvM9OrWztoL54gjId66mPftxG2h7arFk/hHOTpFhbWnzF1ci
 UweJn7fSkBRFCzcYAywFhVf1jFwg0rpVgC9pnmk/dRt+SlK5AktKMtlckyJmHEzzRQGu
 NR/QxFFPSn9VTl7OemKIgGwyBFU1QNv3htI5nIxjAAHdJ7KDMTBFPBRMxEYh/lXq9n/W
 3keQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v6yiQJ0pELCjxrOIfWzMqbctXXfP/KVafvITur9ozuM=;
 b=ggRVLTqMPfqGmJWBnbPigAako7wP18ve3MY2ArRHNZnJV/R1oAZudlMQdZxjcuOU/Q
 dAY7PMiv067aLG9AJAvbPlj4+XJuHoDjgEWgMcRXQa+1Wx5Rm2q9ZcIqmETLAfx10EvA
 lqe7iJqW+4xYbQ8GVaoXYSa1T4OBMlUm236o1czP8+dnL86CdrS29ZumtUMkZpwMQpds
 yZeJ8hkfQsAQiAUMpyIXcGRncx2oFgR2/uGqn2Qj5MWAQ7qH0UKHB7xmRcyCpy+LinPQ
 CnzPnrn88rFw/uOtF6rgO8h/GEULwfFj8DY5zhdVYQcTlqFXVzY1qu4VFAJQz50QYj1P
 fTig==
X-Gm-Message-State: AOAM533tDJwuepBv9Byp3xyOMKoK+vh8zEWztd+jGgbr7pZ5amyKyjJg
 x9smu5pkWw32xW77Lls5FSEb+SGRTdn82fysh6ENqssM
X-Google-Smtp-Source: ABdhPJw+5rINduVn+kVxl8V9HP+2JZKAw3dypRBB3+Pv+fgOLfP+FKKdkihgP2QyEXLBEuczSaZYgcR7Tp8Ce9JRIPo=
X-Received: by 2002:a67:690e:: with SMTP id e14mr7584930vsc.34.1590071842698; 
 Thu, 21 May 2020 07:37:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200516170735.9406-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200516170735.9406-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 21 May 2020 15:36:56 +0100
Message-ID: <CAM0jSHMXXnNuJ6cuVja8t4TsJkkwZ9PTHc0Q-DWLfZYYZry9Gw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Remove PIN_UPDATE for
 i915_vma_pin
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

On Sat, 16 May 2020 at 18:07, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> As we no longer use PIN_UPDATE (since commit 7d0aa0db4375 ("drm/i915/gem:
> Unbind all current vma on changing cache-level")) we can remove
> PIN_UPDATE itself. The benefit is just in simplifing the vma bind.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
