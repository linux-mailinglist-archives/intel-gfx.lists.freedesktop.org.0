Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 076879F3355
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 15:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9F210E6AA;
	Mon, 16 Dec 2024 14:37:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="UGwLdgEV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BB610E6AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 14:37:41 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4363dc916ceso7505725e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 06:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1734359860; x=1734964660; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yrESZw/En081PSbiXgevMbDjSYkok7om/KLb20cYOfA=;
 b=UGwLdgEVdw44bNlDcQ/d0ma5mcfOyoLKj3MAnQ3hfMtJHk/rYnw+DNA/hofPXH1CXM
 vlaKfFigrTwWzNDZa5W0829P1Hd+gvq51vbO8O9cnmy1QxCe/mn6E1dRhuKS940YgO2P
 BNoj67wU2+ymVZxm/UFjK8sYOft5ngN54kcmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734359860; x=1734964660;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yrESZw/En081PSbiXgevMbDjSYkok7om/KLb20cYOfA=;
 b=xCmcrLv0ksrKuc3RDSs7qgAlqVHzW1mnkOiZ0/KtGc0stnm+0mj2TtHepVYpLfbWi1
 TQbKIDelARDpDNJROMq4kY7HUkgY9lRvobh5bBeZR9nXqV4O2AL7hzS1Ct1B4YKFDq/r
 qI3V1SwK4Tt8cz/Nje083lFICiLOzo6A7GQy8OJfuCzDqNjMdx0trL39vhBDDNCLLDOj
 hu0UwehZuZCu6Ok3/1aN3NMpy5bUPjpI3AV6hYpM+dP3ueE7mMTH4ikhGclDr9kx+M9I
 aOxTl99EMGg+4dhPrmM0Wkr2qbo/4p6+0nrPWzs2sx96baCHxA9DmdOrEb+IdNHIcm8u
 RRlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdssXKfiB/x0GbuEeUHhRedudlKKw55zSIKGUPLm5Ed1sAIc9OeExkIfVseF3NzizUWYgA6shVfbU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwfDXsJBg+r/tD5YStJjnzv3gCUD3T/SDZfQEi6f1W6B3tjn5jB
 ne8zxk0wfcAueocRRdBHGnwomzgo3rkurj923VSMuNd17JR+wn0KiKcZAjrhC5w=
X-Gm-Gg: ASbGnct9Pt919LxiPiM0PBa/Duu8czpbfeEYlKXdcLoVvRnq+Y2yrSTkqkcOwrndFnx
 ogW3x8MG87spfS+v3rZ2hO+LxACIVZIJzjDmG/NAyNVF5fxqAXWq9BNfUjQvePyg8GPLV7b/Six
 NZYuCwTYpa4HaiKlYwRGOrBt4zi8C7jsYYAICCHbkJvZKrcGxKXXeLzQwVYMxHPU82NT45hJfm0
 6DkbwvJbZ4U/kQGSzb8appCMMmhQdZwCuJowtqlCwIvrZ7xr+MtzyxWpChrs0aVZ5kb
X-Google-Smtp-Source: AGHT+IHQAE1+ZiBY7NHVgVWlllGKn5NQ+5AWIWZQinPR5u/hZAOXW5icb//z2r0MiIJQq3hTfx3aUA==
X-Received: by 2002:a05:6000:2ae:b0:386:3c93:70ff with SMTP id
 ffacd0b85a97d-387887df1a0mr14788552f8f.8.1734359860319; 
 Mon, 16 Dec 2024 06:37:40 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-388c801626asm8345461f8f.29.2024.12.16.06.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 06:37:39 -0800 (PST)
Date: Mon, 16 Dec 2024 15:37:38 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 03/11] drm/connector: Add deprication notes for
 drm_connector_register/unregister
Message-ID: <Z2A7Mgo5nE1saCVR@phenom.ffwll.local>
References: <20241211230328.4012496-1-imre.deak@intel.com>
 <20241211230328.4012496-4-imre.deak@intel.com>
 <87ed2dxlcd.fsf@intel.com>
 <Z1rQ8pvfFWlj5yLl@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1rQ8pvfFWlj5yLl@ideak-desk.fi.intel.com>
X-Operating-System: Linux phenom 6.12.3-amd64 
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

On Thu, Dec 12, 2024 at 02:02:58PM +0200, Imre Deak wrote:
> On Thu, Dec 12, 2024 at 12:10:58PM +0200, Jani Nikula wrote:
> > [...]
> > On Thu, 12 Dec 2024, Imre Deak <imre.deak@intel.com> wrote:
> > > @@ -863,9 +866,14 @@ EXPORT_SYMBOL(drm_connector_dynamic_register);
> > >   * drm_connector_unregister - unregister a connector
> > >   * @connector: the connector to unregister
> > >   *
> > > - * Unregister userspace interfaces for a connector. Only call this for
> > > - * connectors which have been registered explicitly by calling
> > > - * drm_connector_register().
> > > + * Unregister userspace interfaces for a connector. Drivers should call this
> > > + * for dynamic connectors (MST) only, which were registered explicitly by
> > > + * calling drm_connector_dynamic_register(). All other - static - connectors
> > > + * will be unregistered automatically by DRM core and drivers shouldn't call
> > > + * this function for those.
> > 
> > This kind of supports my point about a single
> > drm_connector_register(). There's no
> > drm_connector_dynamic_unregister(). After all the
> > drm_connector_register() calls have been removed, we're left with the
> > asymmetric pair:
> > 
> > - drm_connector_dynamic_register()
> > - drm_connector_unregister()
> > 
> > Then again, all of these should become internal and not for drivers?
> 
> Yes, drm_connector_register() - after this patchset - could be removed
> from drivers. The use of drm_connector_unregister() in drivers for
> static connectors should be also removed, left it for DRM core internal
> use only and exporting drm_connector_dynamic_unregister() for driver
> use (atm only MST).

Yup that's been the plan for a while for static connectors, unfortunately
there's some fun around dp connectors and dp aux specifically that make
the cleanup not entirely a cocci job :-/
-Sima

> 
> > > + *
> > > + * Note: Existing uses of this function in drivers for static connectors
> > > + * should be a nop already and are scheduled to be removed.
> > >   */
> > >  void drm_connector_unregister(struct drm_connector *connector)
> > >  {
> > 
> > -- 
> > Jani Nikula, Intel

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
