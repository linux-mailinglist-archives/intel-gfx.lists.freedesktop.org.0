Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE44AE0B4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 19:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 754F810E970;
	Tue,  8 Feb 2022 18:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com
 [91.221.196.228])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5879510E970
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 18:25:26 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id a16c29e0-890c-11ec-ac19-0050568cd888;
 Tue, 08 Feb 2022 18:26:28 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id EB6D7194BAE;
 Tue,  8 Feb 2022 19:25:24 +0100 (CET)
Date: Tue, 8 Feb 2022 19:25:22 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Claudio Suarez <cssk@net-c.es>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Message-ID: <YgK1ktxamm7x0aCa@ravnborg.org>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-14-daniel.vetter@ffwll.ch>
 <Yf2AAx9rlIsh/h8I@ravnborg.org>
 <YgJ19zts7nxCjGk5@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YgJ19zts7nxCjGk5@phenom.ffwll.local>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 02:53:59PM +0100, Daniel Vetter wrote:
> On Fri, Feb 04, 2022 at 08:35:31PM +0100, Sam Ravnborg wrote:
> > On Mon, Jan 31, 2022 at 10:05:44PM +0100, Daniel Vetter wrote:
> > > No idea why con2fb_acquire_newinfo() initializes much less than
> > > fbcon_startup(), but so be it. From a quick look most of the
> > > un-initialized stuff should be fairly harmless, but who knows.
> > > 
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > Cc: Claudio Suarez <cssk@net-c.es>
> > > Cc: Du Cheng <ducheng2@gmail.com>
> > > ---
> > >  drivers/video/fbdev/core/fbcon.c | 74 +++++++++++++-------------------
> > >  1 file changed, 31 insertions(+), 43 deletions(-)
> > > 
> > > diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> > > index b83a5a77d8a8..5a3391ff038d 100644
> > > --- a/drivers/video/fbdev/core/fbcon.c
> > > +++ b/drivers/video/fbdev/core/fbcon.c
> > > @@ -680,8 +680,18 @@ static int fbcon_invalid_charcount(struct fb_info *info, unsigned charcount)
> > >  
> > >  #endif /* CONFIG_MISC_TILEBLITTING */
> > >  
> > > +static void fbcon_release(struct fb_info *info)
> > > +{
> > > +	if (info->fbops->fb_release)
> > > +		info->fbops->fb_release(info, 0);
> > > +
> > > +	module_put(info->fbops->owner);
> > > +}
> > > +
> > >  static int fbcon_open(struct fb_info *info)
> > >  {
> > > +	struct fbcon_ops *ops;
> > > +
> > >  	if (!try_module_get(info->fbops->owner))
> > >  		return -ENODEV;
> > >  
> > > @@ -691,19 +701,22 @@ static int fbcon_open(struct fb_info *info)
> > >  		return -ENODEV;
> > >  	}
> > >  
> > > -	return 0;
> > > -}
> > > +	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
> > > +	if (!ops) {
> > > +		fbcon_release(info);
> > > +		return -ENOMEM;
> > > +	}
> > >  
> > > -static void fbcon_release(struct fb_info *info)
> > > -{
> > > -	if (info->fbops->fb_release)
> > > -		info->fbops->fb_release(info, 0);
> > > +	INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
> > > +	ops->info = info;
> > > +	info->fbcon_par = ops;
> > > +	ops->cur_blink_jiffies = HZ / 5;
> > >  
> > > -	module_put(info->fbops->owner);
> > > +	return 0;
> > >  }
> > >  
> > >  static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
> > > -				  int unit, int oldidx)
> > > +				  int unit)
> > >  {
> > >  	struct fbcon_ops *ops = NULL;
> > >  	int err;
> > > @@ -712,27 +725,10 @@ static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
> > >  	if (err)
> > >  		return err;
> > >  
> > > -	if (!err) {
> > > -		ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
> > > -		if (!ops)
> > > -			err = -ENOMEM;
> > > -
> > > -		INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
> > > -	}
> > > -
> > > -	if (!err) {
> > > -		ops->cur_blink_jiffies = HZ / 5;
> > > -		ops->info = info;
> > > -		info->fbcon_par = ops;
> > > -
> > > -		if (vc)
> > > -			set_blitting_type(vc, info);
> > > -	}
> > > +	ops = info->fbcon_par;
> > >  
> > > -	if (err) {
> > > -		con2fb_map[unit] = oldidx;
> > > -		fbcon_release(info);
> > > -	}
> > > +	if (vc)
> > > +		set_blitting_type(vc, info);
> > >  
> > >  	return err;
> > >  }
> > > @@ -840,9 +836,11 @@ static int set_con2fb_map(int unit, int newidx, int user)
> > >  
> > >  	found = search_fb_in_map(newidx);
> > >  
> > > -	con2fb_map[unit] = newidx;
> > > -	if (!err && !found)
> > > -		err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
> > > +	if (!err && !found) {
> > > +		err = con2fb_acquire_newinfo(vc, info, unit);
> > > +		if (!err)
> > > +			con2fb_map[unit] = newidx;
> > > +	}
> > This looks like an unintentional change of functionality as con2fb_map[unit] is
> > only assigned when we do a con2fb_acquire_newinfo().
> > 
> > Staring at the code I could not say it is wrong, but not nice to hide
> > the change in this patch.
> 
> Nope, it's not an unintentional bugfix. The old con2fb_acquire_newinfo did
> reset con2fb_map to oldidx upon failure, which I've found to be a most
> bizarre calling convention. So this sorts this out.
> 
> The reason I smashed this into the same patch is that I had to remove the
> fbcon_release call, and so the error handling in there looked even more
> funny. But I indeed failed to explain this all in the commit message.
> 
> Ack with that explainer, or do you want me to split this out properly?

Please update the commit message, then this patch has my:
Acked-by: Sam Ravnborg <sam@ravnborg.org>
