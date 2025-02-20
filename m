Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2424A3D5B5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 11:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CCC10E903;
	Thu, 20 Feb 2025 10:00:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="S3knFB8T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AEBD10E903
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 10:00:32 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-4394a0c65fcso6645185e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 02:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1740045631; x=1740650431; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=7gSnEulNPHGW59kN5NlhcVPq1odJotXpIwPfOlH4gXc=;
 b=S3knFB8T4eP6lKUsPhz10JKwbO8pl1ONqjSWd1mvZv9wzBMHkOrjsBnZnsLAqOOQYc
 6IG055qZMwqDrCYw7tXUMcObqhYBzzyiHIXVM+uXyxmRy7xwerX9AS9OHJ4ipm4+dTDK
 3C1tRPOaBwe+33Na3B7voTPR7qmWSGFvEYSDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740045631; x=1740650431;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7gSnEulNPHGW59kN5NlhcVPq1odJotXpIwPfOlH4gXc=;
 b=KFmnftjzvV92wQ6O1fDiH9Tj4hbY6poR0ALNSKH7SKk6t/Ld8MxlmtnuMdjDzvf9Qc
 Iu5L/AhgpEQd4nicOxK9VxD1bbRDPzXEdXyqorbTUJWw5nFWso9dBkYMi/oDaBIHkJIF
 s0IXH4/6eHyyAg8ftlpPtdvWtVCUyIK51VQVUDHbcrqy3Op/ix89/ZhNarHKULNuFuCe
 3sNaBjLN0Hahz2NNU+XeRRaR99FPNI1kpLq1TD3l0o21Eb1H2wIy1l2HWGm2kYO/XVOL
 EI+0zk7YF3tA9tWmCAEOcU4ni7tUzA6Mzpa84v4MEMQ92KsIjw/m+Df9vLXbX1bWYgLB
 W0gA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOKT46TrE/jG5VbZ4s/Z+7IdLVLP3NzPYF/YnpvXcukp8O3wrdzw4TPPyLEc8wzLY4491OzG8FUuM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxyE15bFsBFqjHaQAbX7hhMRpHbnWWLRR2sZhe6XMErdx0LkhU9
 04Ilqk3w7UN4Ci+JhvjsuChlZMhEO4kAeQXORAXa/8xfY31bkVwYcxcMqTpeuX4=
X-Gm-Gg: ASbGncupx1YdEqgeApiD5AxWm7kZBXzd8PADfe6zIz0XCDFffcXUxEQOEcfz69rO4Qh
 454372aYSzgJPKbnPxtTBZhti9+4YqB0bOlYKgcJleieaMSbI/V4FigiMUMXOWvshFOwLNcexY/
 V177O+EFO8Hmddh+T6cRg5w2z3VEKKUSIrtXOSdh0EwEcIf63gV5TC1TszSs8dK+0I/jGw9ffTf
 jq9gnJnNPrIpxU7G1vIjH8zAHqcIbUZE4V2PecVMt5NnnRB42p5XnVWfGWj8qy55RHa6PpX3AEU
 L9Vwn+0j/03S2/Lxgp6dDGR5YGQ=
X-Google-Smtp-Source: AGHT+IH6VXFG7I7YI20n9sEVCzM1EqLuDUUlC7OOJg5EJY1l1IPCAZhZ9KqyfSoBugjctrkmj3Gb/w==
X-Received: by 2002:a05:600c:4e87:b0:439:9274:81cd with SMTP id
 5b1f17b1804b1-439927484b2mr113239115e9.4.1740045631154; 
 Thu, 20 Feb 2025 02:00:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4399d55fc1asm38775925e9.35.2025.02.20.02.00.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2025 02:00:30 -0800 (PST)
Date: Thu, 20 Feb 2025 11:00:28 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/atomic: Filter out redundant DPMS calls
Message-ID: <Z7b9PD2o6XhfdjWf@phenom.ffwll.local>
References: <20250219160239.17502-1-ville.syrjala@linux.intel.com>
 <Z7b7tSabXeLe1ovT@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z7b7tSabXeLe1ovT@phenom.ffwll.local>
X-Operating-System: Linux phenom 6.12.11-amd64 
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

On Thu, Feb 20, 2025 at 10:53:57AM +0100, Simona Vetter wrote:
> On Wed, Feb 19, 2025 at 06:02:39PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Video players (eg. mpv) do periodic XResetScreenSaver() calls to
> > keep the screen on while the video playing. The modesetting ddx
> > plumbs these straight through into the kernel as DPMS setproperty
> > ioctls, without any filtering whatsoever. When implemented via
> > atomic these end up as full commits on the crtc, which leads to a
> > dropped frame every time XResetScreenSaver() is called.
> 
> I think you should add here that it's just an empty commit, because we do
> filter out redundant commits where crtc->active_changed does nothing.
> Except we still run the entire machinery with timestamps and drm_event and
> everything.
> 
> And I don't think it's worth to filter that out at the atomic level,
> because it's really only legacy ioctl that had this "complete noop"
> behaviour.
> 
> With the commit message augmented:
> 
> Reviewed-by: Simona Vetter <simona.vetter@ffwll.ch>

Ok, one more thing: Please also augment the dpms property uapi doc text
with a note that we make this guarantee. Otherwise this feels a bit too
much opaque magic. Maybe even a one-liner comment in the code that this is
uapi?
-Sima

> 
> Might also be nice to have a igt for this? Plus also wondering whether we
> should cc: stable it.
> 
> Cheers, Sima
> 
> > Let's just filter out redundant DPMS property changes in the
> > kernel to avoid this issue.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/drm_atomic_uapi.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> > index 2765ba90ad8f..c2726af6698e 100644
> > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > @@ -957,6 +957,10 @@ int drm_atomic_connector_commit_dpms(struct drm_atomic_state *state,
> >  
> >  	if (mode != DRM_MODE_DPMS_ON)
> >  		mode = DRM_MODE_DPMS_OFF;
> > +
> > +	if (connector->dpms == mode)
> > +		goto out;
> > +
> >  	connector->dpms = mode;
> >  
> >  	crtc = connector->state->crtc;
> > -- 
> > 2.45.3
> > 
> 
> -- 
> Simona Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
