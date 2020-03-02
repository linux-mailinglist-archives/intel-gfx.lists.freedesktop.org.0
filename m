Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F22175C94
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 862D86E41F;
	Mon,  2 Mar 2020 14:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B896E423
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:09:09 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id e10so11316735wrr.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 06:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XRIQ59iqTYwNc+hqtFnsFnguOGdxosd5Ax5+aRsxRB4=;
 b=Iox9flG+uqYLP9pD0xKHZ27taSdhoYIpeC+nbSTVOnWvC82gDSik6MlsO3SY/8HH6S
 yIi1iHV3ESAKeL/bPei6hLBFeLP4Dhk+aRU+IrAZvLhHvmTodqv9OyezFLdPYuDRDcmw
 hlq6FHEoedVwKtxNb/6fWe48iugWf287h2AvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XRIQ59iqTYwNc+hqtFnsFnguOGdxosd5Ax5+aRsxRB4=;
 b=GdHxlHSfUW7giRRuwL7TstXgNrh3WxTYtL8k0YvPJX2OzHpRN4zQUuuhwSHEv6D51P
 3R2S9rnTkDTEbFgHYqISzsD8bCzmqMfskCvWfzAukDE+Xde6MzTahZDa8Zf+9/jkZGfM
 18vxccyiKOeIRYO5jpioz0VJaJ0onbYTwVzl2zr1yY2YAWzVC9wkPQ4g4CA8XYt65+ps
 3hkKOGWXPYMhMJ2P0UYAfbFFrr3ZGWcgFiJ3Phe5JkKiKlIGnlV527UVqUYn0061x1i6
 0UPZirUo1RCbBe9FRx/XyhcPTHxHFVpli18ZWVWBqaFfKMnXGV2bv1itkzs+MVEiu/Us
 2WsA==
X-Gm-Message-State: APjAAAV5qmeBqnEUb8Neo0ICiCfU+08FR4TWi/Mfb581yEnie+poHQSw
 RCIfkdyxu6xu8E6+MHDAt8Mm9g==
X-Google-Smtp-Source: APXvYqxoesu7zWQ1zks5QV94MLDuTDS3RTFDn2ZhfTdyaP88oo5OHcZw/urf/CVoeRW059b5sH//pg==
X-Received: by 2002:adf:f181:: with SMTP id h1mr17569367wro.361.1583158148335; 
 Mon, 02 Mar 2020 06:09:08 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h3sm29963651wrb.23.2020.03.02.06.09.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 06:09:06 -0800 (PST)
Date: Mon, 2 Mar 2020 15:09:02 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200302140902.GF2363188@phenom.ffwll.local>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
 <20200227181522.2711142-27-daniel.vetter@ffwll.ch>
 <20200228202632.GB22966@ravnborg.org>
 <CAKMK7uFmVD24hsON3T6mpTvJPcg5bTcbRe+kO4=TYD5kJaHrpA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFmVD24hsON3T6mpTvJPcg5bTcbRe+kO4=TYD5kJaHrpA@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 26/51] drm: Manage drm_mode_config_init with
 drmm_
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Marco Felsch <m.felsch@pengutronix.de>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 29, 2020 at 12:11:28AM +0100, Daniel Vetter wrote:
> On Fri, Feb 28, 2020 at 9:26 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> > > @@ -312,7 +305,9 @@ void drm_minor_release(struct drm_minor *minor)
> > >   *           }
> > >   *           drmm_add_final_kfree(drm, priv);
> > >   *
> > > - *           drm_mode_config_init(drm);
> > > + *           ret = drm_mode_config_init(drm);
> > > + *           if (ret)
> > > + *                   return ret;
> > We do not print anything in drm_mode_config_init() - so should
> > we do it here?
> > Otherwise we only get the more generic error from the driver core.
> 
> I can add a printk to drm_mode_config if people feel like. But it's
> guaranteed dead code in reality, because of linux' small memory
> allocation guarantee. Small mallocs like this one here of just 2
> cachelines never fail (at least not with GFP_KERNEL).

To make this not quite pointless I decided to add debug output to
drmm_add_action and drm_kmalloc. I think there it's actually useful for
debugging. Will squash that into other patches.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
