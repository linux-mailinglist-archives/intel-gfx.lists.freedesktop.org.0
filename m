Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A5836F99F
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 13:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9E06EF33;
	Fri, 30 Apr 2021 11:52:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91176F380
 for <Intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 11:52:03 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id z6so8964194wrm.4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 04:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=8nWX8GCppoUvZ19EXIGezZVhP4hb+vU9bHPYKv9mtkc=;
 b=fKL80+n8skeHCm2bS7YS1gE2DHi90+DB7XYi6lKVUCp3/waw9uG5FH8rxGT8Ch0e63
 SHipHaaZ/0WFY9PTOeWmVKGFSbJDdvlH8orY9S4AHa/Sbwz2j7haGeaetR92i6yCVozb
 90HqNdjYZKrm1NTWiVy4JXCYthx516egnHeWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8nWX8GCppoUvZ19EXIGezZVhP4hb+vU9bHPYKv9mtkc=;
 b=N9mGVUt9DKl0/TKtEl/Ly36LVc3L016ZyIzdiHbsojnAqB3SwXIdelZ5q6KaAqLKyK
 Zuq2Vm31Z8kw1zq1/mMdYCOOAYceYPMJbUE/+98kZaCe1+KoexHDqvjES0j4l3a36vm3
 t2Y0H5yBAVYXeJRLEVVKNBYa/Lj10iDvXOMT9NkKub7dSP1ND/MyQKf1o2Ofaw9NmxPJ
 +IfXmtGfSW6RvBKqZ9+q4zgEWfT3aEy+tvSCoB5ahJ1VqDzftpQOSP+jAHEBYW5KhmZV
 1Hlw/eruPvtQwFbESIyXujHW9qzSswQs0JQtxGbL789Yfy1jdLq8rvcefiGDofqJhhBa
 F9Qw==
X-Gm-Message-State: AOAM53316ySfqmWnx4haiRIMC16VAlWKqsr6iv/OZeqG4DhqLqVp/j5M
 yw3l9SMceEq8O63z/YGGjdL7wQ==
X-Google-Smtp-Source: ABdhPJxgZH47g+x09gD9j2WkVAy0gqzejALwgSRo4XDIqyurqzRi8c/1/va3VIa+acJVHJYCyZoGFA==
X-Received: by 2002:a5d:4707:: with SMTP id y7mr6404173wrq.137.1619783522617; 
 Fri, 30 Apr 2021 04:52:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d127sm13472296wmd.14.2021.04.30.04.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 04:52:02 -0700 (PDT)
Date: Fri, 30 Apr 2021 13:52:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YIvvYO2IIzS0FS6f@phenom.ffwll.local>
References: <20210429083530.849546-1-tvrtko.ursulin@linux.intel.com>
 <YIrfb9jvAn/FTt09@intel.com>
 <76f1488b-f0c3-f110-44ed-b7633256f132@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76f1488b-f0c3-f110-44ed-b7633256f132@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/overlay: Fix active retire
 callback alignment
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 29, 2021 at 06:34:51PM +0100, Tvrtko Ursulin wrote:
> =

> On 29/04/2021 17:31, Ville Syrj=E4l=E4 wrote:
> > On Thu, Apr 29, 2021 at 09:35:29AM +0100, Tvrtko Ursulin wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > =

> > > __i915_active_call annotation is required on the retire callback to e=
nsure
> > > correct function alignment.
> > > =

> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Fixes: a21ce8ad12d2 ("drm/i915/overlay: Switch to using i915_active t=
racking")
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_overlay.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/g=
pu/drm/i915/display/intel_overlay.c
> > > index fffbde4256db..428819ba18dd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> > > @@ -383,7 +383,7 @@ static void intel_overlay_off_tail(struct intel_o=
verlay *overlay)
> > >   		i830_overlay_clock_gating(dev_priv, true);
> > >   }
> > > -static void
> > > +__i915_active_call static void
> > =

> > Am I blind or are we just packing flag bits into a pointer, passing
> > that to a function, and then immediately unpack the bits again in
> > said function? Why not just pass the flags explicitly?
> > =

> > Looks like you missed auto_retire()?
> =

> Yeah, both points already either fixed or under consideration:
> https://patchwork.freedesktop.org/patch/431473/?series=3D89623&rev=3D1
> =

> I left the splitting up vfunc vs flags for later.

Yeah pls remove this pointer packing asap.

This is yet another case of pointless complications and fragility in the
code base for not reason at all, and it needs to go.

I'll file a jira and assign to Matt Auld, since he reviewed this
originally. I'll ping you in case you want to take it over.

Thanks, Daniel

> =

> Regards,
> =

> Tvrtko
> =

> > >   intel_overlay_last_flip_retire(struct i915_active *active)
> > >   {
> > >   	struct intel_overlay *overlay =3D
> > > -- =

> > > 2.30.2
> > > =

> > > _______________________________________________
> > > dri-devel mailing list
> > > dri-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
