Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62153666ED6
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 10:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5863910E8C1;
	Thu, 12 Jan 2023 09:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDBE10E12F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 09:59:06 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id l22so13708843eja.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 01:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=J6hhakTnHOXYkigiX8AOqUNYD4wS/fbrNoZrekC179k=;
 b=URXRY+j8e51xBHMw57lpKs/LMrFVB7x7mwxeG7bz2yZvwIBp2wOkbBMERLKwiAR8Yh
 fAFydpho93TTjF/nRVHVy1Z/3nlphqL+963OnecOhBhx47bdmFybz0UfVzq4dZTZfuRu
 SDd05QI+8MDE4VF0kvUSAfm74YnhefnA5rD4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=J6hhakTnHOXYkigiX8AOqUNYD4wS/fbrNoZrekC179k=;
 b=aFsaSL2iWBTfChhESFOYwFNvsc6DcIz1X++yQlClQiFU4UMCeL1ZITguzWrPRyQZ9v
 0fDA/7DIx0hDNo6yM6lN7tbxzQ0bFiEtbIc1PjwncqanTIWecGiSqf03dWYr/y+qPQxI
 5zq3+skqOAuQIjBwEB97tAIvaPhm4GbM61l/mwbdZXFpwbwdXjZRDObkbyn6zfqD0NBo
 jmlE4v+kiv+E5cn/nQxlSe4YQJGixPXBE0X+msxjLHBbR0sFU3BCew+YnKcGFyvtaIQU
 Uhzb16OQiudHYjWSd4Y/DcHNumMuRNJIr+H1szXGyyUUa6lkSbNw6VPnX6zyWiDdiHXQ
 Ax+w==
X-Gm-Message-State: AFqh2kr1A4eMni6Lf2symDAG2Tg4tSv7ZW3t3Wp+2BtUn/pNwNtXITNO
 uQqMNESZtOqv+1PH94qJ9lYPCg==
X-Google-Smtp-Source: AMrXdXsURD2ENiVSwBB98M3WPU/p/YghT0Cf4+cTjj1HWOa1VnfjeV2fgWrRZq2z1t/eBKEg/zFkNQ==
X-Received: by 2002:a17:907:c30c:b0:7c1:337e:5755 with SMTP id
 tl12-20020a170907c30c00b007c1337e5755mr40130811ejc.26.1673517544651; 
 Thu, 12 Jan 2023 01:59:04 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 w22-20020a1709061f1600b0081bfc79beaesm7230567ejj.75.2023.01.12.01.59.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Jan 2023 01:59:03 -0800 (PST)
Date: Thu, 12 Jan 2023 10:59:01 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <Y7/Z5dvADG6AspV3@phenom.ffwll.local>
Mail-Followup-To: Thomas Zimmermann <tzimmermann@suse.de>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
 <20230111154112.90575-2-daniel.vetter@ffwll.ch>
 <bad82927-1c58-4c2a-c265-571e10d1f67d@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bad82927-1c58-4c2a-c265-571e10d1f67d@suse.de>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/gma500: Use
 drm_aperture_remove_conflicting_pci_framebuffers
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
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 12, 2023 at 10:04:48AM +0100, Thomas Zimmermann wrote:
> Hi
> 
> Am 11.01.23 um 16:41 schrieb Daniel Vetter:
> > This one nukes all framebuffers, which is a bit much. In reality
> > gma500 is igpu and never shipped with anything discrete, so there should
> > not be any difference.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >   drivers/gpu/drm/gma500/psb_drv.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/gma500/psb_drv.c b/drivers/gpu/drm/gma500/psb_drv.c
> > index cd9c73f5a64a..9b0daf90dc50 100644
> > --- a/drivers/gpu/drm/gma500/psb_drv.c
> > +++ b/drivers/gpu/drm/gma500/psb_drv.c
> > @@ -429,7 +429,7 @@ static int psb_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >   	 * TODO: Refactor psb_driver_load() to map vdc_reg earlier. Then we
> >   	 *       might be able to read the framebuffer range from the device.
> >   	 */
> > -	ret = drm_aperture_remove_framebuffers(true, &driver);
> > +	ret = drm_aperture_remove_conflicting_pci_framebuffers(pdev, &driver);
> 
> This does not work. The comment just above the changed line explains why.
> The device uses shared memory similar to other integrated Intel chips. The
> console is somewhere in a 16 MiB range, which has been stolen by the BIOS
> from main memory. There's only a 1 MiB memory range on the device to program
> the device. Unless you want to refactor as described, this call has to cover
> the whole memory for now.

Uh. So it's maybe not so pretty, but what if I just call both functions?
That way we get the vga handling through the pci one, and the "make sure
there's no fb left" through the other one. Plus comment of course.

Otherwise we'd need to somehow keep the vga stuff in the non-pci paths,
and that just feels all kinds of wrong to me.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
