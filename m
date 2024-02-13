Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 336FA85301E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 13:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7E910E6EF;
	Tue, 13 Feb 2024 12:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="W4Xq/G3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962A410E63F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 12:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1707825882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6vMlXtqZlkovPt502ZrV7r9YzW/W1XszdvH+Be4zbNs=;
 b=W4Xq/G3D3mHy4sjIeXqFJB7zImWUNW9AMlVC4fHHWAWbyMwvTw2Pq3xSi9fIWME/O58cQ4
 j0OwqTA3ieNtkBYwqoTTmMXbxWzqEXR6LROPIfYIv/dBvicggW54hgx79QRNV7W7lTTsI1
 uHRq2AuhBTWPMqNvGnoQ1BU+Od77pxk=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-694-ETU-B2Y8NpOPcGRrMql1oA-1; Tue, 13 Feb 2024 07:04:41 -0500
X-MC-Unique: ETU-B2Y8NpOPcGRrMql1oA-1
Received: by mail-lf1-f71.google.com with SMTP id
 2adb3069b0e04-511490b3d50so4027834e87.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 04:04:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707825879; x=1708430679;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6vMlXtqZlkovPt502ZrV7r9YzW/W1XszdvH+Be4zbNs=;
 b=a69/3Ee/HePFDuRPjUd5nY2DIkZQMTuS585zeTgQVdEtbUsuVk/86XXj4gZbwzOori
 iiapD4CLMgbXaopXSXvUXkNFkPW8W7cf6tBf1fhLQtWsg0yX66uHOwoZXPSU9oSyrZPZ
 APmS9odHWZpnz6OsKkhoAXMjYf9f0RWUzbb61uOS+KWyO9lk52NpQ5xYjU4RezYxWIS5
 4cgOlFTkvMLYGM3TIfZMItQMsyJkIospVv9hYZEbbyXrWhbYjM/NcyRF0O3d4qKY2KKR
 zXFkJ1YKkqCINzoaEv18Y8MXL+x0SV6PfRw7ZjWYFwl6JTc9bu874F9vkEm8D3QalogA
 vI7Q==
X-Gm-Message-State: AOJu0YxMH6SfKuDl/BgmDvu9VLBOu4HQLWMvneDf2wV9PWxpr1TWepoO
 Zdygig9FBhuCgxsGkYYXShgLbLZX84MmQiBz/LHjU3Ixx59AfdaH4t+5LlXVjOp3+SRVqS4fIU5
 OeWwDJyEzjAuTI62rFarA+bz3+QR+9a1OR9rvmjCT1UE5FITde+s/avvb+oY1eMhT/XhnRJmGUW
 Xb+O4=
X-Received: by 2002:ac2:4849:0:b0:511:8677:67c0 with SMTP id
 9-20020ac24849000000b00511867767c0mr4614033lfy.64.1707825879416; 
 Tue, 13 Feb 2024 04:04:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGi7HZoydu8aIkPAtWZ2ihE19OHI6UhczCe0kj+oquB26SdoJ7l1qj7Cj3Jq9PF7JO1FRcy+w==
X-Received: by 2002:ac2:4849:0:b0:511:8677:67c0 with SMTP id
 9-20020ac24849000000b00511867767c0mr4613994lfy.64.1707825879078; 
 Tue, 13 Feb 2024 04:04:39 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXpJ4AR7qnFIHrCmOXkY6V4zVXEytPa5jXEBrtcrOCQzFsfRLB7wkBrEbRsqzQXVKXJIcz3ppxp+/AJh6YIW3MnXuGQjVW2ZjOWZID9w2Fy0EyJJhr2T1H3Gcq0HLygQr2h21plPwqwfuFL8uMjcC2N95fIzTTat7/vasc+YKsQnG2cngeLOcmuZYR/6rE6JHW2GoQAgQo+6+gdgrNh317sjjvUAdy+zu1qedv73LcUoo4v0/1pfpJCMy/AQMz+YD/V4gT929diEt/0fW+4w3jOSjbM5iUpgskTx1L/tTMKUJiZpmSKAQEuTvBm4RnbyHSU7gxbv+qvJa/v1A4M/OuSCJ0JzrcXSy3Miis5Iz6i/7BWdz4xkUE15dCCliFSuayT+SjFnOJF+NTAy4F15+hFMvW/5AUljyl4QU3N5BADadwVd09dgBp0YC5irhZPCTYaV3bvglSID93UFXKlZYECv7Uxr/WJ9cirtOr4rKuqg9Q34VHgwh9BhOWfYjaYTd6wSUNyZVdS4PtcPVVqEKSd2rqzyleLUftoFm+j2t4F9VaFdZ2S9jb4jz9UlEjWOSKYkR4NSJcNTUkHIA0/qcqWdP3wEKKltYuouzWvQ8TOBvFz1FlO/DcOLSk6RVCj3FAmVHbLYfiSSvRJQ7MN4lhvUu0SQ02H6jNXUjaruxVSUdrdKpwwyX6PyiJ2w7O1TJ5t/y3Tj7KVc4Porw12o6aPodM5y1+7aRgbtUr4+NjegQ4ZGbp1wh90
Received: from toolbox ([2001:9e8:8981:e100:f9ea:cd3e:137d:ecc8])
 by smtp.gmail.com with ESMTPSA id
 dx9-20020a05600c63c900b0040d5ae2906esm11454755wmb.30.2024.02.13.04.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 04:04:38 -0800 (PST)
Date: Tue, 13 Feb 2024 13:04:37 +0100
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
Subject: Re: [PATCH 09/28] drm: Add Color ops capability property
Message-ID: <20240213120437.GC1372043@toolbox>
References: <20240213064835.139464-1-uma.shankar@intel.com>
 <20240213064835.139464-10-uma.shankar@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240213064835.139464-10-uma.shankar@intel.com>
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

On Tue, Feb 13, 2024 at 12:18:16PM +0530, Uma Shankar wrote:
> Add capability property which a colorop can expose it's
> hardware's abilities. It's a blob property that can be
> filled with respective data structures depending on the
> colorop. The user space is expected to read this property
> and program the colorop accordingly.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic_uapi.c |  3 +++
>  include/drm/drm_colorop.h         | 13 +++++++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 9f6a3a1c8020..95f1df73209c 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -770,6 +770,9 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
>  		*val = state->curve_1d_type;
>  	} else if (property == colorop->data_property) {
>  		*val = (state->data) ? state->data->base.id : 0;
> +	} else if (property == colorop->hw_caps_property) {
> +		*val = state->hw_caps ?
> +			state->hw_caps->base.id : 0;
>  	} else {
>  		return -EINVAL;
>  	}
> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
> index 5b8c36538491..f417e109c40a 100644
> --- a/include/drm/drm_colorop.h
> +++ b/include/drm/drm_colorop.h
> @@ -59,6 +59,12 @@ struct drm_colorop_state {
>  	 */
>  	enum drm_colorop_curve_1d_type curve_1d_type;
>  
> +	/**
> +	 * @hw_caps:
> +	 *
> +	 */
> +	struct drm_property_blob *hw_caps;
> +

Is this supposed to be generic for any colorop or specifically for
DRM_COLOROP_1D_LUT?

>  	/**
>  	 * @data:
>  	 *
> @@ -167,6 +173,13 @@ struct drm_colorop {
>  	 */
>  	struct drm_property *bypass_property;
>  
> +	/**
> +	 * @hwlut_caps_property:
> +	 *
> +	 * Property to expose hardware lut capbilities.
> +	 */
> +	struct drm_property *hw_caps_property;
> +
>  	/**
>  	 * @curve_1d_type:
>  	 *
> -- 
> 2.42.0
> 

