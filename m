Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7224F24A295
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 17:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DFAD89C98;
	Wed, 19 Aug 2020 15:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C7789CD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 15:15:59 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id m7so21860660qki.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 08:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s64SZVe7q9SvLIi8k1Cji0BZ0MflkhzrqfKJ2a3sRpg=;
 b=Vgif463L2ffkT4NOJY+9PBmSSrRy9LCbqF+LNimo+7nBOn6WBPAYE3UgRiCrDzfyNV
 eVlFvMRApjqgxTNePMfMNHdYG9rjw2XMSgvPkG/tMVVqzNdTpkXMclH/ihWBe69q/TEL
 U0ZsuYSdq78NWI9RS4/ZUW9dhxrY5XdF65i5UxnZL0dL4a2LPp0+ovR/Qn6gg1wRxJz4
 eYPaC8qf6WA0gC6MAIYCkFxmd4ijGKm/jsY+xB16giCBh2k66Fhxbu0o2DUxPN9BLjgf
 4RozUtuW4wVqQiohX2o/CXwWDpOf1i1wFaIwT1vAZTbxaG1NmR+SYcpzURASENbtEmqs
 XR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s64SZVe7q9SvLIi8k1Cji0BZ0MflkhzrqfKJ2a3sRpg=;
 b=kHAruVxhM3RUP/1ijPKSVme5GZCrJ9iJ00HRZJ0kbHV5ra8SjQiWm0sdJSgsSzw5Zc
 3SczPwJ570xKTOSjClVr19GN0uNfQN0gGXV5QOXCVfJpu8IVKCzOhif4q/j3KVMIXAEz
 JMIXKL/S2esqSiEVddpp5CvWT5izdb7p3g8X/ccExOVxfje8jPJKEp1Zcq8bUMU6H+PT
 9C9jD4lZz23AWj5wd1V8f1ZGuN6jucsCPQxFUkNd8yjj3UZPptr4z33E1mc7aJ2Tx9J6
 A9bCbkc4gr9umB3bF1LFZjpHKXj6GBbYuS0BGJfy6YCFMNLTNiQsxXRYSPEOztjP3Njd
 ZxPQ==
X-Gm-Message-State: AOAM532Cibdyljk2bL6mtucOEWjXC9d5TdnI8zqR1YfuXb7VqzKaWbmw
 VsQV8ID4Hlh8xOh1caxWfpLikg==
X-Google-Smtp-Source: ABdhPJyhydHGXzZYDXTO3g4OpZt3nkuQBZ0wa69OQW6jpGvDpmsGIKkpgaTLTCym7+el9w11N2VezQ==
X-Received: by 2002:a37:9ccf:: with SMTP id
 f198mr22392707qke.168.1597850159056; 
 Wed, 19 Aug 2020 08:15:59 -0700 (PDT)
Received: from localhost (mobile-166-177-185-175.mycingular.net.
 [166.177.185.175])
 by smtp.gmail.com with ESMTPSA id u21sm22277690qkk.1.2020.08.19.08.15.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Aug 2020 08:15:58 -0700 (PDT)
Date: Wed, 19 Aug 2020 11:15:53 -0400
From: Sean Paul <sean@poorly.run>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20200819151547.GB46474@art_vandelay>
References: <20200811200457.134743-1-lyude@redhat.com>
 <20200811200457.134743-14-lyude@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811200457.134743-14-lyude@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC 13/20] drm/i915/dp: Extract
 drm_dp_downstream_read_info()
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 11, 2020 at 04:04:50PM -0400, Lyude Paul wrote:
> We're going to be doing the same probing process in nouveau for
> determining downstream DP port capabilities, so let's deduplicate the
> work by moving i915's code for handling this into a shared helper:
> drm_dp_downstream_read_info().
> 
> Note that when we do this, we also do make some functional changes while
> we're at it:
> * We always clear the downstream port info before trying to read it,
>   just to make things easier for the caller
> * We skip reading downstream port info if the DPCD indicates that we
>   don't support downstream port info
> * We only read as many bytes as needed for the reported number of
>   downstream ports, no sense in reading the whole thing every time
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/drm_dp_helper.c         | 32 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c | 14 ++---------
>  include/drm/drm_dp_helper.h             |  3 +++
>  3 files changed, 37 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
> index 4c21cf69dad5a..9703b33599c3b 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -423,6 +423,38 @@ bool drm_dp_send_real_edid_checksum(struct drm_dp_aux *aux,
>  }
>  EXPORT_SYMBOL(drm_dp_send_real_edid_checksum);
>  
> +/**
> + * drm_dp_downstream_read_info() - read DPCD downstream port info if available
> + * @aux: DisplayPort AUX channel
> + * @dpcd: A cached copy of the port's DPCD
> + * @downstream_ports: buffer to store the downstream port info in
> + *
> + * Returns: 0 if either the downstream port info was read successfully or
> + * there was no downstream info to read, or a negative error code otherwise.
> + */
> +int drm_dp_downstream_read_info(struct drm_dp_aux *aux,
> +				const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +				u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS])
> +{
> +	int ret;
> +	u8 len;
> +
> +	memset(downstream_ports, 0, DP_MAX_DOWNSTREAM_PORTS);
> +
> +	/* No downstream info to read */
> +	if (!drm_dp_is_branch(dpcd) ||
> +	    dpcd[DP_DPCD_REV] < DP_DPCD_REV_10 ||
> +	    !(dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT))
> +		return 0;
> +
> +	len = (dpcd[DP_DOWN_STREAM_PORT_COUNT] & DP_PORT_COUNT_MASK) * 4;

I'm having a hard time rationalizing DP_MAX_DOWNSTREAM_PORTS being 16, but only
having 4 ports worth of data in the DP_DOWNSTREAM_PORT_* registers. Do you know
what's supposed to happen if dpcd[DP_DOWN_STREAM_PORT_COUNT] is > 4?

Sean

> +	ret = drm_dp_dpcd_read(aux, DP_DOWNSTREAM_PORT_0, downstream_ports,
> +			       len);
> +
> +	return ret == len ? 0 : -EIO;
> +}
> +EXPORT_SYMBOL(drm_dp_downstream_read_info);
> +
>  /**
>   * drm_dp_downstream_max_clock() - extract branch device max
>   *                                 pixel rate for legacy VGA
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1e29d3a012856..984e49194ca31 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4685,18 +4685,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  			return false;
>  	}
>  
> -	if (!drm_dp_is_branch(intel_dp->dpcd))
> -		return true; /* native DP sink */
> -
> -	if (intel_dp->dpcd[DP_DPCD_REV] == 0x10)
> -		return true; /* no per-port downstream info */
> -
> -	if (drm_dp_dpcd_read(&intel_dp->aux, DP_DOWNSTREAM_PORT_0,
> -			     intel_dp->downstream_ports,
> -			     DP_MAX_DOWNSTREAM_PORTS) < 0)
> -		return false; /* downstream port status fetch failed */
> -
> -	return true;
> +	return drm_dp_downstream_read_info(&intel_dp->aux, intel_dp->dpcd,
> +					   intel_dp->downstream_ports) == 0;
>  }
>  
>  static bool
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index 5c28199248626..1349f16564ace 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1613,6 +1613,9 @@ int drm_dp_dpcd_read_link_status(struct drm_dp_aux *aux,
>  bool drm_dp_send_real_edid_checksum(struct drm_dp_aux *aux,
>  				    u8 real_edid_checksum);
>  
> +int drm_dp_downstream_read_info(struct drm_dp_aux *aux,
> +				const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +				u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS]);
>  int drm_dp_downstream_max_clock(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
>  				const u8 port_cap[4]);
>  int drm_dp_downstream_max_bpc(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> -- 
> 2.26.2
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
