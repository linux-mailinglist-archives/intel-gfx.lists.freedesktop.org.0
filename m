Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C90118472
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7485D6E886;
	Tue, 10 Dec 2019 10:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26BA96E881
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:09:26 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id c14so19307820wrn.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 02:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=hLM3dV214olDHKPTb5HMGFxG4cFXyHbFnSrVji58Umg=;
 b=NPO49f8G2hry6qO1ulub6BzX+qHMmN47aEVt9jLv0rUKSpkskr2+3E1aZ+t6aW5oHn
 Ks1rFOVxrldumDudNmLQnSQ3qOyZLvuYMjYQ5ff94GMthfScUzo0m+SSM4+zIxGRtkg8
 z9rLNquQQILR4R1cpo4OZncXmmk7Yy4ajkhkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=hLM3dV214olDHKPTb5HMGFxG4cFXyHbFnSrVji58Umg=;
 b=LGp99yG4NPqBOFVTt8qR1lZfjtlbTV9DCgKf/ByKqpgrQf3VcGYk+SK4dW2X3Eu+Sc
 ET4WN+zwjyi4zwnqn8RQQ/8eQtcmBPMk0I+4YwHswIV6V+JN2NBTKGTI8MWWcxs+R7TI
 Pix3pi18tDeT6O4k7FLNk5eyN7eUcgLtm++fpC+Cf4JzO8t7glgJGnVuJMeH8nBL3XZ8
 8KZHVxeEa3YuTIrhc2xA96tjcz1vEdqBOK2wxKJp9Pkz+nPcfrSyIi4EvkicpV3Heu+p
 nYiFKdo2eEwdseNWvm4nnizuZIW4Tf6oLXBrhxFIwOf+SsgvUIXY82Dl6z4x2l8Yq+KV
 M6jg==
X-Gm-Message-State: APjAAAVJzoHDI0dcJFvuPkCqkDjKhQdjvoZSSVKd0CfO8JiCHvw/n3uH
 5mrlurxo/xi9R+OL/3jkScIj4Q==
X-Google-Smtp-Source: APXvYqwP+98aAjiA5SS5ssWUuLxFtNixnbnxs5wQucHeEuG3m3we6f6NN5/9EPMOL3CUb1X37odlbA==
X-Received: by 2002:adf:90e7:: with SMTP id i94mr2159612wri.47.1575972564784; 
 Tue, 10 Dec 2019 02:09:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id p10sm2505283wmi.15.2019.12.10.02.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 02:09:23 -0800 (PST)
Date: Tue, 10 Dec 2019 11:09:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sean Paul <sean@poorly.run>
Message-ID: <20191210100922.GP624164@phenom.ffwll.local>
References: <20191203173638.94919-1-sean@poorly.run>
 <20191203173638.94919-4-sean@poorly.run>
 <20191205193319.GK1208@intel.com>
 <20191206135509.GE162979@art_vandelay>
 <20191209151846.GQ1208@intel.com>
 <CAMavQKKpk=LiOSzBvD5gJ_Oh5wv9VQQ_c3K62smK0OBCFgf9cg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMavQKKpk=LiOSzBvD5gJ_Oh5wv9VQQ_c3K62smK0OBCFgf9cg@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Disable HDCP signalling on
 transcoder disable
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, ramalingm.c@intel.com,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 09, 2019 at 11:13:36AM -0500, Sean Paul wrote:
> On Mon, Dec 9, 2019 at 10:18 AM Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Fri, Dec 06, 2019 at 08:55:09AM -0500, Sean Paul wrote:
> > > On Thu, Dec 05, 2019 at 09:33:19PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Tue, Dec 03, 2019 at 12:36:26PM -0500, Sean Paul wrote:
> > > > > From: Sean Paul <seanpaul@chromium.org>
> > > > >
> > > > > Currently we rely on intel_hdcp_disable() to disable HDCP signall=
ing in
> > > > > the DDI Function Control register. This patch adds a safety net b=
y also
> > > > > clearing the bit when we disable the transcoder.
> > > > >
> > > > > Once we have HDCP over MST and disappearing connectors, we want t=
o make
> > > > > sure that the signalling is truly disabled even if HDCP teardown =
doesn't
> > > > > go as planned.
> > > >
> > > > Why wouldn't it go as planned?
> > > >
> > >
> > > Because things can fail in weird and wonderful ways on unplug :-)
> >
> > Not really.
> >
> =

> That is a bold position to take, bugs happen, hardware flakes, etc.
> =

> > >
> > > It's a safety net. I saw this function and figured HDCP signalling sh=
ould be
> > > explicitly cleared here as well.
> >
> > I call it dead and confusing code.
> =

> ...adding a bit to an existing register clear is confusing? That might
> be a touch hyperbolic.
> =

> > If we get here with HDCP still
> > enabled we have a more serious bug somewhere else.
> >
> =

> Ok, I suppose it's your call as to whether you take this patch, feel
> free to drop.

Maybe some expansion on this discussion here. We've had super-defensive
modeset code back 10 years ago when i915 started.

It was a mess, since all that "for safety" thing papered over real bugs,
except thanks to the safety net you mostly couldn't observe machines dying
for real. That's why we've gone pretty radical towards "you better know
what state your hw is in".

If you do want safatey, add a WARN_ON or similar that reads back hw state
and double checks it is what we think it should be. That's much better for
validating your driver than papering over all kinds of busg preemptively
and making the real ones very hard to track down.

tldr; WARN_ON hw/sw consistency safety checks good, "let me reclear/set
this" safety code bad. At least if it doesn't come with a huge WARN_ON
that things have gone terribly wrong so we can actually catch bugs in CI
and testing.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
