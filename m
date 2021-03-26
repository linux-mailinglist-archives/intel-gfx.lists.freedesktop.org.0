Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9302434A323
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 09:25:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06386EB8E;
	Fri, 26 Mar 2021 08:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5627E6E223
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 08:25:05 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id d191so2515811wmd.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 01:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=x485xO/VJjdWufA++Dh1b7qbrtfwjfz2I2tI3qal16g=;
 b=cjPqONkYH+rLtL2qDEfkll04XoQvoC8LvA47gurK5WVMKu8wU8W+Ys4IdaigZ6Iusw
 94IsFum894JYBZ3QjVOwHzj4hba4OP4n0HTnZ8d6WTQwoW72T4imx/LhbiJdhGIjlqxf
 wO3via3+z8WnDX6VxL26EcfE+6FBVz2xKt/8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=x485xO/VJjdWufA++Dh1b7qbrtfwjfz2I2tI3qal16g=;
 b=crphWA9s54HXnzFMFTu6Pv58YTCLym56dyT6ZGBGAOAfaFvPFCViZeNdPGu2EBE6FT
 6qhcyV+S6Wsp2VYXcFNBQi/IRMZYp1FPLoc6hlOiXG1UhVzfZ288C93GLmmPZfnXXKPn
 7J8W6Rhbyr1mNSnwWYwiO9Ewsud22Gdu1S722HrNeK+4FrY7bgQSPsWaC+ykpadsog5d
 80s0KRkjCskrOizzdaMtVxroa/gGgTBGta2CtCkW1ZtMIPUDsW7j27WaeAfrnC0YGRvj
 /ONDsLCgpwxQui5zKpOetEAvL6u2g17bW0d1HNbENFt7ffyCLD2g5H9Rcs+rALcTPT95
 0zlA==
X-Gm-Message-State: AOAM532UPakfxSqwIbIAWL4THZH33zsTGD8rIsiHoDM68ISpok2o5x3D
 SHs3WTYW0X+e/DvHuQbQekdjLw==
X-Google-Smtp-Source: ABdhPJywLHXQ6MOaZNDL6P+pT8RwKUBxxYit0KRJtE44cGFl5qhPQ+WOAG4/sd2oHl7nVwMjy1IfgQ==
X-Received: by 2002:a05:600c:19ce:: with SMTP id
 u14mr11692643wmq.109.1616747103694; 
 Fri, 26 Mar 2021 01:25:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c2sm9211648wme.15.2021.03.26.01.25.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Mar 2021 01:25:03 -0700 (PDT)
Date: Fri, 26 Mar 2021 09:25:01 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YF2aXQaswuk7p/ba@phenom.ffwll.local>
References: <20210324211041.1354941-2-daniel.vetter@ffwll.ch>
 <20210325225859.1684116-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325225859.1684116-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/doc: Add RFC section
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
Cc: Simon Ser <contact@emersion.fr>, Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:58:59PM +0100, Daniel Vetter wrote:
> Motivated by the pre-review process for i915 gem/gt features, but
> probably useful in general for complex stuff.
> 
> v2: Add reminder to not forget userspace projects in the discussion
> (Simon, Jason)
> 
> v3: Actually put this into a folder, so we have it all (.rst files and
> headers for kerneldoc) contained somewhere separate (Jason)
> 
> Cc: Simon Ser <contact@emersion.fr>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Dave Airlie <airlied@redhat.com>
> Acked-by: Jason Ekstrand <jason@jlekstrand.net>
> Acked-by: Simon Ser <contact@emersion.fr>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Acked-by: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Smashed both patches into my topic branch that I'll send to Dave later
today.
-Daniel

> ---
>  Documentation/gpu/index.rst     |  1 +
>  Documentation/gpu/rfc/index.rst | 17 +++++++++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 Documentation/gpu/rfc/index.rst
> 
> diff --git a/Documentation/gpu/index.rst b/Documentation/gpu/index.rst
> index c9a51e3bfb5a..ec4bc72438e4 100644
> --- a/Documentation/gpu/index.rst
> +++ b/Documentation/gpu/index.rst
> @@ -16,6 +16,7 @@ Linux GPU Driver Developer's Guide
>     vga-switcheroo
>     vgaarbiter
>     todo
> +   rfc/index
>  
>  .. only::  subproject and html
>  
> diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
> new file mode 100644
> index 000000000000..a8621f7dab8b
> --- /dev/null
> +++ b/Documentation/gpu/rfc/index.rst
> @@ -0,0 +1,17 @@
> +===============
> +GPU RFC Section
> +===============
> +
> +For complex work, especially new uapi, it is often good to nail the high level
> +design issues before getting lost in the code details. This section is meant to
> +host such documentation:
> +
> +* Each RFC should be a section in this file, explaining the goal and main design
> +  considerations. Especially for uapi make sure you Cc: all relevant project
> +  mailing lists and involved people outside of dri-devel.
> +
> +* For uapi structures add a file to this directory with and then pull the
> +  kerneldoc in like with real uapi headers.
> +
> +* Once the code has landed move all the documentation to the right places in
> +  the main core, helper or driver sections.
> -- 
> 2.31.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
