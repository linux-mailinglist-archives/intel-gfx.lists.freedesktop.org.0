Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8F755A439
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jun 2022 00:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7549110F5C7;
	Fri, 24 Jun 2022 22:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1683C10F5CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 22:12:09 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id n1so4802056wrg.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 15:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8yhNbjErvck0pOEg3bnA1kkRz6NO4xJ2kvU3vr5NWNk=;
 b=Ygx++iURDaY9nN8UFg7C2Lt44vsIlaWDmJJ4oU5wC6paeDqFK6XJWpyhykSzFWGDFI
 7bWnK7eyHDZbFovj3q742E4sc4aHu4J3CETMVh+WwFt04zKB2Y+Dq/wGKSjgV4hs/Rfr
 sIPfJC5/QxPMTTTLjCiHh312B4u4HxNvNXoNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8yhNbjErvck0pOEg3bnA1kkRz6NO4xJ2kvU3vr5NWNk=;
 b=BJQub0JDaJEkDh960hUernNaD0bNmQ/YgDmg9jHgsNocb2KLKEzX1t2J+UcqBuVAq+
 KTFGabVIxH/lKMUYkNPt59ZrnvPetYLph9FHEK/fbZJfLBaYXeVuvuKtLTvZOyjtl78U
 RPiUTsIqbmvN4dDrXDWgEuOvo+4hq3jFcYxdR8xzZGa7YdRsDf/RrJ8qZuvo9N/U5voG
 /rMYU6Xc+jn4piTwq0OU25rBIj3yG2ZPhnQqLmWki8/VGy4ggH7y0Z5i3ehnfjsGeBsL
 QIoQujDLkE7xU1paViW8PQgXfhx2iP0FNGBQfBOZOT8FCQxgHHHvXMYTCiHHJCcoPo3/
 ZqJw==
X-Gm-Message-State: AJIora9BiB1JCzE0VcMl2hnmUudxaDulPEffncp67bqWiemO3LXFBCFj
 oCKZr6vleExvnqOn4e9UGdvRUg==
X-Google-Smtp-Source: AGRyM1u47setXXuP4XMtxuQzVntWvoSQw2qBhxqyTvF7/IdYgDzYr4YHs/67LV7qxeYTLRjlraYC5A==
X-Received: by 2002:a05:6000:188c:b0:218:5b98:445 with SMTP id
 a12-20020a056000188c00b002185b980445mr1060007wri.465.1656108727478; 
 Fri, 24 Jun 2022 15:12:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 j6-20020adff546000000b0021b862ad439sm4035042wrp.9.2022.06.24.15.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jun 2022 15:12:06 -0700 (PDT)
Date: Sat, 25 Jun 2022 00:12:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YrY2tRX/kqGtZNC2@phenom.ffwll.local>
References: <YrQeAAVvQ6jxu2dl@linux-uq9g>
 <a3bf32dc-bcae-496c-0c3a-5fe5c5c89c3f@suse.de>
 <87r13frdjl.fsf@intel.com>
 <12471428-9bfb-0249-c305-8009c5af1f25@suse.de>
 <87bkujrc4n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bkujrc4n.fsf@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 23, 2022 at 11:56:56AM +0300, Jani Nikula wrote:
> On Thu, 23 Jun 2022, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> > Hi
> >
> > Am 23.06.22 um 10:26 schrieb Jani Nikula:
> >> On Thu, 23 Jun 2022, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> >>> I forgot to mention that we backmerged v5.19-rc2. That's why the list of
> >>> changed files is so long.
> >> 
> >> I thought we should only backmerge Linus' tree via backmerging drm-next,
> >> which avoids this problem altogether.
> >
> > I did backmerge via drm-next.
> 
> Then I'm confused how it all shows up the the diffstat. If you backmerge
> drm-next to drm-misc-next, and then generate your drm-misc-next pull
> request against drm-next (dim pull-request drm-misc-next drm/drm-next),
> I don't think it should show up.

git is shit (tm)

The git commit list will look reasonable, but the diff will make a
complete mess out of non-linear history. I think it's this case here too.

I think the way to fix it is to do a manual test merge and then to a diff
against the first parent (assuming you did the test merge forward, not
backwards). Without the test merge git tries to do some kind of multi-way
diffstat.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
