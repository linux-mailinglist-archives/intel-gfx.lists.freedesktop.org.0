Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C5D358E24
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 22:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134416E1A8;
	Thu,  8 Apr 2021 20:13:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 217DB6E1A8
 for <Intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 20:13:20 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id j5so2437569wrn.4
 for <Intel-gfx@lists.freedesktop.org>; Thu, 08 Apr 2021 13:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=czqXkT8JAio4ZyjhY5QQQxuOzaM3qv/npATOCbrUa/o=;
 b=B2S4c43el6T8d/MZwicnFmp423Fu5cNN6UHlQfwTuzC+iTJ486YFxUdyCT2bfUdcRa
 0zkUE1YLUwvRe+xYZI+NyxUGeXdFudUkNgcVWoNR9yTgSpHqMyS6jmQrAM6FFKYQnvYg
 WF3FSPzm96vxfhw2piJkTJ/KkIDNFbG3imTzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=czqXkT8JAio4ZyjhY5QQQxuOzaM3qv/npATOCbrUa/o=;
 b=UoK6rG50F2og1v1YS+s+q4JYTXS0tXXfv0ta1cmENk8exfZACNSAcukVdheYwFathW
 3dE7CXGaV1s4dMOxjc9+1eFjzO00pReGU0oVZDRydBM4Cv8xGzxnhJX3yvUHisZFAdTv
 j5tHzDYMjqrx8N3qh7TYFNlvwzDQa467Rv02PRfUjcMXAD9K/cnOuGN0eLIJMfNsNukv
 exWmBUqmQL2mBQkOBhbjbLvZLtTh1F8edAimnk7IRZlUB8CL7H1wUOn7sYcbFeYRikIg
 ZLRp0i53bfF7RDCyHK9yZ9MoG4u2/GmleQv8fdCBqcMwd1DhLYVKxYIgIpYlz5/91XgM
 MmrA==
X-Gm-Message-State: AOAM53108Fy8EIUfQKRZuh8t7Fi+DM4pSnC1aBNFycEBNlXGuzhEuiZP
 UC1Q+YgfPpAk8Sw1Hk3Y24J57A==
X-Google-Smtp-Source: ABdhPJwyCHReEQmkLK2cs5vraBK4wM0medwzVf9FyNsu9IjMV7VfCBqevYuy0gYKyrYpNSIZeyWWnQ==
X-Received: by 2002:adf:cc8d:: with SMTP id p13mr14373120wrj.50.1617912798905; 
 Thu, 08 Apr 2021 13:13:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z66sm479673wmc.4.2021.04.08.13.13.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Apr 2021 13:13:18 -0700 (PDT)
Date: Thu, 8 Apr 2021 22:13:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Petri Latvala <petri.latvala@intel.com>
Message-ID: <YG9j3HqjZCk71Dmi@phenom.ffwll.local>
References: <20210401114316.2597715-1-tvrtko.ursulin@linux.intel.com>
 <YGW2pTimwjHEDf3M@platvala-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YGW2pTimwjHEDf3M@platvala-desk.ger.corp.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH i-g-t] gem_watchdog: Fix autotools build
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 01, 2021 at 03:03:49PM +0300, Petri Latvala wrote:
> On Thu, Apr 01, 2021 at 12:43:16PM +0100, Tvrtko Ursulin wrote:
> > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > 
> > Correcting a brain malfunction while typing in Makefile.sources.
> > 
> > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>

Isn't autotools now going away with Arek's series?
-Daniel

> 
> 
> > ---
> >  tests/Makefile.sources | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> > index e992285fedc5..194df8e27dd0 100644
> > --- a/tests/Makefile.sources
> > +++ b/tests/Makefile.sources
> > @@ -464,7 +464,7 @@ TESTS_progs += gem_wait
> >  gem_wait_SOURCES = i915/gem_wait.c
> >  
> >  TESTS_progs += gem_watchdog
> > -gem_exec_watchdog_SOURCES = i915/gem_watchdog.c
> > +gem_watchdog_SOURCES = i915/gem_watchdog.c
> >  
> >  TESTS_progs += gem_workarounds
> >  gem_workarounds_SOURCES = i915/gem_workarounds.c
> > -- 
> > 2.27.0
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
