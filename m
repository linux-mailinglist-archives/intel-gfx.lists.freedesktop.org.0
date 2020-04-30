Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296791BFC2E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 16:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FEA86E909;
	Thu, 30 Apr 2020 14:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6396E909
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 14:04:20 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id i10so7039118wrv.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 07:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=nR/4l2ev7gj1d0NQKfg0sKi3r/8R1EfLq6ZSdokkti0=;
 b=CLNLKg0o0uOpdjN9IbzQj/op7l2SGyu1cc9+t8YOcCk1v915ZlhWA/CqJ5FrIOiG9r
 x6iCMk9QkUl0bbJXAotNzObLcKX0Xb3ptTEm9gq12jm1aK0xWqkRGR8AIgQ5zkHR/b8E
 aBXt2CmDzyqI5yyv3UTaMogkUZixMnLM0gWzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=nR/4l2ev7gj1d0NQKfg0sKi3r/8R1EfLq6ZSdokkti0=;
 b=tcPnRewl8baY/uvCFubmB4797OstIBnoLprpc9aj6Xt53CxXfmKT5xT1jRBzuNZD5z
 oXTaJphG0H/iqrmos66707iZaDv1L0T/Po+exR2VeGwoeO4whPrXoSzQFNf52k3GTIoW
 +73KajWl99w6YrWJw0aMCS+mH/5oOKvPYzZZ1zYaEstC9Y/aZ4vchUX+MF2U4s1QI7Hs
 eZmC9b+5NmL+5+ee5bSIRWx/K6ADBgKsAR+SEXxBSEPNPvBB6OLec43SrlCEmNsiwc4t
 EaUqM/BrXHemltDwaGiLXuu9x9j1P9jUC+K+qVdGoYWNa6Bt3rJtDdwXSY11dFgf7K4T
 Hfng==
X-Gm-Message-State: AGi0PubIhrnpNAyPDx9bx6Yhu7GY8eM2MzDd5eI0qGfqrdQPSwb3Xl+N
 zocN88Iy1y1x6q8BRaBAgzBcUw==
X-Google-Smtp-Source: APiQypL0M5PkdpQFdPq72B3lypEZHvVXpjNaTNIr5PylaMj7pL4X2pMbQKG6KnwJtFVUx+06kk8Dvg==
X-Received: by 2002:adf:fc11:: with SMTP id i17mr4613274wrr.152.1588255459228; 
 Thu, 30 Apr 2020 07:04:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 17sm12146575wmo.2.2020.04.30.07.04.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:04:18 -0700 (PDT)
Date: Thu, 30 Apr 2020 16:04:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: kl@kl.wtf
Message-ID: <20200430140416.GG10381@phenom.ffwll.local>
Mail-Followup-To: kl@kl.wtf, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, airlied@linux.ie,
 tzimmermann@suse.de, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, linux-kernel@vger.kernel.org
References: <20200428151410.GU3456981@phenom.ffwll.local>
 <20200424162615.10461-1-kl@kl.wtf>
 <e8d385dbfbbb09acfe58d716c588722c@kl.wtf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8d385dbfbbb09acfe58d716c588722c@kl.wtf>
X-Operating-System: Linux phenom 5.4.0-4-amd64 
Subject: Re: [Intel-gfx] [PATCH v2] drm: make drm_file use keyed wakeups
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 mripard@kernel.org, tzimmermann@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 29, 2020 at 11:19:07AM +0000, kl@kl.wtf wrote:
> April 28, 2020 5:14 PM, "Daniel Vetter" <daniel@ffwll.ch> wrote:
> 
> > On Fri, Apr 24, 2020 at 06:26:15PM +0200, Kenny Levinsen wrote:
> > 
> >> Some processes, such as systemd, are only polling for EPOLLERR|EPOLLHUP.
> >> As drm_file uses unkeyed wakeups, such a poll can receive many spurious
> >> wakeups from uninteresting events if, for example, the file description
> >> is subscribed to vblank events. This is the case with systemd, as it
> >> polls a file description from logind that is shared with the users'
> >> compositor.
> >> 
> >> Use keyed wakeups to allow the wakeup target to more efficiently discard
> >> these uninteresting events.
> >> 
> >> Signed-off-by: Kenny Levinsen <kl@kl.wtf>
> > 
> > Hm I applied v1 and I'm not spotting what's different here, and there's no
> > changelog explaining what changed ...
> > 
> > Please send a fixup if there's anything important missing.
> > -Daniel
> >
> 
> It's only the summary that differed as you and sravn requested in #dri-devel, so it's probably fine.
> 
> I should have explained the change. I'm still trying to get the hang of the email-based workflow. :)

Oops sorry, I generally run as a stateless maintainer so forgot :-/

And yes email based workflow is full of warts, it's a pain.
-Daniel

> 
> Best regards,
> Kenny Levinsen
> 
> >> ---
> >> drivers/gpu/drm/drm_file.c | 6 ++++--
> >> 1 file changed, 4 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
> >> index c4c704e01961..ec25b3d979d9 100644
> >> --- a/drivers/gpu/drm/drm_file.c
> >> +++ b/drivers/gpu/drm/drm_file.c
> >> @@ -608,7 +608,8 @@ ssize_t drm_read(struct file *filp, char __user *buffer,
> >> file_priv->event_space -= length;
> >> list_add(&e->link, &file_priv->event_list);
> >> spin_unlock_irq(&dev->event_lock);
> >> - wake_up_interruptible(&file_priv->event_wait);
> >> + wake_up_interruptible_poll(&file_priv->event_wait,
> >> + EPOLLIN | EPOLLRDNORM);
> >> break;
> >> }
> >> 
> >> @@ -804,7 +805,8 @@ void drm_send_event_locked(struct drm_device *dev, struct drm_pending_event *e)
> >> list_del(&e->pending_link);
> >> list_add_tail(&e->link,
> >> &e->file_priv->event_list);
> >> - wake_up_interruptible(&e->file_priv->event_wait);
> >> + wake_up_interruptible_poll(&e->file_priv->event_wait,
> >> + EPOLLIN | EPOLLRDNORM);
> >> }
> >> EXPORT_SYMBOL(drm_send_event_locked);
> >> 
> >> --
> >> 2.26.1
> > 
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
