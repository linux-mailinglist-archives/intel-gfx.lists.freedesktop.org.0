Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7213F9B99
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 17:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490496E98F;
	Fri, 27 Aug 2021 15:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BC796E98F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 15:21:12 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id s15so2215417qta.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 08:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=49PqQ0HqOPgZvgrJBZUYEHzOweRn99jglPqAHytJ4oI=;
 b=uvppcqNr/Y+8sLAJGs1VIi3aUWxhBAD8w+TB8F1Nv8ZGZjbRkuRdkhrPvF/ONSO7GV
 9ct6IDz23F5hA0gkVij7ZvuLeaBvY4HYznxSNt1mMBdksX2rrv5SDKeEfZfK+Sk+Pc+w
 74ZqiZazxOM/RpvzdqCb2Bmk8i9x4AwExJfr9hMRKs9xBxlUmatvHb6wp6u886vrcdmf
 v2S6EjwNgdeb7m/jbAkSq4N2U6sRaFF90+PhPsKAx1IvTISkP0vu6dX3Br0diwV4ek6q
 rkTTDG8RPwS3om19HzuOycigYg21TSWcvbYCIEt6Ep5QNrJNqldj2LOg/ZCtlnAW+Xgs
 4AAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=49PqQ0HqOPgZvgrJBZUYEHzOweRn99jglPqAHytJ4oI=;
 b=WHDp3nw4bKnq21qKtAbvqej9NTKLheXyNRfNcEz1QiswuDDQoxtTaRUqtcBCyXwRTA
 k5ZCXCs0SLiBsiB37qWqSVvBQXecIYP9F0EvVNsBSFe57U5Mais/V3KzAFBrp+jt9rM7
 /AhTpX1xACTVuTjqYRSS0KvvriBHsybg8aepbxCEWryNjlkSDKBXqJFZTGl9r6NetgdL
 cBV5CGEXvTdgu84Ehcqtl1/CF1SIlsXeRUNu68v2ECJDYXGw1dFL32H4mdeiIbIVf+dZ
 UrATkZNK2Bjw5LmJYmQGuiaiBgLtPfFyv4stCmSYZwqPavRqkOrifPJsN40PRO1w4LtH
 WHJw==
X-Gm-Message-State: AOAM532ZJkaPxWHp506bZsNY3128zvtJDXvlRaDz9OPGi/JyzRQaNvKE
 qXk7d7H+ZqzzqCXH8xSZkSXHTTX+PNP2tJU/VY8h163P6SY=
X-Google-Smtp-Source: ABdhPJwf1odrX32363AM8FST9GxkiKPx4XK9tadQyINzM2c5F12CLEj3vlgf4F05NnjmOkUhQMq2d2UIduJSmXndx1s=
X-Received: by 2002:ac8:7a98:: with SMTP id x24mr2425089qtr.265.1630077671653; 
 Fri, 27 Aug 2021 08:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
 <20210822162706.819507-5-ayaz.siddiqui@intel.com>
In-Reply-To: <20210822162706.819507-5-ayaz.siddiqui@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 27 Aug 2021 16:20:43 +0100
Message-ID: <CAM0jSHMnwzap0UvOucwBd3NETHY33FyrChY-jyAfd=hHKLatxA@mail.gmail.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC 04/13] drm/i915/gem: Remove unused
 i915_gem_lmem_obj_ops
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 22 Aug 2021 at 17:30, Ayaz A Siddiqui <ayaz.siddiqui@intel.com> wrote:
>
> Removing extern declaration of i915_gem_lmem_obj_ops
> from i915_gem_lmem.h.
>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
