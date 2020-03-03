Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC2E17713D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 09:27:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D750C6EA11;
	Tue,  3 Mar 2020 08:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9365C6EA11
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 08:27:30 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id j1so422413wmi.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 00:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=envAw8gA0RKTACMDEm2KbCUli5Pbd52qjambhk/W3oU=;
 b=PGV3dqbyiAEHWNcWW61Gm89zaeE6HqwphIxclYN26/ubHBrR/2WNRIZWxH47fHfodj
 ruzBVFTqVcQ/wb0B+h5PSdwttFrApcqJF+VI7NjA7nkrTSM3qZwzDQiZ14EsFgMqUFIM
 MJ7Mmnqp2n71+0O/EbqfeuFquv6fEz58a5Vjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=envAw8gA0RKTACMDEm2KbCUli5Pbd52qjambhk/W3oU=;
 b=lcRKQ0/gPE2hhZWTi4AO9Ng0lyyGuT6o34PvPIneCdaB++3ephNYPm41bOEv59js0d
 cn9LxL687sKE4UlLnkppR7/cRYQe+ua1bfYZ0IPnqIHSRHIrGnyYyXnNep8UToVDrXO1
 NmIqh5og1Fwx/Y89r0l0m5rYtDeP6nqTTL4rqggdpzKs28+6fWTaeTWYiP9KkO9Uuanq
 cjs0ciZ6NBJFRaV1FPRkM284TZuUt0PZbZjifKYMLEYFWku42MJ2aiLBicJAwYod+jVG
 gASyOKqIonLnxuOPWtKJGqL3AIluFEa3457UDDgXlg3+JAtiEtBzEE5u/zClSV1lU8Wo
 b13A==
X-Gm-Message-State: ANhLgQ3xP/iEqqIbDiimnWFq21b7wS36aS0tA/gwV8ea/BROp7KnJvX/
 aSISDIKvjjkTDN/E+2gmZaHzpw==
X-Google-Smtp-Source: ADFU+vv7jQX7S+E+km6TFyF76Gbv8kOh0SVJ6E0GZadYOoWm3Fweewas3pR8oHG8XMV4wQklwawbFA==
X-Received: by 2002:a1c:4c0c:: with SMTP id z12mr3040178wmf.63.1583224049100; 
 Tue, 03 Mar 2020 00:27:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o16sm17607147wrj.5.2020.03.03.00.27.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 00:27:28 -0800 (PST)
Date: Tue, 3 Mar 2020 09:27:26 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <20200303082726.GL2363188@phenom.ffwll.local>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
 <20200302222631.3861340-10-daniel.vetter@ffwll.ch>
 <20200303074934.vlqxiye7lydnoykd@sirius.home.kraxel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303074934.vlqxiye7lydnoykd@sirius.home.kraxel.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 09/51] drm/cirrus: Use drmm_add_final_kfree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 03, 2020 at 08:49:34AM +0100, Gerd Hoffmann wrote:
> > @@ -575,9 +574,12 @@ static int cirrus_pci_probe(struct pci_dev *pdev,
> >  
> >  	dev = &cirrus->dev;
> >  	ret = drm_dev_init(dev, &cirrus_driver, &pdev->dev);
> > -	if (ret)
> > -		goto err_free_cirrus;
> > +	if (ret) {
> > +		kfree(cirrus);
> > +		goto err_pci_release;
> > +	}
> >  	dev->dev_private = cirrus;
> > +	drmm_add_final_kfree(dev, cirrus);
> 
> That doesn't look like an error path improvement.
> With patch #30 applied it'll looks alot better though.
> So maybe squash the patches?

Breaks the patch set evolution, there's a _lot_ of dependencies in here to
make sure we never break anything interim. But yeah that's why I created
this entire series, since with just the first part it's really not any
better. I also have a pile more ideas on top, so hopefully once this lands
I can get around to them and make everything even better :-)

Cheers, Daniel

> 
> In any case:
> Acked-by: Gerd Hoffmann <kraxel@redhat.com>
> 
> cheers,
>   Gerd
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
