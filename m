Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9FC4ADA3D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 14:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADD910E4C6;
	Tue,  8 Feb 2022 13:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E42810E322
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 13:42:29 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id d10so52493271eje.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 05:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=6maJYITlPCb5At2tK8fKqUeOaLx2xzFZeuz9bTxWtaA=;
 b=NXKKgezbC9q9uaMIRiYHTN4bTXXumjui8I6ooy0xz8c5Emc2s/AqQ2WgPMbFEB1JPi
 tt2C2CyOwM6xd/DPqgbd6nefn2Px3gvIEKg1+9NggBp29xPz1qIXxCAlvt5pzhWXmxWM
 zG6YqnU4MScmVN6BImvTWU9YxJONaSzMmUzyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=6maJYITlPCb5At2tK8fKqUeOaLx2xzFZeuz9bTxWtaA=;
 b=ws9YTT8bqUKI/fjgrRktiA3PF81sOUp+H4EaRYnlBt3E3t0hpt8q8lCoaJnLy/aFPF
 5PjWWMo3b4VhzMWs+wzOqVkTuKcScO8o6fOSNIPuh8zf7Uhh6qWEXcEC2h5n1cNP/ogC
 GU5KKPpfUAC81qq1F3H1nlNjmcsjPX4y1+MceNN+cUG8CRrOrJA1AeomvinoAfyV5sFd
 NQk2o6B+Wgf1QTnManTzMnMW3ooW58G680AGCjdD1I6IutCjtY7DB3mQs3uEgDS2h3Bi
 vrWH7uLI3VNTP+aoTQBLhmrRri+0w8EUlIl4VSxqVmUDwrwynuhEH0PXbJ5tvHuIerDc
 w53g==
X-Gm-Message-State: AOAM530gwA01nZtlI33u0tTz2t6bKyEAYqeoxhBUarQdEQB/KWjYLJzH
 xV+iXSsHZ1fsF1dFLUpm83/bnA==
X-Google-Smtp-Source: ABdhPJyjB58jfzpksRF1ZWcvHtyXk7I9BbvVV9xbDrzhC2PMVDFWercPTHr2GmACQLgZcvydqAOBYg==
X-Received: by 2002:a17:907:760a:: with SMTP id
 jx10mr3810310ejc.713.1644327748049; 
 Tue, 08 Feb 2022 05:42:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i6sm4831019eja.132.2022.02.08.05.42.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 05:42:27 -0800 (PST)
Date: Tue, 8 Feb 2022 14:42:25 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <YgJzQboE3VVj6OL7@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Claudio Suarez <cssk@net-c.es>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Helge Deller <deller@gmx.de>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-7-daniel.vetter@ffwll.ch>
 <Yfw+6VUOX6xcf664@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yfw+6VUOX6xcf664@ravnborg.org>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 06/21] fbcon: delete delayed loading code
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 03, 2022 at 09:45:29PM +0100, Sam Ravnborg wrote:
> Hi Daniel,
> 
> On Mon, Jan 31, 2022 at 10:05:37PM +0100, Daniel Vetter wrote:
> > Before
> > 
> > commit 6104c37094e729f3d4ce65797002112735d49cd1
> > Author: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Date:   Tue Aug 1 17:32:07 2017 +0200
> > 
> >     fbcon: Make fbcon a built-time depency for fbdev
> > 
> > it was possible to load fbcon and fbdev drivers in any order, which
> > means that fbcon init had to handle the case where fbdev drivers where
> > already registered.
> > 
> > This is no longer possible, hence delete that code.
> > 
> > Note that the exit case is a bit more complex and will be done in a
> > separate patch.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Helge Deller <deller@gmx.de>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Claudio Suarez <cssk@net-c.es>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> > Cc: Du Cheng <ducheng2@gmail.com>
> > ---
> >  drivers/video/fbdev/core/fbcon.c | 13 +------------
> >  1 file changed, 1 insertion(+), 12 deletions(-)
> > 
> > diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> > index 8f971de35885..814b648e8f09 100644
> > --- a/drivers/video/fbdev/core/fbcon.c
> > +++ b/drivers/video/fbdev/core/fbcon.c
> > @@ -942,7 +942,7 @@ static const char *fbcon_startup(void)
> >  		return display_desc;
> >  	/*
> >  	 * Instead of blindly using registered_fb[0], we use info_idx, set by
> > -	 * fb_console_init();
> > +	 * fbcon_fb_registered();
> >  	 */
> This comment change looks like it does not belong in this patch.
> Also, the comment is wrong as info_idx is set in several places.
> Like set_con2fb_map(), fbcon_remap_all(), and more.

Yeah I can split this out into a separate patch, but I spotted this wrong
comment as part of reviewing this code change here - essentially you have
to check how fb_info for fbcon are registered and fbcon init happens to
validate that deleting the below code is correct.

Ok if I put this explainer into the commit message, or do you want me to
split this out fully?
-Daniel

> 
> Though it is not set by fb_console_init - so partly OK.
> 
> With the comment adjustment dropped.
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> at least the code deletion looked OK, I failed to follow all the logic.
> So would be good if someone else could ack it too.
> 
> 	Sam
> 
> 
> 
> >  	info = registered_fb[info_idx];
> >  	if (!info)
> > @@ -3316,17 +3316,6 @@ static void fbcon_start(void)
> >  		return;
> >  	}
> >  #endif
> > -
> > -	if (num_registered_fb) {
> > -		int i;
> > -
> > -		for_each_registered_fb(i) {
> > -			info_idx = i;
> > -			break;
> > -		}
> > -
> > -		do_fbcon_takeover(0);
> > -	}
> >  }
> >  
> >  static void fbcon_exit(void)
> > -- 
> > 2.33.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
