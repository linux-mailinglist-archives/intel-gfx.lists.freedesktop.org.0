Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A44D4337EF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 16:00:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826DF6E878;
	Tue, 19 Oct 2021 14:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78AE46E878
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 14:00:39 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id r18so13497954edv.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 07:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cWgLVIxPlB0EUk2RA+dnfGL3b+FWQ/k3Rt9YVL8+es0=;
 b=hJ0ux5wtmFWOMZz/2SKwcRPNzwKsJW+B9MJwj5Ck9iSM6SAXnilKiJhw098Q+Ryq44
 4rSK+5FSV6PCBHh3IjzPi/Pa2n0PLuuuOPEnfb74Ls4ZWgafOv63rPfKDi6Dm5b4dfNN
 /ZvpoEk6ynGgAfhE5I/pWjkCqcVgOU2Kwu0Cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cWgLVIxPlB0EUk2RA+dnfGL3b+FWQ/k3Rt9YVL8+es0=;
 b=MDSC4ZCgenlWH3nHxXgtfdr7WeK0SzVLtkDurdK+tL9tTC7uwaSLquR5HDcbBVo7J6
 2Hf1IfeWL3iXTDC0CFD9kidvtkG7KETZl4YouNCS5Jt+1GVTYmb2qiCvfOrbiNk2ovnx
 sLtAAxGwyS8M4j/xfUWHgU3tSu4FSJkLNTeaguITdziG3nY92DOu+GxGrsUVXqycKWRt
 YBSoXonTINLZAho1C8vLSc+7eynYCevkbFIcKJpS0tFlOv0pwEkfNyBv+7PrKb1xxnhi
 Zc4SMAnRoT/jvdoPQBbs9Xk1dgdqUIoMmEuypvTQULJuT6zb3UUoLhFs/LfBAFCywK9s
 ayZg==
X-Gm-Message-State: AOAM532oPIWkLXN+8MJnkbA8QgB0FvE4IkKZsnC9QNG3Pm+olbS4n4FD
 Qc0zPouL6iyqOsbrP2qUkeEFMUrwSs6Khg==
X-Google-Smtp-Source: ABdhPJw5lOzn70N0JgxP4QgPQhpr3WdffMJoX5zXj62wwNiS8Jd781tdyIjXbT1pBntzl16Ze7UW3w==
X-Received: by 2002:a17:907:d08:: with SMTP id
 gn8mr4523917ejc.395.1634651960977; 
 Tue, 19 Oct 2021 06:59:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f22sm11268362edu.26.2021.10.19.06.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 06:59:20 -0700 (PDT)
Date: Tue, 19 Oct 2021 15:59:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, tvrtko.ursulin@linux.intel.com
Message-ID: <YW7PNr4Tk2DWOeIH@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-24-christian.koenig@amd.com>
 <YWbrb7xQfTWU15U1@phenom.ffwll.local>
 <71bf3523-7c18-dac7-de53-f7b20e737cc3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <71bf3523-7c18-dac7-de53-f7b20e737cc3@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 23/28] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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

On Tue, Oct 19, 2021 at 02:54:04PM +0200, Christian K�nig wrote:
> Am 13.10.21 um 16:21 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:37PM +0200, Christian K�nig wrote:
> > > Simplifying the code a bit.
> > > 
> > > v2: add missing rcu_read_lock()/unlock()
> > > v3: switch to locked version
> > > 
> > > Signed-off-by: Christian K�nig <christian.koenig@amd.com>
> > > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Please make sure you also apply this to the new copy of this code in
> > drm/sched. This one here is up for deletion, once I get all the driver
> > conversions I have landed ...
> 
> Yeah, I do have that. Only added this patch here for completeness so that I
> could at least consider dropping the old access functions.
> 
> Put I will hold it back, just ping me when the code in question is removed.

Imo go ahead and push this, the rebasing is trivial since I just delete
code. That way I don't have to remember to do anything :-)
-Daniel

> 
> Christian.
> 
> > -Daniel
> > 
> > > ---
> > >   drivers/gpu/drm/drm_gem.c | 26 +++++---------------------
> > >   1 file changed, 5 insertions(+), 21 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > > index 09c820045859..4dcdec6487bb 100644
> > > --- a/drivers/gpu/drm/drm_gem.c
> > > +++ b/drivers/gpu/drm/drm_gem.c
> > > @@ -1340,31 +1340,15 @@ int drm_gem_fence_array_add_implicit(struct xarray *fence_array,
> > >   				     struct drm_gem_object *obj,
> > >   				     bool write)
> > >   {
> > > -	int ret;
> > > -	struct dma_fence **fences;
> > > -	unsigned int i, fence_count;
> > > -
> > > -	if (!write) {
> > > -		struct dma_fence *fence =
> > > -			dma_resv_get_excl_unlocked(obj->resv);
> > > -
> > > -		return drm_gem_fence_array_add(fence_array, fence);
> > > -	}
> > > +	struct dma_resv_iter cursor;
> > > +	struct dma_fence *fence;
> > > +	int ret = 0;
> > > -	ret = dma_resv_get_fences(obj->resv, NULL,
> > > -						&fence_count, &fences);
> > > -	if (ret || !fence_count)
> > > -		return ret;
> > > -
> > > -	for (i = 0; i < fence_count; i++) {
> > > -		ret = drm_gem_fence_array_add(fence_array, fences[i]);
> > > +	dma_resv_for_each_fence(&cursor, obj->resv, write, fence) {
> > > +		ret = drm_gem_fence_array_add(fence_array, fence);
> > >   		if (ret)
> > >   			break;
> > >   	}
> > > -
> > > -	for (; i < fence_count; i++)
> > > -		dma_fence_put(fences[i]);
> > > -	kfree(fences);
> > >   	return ret;
> > >   }
> > >   EXPORT_SYMBOL(drm_gem_fence_array_add_implicit);
> > > -- 
> > > 2.25.1
> > > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
