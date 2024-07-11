Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB12932E67
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 18:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35DFF10E7D2;
	Tue, 16 Jul 2024 16:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF5010EABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 15:35:58 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-42565670e20so12935755e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 08:35:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720712157; x=1721316957;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=glFCckD1gYDzrAMfqAvC05QeVLA4kmgo3QMbd/yXdZg=;
 b=c8GGD6HCDo69qOq3MBieuoOgGWwzEVNT+2PJ3wKN8IrThZHmK0yokLPjaUvR7FtLxD
 qb/eXni1288KdzkdCVt/k47iveCWGfLY66Ee4iROsrwnkrymYMwWF3R+/bvZ7z5SkmC2
 7DF29swsp3HSLBppoQ/3jcliGmPzNNdYdtr9cMF503slWLxHFgN5mH7fBLwxX1vBxBDO
 ZOaUxPFTnzACUN9Rzwoe1OKOnpLRN9JSmyCaePkmhvnUDwxNqUeuX1F68WFfJ1v36GUS
 TmoeSSyIjZOJFsoQjBcnv1AirA9pUypoE/5cXDMHZUMGicTf58noGklsKAepKGvEBya+
 JclA==
X-Gm-Message-State: AOJu0YxWkc7ZHLR5SGLQRm1NTyyGdfJr5AXnAoyae9FdDLN16VizMofr
 GOWOJOYLT8M5Dk6OxzOZtdiTnZMedJcJNpVz/GBfm6kQ1tZ+XoDTbSxHTA==
X-Google-Smtp-Source: AGHT+IHxcHUiL8A63vrs0aCnXsP584Bem3uHCk68hSskMXfa2MNCq2Z63dl8WlPxTLP0fH3FUELQ8w==
X-Received: by 2002:a05:600c:22d8:b0:426:5b17:8458 with SMTP id
 5b1f17b1804b1-4279da067b3mr261045e9.12.1720712157048; 
 Thu, 11 Jul 2024 08:35:57 -0700 (PDT)
Received: from xavers-framework.localnet
 ([2a04:7d84:aacc:2400:d7ce:2620:d180:5216])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42797105bfasm48613185e9.10.2024.07.11.08.35.56
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jul 2024 08:35:56 -0700 (PDT)
From: Xaver Hugl <xaver.hugl@kde.org>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] RFC: drm/drm_plane: Expose the plane capability and
 interoperability
Date: Thu, 11 Jul 2024 17:35:56 +0200
Message-ID: <26511362.1r3eYUQgxm@xavers-framework>
In-Reply-To: <20240709074656.1389387-1-arun.r.murthy@intel.com>
References: <20240709074656.1389387-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Tue, 16 Jul 2024 16:33:00 +0000
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

Hi,

On Dienstag, 9. Juli 2024 09:46:56 MESZ Arun R Murthy wrote:
> Each plane has its own capability or interoperability based on the
> harware restrictions. If this is exposed to the user, then user can read
> it once on boot and store this. Later can be used as a lookup table to
> check a corresponding capability is supported by plane then only go
> ahead with the framebuffer creation/calling atomic_ioctl.
> 
> For Ex: There are few restiction as to async flip doesnt support all the
> formats/modifiers. Similar restrictions on scaling. With the
> availabililty of this info to user, failures in atomic_check can be
> avoided as these are more the hardware capabilities.
> 
> There are two options on how this can be acheived.
> Option 1:
> 
> Add a new element to struct drm_mode_get_plane that holds the addr to
> the array of a new struct. This new struct consists of the formats
> supported and the corresponding plane capabilities.
> 
> Option 2:
> 
> These can be exposed to user as a plane property so that the user can get to
> know the limitation ahead and avoid failures in atomic_check.
> 
> Usually atomic_get_property is controlled over the state struct for the
> parameters/elements that can change. But here these capabilities or the
> interoperabilities are rather hardware restrictions and wont change over
> flips. Hence having as a plane_property may not make much sense.
> On the other hand, Option 1 include changes in the uapi struct
> drm_mode_get_plane. Shouldnt have impact on backward compatibility, but
> if userspace has some implementation so as to check the size of the
> struct, then it might a challenge.

Adding fields to the struct should be okay, but adding a per-plane immutable 
property is also fine and IMO the cleaner option. We already have the same 
thing with "IN_FORMATS" and "type" that don't ever change either.

Either way, having a capability flag per format+modifier pair sounds good to me 
and should be both easy to make use of in userspace.

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic_uapi.c |  3 +++
>  include/drm/drm_plane.h           |  8 ++++++++
>  include/uapi/drm/drm_mode.h       | 20 ++++++++++++++++++++
>  3 files changed, 31 insertions(+)
> 
> =============Option 2========================
> 
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c
> b/drivers/gpu/drm/drm_atomic_uapi.c index 22bbb2d83e30..b46177d5fc8c 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -631,6 +631,9 @@ drm_atomic_plane_get_property(struct drm_plane *plane,
>  		*val = state->hotspot_x;
>  	} else if (property == plane->hotspot_y_property) {
>  		*val = state->hotspot_y;
> +	} else if (property == config->prop_plane_caps) {
> +		*val = (state->plane_caps) ?
> +			state->plane_caps->base.id : 0;
>  	} else {
>  		drm_dbg_atomic(dev,
>  			       "[PLANE:%d:%s] unknown property 
[PROP:%d:%s]\n",
> diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
> index dd718c62ac31..dfe931677d0a 100644
> --- a/include/drm/drm_plane.h
> +++ b/include/drm/drm_plane.h
> @@ -260,6 +260,14 @@ struct drm_plane_state {
>  	 * flow.
>  	 */
>  	bool color_mgmt_changed : 1;
> +
> +	/**
> +	 * @plane_caps:
> +	 *
> +	 * Blob representing plane capcabilites and interoperability.
> +	 * This element is a pointer to the array of struct 
drm_format_blob.
> +	 */
> +	struct drm_property_blob *plane_caps;
>  };
> 
>  static inline struct drm_rect
> 
> =============Option 1========================
> 
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index d390011b89b4..0b5c1b65ef63 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -312,6 +312,20 @@ struct drm_mode_set_plane {
>  	__u32 src_w;
>  };
> 
> +#define DRM_FORMAT_PLANE_CAP_LINEAR_TILE	BIT(0)
> +#define DRM_FORMAT_PLANE_CAP_X_TILE		BIT(1)
> +#define DRM_FORMAT_PLANE_CAP_Y_TILE		BIT(2)
> +#define DRM_FORMAT_PLANE_CAP_Yf_TILE		BIT(3)
> +#define DRM_FORMAT_PLANE_CAP_ASYNC_FLIP		BIT(4)
> +#define DRM_FORMAT_PLANE_CAP_FBC		BIT(5)
> +#define DRM_FORMAT_PLANE_CAP_RC			BIT(6)
> +
> +struct drm_format_blob {
> +	__u64 modifier;
> +	__u32 plane_caps;
> +
> +};
> +
>  /**
>   * struct drm_mode_get_plane - Get plane metadata.
>   *
> @@ -355,6 +369,12 @@ struct drm_mode_get_plane {
>  	 * supported by the plane. These formats do not require modifiers.
>  	 */
>  	__u64 format_type_ptr;
> +	/**
> +	 * @ format_blob_ptr: Pointer to the array of struct 
drm_format_blob.
> +	 * Specify the plane capabilites/restrictions w.r.t tiling/sync-
async
> +	 * flips etc
> +	 */
> +	__u64 format_blob_ptr;
>  };
> 
>  struct drm_mode_get_plane_res {




