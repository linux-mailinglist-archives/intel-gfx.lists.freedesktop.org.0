Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9266C17660F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 22:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17836E848;
	Mon,  2 Mar 2020 21:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91D306E85B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 21:35:34 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id u9so673895wml.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 13:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WUQGRzbOHf3VUrH8ttxlXPHEBOJBRceFYwAE9zxsQoE=;
 b=e+InrO0ShFw4Fi6dowfj9CC9fTB3PjHUUZI9vDjKvKVqep0/+0VXBv5wcQ+uouDZMc
 L//YME084f01YdviIdRyGKdAnLhO6fReNMlzHyKaLgH1E7MiXr3Xg+wnAfZkWbDDseKq
 TxmEMMUG9bp1kQqC/yk60/Dj9C6B7QLdd+5U4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WUQGRzbOHf3VUrH8ttxlXPHEBOJBRceFYwAE9zxsQoE=;
 b=Yqg2WqjyGbMt2k7d37oAtXYwKXQd6z/kzbnbPqYiIy9rwZYwiSyUcQlT3v9MkItkCV
 IoDnlUrQ11TyGhXvffrUltb0tRtxtIpQDDQxf01rCf2TU6FBmfL4xtevwbP8Qwva3CPP
 uzYBH26Fn9n1B1A6VWJ+b75Swkj4epvp4k05JEd3ckjkrFhb+r/k9HWpk6i2jxSm+T3t
 iKUjGUV4kWx8Ecxp01fG0JY3nA41SCA7LN6k4FHXYoJFDDufWRkWJPPG1CTOqjDJ4s4O
 aFkHOpVayh6Bw9dzbSpheN5bsSxTts/OYkkMiABDtGDEWBGEe86NqJGoNoU2DKhza000
 6WnQ==
X-Gm-Message-State: ANhLgQ2QPNDXtgRRF/44yaw50jwGu9t17RPm8NyVouqO8X4pmI5PI3F+
 a54FOnrMQ0W/tOMTmr+3hs96Bw==
X-Google-Smtp-Source: ADFU+vslzRs314WLgyeFmSc0ln3uIf3xu+Gk4gsqhAG9vtNlZp4HrssymFGNmmhaSIyvZhYLxBQNZA==
X-Received: by 2002:a1c:7419:: with SMTP id p25mr373942wmc.159.1583184932934; 
 Mon, 02 Mar 2020 13:35:32 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i1sm7902468wrs.18.2020.03.02.13.35.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 13:35:32 -0800 (PST)
Date: Mon, 2 Mar 2020 22:35:30 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20200302213530.GH2363188@phenom.ffwll.local>
References: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200302125649.61443-10-pankaj.laxminarayan.bharadiya@intel.com>
 <20200302132942.GP11960@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302132942.GP11960@pendragon.ideasonboard.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/todo: Update drm_fb_helper tasks
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
Cc: Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 02, 2020 at 03:29:42PM +0200, Laurent Pinchart wrote:
> Hi Pankaj,
> 
> Thank you for the patch.
> 
> On Mon, Mar 02, 2020 at 06:26:49PM +0530, Pankaj Bharadiya wrote:
> > Remove completed drm_fb_helper tasks from todo list.
> > 
> > Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> > ---
> >  Documentation/gpu/todo.rst | 15 ++++-----------
> >  1 file changed, 4 insertions(+), 11 deletions(-)
> > 
> > diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> > index ccf5e8e34222..98d8782e1440 100644
> > --- a/Documentation/gpu/todo.rst
> > +++ b/Documentation/gpu/todo.rst
> > @@ -362,17 +362,10 @@ Level: Starter
> >  drm_fb_helper tasks
> >  -------------------
> >  
> > -- drm_fb_helper_restore_fbdev_mode_unlocked() should call restore_fbdev_mode()
> > -  not the _force variant so it can bail out if there is a master. But first
> > -  these igt tests need to be fixed: kms_fbcon_fbt@psr and
> > -  kms_fbcon_fbt@psr-suspend.
> > -
> > -- The max connector argument for drm_fb_helper_init() isn't used anymore and
> > -  can be removed.
> > -
> > -- The helper doesn't keep an array of connectors anymore so these can be
> > -  removed: drm_fb_helper_single_add_all_connectors(),
> > -  drm_fb_helper_add_one_connector() and drm_fb_helper_remove_one_connector().
> > +drm_fb_helper_restore_fbdev_mode_unlocked() should call restore_fbdev_mode()
> > +not the _force variant so it can bail out if there is a master. But first
> > +these igt tests need to be fixed: kms_fbcon_fbt@psr and
> > +kms_fbcon_fbt@psr-suspend.

This one here is also done already, see 

commit 64914da24ea95d2b2f7017d014d74c26005d8780
Author: Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Tue Feb 4 16:01:43 2020 +0100

    drm/fbdev-helper: don't force restores

So you can delet the entire todo entry completely.

btw would be good to list the patches that fixed the other ones too, if
you can find them quickly in the logfiles.
-Daniel
    
> 
> No need to reflow, you can keep the first list entry as-is and just
> remove the next two. With this fixed,
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> >  Level: Intermediate
> >  
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
