Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC33C1A8570
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95306E139;
	Tue, 14 Apr 2020 16:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 363056E139
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 16:43:38 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id a25so15169483wrd.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 09:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JmBE6vDIWacgssdyxDTzUlIuzDLnrOU/kmYU+faUE80=;
 b=HDPKcEHNK3kFswrnDMcYObxVyGCkRr4lLdNCE1Y++SrJPnniIiUk4vAnBBU2l8e7Qx
 +zbytWp7xUBq2swbo5pruV8NqHKiS9nbYZ+KP1KW/oAc8tIQecHEHuZaW41RSntv1uq7
 JOJcqPyCqYOVDimKiPrc3FYoxVpcP/91zAC9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JmBE6vDIWacgssdyxDTzUlIuzDLnrOU/kmYU+faUE80=;
 b=JhXTCu3ifGTPxhCbr2KKzAiel0CU025tKl0RmLIb3lngVLNwN24gGmeNXEZpACTLPe
 uAZzwsSyoqkwjR9WCDbfK/5xvRbfadar2P2Y5NPcEZrrfkEYbyb1QIJgvw0Guhm1xVCE
 BdGyy99nl8o3fc8mhdNQ8/eSCG4EkXBgnxC72DtQb78y1B5/kySxEouJF5J7OfD6XPLP
 60kuUI4FYZnbSZZ5Gcq9d9sLotLgFnV2DfwbJhTeModNUGW8HwRVNGuFg71YtLecwxg3
 hX21UxwPfq317ALJHliWh7+jPxcflHhT4oFapilnjnXODyEuy55xC+wo8naAqq5UVhWM
 yFDQ==
X-Gm-Message-State: AGi0PuaC1gEjSE1HtWIGuFLaMiF4sDbxcZMx4cONufJizyDANVS6jr/K
 B9VV1nZfG5wZygh9hW8M9h6zfA==
X-Google-Smtp-Source: APiQypLUenBTIXRPBDr6SLPoUYSOP6mcSouLw6uqb853nbFSJZTCHc5U8Cvy2K6UJ0X14UNm3q6tkA==
X-Received: by 2002:adf:9564:: with SMTP id 91mr25377026wrs.246.1586882616857; 
 Tue, 14 Apr 2020 09:43:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d7sm19733270wrr.77.2020.04.14.09.43.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:43:36 -0700 (PDT)
Date: Tue, 14 Apr 2020 18:43:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200414164334.GY3456981@phenom.ffwll.local>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-4-daniel.vetter@ffwll.ch>
 <20200408070207.GD14965@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408070207.GD14965@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 03/44] drm/device: Deprecate dev_private
 harder
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 08, 2020 at 09:02:07AM +0200, Sam Ravnborg wrote:
> On Fri, Apr 03, 2020 at 03:57:47PM +0200, Daniel Vetter wrote:
> > We've had lots of conversions to embeddeding, but didn't stop using
> > ->dev_private. Which defeats the point of this.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Went right ahead and pushed this since a doc patch only, thanks for taking
a look!
-Daniel

> > ---
> >  include/drm/drm_device.h | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> > index d39132b477dd..a55874db9dd4 100644
> > --- a/include/drm/drm_device.h
> > +++ b/include/drm/drm_device.h
> > @@ -88,9 +88,12 @@ struct drm_device {
> >  	/**
> >  	 * @dev_private:
> >  	 *
> > -	 * DRM driver private data. Instead of using this pointer it is
> > -	 * recommended that drivers use drm_dev_init() and embed struct
> > -	 * &drm_device in their larger per-device structure.
> > +	 * DRM driver private data. This is deprecated and should be left set to
> > +	 * NULL.
> > +	 *
> > +	 * Instead of using this pointer it is recommended that drivers use
> > +	 * drm_dev_init() and embed struct &drm_device in their larger
> > +	 * per-device structure.
> >  	 */
> >  	void *dev_private;
> >  
> > -- 
> > 2.25.1
> > 
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
