Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF04A347DE4
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 17:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7171D6EA50;
	Wed, 24 Mar 2021 16:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7765B6EA50
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 16:40:16 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id c8so12211427wrq.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 09:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=0ujORyvF641FLHLGeq3syP8QGCjHTeOlFQnf2CHuFuE=;
 b=ALy3lLPyCGvRjahWua/pXHivC7wrDVUX7P/3jJheA/3OcpZQA7xf+4hYStlYUEeZxW
 3hCOEqq05YBwDfjjbfqDDebFTX4P9j9GODtgfYy/FHK9iamOsVSoqlxuTcZQlsJyFnaj
 GgzisOLZ1CtWtcXb6kRUSoZPMn/CYXfc+ERuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=0ujORyvF641FLHLGeq3syP8QGCjHTeOlFQnf2CHuFuE=;
 b=Y0UHZXnvSD5/tZlowJkdzEDs4NhBDZDN8IBZOvQfQytmb0Zs0e2Vxbap2G2rUMv0TX
 topIVecjzb5K1daD6zUGl/15zoKkcslaEIEjk8TZtd9aPc0Wb37+HxzEGFxDsZ2xyojD
 wba/cAhLvRpKFzqc2rsz1Fawx1lI13d8c1SBhZY1a9iNvpZ048h/CtDHhdWi3Wulm+ii
 b65spH1IC5oihhv2QsFGjfsx3MKpwXU1GKJ1Pi+P/AtEQOkCkjcc0OZERv+r2U1oY1Kh
 wQmbBuEcqZNKZXI/MdLgumf+PueZh8swREpFD40/hDSDDPBWkCYvjg0V5cNTxL/+unWj
 HAdQ==
X-Gm-Message-State: AOAM533tOm5N8CSeXEidVYtElWqN4C7TsRXKAmF0juEh/MNCHHp0LbZb
 PSc87mKVuIgi2YHmRxhdfn46eQ==
X-Google-Smtp-Source: ABdhPJy518aVkA7eOhbWTfkGR1oSLvRpl5eQA3XTjzP1D9vxmH05ZzX+Nk1e7AC/X1KRpf+SirWfCg==
X-Received: by 2002:adf:d0c3:: with SMTP id z3mr4158563wrh.28.1616604015159;
 Wed, 24 Mar 2021 09:40:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b15sm3646665wrx.73.2021.03.24.09.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 09:40:14 -0700 (PDT)
Date: Wed, 24 Mar 2021 17:40:12 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YFtrbC9HgZGbsnv0@phenom.ffwll.local>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-45-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323155059.628690-45-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v9 44/70] drm/i915/selftests: Prepare
 context tests for obj->mm.lock removal.
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 04:50:33PM +0100, Maarten Lankhorst wrote:
> Straightforward conversion, just convert a bunch of calls to
> unlocked versions.
> =

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>

Another one where I just picked your old version:

https://lore.kernel.org/intel-gfx/20210128162612.927917-45-maarten.lankhors=
t@linux.intel.com/

There was some functional changes in the test, so I figured that's the
safer path.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/driv=
ers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index df949320f2b5..82d5d37e9b66 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1092,7 +1092,7 @@ __read_slice_count(struct intel_context *ce,
>  	if (ret < 0)
>  		return ret;
>  =

> -	buf =3D i915_gem_object_pin_map(obj, I915_MAP_WB);
> +	buf =3D i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
>  	if (IS_ERR(buf)) {
>  		ret =3D PTR_ERR(buf);
>  		return ret;
> @@ -1509,7 +1509,7 @@ static int write_to_scratch(struct i915_gem_context=
 *ctx,
>  	if (IS_ERR(obj))
>  		return PTR_ERR(obj);
>  =

> -	cmd =3D i915_gem_object_pin_map(obj, I915_MAP_WB);
> +	cmd =3D i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
>  	if (IS_ERR(cmd)) {
>  		err =3D PTR_ERR(cmd);
>  		goto out;
> @@ -1620,7 +1620,7 @@ static int read_from_scratch(struct i915_gem_contex=
t *ctx,
>  		if (err)
>  			goto out_vm;
>  =

> -		cmd =3D i915_gem_object_pin_map(obj, I915_MAP_WC);
> +		cmd =3D i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
>  		if (IS_ERR(cmd)) {
>  			err =3D PTR_ERR(cmd);
>  			goto out;
> @@ -1656,7 +1656,7 @@ static int read_from_scratch(struct i915_gem_contex=
t *ctx,
>  		if (err)
>  			goto out_vm;
>  =

> -		cmd =3D i915_gem_object_pin_map(obj, I915_MAP_WC);
> +		cmd =3D i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
>  		if (IS_ERR(cmd)) {
>  			err =3D PTR_ERR(cmd);
>  			goto out;
> @@ -1715,7 +1715,7 @@ static int read_from_scratch(struct i915_gem_contex=
t *ctx,
>  	}
>  	i915_request_put(rq);
>  =

> -	cmd =3D i915_gem_object_pin_map(obj, I915_MAP_WC);
> +	cmd =3D i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
>  	if (IS_ERR(cmd)) {
>  		err =3D PTR_ERR(cmd);
>  		goto out_vm;
> -- =

> 2.31.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
