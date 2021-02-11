Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF70C318F0F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 16:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0B589152;
	Thu, 11 Feb 2021 15:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE426E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 15:46:51 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id m13so4583202wro.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 07:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nY+6J3Lni5j32PA6qgM3UZvNti0mgSQgms4QX/hsfpg=;
 b=ZoK+kJT8UEeR5WBOwzfboAjYZGKMSRkCgEqLf8V+XqLENr1KRRYoXEWGqn2rKUJ9Jb
 p4xvP2y16cdoZQrPXJMV4RfzTFOIpmEA5b0NS1sEL375AzHpKRgpfUAgSnJZpuDWlUNe
 mjOBRTYiXIl59MJBSDWUEtfVMycvlBL3gv44k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nY+6J3Lni5j32PA6qgM3UZvNti0mgSQgms4QX/hsfpg=;
 b=Fg17XoXtLfPFgU2p4dNnit0JbBhVI8Sfs/ABgzKPzmNEehZbVcWt81021fKX27py/u
 At2BFtE2IZAD3BEG6LyT2NSmxLEQD36LeC9u56caOJZwB0JEo2eOwXzEJqrPa9l7ohBU
 FKAoztZE9LYBX38ZxT/bUJ2PzKsWkCZ+iFp3/GrvizAvfbrgyAyg1cBFyLmYlEYSqTIA
 E3DmnHcUHWWbsZ6Uub92nPNk7MtRqNKTKRzLvKXWrBHfC7jRsuRUu42IlPuMFUi25vvh
 6Y7UV09N7n86KeUl5nB0xl+L3BOUv1T4fc2iGfM9ee+d8kda6hK2dWNAPMOMe+0iMuHX
 h9hg==
X-Gm-Message-State: AOAM533RohCNDHdlanJ8SbP+GPYmLf56kaO5NkrvYI1iCgZ9dZZjreJ4
 am0SKC3H64I+KKyEErhOiK2qQw==
X-Google-Smtp-Source: ABdhPJwTHDWFdU70sq9QR0Crcp/1jwyZPvx3z1eP8dF7+S7zuGrVUs46bq28oxFYZ0Y4gzjNeOQ/nA==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr5747842wrp.177.1613058410023; 
 Thu, 11 Feb 2021 07:46:50 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s6sm10464461wmh.2.2021.02.11.07.46.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 07:46:49 -0800 (PST)
Date: Thu, 11 Feb 2021 16:46:47 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YCVRZ0j21uovLJOV@phenom.ffwll.local>
References: <20210210001401.463-1-manasi.d.navare@intel.com>
 <YCPcrusmPxj0iGxz@phenom.ffwll.local>
 <vpyQ2PWoypdzSDLBjlqvQW_zi3sOkPdCOWS_MuxLId4i5HFb3ulnEWkVreU1mEYxcN9bKIB0iV_TpgMBEDaREA7bhZVUFVkTaA5d1DJHhLI=@emersion.fr>
 <YCP2l7PDMTE2a0Eh@intel.com>
 <20210210232600.GA5116@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210232600.GA5116@labuser-Z97X-UD5H>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/atomic: document and enforce
 rules around "spurious" EBUSY"
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 10, 2021 at 03:26:00PM -0800, Navare, Manasi wrote:
> On Wed, Feb 10, 2021 at 05:07:03PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Feb 10, 2021 at 01:38:45PM +0000, Simon Ser wrote:
> > > On Wednesday, February 10th, 2021 at 2:16 PM, Daniel Vetter <daniel@f=
fwll.ch> wrote:
> > > =

> > > > On Tue, Feb 09, 2021 at 04:14:01PM -0800, Manasi Navare wrote:
> > > >
> > > > > These additional checks added to avoid EBUSY give unnecessary WAR=
N_ON
> > > > > in case of big joiner used in i915 in which case even if the mode=
set
> > > > > is requested on a single pipe, internally another consecutive
> > > > > pipe is stolen and used to drive half of the transcoder timings.
> > > > > So in this case it is expected that requested crtc and affected c=
rtcs
> > > > > do not match. Hence the added WARN ON becomes irrelevant.
> > > =

> > > The WARN_ON only happens if allow_modeset =3D=3D false. If allow_mode=
set =3D=3D true,
> > > then the driver is allowed to steal an unrelated pipe.
> > > =

> > > Maybe i915 is stealing a pipe without allow_modeset?
> > =

> > No. All page flips etc. will have to get split up internally
> > between multiple crtcs.
> > =

> > So I think there's basically three options:
> > a) massive rewrite of i915 to bypass even more of drm_atomic stuff
> > b) allow i915 to silence that warning, which opens up the question
> >    whether the warn is doing any good if it can just be bypassed
> > c) nuke the warning entirely
> > =

> > a) is not going to happen, and it would any way allow i915 to
> > do things any which way it wants without tripping the warn,
> > rendering the warn entirely toothless.
> > =

> > Hmm. Maybe there is a d) which would be to ignore all crtcs
> > that are not logically enabled in the warn? Not sure if that
> > could allow something to slit through that people want it to
> > catch?

Yeah it's option d), because the warning is meant to catch funny uapi that
compositors don't want to deal with. So if this bigjoiner stuff in i915 is
_really_ fully transparent, then it's ok.

And excluding completely disabled CRTC from this check makes imo sense,
since userspace
- is not allowed to issue an atomic flip on these (it's off)
- is required to set allow_modeset to enable (at which point i915 can
  internally move CRTC assignments around however it feels like and it's
  all fine). Once that fully modeset is done we'd again be in sync with
  userspace's understanding of what's going on.
- hence there cannot be a spurious EBUSY to userspace

I think what this needs is a big comment in the code explaining why we can
afford to not check this.

> So as per the offline IRC discussions,
> - We can check for crtc_state->enable and only use the enabled crtcs
> in the affected crtc calculation. And this enable would only
> be set when modeset is done. So in case of bigjoiner no modeset on Pipe A,
> even if Pipe B is stolen, since no modeset and because that pipe doesnt
> get enabled the affected crtcs would still be 0x1.
> =

> This should solve the problem. =

> Ville, Danvet - I will make this change?

I think you volunteered :-)

Pls Cc: all the people involved in the original patch discussion, so that
they can ack the change too.

Cheers, Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
