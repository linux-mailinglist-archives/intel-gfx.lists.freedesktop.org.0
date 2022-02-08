Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6ED4ADA54
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 14:46:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CC110E4C6;
	Tue,  8 Feb 2022 13:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B0310E4C6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 13:46:37 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id s13so52336350ejy.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 05:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=n+LaJyZileNVYfrYaX66cB1MBmYgBiVsCyxJAwLVUMM=;
 b=lI+BZuVcaX39tM3Hzn6AV7cMAOYQiuorb7ECkjKy19ZLPsqgt5HccWa6JVE5WSOUzf
 zkF5zK1pNUirlIF9c0I6rmjLcjRY61AIgt0gVX3PzKHHihcmAvkzPuyk6Vsiwh52MJlx
 nJbFdhibExMF4h5Vct0UMFUcQtBrt70JaaTJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=n+LaJyZileNVYfrYaX66cB1MBmYgBiVsCyxJAwLVUMM=;
 b=AeyOwScRi9TMPGB9jRIvBUdj1GF08BVbqrIDcl+PDmU3/Lpj9u8LmI9MTLI+SPT9Z3
 oTY7kQkqPlwo8xEKzvk2lhIMd/56tCpjMAXAYjJUveJ03FtP6jxkmHcaG7HG2Bud3LZz
 qhi5doquOqNGME06WB7OfTWFHOuNpQbpyP+qVHnFDX+nQYVPNdvyu7QxIl0Luk1cjiHP
 /Eg6WLoiMwOmR3PIedf3nAuu169nheNL8p/MgDOWhwIVcx/aDz4kMLXdShJNlhMaDHuk
 R8eVp4gr/ivO9U+1uksaREyYDy/rflavTkg+ogHjFV0G9+AS8ljYVmwpvkm/EgJX9Hjc
 98lw==
X-Gm-Message-State: AOAM5303Yw2etTeaDwLlqcXu2TsocucKXH3h32YH2+zfFQbwQOBZv25i
 nLucaWp/+vpMWGnW2z5Qcg1RXQ==
X-Google-Smtp-Source: ABdhPJxVk+yKuksCrmEzucsFv8fLMfNwj3TQ4MGzWAZDuSk8mMV/chycYqMAJ3qCJ8UZgxkmkgB4aw==
X-Received: by 2002:a17:907:da3:: with SMTP id
 go35mr3771651ejc.456.1644327995333; 
 Tue, 08 Feb 2022 05:46:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e7sm331032ejm.133.2022.02.08.05.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 05:46:34 -0800 (PST)
Date: Tue, 8 Feb 2022 14:46:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <YgJ0OQxt4KIPD9uz@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Helge Deller <deller@gmx.de>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-11-daniel.vetter@ffwll.ch>
 <YfxJlH2NDnLk/GUw@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YfxJlH2NDnLk/GUw@ravnborg.org>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 10/21] fb: Delete fb_info->queue
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 03, 2022 at 10:31:00PM +0100, Sam Ravnborg wrote:
> On Mon, Jan 31, 2022 at 10:05:41PM +0100, Daniel Vetter wrote:
> > It was only used by fbcon, and that now switched to its own,
> > private work.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Helge Deller <deller@gmx.de>
> > Cc: linux-fbdev@vger.kernel.org
> I would merge this with the patch that drops the usage

Yeah, but I like to split these out so that if this does break something,
it's much easier to revert. In case I overlooked something somewhere.

It's imo different if the cleanup is directly related to the preceeding
prep work, but this is a generic workqueue, and the cursor logic is rather
unrelated. And if I remember my history digging right, there were actually
other uses of this.
-Daniel

> 
> > ---
> >  include/linux/fb.h | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/include/linux/fb.h b/include/linux/fb.h
> > index 02f362c661c8..a8a00d2ba1f3 100644
> > --- a/include/linux/fb.h
> > +++ b/include/linux/fb.h
> > @@ -449,7 +449,6 @@ struct fb_info {
> >  	struct fb_var_screeninfo var;	/* Current var */
> >  	struct fb_fix_screeninfo fix;	/* Current fix */
> >  	struct fb_monspecs monspecs;	/* Current Monitor specs */
> > -	struct work_struct queue;	/* Framebuffer event queue */
> >  	struct fb_pixmap pixmap;	/* Image hardware mapper */
> >  	struct fb_pixmap sprite;	/* Cursor hardware mapper */
> >  	struct fb_cmap cmap;		/* Current cmap */
> > -- 
> > 2.33.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
