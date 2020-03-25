Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F57F192344
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9F489CB2;
	Wed, 25 Mar 2020 08:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96C7889CB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:52:58 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id d1so1520148wmb.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XETifANuxIRqyZJ06uqAiOj8mEnndAf/oiVQooy86ts=;
 b=Yp8MIi4Z39Agi54ina0YXqJUGcpGzSwvfYhAY8jjhS0Z5XavTAZDCa4koU/y1wYCfA
 vhNCywRIi/Zlpdtv8i3MIkEIqj6rmIRzfxdqC8n9pq2v6La2bCwE1rsdotygtjeh99rV
 3s1RcMRM5teKiY2W5cOFmFJIH2exoubnPBA/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XETifANuxIRqyZJ06uqAiOj8mEnndAf/oiVQooy86ts=;
 b=M0rXWRgaBS7Iw1v/e2hqfmNPPvv3/ElZUSh4xNQLGY6q9O3boPqV1S22bi3JJN5Y5T
 h+r930hpGl6T+bHNjswjBC5BWdnjMpj02oSKilesWQLOWceeLYJwtN8mB11QYlyRG+cv
 G7WCHMm80WSsAeoVlNF0u2Eg1htABhjjH3oTCarx3Dm4nA5t335DBU6vc/CArLQFnNGb
 /D8FjUJYMa25rzwW1wfc3G5JHnhPqxhlTAgmAzHsu0wlydkucx2h6gqzTL9FzUw/hWBR
 5ylvE8pAyogTZIqUuwXbXVuctp5uNKpUKwldptbl06qWsYWVT7G9AADjNO4Z3iSNd/ER
 TTgw==
X-Gm-Message-State: ANhLgQ0RBBvlri0y6wxxpYdN7ba+mCinaxbsBDJ8NfnNHddFLjrzVnll
 ubybO9SMy9Nvmxsa7XBmqn3Jvw==
X-Google-Smtp-Source: ADFU+vuce9+xI03xdg3eGtqudlHc+SAtJJuIYwNUPCDVRl43l7t8ssdc5AdvWEHqtfqxPGJFk4diHQ==
X-Received: by 2002:a05:600c:257:: with SMTP id
 23mr2410282wmj.155.1585126377134; 
 Wed, 25 Mar 2020 01:52:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h5sm7640543wro.83.2020.03.25.01.52.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:52:56 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:52:54 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325085254.GT2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <bb70a05a2c20307ab67b89c4682f5afc5953fcaf.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb70a05a2c20307ab67b89c4682f5afc5953fcaf.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/connector: use MISSING_CASE
 instead of logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:33PM +0200, Jani Nikula wrote:
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/display/intel_connector.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
> index 903e49659f56..98ec2ea86c7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -290,7 +290,7 @@ intel_attach_colorspace_property(struct drm_connector *connector)
>  			return;
>  		break;
>  	default:
> -		DRM_DEBUG_KMS("Colorspace property not supported\n");
> +		MISSING_CASE(connector->connector_type);
>  		return;
>  	}
>  
> -- 
> 2.20.1
> 
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
