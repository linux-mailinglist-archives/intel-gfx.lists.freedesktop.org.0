Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E8BB12A68
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jul 2025 14:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1041210E471;
	Sat, 26 Jul 2025 12:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="larWd5He";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B52310E275
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:16:00 +0000 (UTC)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56Q3VtBU009325
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:15:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=JPo7S+oZuexL4DFQgOn2wIUA
 zSRAomU3JEjZqIYlc7k=; b=larWd5HeMURGT7/wBTH2UOb/xZ9HnK29t0kbt4Yo
 BeonJQpXT+V6B7D4F1EnGJiEvf0YdPDy7RsfdHpt10TQ10sJII4PgO5aVhvssir7
 Jj+IgK5erwuB1vmqRePXim18WQdoGMoRFtM17Ja0GLruzKzuJnSFnLs6Cy/jl+9L
 bvX3rjRA6890y8FsHQMxkwriTaIO8tQYEJtJQMRv2fIhtfuPwQwTA+AIKpXytx2P
 V7QfsJSiHhE4Kr0U+JzjE1Y2kzXiwRbtWVM1pAuLODGm32+V3HG0iL8RIrqEBWVD
 aeSp99DpLqZsYjXHei5HDOw9Bb77lLNY8Nlxi9Kftwo4/Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nytrp2b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:15:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-7e1b84c9a3dso424494885a.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 05:15:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753532158; x=1754136958;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JPo7S+oZuexL4DFQgOn2wIUAzSRAomU3JEjZqIYlc7k=;
 b=F9a9HZ9ZnT6OMQoWFge2tRX+dbm1XoD5QMXfcKNZLhpfG8Cc2/tdiAIo5NaUpAEYPq
 GkkwC8mj/tZMU4PngrcuXaOCPyYHxH9Fy9+8megzzbOhneAsTndZVoJU3R4M+Ap2Vgf3
 o19UczlR84/4XOVwQjvZDC3Lw31TpDrhuSUREai3KPfXfqKg6gBSV6wzC57p52pQpHwc
 KoExWftJdNRBq/dvXBGrjuHrjl6FlGV0ZsHLfymCUccwjc146K5TdTRCJpVlO+GliQzu
 FSVlTAjq2CF+ijeBKjnHnAwmX13Op9d6YHDPpcTpn8p3JmNkiFI0rd54AmODzR+Plfwt
 wP0A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWvbbLGZJ4T1ooliGCwEq0c6ed/3RaxvHEVIjcjPwg3p7ycY2O+wYbpIde0GE/dTNyAoqV9Xi2BSUc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy0Fd896qsAF0QeUTDS+LxmfNrPwn5aTw3kKrkbzQwZswfEOb1o
 CpMIridRU/zmt608dGgB0wtZvsGnuBFryTC4LSx7Yd36EAhVJ9TTL7ioqjROsuA+bxL9U6bPupq
 XWszl8/chq7UtQeyipjalX77vQmoiki6Ye/Hqcklul2jxmPvICmTTjuk7Pfk1lELBcF/znco=
X-Gm-Gg: ASbGnctSjfAuzxT14litrMxlfII1KzRGxt6SYK4zWPYTyUXHUdKp2Iu/ORyN3mXNGwx
 +bxYrtmMMONPDDvLF+5AkLTt0/NdTXPsMFAfB2H6qEKBtJQfa8n90Xc0PWKqDFCWetgST3ynj+m
 F7r0wZUivhlPCADAUe+9D0967TxpgSf6/5v67mxNKC8nfzbMKRjf4CzdnD+uyDpgsjWb/tcuKlw
 z8e4o6gJyB3R++a/nb0TZfnXGnl75DmsDXOrRUgqw/TP3lza8UAAIuGMmKMUdJ686zqglCW9zKX
 BvOVrpMP6M4X7xVKK3NFY7+L8q5fmjyMdFvCkLGXAeYF/xwqm8lArFrspTenCQlk0AWULozMGl6
 1eP66rcYreOamkS9oGeM3g2lcd1UQOORZJih+vMFdmrF2rZ+Mt11k
X-Received: by 2002:a05:620a:a502:b0:7e1:3537:c2cf with SMTP id
 af79cd13be357-7e63bfa78a9mr415128385a.34.1753532157995; 
 Sat, 26 Jul 2025 05:15:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXniVE2tAr8AWEM4a1wMuv+mMSLdHRzi8saBzFV20evnchdZGpr+Wc8dh608+b+GAK0bBoSw==
X-Received: by 2002:a05:620a:a502:b0:7e1:3537:c2cf with SMTP id
 af79cd13be357-7e63bfa78a9mr415126285a.34.1753532157428; 
 Sat, 26 Jul 2025 05:15:57 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b63378dd8sm412455e87.149.2025.07.26.05.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Jul 2025 05:15:56 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:15:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 01/28] drm/writeback: Add function that takes
 preallocated connector
Message-ID: <tglzdolw5nxc7tbscpfjcvx5jiydbghvouws7fl7xqryh7q5c4@klo5yncolqah>
References: <20250725050409.2687242-1-suraj.kandpal@intel.com>
 <20250725050409.2687242-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725050409.2687242-2-suraj.kandpal@intel.com>
X-Proofpoint-GUID: eX2KIXLDVQJhDWd-ZDiBkZW-5Uh9WwGe
X-Proofpoint-ORIG-GUID: eX2KIXLDVQJhDWd-ZDiBkZW-5Uh9WwGe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwNCBTYWx0ZWRfX8I6NLUjuXzG7
 fYWahNfq71UHrd6lMamW3ZmAFYqAGGfja9ZL1JYDEBAb3i6Ht+yNwJsNaEfirePtEyE5+Gd+UgB
 aJ7XzEr7ylGZ19/M6erHn9SjLcy4bdL58cK6kbH41lhJ9hTT7Rb65S3hq9AKv+kWicd7h55y0tE
 ff1Lr48Gfw73d4rODIWV40hkVFQZsqWisa0qfGJ3Gegk91Wwiq/gfMenaioTykTwA7eL+sEd/91
 13yVD4pOrG7q5eHyvn+XIasBLbDkjtckNIzn0EOdnZGjlJv77r0qDRIGtgNaj2kvvBUrdDreE/E
 LfxVWR+WlhHtCovWd104JtI87plnlx40uNHISieYUt8N7PsHy5UAPHVj4aG958EbsbfNwewV5LY
 g1lYD1X9koWEZRsOZe/g7thWEWqml3UzakfSL48U9Cg+4sruggJCsOR7vfT0fM5ajNvSXwVZ
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=6884c6ff cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=QyXUC8HyAAAA:8 a=TSzOo6nbr_hXDAOSG38A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507260104
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

On Fri, Jul 25, 2025 at 10:33:42AM +0530, Suraj Kandpal wrote:
> Write a function that takes a preallocated drm_connector instead of
> using the one allocated inside the drm writeback connector init
> function.

Please start your commit message with describing the problem.

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/drm_writeback.c | 76 +++++++++++++++++++++++++++++++++
>  include/drm/drm_writeback.h     |  7 +++
>  2 files changed, 83 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index 95b8a2e4bda6..fa58eb0dc7bf 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -416,6 +416,82 @@ int drmm_writeback_connector_init(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drmm_writeback_connector_init);
>  
> +/*
> + * drm_writeback_connector_init_with_conn - Initialize a writeback connector with
> + * custom encoder and connector
> + *
> + * @enc: handle to the already initialized drm encoder
> + * @con_funcs: Connector funcs vtable
> + * @formats: Array of supported pixel formats for the writeback engine
> + * @n_formats: Length of the formats array
> + *
> + * This function assumes that the drm_writeback_connector's encoder has already been
> + * created and initialized before invoking this function.
> + *
> + * In addition, this function also assumes that callers of this API will manage
> + * assigning the encoder helper functions, possible_crtcs and any other encoder
> + * specific operation.

Why?

> + *
> + * Drivers should always use this function instead of drm_connector_init() to
> + * set up writeback connectors if they want to manage themselves the lifetime of the
> + * associated encoder.
> + *
> + * Returns: 0 on success, or a negative error code
> + */
> +int
> +drm_writeback_connector_init_with_conn(struct drm_device *dev, struct drm_connector *connector,
> +				       struct drm_writeback_connector *wb_connector,
> +				       struct drm_encoder *enc,
> +				       const struct drm_connector_funcs *con_funcs,
> +				       const u32 *formats, int n_formats)
> +{
> +	struct drm_property_blob *blob;
> +	struct drm_mode_config *config = &dev->mode_config;
> +	int ret = create_writeback_properties(dev);
> +
> +	if (ret != 0)
> +		return ret;
> +
> +	blob = drm_property_create_blob(dev, n_formats * sizeof(*formats),
> +					formats);
> +	if (IS_ERR(blob))
> +		return PTR_ERR(blob);
> +
> +	connector->interlace_allowed = 0;

This function contans a lot of copy-paste from
__drm_writeback_connector_init(), which is obviously a no-go.

> +
> +	ret = drm_connector_init(dev, connector, con_funcs,
> +				 DRM_MODE_CONNECTOR_WRITEBACK);
> +	if (ret)
> +		goto connector_fail;
> +
> +	INIT_LIST_HEAD(&wb_connector->job_queue);
> +	spin_lock_init(&wb_connector->job_lock);
> +
> +	wb_connector->fence_context = dma_fence_context_alloc(1);
> +	spin_lock_init(&wb_connector->fence_lock);
> +	snprintf(wb_connector->timeline_name,
> +		 sizeof(wb_connector->timeline_name),
> +		 "CONNECTOR:%d-%s", connector->base.id, connector->name);
> +
> +	drm_object_attach_property(&connector->base,
> +				   config->writeback_out_fence_ptr_property, 0);
> +
> +	drm_object_attach_property(&connector->base,
> +				   config->writeback_fb_id_property, 0);
> +
> +	drm_object_attach_property(&connector->base,
> +				   config->writeback_pixel_formats_property,
> +				   blob->base.id);
> +	wb_connector->pixel_formats_blob_ptr = blob;
> +
> +	return 0;
> +
> +connector_fail:
> +	drm_property_blob_put(blob);
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_writeback_connector_init_with_conn);
> +
>  int drm_writeback_set_fb(struct drm_connector_state *conn_state,
>  			 struct drm_framebuffer *fb)
>  {
> diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
> index c380a7b8f55a..149744dbeef0 100644
> --- a/include/drm/drm_writeback.h
> +++ b/include/drm/drm_writeback.h
> @@ -167,6 +167,13 @@ int drmm_writeback_connector_init(struct drm_device *dev,
>  				  struct drm_encoder *enc,
>  				  const u32 *formats, int n_formats);
>  
> +int
> +drm_writeback_connector_init_with_conn(struct drm_device *dev, struct drm_connector *connector,
> +				       struct drm_writeback_connector *wb_connector,
> +				       struct drm_encoder *enc,
> +				       const struct drm_connector_funcs *con_funcs,
> +				       const u32 *formats, int n_formats);
> +
>  int drm_writeback_set_fb(struct drm_connector_state *conn_state,
>  			 struct drm_framebuffer *fb);
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
