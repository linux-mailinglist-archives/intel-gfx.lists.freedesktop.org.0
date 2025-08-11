Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9978DB2054D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 12:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18F710E426;
	Mon, 11 Aug 2025 10:28:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="d9sOpvJs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED4A10E41F
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 10:28:10 +0000 (UTC)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dCLZ029349
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 10:28:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=S0wh/vf9/ahF7czkuW2zqdi/
 QK9zgAaa0tIwnSvWMPo=; b=d9sOpvJshStdAy5fa3QCF2K0LlzG6kYdh0u51C12
 tq/CY6gep0XLjkozWPaZQAAVnQKqRxdS22XjMpXF9KpTa/xwmJklZcYi58+wVtBz
 uccjxAgMX3MC0JIAnZBb19FrvZGpx6IfkxOaa+Oaw4McjQGiTFsw+pKUpU8mxJjs
 7N8dBL8C/OS0coltbGBCZHdG9r++tckpKwCpGwDM/DS10wGnY6qgBbwKEhy1sYxr
 kOIn4k/qhvBDr23TfRdX3tXIKif+NCPm8UvNEutjTP9aa6ceDjrb26lTlYkSltQp
 1okPKCG5h7mnm9HBgpDlZUdf7Uhjsf8pf+jXYzOJhqBDmw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9sm45y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 10:28:09 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4af1a20cbcfso111170011cf.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 03:28:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754908088; x=1755512888;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S0wh/vf9/ahF7czkuW2zqdi/QK9zgAaa0tIwnSvWMPo=;
 b=GymKHR7zlmR92N4X0In93gDjX7lxEGkrKXgYy6+2ggBH7R95J0Iot9qo+JIDwLVRMF
 graJIIjwY/0QNIciPC/2f6toipjgBEdRQC/0YjMMM8UXzMZTSbF45gVN8yG0Lchn4Xx4
 YZmvdjbP8/Nty7vRtqht1x1gCzzJ9a4J+DDnnDgWlWoXIm8JGy00ZMH3bI9LxNOCjGGP
 FsIrZLUJSKzq9EP2X0C2bK4vVXmyAbzJ1pZ2PveqePJEwgNGIFfrk2XYkMmqHiUaAzFp
 lsW6TP1ckHqA18yg5FieGjbzrEndv3ZmvHGZGMntlAP2Gis1i+vsGDggB9QtixkxsnHu
 HQkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQrGoaFzLMo9AjwfenLfpzA+9/njTmWyoIZwt3WAu6euXcDw9f/twlL5/cvKW4AV3olczWP0ubaVo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxzPYtcEpiEvMtu1RbechzEV8AtR8KjzU860YdLHXw5sQCSrCnU
 P9wrUo+UK8hYU7lqzT2D7GWtrWiDAT25N8CtEWL9c2BdLHP8wWWbHZ1F/zSHFtH+wk4XYHKZrsK
 WzTt2WI/C5Lqt1jUQr+et3xD6sgjLSrTLcBciEFU+SJxMkfmjNUdlomK0AIY7dK+AOqnmHQY=
X-Gm-Gg: ASbGnctjlr16wKr4peIVSdC0KT1iYmJ2A4n7shYg2QOCIPGj/s7ZFBFKZJVcS896Ncb
 gjn4Rd1A7qrpJbM0UbzZVuh2inVJ39+Xt0rB35LuWwt6e45JP1GrDeDbNOvfaJNhrilMiqEHUk4
 T52b7xvqMzvRviDyovfxqG0SBCWAttPzLBRwGZHe7OuTmYMxvq+0lSmuGoVjH5Hme9XmUKa5mAi
 gqW5vfE2/iU3B72SPAzcuGGtT050kTafidjFic8R+UCmLDznIKTzDjO3vOb3IDUuOF+c9Oz1N2n
 83M7Nbpsqj/ekugDQQNPSfvpTIMbejRw6I7kRM/ZCCJXhnRF92GS+3yD0oLyPfQ7OeswAMtjSzn
 6AOf/AgXIQ4JIFo0EeGfyfYImf2gvi5+pwmTxHLtwFgnL09FnZKZF
X-Received: by 2002:a05:622a:348:b0:4b0:889b:bc5e with SMTP id
 d75a77b69052e-4b0ca69c598mr83121141cf.22.1754908088363; 
 Mon, 11 Aug 2025 03:28:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGChlYy+rk1d69F1ULSQJbZUJQYjmNVQhVTyYQ4mc1AGZP7o17UaEkItyvfAe/6wocgG6cF7g==
X-Received: by 2002:a05:622a:348:b0:4b0:889b:bc5e with SMTP id
 d75a77b69052e-4b0ca69c598mr83120731cf.22.1754908087789; 
 Mon, 11 Aug 2025 03:28:07 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b88cabb7fsm4247040e87.146.2025.08.11.03.28.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Aug 2025 03:28:06 -0700 (PDT)
Date: Mon, 11 Aug 2025 13:28:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 harry.wentland@amd.com, siqueira@igalia.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@gmail.com, simona@ffwll.ch,
 liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, robin.clark@oss.qualcomm.com,
 abhinav.kumar@linux.dev, tzimmermann@suse.de,
 jessica.zhang@oss.qualcomm.com, sean@poorly.run,
 marijn.suijten@somainline.org,
 laurent.pinchart+renesas@ideasonboard.com, mcanal@igalia.com,
 dave.stevenson@raspberrypi.com, tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com, louis.chauvet@bootlin.com
Subject: Re: [RFC PATCH 1/8] drm: writeback: Refactor drm_writeback_connector
 structure
Message-ID: <g7ny277cnctr3edw53qyutiyv3yxah2m7pulg2u6gud6f2gla6@micq4aliwx3i>
References: <20250811092707.3986802-1-suraj.kandpal@intel.com>
 <20250811092707.3986802-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811092707.3986802-2-suraj.kandpal@intel.com>
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=6899c5b9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=QyXUC8HyAAAA:8 a=-zeacxS0QVZa6ZkZsZMA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: Tdh6BQeGjkYXyZ7fXxlss5EIdY_EepS6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfX3li12cG/svBe
 +3q0dzVgkyhf/bJPUh8n5qV+Iv1nHmKj8RszsBQGkWrydGEx2w1YTlj/4lcOvtOLK038jGDQbb4
 byJ1UgY3sJYELpWlT2os+ZuvjTtqmavWoIm/IUDF9IH0R9pa2aHAHmXgIxPuGGkHe3y1PJ+Xw/w
 ASBrlVkXviDgl//OWsmKKudK6X1W/6OKE5/Y96IM3m3zqIeJGX9mtm2MroEXj+cGsxO5Q07TBYH
 gX732hgfoUGwYODQ+aovzSt767vt6Fr2jxe295lAzautJRrN/tA7pr2eA/SnVPGXjHku0ICHJ9w
 Dmp8g605m6syk2+WFqBsuyHbCE6WDWJAJsOjrYVTrPndOU/1NO1rM5AZtztCylHJujBgb0gNXhG
 U/8A+BwL
X-Proofpoint-GUID: Tdh6BQeGjkYXyZ7fXxlss5EIdY_EepS6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015
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

On Mon, Aug 11, 2025 at 02:57:00PM +0530, Suraj Kandpal wrote:
> Some drivers cannot work with the current design where the connector
> is embedded within the drm_writeback_connector such as intel and
> some drivers that can get it working end up adding a lot of checks
> all around the code to check if it's a writeback conenctor or not.
> To solve this we move the drm_writeback_connector within the
> drm_connector and remove the drm_connector base which was in
> drm_writeback_connector. We do all other required
> modifications that come with these changes along with addition
> of new function which returns the drm_connector when
> drm_writeback_connector is present.
> All drivers will be expected to allocate the drm_connector.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/drm_writeback.c | 33 ++++++++++------
>  include/drm/drm_connector.h     | 60 +++++++++++++++++++++++++++++
>  include/drm/drm_writeback.h     | 68 ++++-----------------------------
>  3 files changed, 89 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index ec2575c4c21b..198b8c488056 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -89,8 +89,10 @@ static const char *drm_writeback_fence_get_driver_name(struct dma_fence *fence)
>  {
>  	struct drm_writeback_connector *wb_connector =
>  		fence_to_wb_connector(fence);
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>  
> -	return wb_connector->base.dev->driver->name;
> +	return connector->dev->driver->name;
>  }
>  
>  static const char *
> @@ -187,7 +189,8 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
>  					  struct drm_encoder *enc, const u32 *formats,
>  					  int n_formats)
>  {
> -	struct drm_connector *connector = &wb_connector->base;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>  	struct drm_mode_config *config = &dev->mode_config;
>  	struct drm_property_blob *blob;
>  	int ret = create_writeback_properties(dev);
> @@ -269,7 +272,8 @@ int drm_writeback_connector_init(struct drm_device *dev,
>  				 struct drm_encoder *enc,
>  				 const u32 *formats, int n_formats)
>  {
> -	struct drm_connector *connector = &wb_connector->base;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);

Please pass drm_connector instead (to all init functions). It would make
more sense.

>  	int ret;
>  
>  	ret = drm_connector_init(dev, connector, con_funcs,
> @@ -339,7 +343,8 @@ int drmm_writeback_connector_init(struct drm_device *dev,
>  				  struct drm_encoder *enc,
>  				  const u32 *formats, int n_formats)
>  {
> -	struct drm_connector *connector = &wb_connector->base;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>  	int ret;
>  
>  	ret = drmm_connector_init(dev, connector, con_funcs,

-- 
With best wishes
Dmitry
