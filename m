Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A698F94F005
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 16:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA2C10E24B;
	Mon, 12 Aug 2024 14:45:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="gKfJqXF4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0B110E24B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 14:45:36 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id
 38308e7fff4ca-2ef260c4467so9060651fa.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 07:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1723473935; x=1724078735; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=bymzoOMfqr9IMa+im5HTH14isX5Y4Mb/1e1d6QwQ/7U=;
 b=gKfJqXF4VoP9uYIGxK9mF0TCFt+smWyhK8T9VuoSn+QlGojyJ6MwXAuC6JuJJoEQqZ
 UpfgflIE0HKPo01nWEHn4EHFLJX/qvINt2pOTLR+m1jPW1yx49JzmU8z8UbLquYL8mc1
 ol7fs1iRydI3d284+iyoq/P6YeSblmtpmxCNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723473935; x=1724078735;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bymzoOMfqr9IMa+im5HTH14isX5Y4Mb/1e1d6QwQ/7U=;
 b=SHq5nd+R/qQU03DBtfThyKrSUnevUcqY4EPTzFD3XKRk7QUY8Lf/jEugaTnky3ICzz
 EP425RWDXAoY6n9hNynvfsqnVWmGkl+fjPdAqqBMpBTyYMD4f3oYav8an1LVUDTcnQe6
 rL68MLxBvAdZI4qDpA7b7as+jmlzkJA02p3zKEgmkCYUF3jQVYuhGbLh1sJ5IaV3u2Ey
 exflQIEaUda+4luer08V6bhPbmcACgLXO+7NR+uELRHtdoHzc4Ue86VtjGYb8b6hyRiy
 2rD9PKLpBHquC2kLDCl4Sh9aliT3Yc6cZINMnTOs+fNh+vl8UwYBduDBeX5fKlZNIA43
 4xgw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOIp81VeFoChvl285P6fq0YKnCU2Q2o72oljylvYGN+07xd9dDFqwWgVAy4OEcUerQVB/9Vdlesrw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxG+ow4eHMHfvZTDccabpfS+kPj/8NJEMh0tdSmHZnK8NbFhFeL
 tyUYJ8uwX/hK094DwcEJLy0r71bz7IWCRCYev0DJ6NnC63+XmJ5kZuhJaRGhYGn/1xwOMLaCOVT
 p
X-Google-Smtp-Source: AGHT+IEB8fiWUUDC//T86CQTr5qw6fcPjynvrtLV8+LmzdPGWvHBZKEgltAoNv+MwyA/0rZeMFIS1Q==
X-Received: by 2002:a05:6512:23aa:b0:530:b78c:445c with SMTP id
 2adb3069b0e04-5321369ea54mr169238e87.8.1723473934621; 
 Mon, 12 Aug 2024 07:45:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a80bb1d1293sm235140666b.127.2024.08.12.07.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Aug 2024 07:45:34 -0700 (PDT)
Date: Mon, 12 Aug 2024 16:45:32 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH 0/2] Allow partial memory mapping for cpu memory
Message-ID: <ZrogDGT326oSUZls@phenom.ffwll.local>
References: <20240807100521.478266-1-andi.shyti@linux.intel.com>
 <ZrXZEpplb6YA9T_d@phenom.ffwll.local>
 <ZrXtiBKyCCh0a_ym@ashyti-mobl2.lan>
 <ZrnRuRGjxHe5zxuf@phenom.ffwll.local>
 <Zrn3QqOvOEW2EYB0@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zrn3QqOvOEW2EYB0@ashyti-mobl2.lan>
X-Operating-System: Linux phenom 6.9.10-amd64 
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

On Mon, Aug 12, 2024 at 01:51:30PM +0200, Andi Shyti wrote:
> Hi Daniel,
> 
> On Mon, Aug 12, 2024 at 11:11:21AM +0200, Daniel Vetter wrote:
> > On Fri, Aug 09, 2024 at 11:20:56AM +0100, Andi Shyti wrote:
> > > On Fri, Aug 09, 2024 at 10:53:38AM +0200, Daniel Vetter wrote:
> > > > On Wed, Aug 07, 2024 at 11:05:19AM +0100, Andi Shyti wrote:
> > > > > This patch series concludes on the memory mapping fixes and
> > > > > improvements by allowing partial memory mapping for the cpu
> > > > > memory as well.
> > > > > 
> > > > > The partial memory mapping by adding an object offset was
> > > > > implicitely included in commit 8bdd9ef7e9b1 ("drm/i915/gem: Fix
> > > > > Virtual Memory mapping boundaries calculation") for the gtt
> > > > > memory.
> > > > 
> > > > Does userspace actually care? Do we have a flag or something, so that
> > > > userspace can discover this?
> > > > 
> > > > Adding complexity of any kind is absolute no-go, unless there's a
> > > > userspace need. This also includes the gtt accidental fix.
> > > 
> > > Actually this missing functionality was initially filed as a bug
> > > by mesa folks. So that this patch was requested by them (Lionel
> > > is Cc'ed).
> > > 
> > > The tests cases that have been sent previously and I'm going to
> > > send again, are directly taken from mesa use cases.
> > 
> > Please add the relevant mesa MR to this patch then, and some relevant
> > explanations for how userspace detects this all and decides to use it.
> 
> AFAIK, there is no Mesa MR. We are adding a feature that was
> missing, but Mesa already supported it (indeed, Nimroy suggested
> adding the Fixes tag for this).
> 
> Also because, Mesa was receiving an invalid address error and
> asked to support the partial mapping of the memory.

Uh this sounds a bit too much like just yolo'ing uabi. There's two cases:

- Either this is a regression, it worked previously, mesa is now angry.
  Then we absolutely need a Fixes: tag, and we also need that for the
  preceeding work to re-enable this for gtt mappings.

- Or mesa is just plain wrong here, which is what my guess is. Because bo
  mappings have always been full-object (except for the old-style shm
  mmaps). In that case mesa needs to be fixed (because we're not going to
  backport old uapi).

  Also in that case, _if_ (and that's a really big if) we really want this
  uapi, we need it in xe too, it needs a proper mesa MR to use it, it
  needs igt testcases, and it needs a solid way to detect whether the
  kernel supports this feature or not. But unless other drivers are doing
  this too, I have some big questions why i915-gem needs this.
 
> > Also, does xe also support this? If we only add this to i915-gem but xe
> > doesn't have it, it doesn't make much sense imo.
> 
> I don't know about. Lionel, Do you have anything to add here from
> your side?

"I don't know" is not an acceptable answer for uapi work.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
