Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D8122DB8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 14:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF946E5C5;
	Tue, 17 Dec 2019 13:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8364C6E5C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 13:57:28 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id x123so6528529vsc.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 05:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mOroTZP8qZq50LyT6ABKjNil+nEHnI8LiBx1jFuvP2o=;
 b=HxjAVu+V++sMy0+goWqghBK3/jbmv4yCqLC+Y3lUq0hrqv3RvqF9OU9o9gKCAkm4kI
 Ggw+7hEXonli6UrCucHP7JcBymlpAD20nwFHQjAwZhT1zbwTqrDZjMZ3GE7A4a7ZIcOl
 oiLtoAQDFxbA+WtsmurazPsad4H1FzFWGcWpdjXph1YhFqxBCgppJWQ9cylDdnC6BSuD
 CUUVfGL7EmZdDMZ2Agxh8/9omK6bJkVwnnvZYo7OHe+LiJEcOfmvdLKQnEp5RF1QVx/4
 OF70J3Huu1mn2Rt3+JlBRemn7b2e1G7vwgOzTH2wlwSxajpYkgyzxUqXwv5ckniwlTg3
 hkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mOroTZP8qZq50LyT6ABKjNil+nEHnI8LiBx1jFuvP2o=;
 b=NdW1tRXNKaVdegwemXtm3tNwr3KSa76UR3viXL4ix+j/WVfrqBuQ5y2ZTJebIFDVXt
 BOajQrx3A9q7SoP3ej22no3/t/cK9+gkIVxDTedeH9JXMPyUQ38gmtISVTpMzXCswaum
 aMaAdAzW+SR3xR9doEOGFWMGPM12GqPb6tpx1A239fK/jCQr1j6gbn2s8XAFwSXa/uV7
 xF8sFHHVGkGzR4hnjD9bXwvx/GMFj8njZfKadyGagjxsJix3bgHh/Ddn9FL+m82rWi6y
 DK26F8hiUyZBVWSC4llGbCVYho8xjiBDQmibLHCztZe0xc57qscuNXp0ed+lzXcF7veK
 i81w==
X-Gm-Message-State: APjAAAXOprrpZYskCs6/uGpVGetxZYnlGCjDKowPRCIR7EYCU1TP50D/
 v2NWCKZTZDSa6Pk43Y0U5u5hCb/gLmbRdZXrpJ2ZFhVm
X-Google-Smtp-Source: APXvYqzn7dXzMJBnTCKg0cWwb/s9rf8uUDojrgCrHAU7fA7TmnBKtdcGlHOF8OYB2BJrnyd7zNtFagafBfxmu4rnvrg=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr2826171vsv.178.1576591047699; 
 Tue, 17 Dec 2019 05:57:27 -0800 (PST)
MIME-Version: 1.0
References: <20191217134729.3297818-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191217134729.3297818-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 17 Dec 2019 13:56:59 +0000
Message-ID: <CAM0jSHNDadh+d7b6FtRjHsfD_eAk1hStjoAxXvTU36oPG0r=1w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Keep request alive while
 attaching fences
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Dec 2019 at 13:47, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since commit e5dadff4b093 ("drm/i915: Protect request retirement with
> timeline->mutex"), the request retirement can happen outside of the
> struct_mutex serialised only by the timeline->mutex. We drop the
> timeline->mutex on submitting the request (i915_request_add) so after
> that point, it is liable to be freed. Make sure our local reference is
> kept alive until we have finished attaching it to the signalers. (Note
> that this erodes the argument that i915_request_add should consume the
> reference, but that is a slightly larger patch!)
>
> Fixes: e5dadff4b093 ("drm/i915: Protect request retirement with timeline->mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
