Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D028F853019
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 13:04:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4AE10E062;
	Tue, 13 Feb 2024 12:04:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="YfL67+/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3080F10E062
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 12:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1707825850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0dz3MhdeXJwal6GrE8xe1bhPmGVi5+hb8mJ2p/1t9dg=;
 b=YfL67+/vBG5PVUYek2y+IbntIqPyLcv9YEI13R7WqjJLRJkBcvgxIkTRGu1Z7SWfkdhnqf
 ZZAs+27fPhsnAnLwTsi5xDmwHAWbRVxH/7wG0NEraYJeY0ZXA3ABJicngkJfEwlpAjcgFX
 XZ22OfDPuYSg4bUrhP2rFfP4z2Xn6k4=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-361-T0lUgs0FPMSZVBKl_ZOlcQ-1; Tue, 13 Feb 2024 07:04:09 -0500
X-MC-Unique: T0lUgs0FPMSZVBKl_ZOlcQ-1
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-2d0e2ff7d8eso30059951fa.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 04:04:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707825847; x=1708430647;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0dz3MhdeXJwal6GrE8xe1bhPmGVi5+hb8mJ2p/1t9dg=;
 b=dod+CcMfpA7l2XX70S1C0kRcu2LlWG8oPxYQMMnqmCkKFJZ83LJCeJFjW4lrokxBEb
 rrD6hgT4bBFXWLWQ5Wuk+PmK+IVQQdgULercowFACw7OJCDpE099TDSOSmPc7KdU6XvL
 L0T8BVq1eCVOiVRdk9GK5ay7vMO2MvyfaSEU0p4YqLC3dLj182M99BTorW9fqxfhV4Uz
 YENBHnkeq15xT+vRfa8xQCu4TzCSYq5+Nk8MPRvkC7Nql+m02k39XxArAPekJkVxjdvI
 3IMDC4ci1tt6ftE1FnS/qLWa3maGp6J3fLbe/kZFxalA0P5/uW36H/4werqeCpU43X+a
 gZHw==
X-Gm-Message-State: AOJu0YzzVtY/S2SKBQTRlxqQ+wfV92VgXkdhkVxuCdw+fZMwz6N3XJFM
 YfKa9qtlICYCFARqrwArUalAWgbgl02gK91jLnEr5jG9aw1vWmwmM+vdkIsMbc9knxn6kZDGd0z
 FH9bds41N+ll+PtDOSJJ60Egu30f9Mk+wci+XfVZr3Gx89zUSENx9pjT9LVzpPK8lqA==
X-Received: by 2002:a2e:9f53:0:b0:2d0:63af:b27c with SMTP id
 v19-20020a2e9f53000000b002d063afb27cmr6214604ljk.13.1707825847502; 
 Tue, 13 Feb 2024 04:04:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjA9a0pe4X4ixrcmcI3plD0++x3ZzYBuaC/qw1aKtnfsFtunV/8ncfKJPVub+AfnMz3p3N+g==
X-Received: by 2002:a2e:9f53:0:b0:2d0:63af:b27c with SMTP id
 v19-20020a2e9f53000000b002d063afb27cmr6214587ljk.13.1707825847149; 
 Tue, 13 Feb 2024 04:04:07 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUd8l9qXxAvYkdk+BYc1+OvLWJjB+9cmnyoE5kAZJq88qtV2uAqode4QciVJMSQ9+vDgDqJiFbX+B7x4KY3ahukOX4+3RXwA1H1RiHbCmDGaHtPv5k0pk/zEuLf2lJbVAgRPOv+uMJDR6F8yJIVVpxQOHD2iKQ7A7GrYY3xI5HkW/7M2qUrzsPRwTUM9HMI5CDnbmFIg60Yluh9jjbscW2/9Ie9n6lPDgNtlimk7LfwxaCL2u4skrR4uEVmQTDdQAtxqYuORehB0irkpHn38yX8ESrhu/v+Hm8KAkIezmgmu6ELTluW6Eodwl/AZfqfZP6UCDOM3IXZSzPRh1nnKP8ELgNaUs9x/TUxUtldsYM+70lhowkYIR8T9ec6427DErqlr4m2uDH4lG/SxExK1ZpqMzLi8DUAKFnXfFE3f0vuYwuy+gP2FgMiF34JjSziC/ecGX3njoj/BmR9mwuN2o6V4wBeF/TfjnOH7nutnBfnM1P+Z5ILusvNCsYxRY6ol48DhWiWQh/CBer68rvVhD2+ZGfUH3LUCJoPljI9oPrMNd7DW1orbCrlv8Ajios5bomrESJWedZAVH4cyZHivGTl4x27vnJXlYS5TtJYFWVSxANaLoWhtY7jWITWtHqMz9uVxoT0QssFGRfkziRuMBxCMetvlfAy5g/00uAF0X/UjzfXBzsMn+JU6GfKU5O1G4bA7JF4e5Vy9LzOcefTKiAtYdwPcY/F1KGMuIYJ9hE2O6d/CGxOR1B+
Received: from toolbox ([2001:9e8:8981:e100:f9ea:cd3e:137d:ecc8])
 by smtp.gmail.com with ESMTPSA id
 js26-20020a05600c565a00b0040fe3147babsm11480665wmb.0.2024.02.13.04.04.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 04:04:06 -0800 (PST)
Date: Tue, 13 Feb 2024 13:04:04 +0100
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Uma Shankar <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, pekka.paalanen@collabora.com,
 contact@emersion.fr, harry.wentland@amd.com, mwen@igalia.com,
 jadahl@redhat.com, shashank.sharma@amd.com, agoins@nvidia.com,
 joshua@froggi.es, mdaenzer@redhat.com, aleixpol@kde.org,
 xaver.hugl@gmail.com, victoria@system76.com, daniel@ffwll.ch,
 quic_naseer@quicinc.com, quic_cbraga@quicinc.com,
 quic_abhinavk@quicinc.com, arthurgrillo@riseup.net,
 marcan@marcan.st, Liviu.Dudau@arm.com, sashamcintosh@google.com,
 sean@poorly.run
Subject: Re: [PATCH 08/28] drm: Add Color lut range attributes
Message-ID: <20240213120404.GB1372043@toolbox>
References: <20240213064835.139464-1-uma.shankar@intel.com>
 <20240213064835.139464-9-uma.shankar@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240213064835.139464-9-uma.shankar@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

On Tue, Feb 13, 2024 at 12:18:15PM +0530, Uma Shankar wrote:
> This defines a new structure to define color lut ranges,
> along with related macro definitions and enums. This will help
> describe segmented lut ranges/PWL LUTs in the hardware.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  include/uapi/drm/drm_mode.h | 58 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index af67f32e0087..376498715d0e 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -1014,6 +1014,64 @@ struct hdr_output_metadata {
>  				  DRM_MODE_PAGE_FLIP_ASYNC | \
>  				  DRM_MODE_PAGE_FLIP_TARGET)
>

All of this uses DRM_MODE_LUT namespace but it seems specifically for
the drm colorop of type DRM_COLOROP_1D_LUT. Let's be consistent with the
naming.

> +/**
> + * DRM_MODE_LUT_INTERPOLATE
> + *
> + * linearly interpolate between the points
> + */
> +#define DRM_MODE_LUT_INTERPOLATE BIT(0)
> +
> +/**
> + * DRM_MODE_LUT_REUSE_LAST
> + *
> + * the last value of the previous range is the
> + * first value of the current range.
> + */
> +#define DRM_MODE_LUT_REUSE_LAST BIT(1)
> +
> +/**
> + * DRM_MODE_LUT_NON_DECREASING
> + *
> + * the curve must be non-decreasing
> + */
> +#define DRM_MODE_LUT_NON_DECREASING BIT(2)
> +
> +/**
> + * DRM_MODE_LUT_REFLECT_NEGATIVE
> + *
> + *  the curve is reflected across origin for negative inputs
> + */
> +#define DRM_MODE_LUT_REFLECT_NEGATIVE BIT(3)
> +
> +/**
> + * DRM_MODE_LUT_SINGLE_CHANNEL
> + *
> + * the same curve (red) is used for blue and green channels as well
> + */
> +#define DRM_MODE_LUT_SINGLE_CHANNEL BIT(4)
> +
> +/**
> + * struct drm_color_lut_range
> + *
> + * structure to advertise capability of a color hardware
> + * block that accepts LUT values.  It can represent LUTs with
> + * varied number of entries and distributions
> + * (Multi segmented, Logarithmic etc).
> + */
> +
> +struct drm_color_lut_range {
> +	/* DRM_MODE_LUT_* */
> +	__u32 flags;
> +	/* number of points on the curve */
> +	__u16 count;
> +	/* input/output bits per component */
> +	__u8 input_bpc, output_bpc;
> +	/* input start/end values */
> +	__s32 start, end;
> +	/* output min/max values */
> +	__s32 min, max;
> +};
> +
>  /*
>   * Request a page flip on the specified crtc.
>   *
> -- 
> 2.42.0
> 

