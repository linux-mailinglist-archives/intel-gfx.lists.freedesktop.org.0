Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9254F3ED6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 22:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A96B10ED56;
	Tue,  5 Apr 2022 20:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEA510ED56
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 20:54:55 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id b19so266390wrh.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 13:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=9NHEHnuZ3EwIt6oRfVHzwUDeTZ1Be9ZvXyD0BUY2xlM=;
 b=dMIxaOA+PwGmGbUBgSF+BtNgTUc4RKGxiEJxcOGGW41WPS35KSWlB4hv7i4DbpxOGC
 ZH1S+U4+vSggXY1XAGmMMGqiGDAAFbM1TiIfR+O950jkhP22hrN5zpqEUFn8ZJUif7W1
 UT9mutnETTYpsxdjQi923ezsNRj0CTq+AgkAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=9NHEHnuZ3EwIt6oRfVHzwUDeTZ1Be9ZvXyD0BUY2xlM=;
 b=cXZHdJ1ICdTSPS5T95YE9vzscu2qL4VljEOrfKA6cj6xOxsHINcFUNkUtfaKRKW7sF
 gjI5gWUVFWXpFitt9Y9Bvy12YND6pskJzQVD7MTsBASx8KymyT+FEi41tdZZyabfw4TU
 GfRgOMVUX2kHCHYdhPPx0+TN9s4dm2BRYDa+bDDMscSGsEC9c8W9/iT+A5EuDOqtyD2E
 TbdI1iKl+FvGIXhpzfh5jlBeFs3vZ+Dcqg1/0JRzFX3DbbFzk1PMnznSRqpMrV+NyxPB
 pg6FJSwLUI0FwIkcU8Q1BOCrLww+539l4H1Yi9Tw5RRhc/pakQn/QUBRtax7kiLqcqXy
 68IA==
X-Gm-Message-State: AOAM530QIHYgsXrR9vNAGuaEJqbdCjHuomsfH7zuo1vvfKPaEh76x/cA
 ACu2jCQ+X5MfKCDpCLGo2a3e0A==
X-Google-Smtp-Source: ABdhPJyhXpgIjQQcv0SKxB4ADopYBn4Ma33nCG5hGhtlwq04P9w9qJQ0mEskhuSP+q2j89By5mUeGg==
X-Received: by 2002:adf:f24d:0:b0:206:96b:4ea1 with SMTP id
 b13-20020adff24d000000b00206096b4ea1mr4059467wrp.694.1649192093853; 
 Tue, 05 Apr 2022 13:54:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 s1-20020adfb781000000b002060d4a8bd9sm8008923wre.17.2022.04.05.13.54.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 13:54:53 -0700 (PDT)
Date: Tue, 5 Apr 2022 22:54:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <Ykysm3EJd3XLrzyr@phenom.ffwll.local>
Mail-Followup-To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Claudio Suarez <cssk@net-c.es>, Du Cheng <ducheng2@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
 <20220208210824.2238981-7-daniel.vetter@ffwll.ch>
 <7f6d61f4-042f-8c9d-23ed-da6f1dcb20d0@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f6d61f4-042f-8c9d-23ed-da6f1dcb20d0@I-love.SAKURA.ne.jp>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 06/19] fbcon: Use delayed work for cursor
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Du Cheng <ducheng2@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 10, 2022 at 08:43:36PM +0900, Tetsuo Handa wrote:
> On 2022/02/09 6:08, Daniel Vetter wrote:
> > @@ -714,6 +700,8 @@ static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
> >  		ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
> >  		if (!ops)
> >  			err = -ENOMEM;
> > +
> > +		INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
> >  	}
> >  
> >  	if (!err) {
> 
> Memory allocation fault injection will hit NULL pointer dereference.

The error handling here is convoluted and I got this wrong, but a later
patch to extract an fbcon_open() helper fixes it. I'll fix this small
bisect issue for v3 anyway, thanks for taking a look at the patches.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
