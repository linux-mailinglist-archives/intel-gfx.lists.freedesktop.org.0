Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55363EAB25
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 21:41:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C50B66E45D;
	Thu, 12 Aug 2021 19:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBB988310
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 19:41:28 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id z9so9782368wrh.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 12:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xkCjZXOmaAcw2hH8Mr6PXR8Ud93ZZOLolVO9155GgOQ=;
 b=PRpOBmjoP+nbrPHAXA66GGiKdt4DTvqpPU87iPuXNv3iWY8ifsLInQFkMziA5jeUsJ
 mJGrWLijflchwLPf7d7azIbMzsUAa51p4b6tR90x8dnlV52KHXt0/q2AO/+cOAJphYsf
 zY7fiTuBoUDyrL0qfXfEPd1U3rXRKhR1u+jN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xkCjZXOmaAcw2hH8Mr6PXR8Ud93ZZOLolVO9155GgOQ=;
 b=EYEXOd2ZNWiCwK/FOlVajmhgc0lnoLHlPDwKqe50PBI1BZ2LLwUtEwtVug+EALDSaY
 bIe/JW3pvhqBQRt91YDPWDIWYCR8yNmpVZq7IFGQULYzmvX4tK4iEtvyYriMX5cWVxy9
 clJaFHCELwQzcoUebYGJ8Arkd5NHg2itlySi8uL4asLf01AN613+Uz2950A5iNJqZhIY
 pP8valPMlTqngvKRu2FC7UxL7RzPpCuEEaw72dfERprkWsrHSi7buasj1kLWe62pW3yI
 3+6eLism11ZS5Dw4qHXVf/DwyiYZEfAf9E+JV4ejPozhAKjcqvilKFgifzs8sh8MW5mN
 W41Q==
X-Gm-Message-State: AOAM532KTT7gF+dAgYnZwutOS+NEmyjf/sLqzcZ7W53iEYlYIJaY42o9
 K47sq+rdsVKqJ48pX+gy5rYK1w==
X-Google-Smtp-Source: ABdhPJzgit64Q/Q+24HXSXQZvq8GH1k6inNYNKst9clgmOJZNr3rAXf8z4Y4sCxeK/VTKhg91zMNNw==
X-Received: by 2002:a5d:42c9:: with SMTP id t9mr5812947wrr.356.1628797287532; 
 Thu, 12 Aug 2021 12:41:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d15sm4592220wri.96.2021.08.12.12.41.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 12:41:26 -0700 (PDT)
Date: Thu, 12 Aug 2021 21:41:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 John Stultz <john.stultz@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Melissa Wen <melissa.srw@gmail.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YRV5ZUJ3v3sSm1/R@phenom.ffwll.local>
References: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
 <20210812131412.2487363-4-daniel.vetter@ffwll.ch>
 <YRVT+B69l74Lk4+A@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YRVT+B69l74Lk4+A@ravnborg.org>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/vgem: use shmem helpers
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

On Thu, Aug 12, 2021 at 07:01:44PM +0200, Sam Ravnborg wrote:
> Hi Daniel,
> 
> On Thu, Aug 12, 2021 at 03:14:12PM +0200, Daniel Vetter wrote:
> > Aside from deleting lots of code the real motivation here is to switch
> > the mmap over to VM_PFNMAP, to be more consistent with what real gpu
> > drivers do. They're all VM_PFNMP, which means get_user_pages doesn't
> > work, and even if you try and there's a struct page behind that,
> > touching it and mucking around with its refcount can upset drivers
> > real bad.
> The only thing I understood of all this complicated stuff was "deleting
> lots of code" which is a good thing.
> You may want to s/VM_PFNMP/VM_PFNMAP/ before you push this.

Fixed and patches 2-4 from this series pushed.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
