Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE704FF1BB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 10:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED94810FBBA;
	Wed, 13 Apr 2022 08:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F4810FBBA
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 08:23:34 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id g18so2343296ejc.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 01:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=pDdCO2Z9sHAkcidfpKBTGhIx4GsRFl2YRA+5zMVZ7Po=;
 b=EQSfe/OGM1bDLSi6whKMEjNq4/6t5obsX6B3zW3tIoZLjKAB8+dPT5hT7TZitAkSiT
 fTwT0mW7viCTIF4OAb5wBT0PlPjORofhAKFSzh9V9G3tcQa7lEhUL13MOzBriYY+fqmc
 IVVRwfNl3wO2clI7usFeV426Mk2ctlMr3lIpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=pDdCO2Z9sHAkcidfpKBTGhIx4GsRFl2YRA+5zMVZ7Po=;
 b=Jza5EC9pcoO1uhYAtTbaRFP6y7Xyu16OBPp9+KOIVIhbiDc8h4NPANHk33/m8K66nj
 GpDGmFdBH/ZENoXL2uM8Ty00bK4+GnuvFUbXxkBLfUzTPi+l+Bg0lwYjcPyiKKLkRn7y
 q2CP8Wjf0Q576YD4Mr2xcYm00N4dIMmI5Kss/BOqBSKVD9shuQrhlJrpaH/wXqdznt7B
 t72G2yUkvyRKdLGJ8oCA3pjYKm1u9OfskiQok3BK7LQuq1IVfBV5jho0//fSWzz1apM9
 sB+/+ihQIspAWlCrKU0fvUjhPfoT3b/xob+lGMrAfdgMh1q46Voc20jfhLUO9gOThKcL
 7BCw==
X-Gm-Message-State: AOAM531+z+15p1iuzM3++2nactO3SUVo6kBFnv0PPoKSgVVIdPfjONeI
 oGodME802tnNO6FImKVlrIISIQ==
X-Google-Smtp-Source: ABdhPJy6vkhPnQjZPHpvyKo4dmGeTKsNWOhUCSOfAThna7ZkD4GSLlcdAsCMZnlM5vvm+zfGBdc8Tw==
X-Received: by 2002:a17:907:94cd:b0:6e0:b001:aeb6 with SMTP id
 dn13-20020a17090794cd00b006e0b001aeb6mr37652242ejc.283.1649838213381; 
 Wed, 13 Apr 2022 01:23:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 k11-20020a50c8cb000000b0041d97e9fd46sm879363edh.83.2022.04.13.01.23.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 01:23:32 -0700 (PDT)
Date: Wed, 13 Apr 2022 10:23:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <YlaIgxknwmPbsg1h@phenom.ffwll.local>
Mail-Followup-To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Dave Airlie <airlied@linux.ie>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20220406155030.0dacf051@canb.auug.org.au>
 <20220413100448.6f5f4de7@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220413100448.6f5f4de7@canb.auug.org.au>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc tree
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
Cc: Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 10:04:48AM +1000, Stephen Rothwell wrote:
> Hi all,
> 
> On Wed, 6 Apr 2022 15:50:30 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > After merging the drm-misc tree, today's linux-next build (htmldocs)
> > produced this warning:
> > 
> > include/drm/ttm/ttm_resource.h:226: warning: Function parameter or member 'pos' not described in 'ttm_lru_bulk_move'
> > 
> > Introduced by commit
> > 
> >   b0e2c9ea5afc ("drm/ttm: allow bulk moves for all domains")
> 
> This warning is now produced by the drm tree.

Christian, do you have a patch to fix this?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
