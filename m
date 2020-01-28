Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D4914C016
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 19:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548166E0A6;
	Tue, 28 Jan 2020 18:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 760BF6E0A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 18:46:02 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id g15so8800417vsf.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 10:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eeFaLZHoWsRuh/A6sJ5XfhlaIAhMTPVXuBWCR05KtQ8=;
 b=vCi4sL9Btw4B0dnOUvUGBmTzdkrVY3yJsWO1y2ml+XWaKK6NYgBSQrWF+e3hPS3Iqz
 uBLI/5A14/2A0W6if+Uhzbipzvn8Lmn4Z3lzUGpBSy7myNBBqnuB5XUS8MvC+S8WP3Ib
 70MH5T0kSsrWBN8RUeaQuVdT16QqbNUQeZdfcQmdPYqfGSG4kj0J0B1VjOAsu5hC1KXn
 JTPVfNfrTJt9TnkdwRJIWn+qMySDoDb51DCTpCYPnTzcVdfMlH4hRuAIlkc+5E6VQ/wq
 5g44wAPSlaJ54u67tNKKkqAsdHmryawXGPHSUCln0hObiSKKzlVyL1bH9JJGXX/mlULz
 MhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eeFaLZHoWsRuh/A6sJ5XfhlaIAhMTPVXuBWCR05KtQ8=;
 b=kgLaCekVqES5+E0HDi3C515aBSIdk1sn1Z6MliSnyBXQSFwV5FZbJZxXC1KoaVdJ8S
 9DGJRLjMXpb0NED7/4mmUy/RGUsWvF7iq0EWsmY142zu/TLdcYyf/gNs1fmgEfBz2COy
 MLggIOF+r4SODMrSHv9SxQ3sshxPid6151j3+A8Qffs7MDDjWTvG+trfO7NIutha00Kl
 0A69pl3C9KsivmUg+wBp7hfQeURQIO+Kxbrh0kCE7f0Ddsh20c78iZM4ueqHSdwLpNM+
 7GoXC/mnu8VYjBQOQehtTxQAir6GcVJiY+3jTrEFmiHFf42ZXBfs8blMUclTrIKT5843
 /hxQ==
X-Gm-Message-State: APjAAAXDRUXu8aFVUjQmdbnG9dxBKuYaT2lTzHo65rMW0Kn7lJp0kNVP
 TwrmmPNual55Kqe4ASFoLO3rmuQET2XLjjqNbPI=
X-Google-Smtp-Source: APXvYqzhWRshqVRUWRqkX02DQlMn19mnXBQnHIEDbRFaznvFftZD4Kh9ZVv3A8P55AYOAi4Cs68Xz5EHhN+wzZDAEoI=
X-Received: by 2002:a67:c90d:: with SMTP id w13mr13832336vsk.164.1580237161514; 
 Tue, 28 Jan 2020 10:46:01 -0800 (PST)
MIME-Version: 1.0
References: <20200128183458.3860022-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200128183458.3860022-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 28 Jan 2020 18:45:34 +0000
Message-ID: <CAM0jSHOAJ2s-etnxdNG2sG1NcPSuW2z0w86x09pecrsy4jBZKA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Lock the drm_mm as we
 search
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

On Tue, 28 Jan 2020 at 18:35, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Hold onto the vm->mutex (to lock the drm_mm) to ensure that the rbtree
> is table as we search it for our scratch node.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
