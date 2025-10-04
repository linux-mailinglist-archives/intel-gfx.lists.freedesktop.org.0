Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24695BB8C56
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Oct 2025 12:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC10910E053;
	Sat,  4 Oct 2025 10:08:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="E599u2q3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D063310E053
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Oct 2025 10:08:30 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5940gmPu001220
 for <intel-gfx@lists.freedesktop.org>; Sat, 4 Oct 2025 10:08:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=oF4ylOnxHy3iXVmpLJewAkMc
 OvTMeYc76t5jsgQhmCs=; b=E599u2q3z3ewTUqBqKrdq1Rd0bkhpv2DeC+P67hH
 DLHHEe7yf7vk/Bhxatf71vX0TbLlB8Eryb5pAkB1ZbJxIGwr1jAU/aLuLoj86IXj
 K+cUe+Ss4htF4sL9MqHL3AqKxoLiWihXQcdpZ+3s/j/C4sw4FerU6IIlW+6GrNLP
 zMP9QyXfjuHgAqPfia4By0WrAS3Pb0FkOX4U1hr+DpqCsI3S2VOVyx4WQwIDczWV
 hgxiWDWHGSHOYTp7hNKGPPvSgJtTQZdAipLYx/fSNczZeAZbOxDk/lvVThXOpmHI
 0+gUMBI/gydLWiMjNkQ3tlC6Xt3CipVJR5ZH9bvAEjo90A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9drpjw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Oct 2025 10:08:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-4df10fb4a4cso117826751cf.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Oct 2025 03:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759572509; x=1760177309;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oF4ylOnxHy3iXVmpLJewAkMcOvTMeYc76t5jsgQhmCs=;
 b=HRmqoY0798iq3gQXWbnEJyqZd+OJOAE1NC2gSjW5zB/XwVF0DTprngmwVO5l3TgElH
 BwS05KdUS8ipdFswrD8VJKIqe7fRtsr0PxmPmj16Y0G6nOxsF3Jgty1aiHIN3Dgn4Nyg
 sAomtpfIeNVTPjAHx9Y3lwxy361BJrwgKxjvS9eh9cOh+JXv1exTrqZ6sPNMD8T0+Mey
 a72wAjy+3t54zxky0Vz0NUSM7Z743myZzd23SpN79HHydvZF1YLUNCv6FJlnvv0k3pUV
 0uprJV6y4Wo/jb3Hbm6HGUjOuxL9IeK8aayv6tfu6Ypa41k+yzRxp+Rghesyv6ZGmZnU
 qZeQ==
X-Gm-Message-State: AOJu0YyVQgdahp6UG1Z4590HE3mjk621bCxpDdhtLMj+00vXQGStgR1+
 nms1PpOFgsuLaiEu4sP1TYb+3XJE9hMON5XveZLEw9HLSWa0HbAYS5TQ2lWf/MqKP36erSHNSsH
 UmUsUMVCjefyNB7fvzyRflMtZmxchGmedPZvfS7YOAa4sZq7b+/vRNzt8HcPawNq5xExdA5U=
X-Gm-Gg: ASbGncvRkoamvvPpIiz0VYlCmxGdUA/Xj3D2f1rYI0C3SvMPC/sA8Q0R2kpZkXSLGy/
 2s2ATtfyV1yKQ0j6p1E/OuOsUbTPUy3Ca2jW7L7SyGmtf/7BM33k7nl6bev+BCMkZc7WIIMQboY
 nJvzF/FGCvfreul2Q+1PWWStoSNhuHQoKNex9K/eGDiUvVrmznfdLT7PLoULY8xrpEcR9JC8BV4
 kJcdcefvNhbDCrsZWb+V41E5BIFx2/2ItCq51gmkZBq1Na1OoH8V0bGFa3OOvUV0LuMzdHsOTVX
 vrdGKiaBLZ6AbTNDxqiuighqJfzcbVxuFbTbVsZmj/ZGWE3Ww5+yDHTULVKOlpUDx5H80pqBVPy
 stqcIab2/shDW6A4JVOT+1Sfl71EPIgs/oOgue5JOC5PrQD7rH9S0Lwz6WQ==
X-Received: by 2002:ac8:7d82:0:b0:4b3:50b0:d7b with SMTP id
 d75a77b69052e-4e576ae4d3amr71937121cf.61.1759572508489; 
 Sat, 04 Oct 2025 03:08:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDB8YON6+IOdqT/W12uoEsRDZ0RPKvejXjWXeyKQTp7j3QpYmN3/JnOt7VY11YVTXkprzbPw==
X-Received: by 2002:ac8:7d82:0:b0:4b3:50b0:d7b with SMTP id
 d75a77b69052e-4e576ae4d3amr71936921cf.61.1759572508072; 
 Sat, 04 Oct 2025 03:08:28 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-373ba4a6015sm23709331fa.45.2025.10.04.03.08.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Oct 2025 03:08:26 -0700 (PDT)
Date: Sat, 4 Oct 2025 13:08:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Adarsh G M <Adarsh.g.m@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH 01/10] drm/drm_crtc: Introduce sharpness strength property
Message-ID: <epzspujsf2o4wq5ykswe7a3hvrb3vy5wgenglfopmkuepyfstm@5kkpxstpyc3r>
References: <20251001063500.1259687-1-nemesa.garg@intel.com>
 <20251001063500.1259687-2-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001063500.1259687-2-nemesa.garg@intel.com>
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e0f21e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=QyXUC8HyAAAA:8 a=SGaxUKKO3T6AHWD8hvkA:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: eCch0eNRBtUET1ZgTeSgxivp3iw5rRsX
X-Proofpoint-ORIG-GUID: eCch0eNRBtUET1ZgTeSgxivp3iw5rRsX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfXxsv+y52v/Bcx
 MNvJWIQQgYOZY2GRaYT7GVcTbLMBtr/XI4p5yVUKAMLC/9jjtG4m2PP7NknxPiyXSSkSGmPYoCK
 ibahzOPxNOkC5XXDbJuPQ4nYpt/wI2AY1w5l+bMKy0G+NCWtgtSQaFVJONHEVuaoQi4JhvAZM4e
 TaFX0VzmpUuxqqZM2/Ud24u0BkGAGKDQ58Eog+5ZJeKfusxRhATtC/mKYBEbbminXK6bJXQR8xs
 Vm09mN4Zd+e0fwqWx3B/zXR1C0oCU7/Yi/XyLQvaqvoqOAzen4iJwLG+jewK0/zsd6MtbT+g51K
 H0QbTJn8ujLAbvlwNfLFvaojPMrt6c9WATnfaPsy2r5Vi8k6VWDVEM/vR4+bIs7ahn5owZMIuQm
 GXUjl/69g3xaGoqIsKCg40Mnm5Ka9g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004
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

On Wed, Oct 01, 2025 at 12:04:51PM +0530, Nemesa Garg wrote:
> Introduce a new crtc property "SHARPNESS_STRENGTH" that allows
> the user to set the intensity so as to get the sharpness effect.
> The value of this property can be set from 0-255.
> It is useful in scenario when the output is blurry and user
> want to sharpen the pixels. User can increase/decrease the
> sharpness level depending on the content displayed.
> 
> v2: Rename crtc property variable [Arun]
>     Add modeset detail in uapi doc[Uma]
> v3: Fix build issue
> v4: Modify the subject line[Ankit]
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Tested-by: Adarsh G M <Adarsh.g.m@intel.com>
> Acked-by: Simona Vetter <simona.vetter@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_atomic_uapi.c |  4 ++++
>  drivers/gpu/drm/drm_crtc.c        | 35 +++++++++++++++++++++++++++++++
>  include/drm/drm_crtc.h            | 18 ++++++++++++++++
>  3 files changed, 57 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 85dbdaa4a2e2..b2cb5ae5a139 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -419,6 +419,8 @@ static int drm_atomic_crtc_set_property(struct drm_crtc *crtc,
>  		set_out_fence_for_crtc(state->state, crtc, fence_ptr);
>  	} else if (property == crtc->scaling_filter_property) {
>  		state->scaling_filter = val;
> +	} else if (property == crtc->sharpness_strength_property) {
> +		state->sharpness_strength = val;
>  	} else if (crtc->funcs->atomic_set_property) {
>  		return crtc->funcs->atomic_set_property(crtc, state, property, val);
>  	} else {
> @@ -456,6 +458,8 @@ drm_atomic_crtc_get_property(struct drm_crtc *crtc,
>  		*val = 0;
>  	else if (property == crtc->scaling_filter_property)
>  		*val = state->scaling_filter;
> +	else if (property == crtc->sharpness_strength_property)
> +		*val = state->sharpness_strength;
>  	else if (crtc->funcs->atomic_get_property)
>  		return crtc->funcs->atomic_get_property(crtc, state, property, val);
>  	else {
> diff --git a/drivers/gpu/drm/drm_crtc.c b/drivers/gpu/drm/drm_crtc.c
> index 46655339003d..a7797d260f1e 100644
> --- a/drivers/gpu/drm/drm_crtc.c
> +++ b/drivers/gpu/drm/drm_crtc.c
> @@ -229,6 +229,25 @@ struct dma_fence *drm_crtc_create_fence(struct drm_crtc *crtc)
>   * 		Driver's default scaling filter
>   * 	Nearest Neighbor:
>   * 		Nearest Neighbor scaling filter
> + * SHARPNESS_STRENGTH:
> + *	Atomic property for setting the sharpness strength/intensity by userspace.
> + *
> + *	The value of this property is set as an integer value ranging
> + *	from 0 - 255 where:
> + *
> + *	0: Sharpness feature is disabled(default value).
> + *
> + *	1: Minimum sharpness.
> + *
> + *	255: Maximum sharpness.
> + *
> + *	User can gradually increase or decrease the sharpness level and can
> + *	set the optimum value depending on content.
> + *	This value will be passed to kernel through the UAPI.
> + *	The setting of this property does not require modeset.
> + *	The sharpness effect takes place post blending on the final composed output.
> + *	If the feature is disabled, the content remains same without any sharpening effect
> + *	and when this feature is applied, it enhances the clarity of the content.

I can repeat my question from XDC: should we extend this to negative
values, allowing softening (unsharpening) the image?

>   */
>  
>  __printf(6, 0)

-- 
With best wishes
Dmitry
