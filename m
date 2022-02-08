Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F984ADA71
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 14:54:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E5E10E587;
	Tue,  8 Feb 2022 13:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 665FE10E4C6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 13:54:03 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id v12so2178641wrv.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 05:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=4O7t+VO/eUKPV3zCNKFSbvq0Ljp3XWU8Qf/HjmcbkEc=;
 b=gnx0wctQF0ZOrloVcj5vzxR/MoXGQ5grkToQFc0SpnV2toiN0RcEU0b0Joz5mj4Uz1
 aoQNEtoZVQWUxi5PJcDDd+IJmgG3zUT40M1A6XASvbF1bwhM1Tyd+B7c5s4K+rgh3g1m
 H0laAeLoROpuVYCKj2hPvYin3DylTSujPrm5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=4O7t+VO/eUKPV3zCNKFSbvq0Ljp3XWU8Qf/HjmcbkEc=;
 b=pTFIPxM1RJxLmj2Z48hZAVBlA6HNKH5V6hCl633iGvGPzlsvVEjCrrfysq9ds8yQ74
 foi9Yj+Q4zZimzMtBglaCiev5gAPY4oe9W3mFXNXpDe2yeYpMfwJkjAUguXG0IFqTWAV
 yVgjz7HHkyX/JoRb6qGxdmQ0bY0xFSUYRJ6xAx7O0Zjxn04nTM6Uc8QXMBhKjl2uEmGH
 jxKATuVUIwVv/zE1WeEFr5WSRIsO8Hip3tAE3o5L4Fn3ODGuphTfwB2ftmM7T3XP4TYm
 2CQy6jdN8xQtX+26Z1Ie458SuXAFjAbqUUt0Tj75Gvmg/pryszwOAVagvAOM/6MPu2VQ
 0NNw==
X-Gm-Message-State: AOAM531GBI9IxHKADct9tBK+OdP+m+laC8gXLpJtUQgod0bdydhDgQgD
 GRLKCJBmgkLwChlDxoa+I12Mcw==
X-Google-Smtp-Source: ABdhPJwtMvoSlZ1zJLr+xk0DKI6HZ/HhJrH76WUKQbFlTNz3OgcD8QA8YxnqOWoVUYW/4bYjDOFLTg==
X-Received: by 2002:adf:de12:: with SMTP id b18mr3660421wrm.293.1644328441602; 
 Tue, 08 Feb 2022 05:54:01 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id bg23sm2829083wmb.5.2022.02.08.05.54.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 05:54:00 -0800 (PST)
Date: Tue, 8 Feb 2022 14:53:59 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <YgJ19zts7nxCjGk5@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Claudio Suarez <cssk@net-c.es>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-14-daniel.vetter@ffwll.ch>
 <Yf2AAx9rlIsh/h8I@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yf2AAx9rlIsh/h8I@ravnborg.org>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 13/21] fbcon: move more common code into
 fb_open()
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
Cc: linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 04, 2022 at 08:35:31PM +0100, Sam Ravnborg wrote:
> On Mon, Jan 31, 2022 at 10:05:44PM +0100, Daniel Vetter wrote:
> > No idea why con2fb_acquire_newinfo() initializes much less than
> > fbcon_startup(), but so be it. From a quick look most of the
> > un-initialized stuff should be fairly harmless, but who knows.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Claudio Suarez <cssk@net-c.es>
> > Cc: Du Cheng <ducheng2@gmail.com>
> > ---
> >  drivers/video/fbdev/core/fbcon.c | 74 +++++++++++++-------------------
> >  1 file changed, 31 insertions(+), 43 deletions(-)
> > 
> > diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> > index b83a5a77d8a8..5a3391ff038d 100644
> > --- a/drivers/video/fbdev/core/fbcon.c
> > +++ b/drivers/video/fbdev/core/fbcon.c
> > @@ -680,8 +680,18 @@ static int fbcon_invalid_charcount(struct fb_info *info, unsigned charcount)
> >  
> >  #endif /* CONFIG_MISC_TILEBLITTING */
> >  
> > +static void fbcon_release(struct fb_info *info)
> > +{
> > +	if (info->fbops->fb_release)
> > +		info->fbops->fb_release(info, 0);
> > +
> > +	module_put(info->fbops->owner);
> > +}
> > +
> >  static int fbcon_open(struct fb_info *info)
> >  {
> > +	struct fbcon_ops *ops;
> > +
> >  	if (!try_module_get(info->fbops->owner))
> >  		return -ENODEV;
> >  
> > @@ -691,19 +701,22 @@ static int fbcon_open(struct fb_info *info)
> >  		return -ENODEV;
> >  	}
> >  
> > -	return 0;
> > -}
> > +	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
> > +	if (!ops) {
> > +		fbcon_release(info);
> > +		return -ENOMEM;
> > +	}
> >  
> > -static void fbcon_release(struct fb_info *info)
> > -{
> > -	if (info->fbops->fb_release)
> > -		info->fbops->fb_release(info, 0);
> > +	INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
> > +	ops->info = info;
> > +	info->fbcon_par = ops;
> > +	ops->cur_blink_jiffies = HZ / 5;
> >  
> > -	module_put(info->fbops->owner);
> > +	return 0;
> >  }
> >  
> >  static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
> > -				  int unit, int oldidx)
> > +				  int unit)
> >  {
> >  	struct fbcon_ops *ops = NULL;
> >  	int err;
> > @@ -712,27 +725,10 @@ static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
> >  	if (err)
> >  		return err;
> >  
> > -	if (!err) {
> > -		ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
> > -		if (!ops)
> > -			err = -ENOMEM;
> > -
> > -		INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
> > -	}
> > -
> > -	if (!err) {
> > -		ops->cur_blink_jiffies = HZ / 5;
> > -		ops->info = info;
> > -		info->fbcon_par = ops;
> > -
> > -		if (vc)
> > -			set_blitting_type(vc, info);
> > -	}
> > +	ops = info->fbcon_par;
> >  
> > -	if (err) {
> > -		con2fb_map[unit] = oldidx;
> > -		fbcon_release(info);
> > -	}
> > +	if (vc)
> > +		set_blitting_type(vc, info);
> >  
> >  	return err;
> >  }
> > @@ -840,9 +836,11 @@ static int set_con2fb_map(int unit, int newidx, int user)
> >  
> >  	found = search_fb_in_map(newidx);
> >  
> > -	con2fb_map[unit] = newidx;
> > -	if (!err && !found)
> > -		err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
> > +	if (!err && !found) {
> > +		err = con2fb_acquire_newinfo(vc, info, unit);
> > +		if (!err)
> > +			con2fb_map[unit] = newidx;
> > +	}
> This looks like an unintentional change of functionality as con2fb_map[unit] is
> only assigned when we do a con2fb_acquire_newinfo().
> 
> Staring at the code I could not say it is wrong, but not nice to hide
> the change in this patch.

Nope, it's not an unintentional bugfix. The old con2fb_acquire_newinfo did
reset con2fb_map to oldidx upon failure, which I've found to be a most
bizarre calling convention. So this sorts this out.

The reason I smashed this into the same patch is that I had to remove the
fbcon_release call, and so the error handling in there looked even more
funny. But I indeed failed to explain this all in the commit message.

Ack with that explainer, or do you want me to split this out properly?
-Daniel

> 
> 	Sam
> 
> 
> >  
> >  	/*
> >  	 * If old fb is not mapped to any of the consoles,
> > @@ -939,20 +937,10 @@ static const char *fbcon_startup(void)
> >  	if (fbcon_open(info))
> >  		return NULL;
> >  
> > -	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
> > -	if (!ops) {
> > -		fbcon_release(info);
> > -		return NULL;
> > -	}
> > -
> > -	INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
> > -
> > +	ops = info->fbcon_par;
> >  	ops->currcon = -1;
> >  	ops->graphics = 1;
> >  	ops->cur_rotate = -1;
> > -	ops->cur_blink_jiffies = HZ / 5;
> > -	ops->info = info;
> > -	info->fbcon_par = ops;
> >  
> >  	p->con_rotate = initial_rotation;
> >  	if (p->con_rotate == -1)
> > @@ -1022,7 +1010,7 @@ static void fbcon_init(struct vc_data *vc, int init)
> >  		return;
> >  
> >  	if (!info->fbcon_par)
> > -		con2fb_acquire_newinfo(vc, info, vc->vc_num, -1);
> > +		con2fb_acquire_newinfo(vc, info, vc->vc_num);
> >  
> >  	/* If we are not the first console on this
> >  	   fb, copy the font from that console */
> > -- 
> > 2.33.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
