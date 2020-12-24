Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB65D2E26FC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 13:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370CA89BB2;
	Thu, 24 Dec 2020 12:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E78E89BB2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 12:57:40 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id f26so2025436qka.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 04:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T6kgzdDT7qVH0B+zwy/Fe9qHP3HecB19oC7AMm3dML0=;
 b=Ws+Oxw8/pgB3VudZlo1jAkbf2klRuJw+CqxHyIDBpjijSeydIROtdwgBNW71waBovU
 jwopFnst1E2v2ejmM07AzZW+QASLUd/wTVMuj1LIGMY2H/tRX9q3XeJBNlHKJf1u89sb
 bHErlJ6tl3xAyxfD+wCx31+uQsVLoS518I+T2IffnEzVDGntnMche0tQp9YnQAUD0gxF
 IGz94edwPljqw/s5xhbw1kLTNcBEz7z2D0EhFLS12PQgCxX3g21dU/HIh14HZ4LgvitO
 j637P9Z+QI2JYNFQIjV2PQImZBSqCJg/NvGprZx3weZCItEKzH34hEfJWWhSg2GOPK41
 ZGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T6kgzdDT7qVH0B+zwy/Fe9qHP3HecB19oC7AMm3dML0=;
 b=GQtdf5cXWEwMR4VOUTpsfPuy6nFw/U9rHoj3L3d7IP0ZMvxJcWx5r8Q1wSroXPZw8l
 ae+hePDUuR2+FAkKbiwI3YP6u+msF0+dkplDuxIOLkeQhL6kwsUOX5H1LXrr4cjntVYU
 aA5jrQQXz1sue/WqvZwUx1WInpVpKVioARy5xRE44dWGitXsoVyP5p2AoiUnisC/mh6D
 kEWIESX5sr/0Sto/bEZMbixi6DpvlBnVo76Ht5HyHrwsMn8W8PK/JCDPPEc6nA+YfGmX
 FEZQnE4KHo+zWTeWM40L5KvHFpu/n9i/QBPImxceDEenKnt2tpqkkSiFuA5jqbmCKCA0
 zNHg==
X-Gm-Message-State: AOAM533E7FbmRmIzRvkuHBYiJeOzwaFaeanOFPN4hbIIOK+2B96HilVZ
 0nfvJbffz4Q9KhBUmc6wz6O+/h2i4Fk+QyTAdqQ=
X-Google-Smtp-Source: ABdhPJw6f+RJkTzyDmCPj23bGIq8WtXm3OC+jpAF/YaY95tRNT33ZAm+zovTe7VZHa6OMMpbBnfvetQ7FBpTfylV2G8=
X-Received: by 2002:a37:a8a:: with SMTP id 132mr30104219qkk.327.1608814659688; 
 Thu, 24 Dec 2020 04:57:39 -0800 (PST)
MIME-Version: 1.0
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
 <20201223111126.3338-3-chris@chris-wilson.co.uk>
In-Reply-To: <20201223111126.3338-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 24 Dec 2020 12:57:14 +0000
Message-ID: <CAM0jSHNU+Wev3wh9hcfVJqQRd-O2+urN3BVuwpWCUs1PMnVHwQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 03/62] drm/i915/gt: Decouple inflight
 virtual engines
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

On Wed, 23 Dec 2020 at 11:12, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Once a virtual engine has been bound to a sibling, it will remain bound
> until we finally schedule out the last active request. We can not rebind
> the context to a new sibling while it is inflight as the context save
> will conflict, hence we wait. As we cannot then use any other sibliing
> while the context is inflight, only kick the bound sibling while it
> inflight and upon scheduling out the kick the rest (so that we can swap
> engines on timeslicing if the previously bound engine becomes
> oversubscribed).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
