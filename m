Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392A4B12A7E
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jul 2025 14:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1BC910E476;
	Sat, 26 Jul 2025 12:33:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="LYGuj1XW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F3B410E473
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:33:58 +0000 (UTC)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56Q3XK8e011050
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:33:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=w8cRMM89BCO/d2ibKR5H0J+K
 hadOlFl5UBCobrDClss=; b=LYGuj1XWNn7PAy9gSM1fBsaSEAPLeC2rogQ5BrHE
 eicGP9AbExnTrHUhfNgTokQKqGz0ai1rIOC4gyPHIaEiNegmsENPncV73LaQKflJ
 WglWPqSCffp9+9rnt1uYIOsTyvLu7MM9VjjkuLBvGqmm9W9cLq/AYSxgKPcZpCUE
 meIIftXcjeXQNlucaQEZBbUUG0OEzZ3tvYbiW398x5Pw7pfUxvGuf9Sf3EcgoOyY
 yjSdX4K8a5TI7cAgqThweKSte21+isdIhf3Mc7hCpkwv/S9o8X72k3uQyMpWzsNT
 mq++n8WO1qrfemRzqMUl4i4ltYez/XDnYG7+2L7e5EWzAA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nytrppg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:33:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-478f78ff9beso111750161cf.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 05:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753533236; x=1754138036;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w8cRMM89BCO/d2ibKR5H0J+KhadOlFl5UBCobrDClss=;
 b=f/9iJh/JXMq3vJY29TLc3whtGrHRysSKSLF5WmWGuuoCvH4zntoeaewTyoYnjywTmE
 oiFMciNCyElPW9mfC+0FVowx6+GS6UNyhIi3j9+eEWsLUVKLrSBM3t1brM8wq6dkOUTN
 waGlpYSBu8I7leKyH2HlWx+pqUHxZ8L6iDO5KqnzjhOy/mDV6TAfwd5g5SFbAs4C0uZN
 /n3neImliT0k1FvuifX/iHDMvYK4nj1DwGEumxFxlK+thgHnWlITpeA1JypnLSZtmNkj
 hGlzq+MtZIW9x7dDusrtp0v3gCLTdlUkNREo0xo2oYWWNHDW4w9rsOMDdJEisnGBZzpZ
 D+fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMXLPdUtnaV/XKSz5TnbciFICZ46gvLuNXRiALg+060l2EUW4dxsqGNi9FXalTBYVxGtBHti1jd54=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzGPhH+ZduqUTPZiRIRrA2aQC/bIbTbnZ2pgnkyrtc/FyZ1zjAV
 nyTpV+kY4Ig5PXscOCIx7xSST1NHOogQg1ZCqpeg4PIJp62DeHSbU8Nh1urqf39uZl9jGkh+Rhj
 tK3WUH1qM3GCmPNKLlqr1iEwe4+ewCXxaamEgW6znA6tLcYxeNNWynBlkD7POJ3y9fGOICxg=
X-Gm-Gg: ASbGncu8SSnlM5XFQSmxuVVquXq2aoDJg1j11MSnSVm2aGXFNRvjWBMZTK3vbgh7EHm
 2FUU/pk73FV8EYp5gquww4MOrTFfYR3kFar6kNDwYkI6oGVI/NlVmi2m4sAf/4jQ3pv0DTu0eJZ
 a6Q+EqNb3keoJg71S4cmjFOBmHcUmgIP3MdkIFLplGFvvhrhLwG3bervWDY2i/tImYeemh/dUUa
 7NV0Y0v4Wjs/kmPW4Tm04Z8WoP9WW9YotBqrfj/df0gplcANWy7XtFP7G+s3UiWrd6VBdZG6KVq
 CTuqxkRHSm5Yeitx+t3IuYNRahQaKSlalAQ25IdEgfn0+p7uA5KywbwKTEMO8C17+fZtFvEFtTF
 IesVbInCClJVM2/cVwa9pXogjGJskUkNTLZ4R35qLbqX/TOg8uQqc
X-Received: by 2002:a05:6214:2622:b0:704:7c55:4ff3 with SMTP id
 6a1803df08f44-7072049f1admr69563826d6.4.1753533236024; 
 Sat, 26 Jul 2025 05:33:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYL+i20wvik2k8ybZcLSjUO54dD2ixoLhw+HaO6iD4q20/2WO93wX4OnjSp+gZ9Ik7pPwU+w==
X-Received: by 2002:a05:6214:2622:b0:704:7c55:4ff3 with SMTP id
 6a1803df08f44-7072049f1admr69563546d6.4.1753533235548; 
 Sat, 26 Jul 2025 05:33:55 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b6316d6cbsm427270e87.29.2025.07.26.05.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Jul 2025 05:33:53 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:33:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 03/28] drm/writeback: Define function to get
 drm_connector from writeback
Message-ID: <ng2ps7k5h74w6zo62oqazzetunjc2psooobmh3zcrrmxesi2ua@va6z7eqjst2u>
References: <20250725050409.2687242-1-suraj.kandpal@intel.com>
 <20250725050409.2687242-4-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725050409.2687242-4-suraj.kandpal@intel.com>
X-Proofpoint-GUID: Mk1upg4frtwtHN0JaEJh0YYdGH22XNxq
X-Proofpoint-ORIG-GUID: Mk1upg4frtwtHN0JaEJh0YYdGH22XNxq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwNyBTYWx0ZWRfX4Hkermmmy7HN
 JmW+V0Hp6D9c5BCKyCW25ZtJYJuU9wUIYvtpvrXGTQ/H6jzs66UoQOpLfNZh1/De7S9JKQN7i6S
 0xzGZAnPIXgr9Q9UJ2lLsyIi/W2uEcOuk9JP7Y9LUnNV/tQasGWWPrMl4JNL/ynaKT1u8q5NnYd
 P77sNFPpbCH7HLPMPGgBc6aDA5/ld/OY+8wYk0ftwGKsJ9Ybp8m/DWfkTcrg4jBjyQ9852m+ggA
 UBNJWgyBjNS+mILFMcXcSa5+08E+CUqCSo4RIobr8KcSY8QlL1m1v26ygEc0VDtlf4AsJsl5jp0
 jkcXnNwgmq2irwNx4fpbC7Y6lGeBbEVavQXlCrGgEZVNgHEL4RlQYcuYhsKwChxi497x5y5lKwN
 gvz5yZ33PyZi0QOApghxq3VAmUeJgv1UDA+u+1DLVvxWPey6aW9I8T8wM+ec0aXiitDiPNWf
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=6884cb35 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=QyXUC8HyAAAA:8 a=ueQVv7-7oDeDgNA6tiQA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1011 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507260107
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

On Fri, Jul 25, 2025 at 10:33:44AM +0530, Suraj Kandpal wrote:
> Now that drm_connector may not always be embedded within
> drm_writeback_connector, let's define a function which either uses
> the writeback helper hook that returns the drm_connector associated
> with the drm_writeback_connector or just return the drm_connector
> embedded inside drm_writeback_connector if the helper hook is not
> present. Lets use this function and call it whenever
> drm_connector is required mostly when connector helper private funcs
> need to be fetched.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/drm_writeback.c | 33 ++++++++++++++++++++++++++-------
>  1 file changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index e9f7123270d6..d610cb827975 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -120,6 +120,18 @@ drm_connector_to_writeback(struct drm_connector *connector)
>  }
>  EXPORT_SYMBOL(drm_connector_to_writeback);
>  
> +static struct drm_connector *
> +drm_connector_from_writeback(struct drm_writeback_connector *wb_connector)
> +{
> +	const struct drm_writeback_connector_helper_funcs *funcs =
> +		wb_connector->helper_private;
> +
> +	if (funcs && funcs->get_connector_from_writeback)
> +		return funcs->get_connector_from_writeback(wb_connector);

The get_connector_from_writeback() and
drm_writeback_connector_helper_funcs should be moved to this patch.

However it feels really awkward to make drm_writeback_connector, which
is a wrapper around the drm_connector, to use some external DRM
connector. A quick grepping reveals API (which you missed) that expects
drm_writeback_connector.base to be a valid connector. And it would be
very hard to catch sunch an API later on.

If you want to use DRM framwework, while retaining
intel_connector for writeback connectors, I'd suggest following slightly
different path: extract common parts of drm_writeback_connector into a
common structure, and use it within the DRM core. Then provide functions
to fetch drm_connector from that struct or fetch it from drm_connector.


> +
> +	return &wb_connector->base;
> +}
> +
>  static int create_writeback_properties(struct drm_device *dev)
>  {
>  	struct drm_property *prop;
> @@ -478,6 +490,7 @@ drm_writeback_connector_init_with_conn(struct drm_device *dev, struct drm_connec
>  	if (ret)
>  		goto connector_fail;
>  
> +	drm_writeback_connector_helper_add(wb_connector, wb_funcs);
>  	INIT_LIST_HEAD(&wb_connector->job_queue);
>  	spin_lock_init(&wb_connector->job_lock);
>  
> @@ -527,13 +540,15 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
>  
>  int drm_writeback_prepare_job(struct drm_writeback_job *job)
>  {
> -	struct drm_writeback_connector *connector = job->connector;
> +	struct drm_writeback_connector *wb_connector = job->connector;
> +	struct drm_connector *connector =
> +		drm_connector_from_writeback(wb_connector);
>  	const struct drm_connector_helper_funcs *funcs =
> -		connector->base.helper_private;
> +		connector->helper_private;
>  	int ret;
>  
>  	if (funcs->prepare_writeback_job) {
> -		ret = funcs->prepare_writeback_job(connector, job);
> +		ret = funcs->prepare_writeback_job(wb_connector, job);
>  		if (ret < 0)
>  			return ret;
>  	}
> @@ -579,12 +594,14 @@ EXPORT_SYMBOL(drm_writeback_queue_job);
>  
>  void drm_writeback_cleanup_job(struct drm_writeback_job *job)
>  {
> -	struct drm_writeback_connector *connector = job->connector;
> +	struct drm_writeback_connector *wb_connector = job->connector;
> +	struct drm_connector *connector =
> +		drm_connector_from_writeback(wb_connector);
>  	const struct drm_connector_helper_funcs *funcs =
> -		connector->base.helper_private;
> +		connector->helper_private;
>  
>  	if (job->prepared && funcs->cleanup_writeback_job)
> -		funcs->cleanup_writeback_job(connector, job);
> +		funcs->cleanup_writeback_job(wb_connector, job);
>  
>  	if (job->fb)
>  		drm_framebuffer_put(job->fb);
> @@ -665,9 +682,11 @@ EXPORT_SYMBOL(drm_writeback_signal_completion);
>  struct dma_fence *
>  drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector)
>  {
> +	struct drm_connector *connector =
> +		drm_connector_from_writeback(wb_connector);
>  	struct dma_fence *fence;
>  
> -	if (WARN_ON(wb_connector->base.connector_type !=
> +	if (WARN_ON(connector->connector_type !=
>  		    DRM_MODE_CONNECTOR_WRITEBACK))
>  		return NULL;
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
