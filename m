Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84157B12A6C
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jul 2025 14:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C64A10E474;
	Sat, 26 Jul 2025 12:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="gm4zIuUg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E7B10E472
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:20:12 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56Q4mZnV021783
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:20:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=jyFlJTXGZOdVTGSfMXrobCcS
 yhUnV/FL4RuL0F60+DY=; b=gm4zIuUg78IcdvZwdBGqkPjp5iKaEy7zbtbOMoKy
 vluzT9XPNOnU0/GZ3CVOPt587FS0Cq2L1ZaNqHqyMKc1S22hneVRDdcUX0H1g94s
 1qEGP6TQVLQEFkzjUm7xHiHy7JlebXbd/Grep/rd1THSQlHnpbI4zSvxuwXXQAq4
 1pO41ZZr5ClGLhMUe6tPAon1vIQudhA14SY+lj7K4HMJjXSFdopjCf2CD7aQO9bv
 mZmiB4igS3qsd7zsY2/iPK4QFWoaSScyC28dEI+kXW21Vg5BOHmsEiQg+9rbpXSO
 UEqBxQmlAXiXHRykc9LBA7k5cki6XtYpmFrxNEMh5HLERw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484racgfxq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:20:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-7073a52a800so1839256d6.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 05:20:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753532411; x=1754137211;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jyFlJTXGZOdVTGSfMXrobCcSyhUnV/FL4RuL0F60+DY=;
 b=tmg7SG1zEJNuT7Q3xnaBvgxVdgSTbGqSFQeizfju/XmKACufWevh7m92L1QIWtCIcs
 lDnZUD4hQ60VOyv5iXhes1imeUY5KDuRAkQo4q//XK9VABslH9U21luT6t+FHqU3/KTp
 RCRU1wPvFR+ZINQL/k3xaQpbxrZtzU8eqsEGWEzePdioxUyhfX6EabEqigC15cH90+YR
 47yLnYDcloqtn9zmlrTl8uPBaWjUrDAUlmRyYOeLGmN1mebLbqLGpVGpzhrLPsfWPzeb
 7AxCiLsotEJwBz0I9oxaZPoFmWbIQ2kcsU5CguLi739OoM9/l2SbrDfiHscc2adeK1Da
 +UeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXIyV3F8UZw4VW9XtgmIQ+HvJv1QyU/VxL5uz+mdFHRhlTBjUcaUmdqpKmS3IqXcwWYg2T9djKNPiI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw1nEMxSJWLq46ESEuU8K/oHhTXX4S0aB+mRVe3RTphHEUa9K3y
 3osluDNaSjdmRbUQ/ErOCreyyK1drkjdp7yYOVrIlE4Kn/qY0TfgjmiAE6n/ltVNz+AfWmqMVFB
 swpHeFMQMMnB8AtGIKPw6fDSK9AQZHfnx9fQPGzt30/PAVhuOZaN/IZJr79dW8TV5+HABAW8=
X-Gm-Gg: ASbGncuJPU8fTbG6Zd+TiCP8CJh6AxTCvK6+hXrmP4dpFO3zHvRjvYF6VL5xDQbXZMw
 xlc248R1wbwY3dzVWumxqxYyrwHqFEgatLed+lJSNsE4nFGsyHH/NwHz9wCJfiKYfrE0l2DyVtF
 3LmkOwRgOW5/ss9RAQS9BruCRV/B3mrbWk3YMPq3O9iIupSw0tBGF/gheBcMA3TeDDxYK1Xdagj
 GushZNchIvc1pTR4fNFCRZEVhV4w/UNfmxcQc+TgHlXqaaaslF1RmBlE0skAIPez3k0XoagN1vf
 hmBTEvu0r5PZAvf0Xm/pw4YQg7PIze5DjUdumUE3u5Ib8gXiSMWFLGcniAa8WvSDE845CyQb7oz
 svWPsLdS/jjI4w46ndJ3C8iLbBPPzugLk5E1KJzAFPcltwmBuYTRi
X-Received: by 2002:a05:6214:29c6:b0:704:a583:d98 with SMTP id
 6a1803df08f44-707205304f3mr80457066d6.18.1753532410474; 
 Sat, 26 Jul 2025 05:20:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1fcpnF6Z8m1YY/ZcQL8uL5sAhV7eQAqyu8w/exh6TTKcpvur+bLbAXScB0KMRzBqMpR6i4w==
X-Received: by 2002:a05:6214:29c6:b0:704:a583:d98 with SMTP id
 6a1803df08f44-707205304f3mr80456626d6.18.1753532409972; 
 Sat, 26 Jul 2025 05:20:09 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-331f426e396sm4219221fa.70.2025.07.26.05.20.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Jul 2025 05:20:07 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:20:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 02/28] drm/writeback: Add a helper function to get
 writeback connector
Message-ID: <wntb2pbszt3aavfuztv4wvr3dxwvpuk673d45xefmp6arb5qu3@s22k7yw5ykjm>
References: <20250725050409.2687242-1-suraj.kandpal@intel.com>
 <20250725050409.2687242-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725050409.2687242-3-suraj.kandpal@intel.com>
X-Authority-Analysis: v=2.4 cv=WqsrMcfv c=1 sm=1 tr=0 ts=6884c7fc cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=QyXUC8HyAAAA:8 a=uFHf-_iy_6cwRPmZKPEA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 6sg7VjOzQTxq_8HvFlsc4HVVnwqF4UeS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwNCBTYWx0ZWRfX9Tpz3oUpI3hb
 t0dFi7INd95HvyjpSnTRHPeERPyaJatFCFTHY/mE4XMoiXZlLoIzPH5u1LVFxy2KryXEjiL+830
 zC7wA0BvBVTRCvfzkONpMF/X/0QbLfYvgTJjURrT5vU8hNmPjESCvFQcPqEMbGJkq6PR0ChJrte
 z8K60xTnldnMvB4Lae3vOfzZIZdm9irF8yBkH/oyLAgkUPbHoHOvBHGq2WpN4gH9UcrV002Eilz
 euZBAqd0VZQcNZDALKGsRNgabwTIyFlamGS1D+cOIbyNHFraNpE0SbSfP5VKjuQr2vg31RqAXFe
 oWlpWcoU/o6ZubjPiSRqlpYllFKaJsfFZ3dUnM5gEQmWL44+zaHqQW+eKhl6YXE1hQ8Z55vvTgm
 V4qVQozW+xfU5bg2Xtehjiks9WJv05xh1lWj9eiZ8yBwIQoVuaZOh0NiaWdS/2B6uldOSluj
X-Proofpoint-ORIG-GUID: 6sg7VjOzQTxq_8HvFlsc4HVVnwqF4UeS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 clxscore=1015 mlxlogscore=999 impostorscore=0 mlxscore=0 malwarescore=0
 adultscore=0 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507260104
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

On Fri, Jul 25, 2025 at 10:33:43AM +0530, Suraj Kandpal wrote:
> Now that we can initialize a drm_writeback_connector without
> having to initialize the drm_connector within it and leaving the
> responsibility of initialising the drm_connector and maintaining
> the association with drm_writeback_connector to it. This helper
> hooks lets drivers return the drm_writeback_connector associated
> with the give drm_connector.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/drm_writeback.c          | 14 ++++++
>  include/drm/drm_modeset_helper_vtables.h | 59 ++++++++++++++++++++++++
>  include/drm/drm_writeback.h              | 14 ++++--
>  3 files changed, 82 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index fa58eb0dc7bf..e9f7123270d6 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -107,6 +107,19 @@ static const struct dma_fence_ops drm_writeback_fence_ops = {
>  	.get_timeline_name = drm_writeback_fence_get_timeline_name,
>  };
>  
> +struct drm_writeback_connector *
> +drm_connector_to_writeback(struct drm_connector *connector)
> +{
> +	const struct drm_connector_helper_funcs *funcs =
> +		connector->helper_private;
> +
> +	if (funcs->get_writeback_connector)
> +		return funcs->get_writeback_connector(connector);
> +
> +	return container_of(connector, struct drm_writeback_connector, base);
> +}
> +EXPORT_SYMBOL(drm_connector_to_writeback);
> +
>  static int create_writeback_properties(struct drm_device *dev)
>  {
>  	struct drm_property *prop;
> @@ -443,6 +456,7 @@ drm_writeback_connector_init_with_conn(struct drm_device *dev, struct drm_connec
>  				       struct drm_writeback_connector *wb_connector,
>  				       struct drm_encoder *enc,
>  				       const struct drm_connector_funcs *con_funcs,
> +				       const struct drm_writeback_connector_helper_funcs *wb_funcs,
>  				       const u32 *formats, int n_formats)
>  {
>  	struct drm_property_blob *blob;
> diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
> index ce7c7aeac887..6b89b33d2304 100644
> --- a/include/drm/drm_modeset_helper_vtables.h
> +++ b/include/drm/drm_modeset_helper_vtables.h
> @@ -31,6 +31,7 @@
>  
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_encoder.h>
> +#include <drm/drm_writeback.h>
>  
>  /**
>   * DOC: overview
> @@ -1179,6 +1180,25 @@ struct drm_connector_helper_funcs {
>  	 *
>  	 */
>  	void (*disable_hpd)(struct drm_connector *connector);
> +
> +	/**
> +	 * @get_writeback_connector:
> +	 *
> +	 * This callback is used by drivers to get the writeback connector in
> +	 * case the init is done via drm_writeback_init_with_conn. Which means
> +	 * the drivers don't have drm_connector embedded in drm_writeback_connector
> +	 * so they need to send the associated writeback connector with this
> +	 * function.
> +	 *
> +	 * This operation is optional.
> +	 *
> +	 * This is mainly called from drm_writeback_set_gb.
> +	 *
> +	 * RETURNS:
> +	 *
> +	 * drm_writeback_connector assoiciated with the drm connector.
> +	 */
> +	struct drm_writeback_connector *(*get_writeback_connector)(struct drm_connector *connector);
>  };
>  
>  /**
> @@ -1192,6 +1212,45 @@ static inline void drm_connector_helper_add(struct drm_connector *connector,
>  	connector->helper_private = funcs;
>  }
>  
> +/**
> + * struct drm_writeback_connector_helper_funcs - helper operations for writeback
> + * connectors.
> + *
> + * These functions are used by the atomic and legacy modeset helpers and by the
> + * probe helpers.
> + */
> +struct drm_writeback_connector_helper_funcs {
> +	/**
> +	 * @get_connector_from_writeback:
> +	 *
> +	 * This callback is used by drivers to get the drm_connector in
> +	 * case the init is done via drm_writeback_init_with_conn. Which means
> +	 * the drivers don't have drm_connector embedded in drm_writeback_connector
> +	 * so they need to send the associated drm_connector with this
> +	 * function.
> +	 *
> +	 * This operation is optional.
> +	 *
> +	 * RETURNS:
> +	 *
> +	 * drm_connector assoiciated with the drm_writeback_connector.
> +	 */
> +	struct drm_connector
> +	*(*get_connector_from_writeback)(struct drm_writeback_connector *wbconnector);
> +};
> +
> +/**
> + * drm_writeback_connector_helper_add - sets the helper vtable for a connector
> + * @wb_connector: DRM writeback connector
> + * @funcs: helper vtable to set for @wb_connector
> + */
> +static inline void
> +drm_writeback_connector_helper_add(struct drm_writeback_connector *wb_connector,
> +				   const struct drm_writeback_connector_helper_funcs *funcs)
> +{
> +	wb_connector->helper_private = funcs;
> +}
> +
>  /**
>   * struct drm_plane_helper_funcs - helper operations for planes
>   *
> diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
> index 149744dbeef0..77c3c64c132d 100644
> --- a/include/drm/drm_writeback.h
> +++ b/include/drm/drm_writeback.h
> @@ -84,6 +84,13 @@ struct drm_writeback_connector {
>  	 * The name of the connector's fence timeline.
>  	 */
>  	char timeline_name[32];
> +
> +	/**
> +	 * @helper_private:
> +	 *
> +	 * helper private funcs for writeback_connector
> +	 */
> +	const struct drm_writeback_connector_helper_funcs *helper_private;
>  };

Unrelate to the commit? Also, where is this defined?

>  
>  /**
> @@ -142,11 +149,7 @@ struct drm_writeback_job {
>  	void *priv;
>  };
>  
> -static inline struct drm_writeback_connector *
> -drm_connector_to_writeback(struct drm_connector *connector)
> -{
> -	return container_of(connector, struct drm_writeback_connector, base);
> -}
> +struct drm_writeback_connector *drm_connector_to_writeback(struct drm_connector *connector);
>  
>  int drm_writeback_connector_init(struct drm_device *dev,
>  				 struct drm_writeback_connector *wb_connector,
> @@ -172,6 +175,7 @@ drm_writeback_connector_init_with_conn(struct drm_device *dev, struct drm_connec
>  				       struct drm_writeback_connector *wb_connector,
>  				       struct drm_encoder *enc,
>  				       const struct drm_connector_funcs *con_funcs,
> +				       const struct drm_writeback_connector_helper_funcs *wb_funcs,
>  				       const u32 *formats, int n_formats);
>  
>  int drm_writeback_set_fb(struct drm_connector_state *conn_state,
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
