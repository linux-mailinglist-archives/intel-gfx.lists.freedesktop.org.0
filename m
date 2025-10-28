Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E201C16AE8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 20:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A196010E654;
	Tue, 28 Oct 2025 19:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="PtrDBg+z";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YHrc+n4k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A280010E654
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Oct 2025 19:54:33 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 59SJr5lr2511527
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Oct 2025 19:54:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 2afrDbATXikU2P98B6c0J0m4ZgHNuW/14p+YdDAqu64=; b=PtrDBg+z1RJoSGZw
 ngQn86Waw+T2U8zDWNrDutSLoe8j2rGOU4ErW+W7tYqptFgesimHadUVZrlht1ng
 CmUKNwb7ereJCI5Q4e/KyV2GRswAopZAku1w5o5l4np9fDq5tIY4CfPbmpZRWH63
 uA1o7cSLf7Fq7TbmIiSeq0pR7CGoHjqgD5H4SttoWiB5yd5o7x4ElY5GVsDiN8+T
 BOZtA5o+WBjmIKIvr1/jXlM5oAajD8efbYjRmeinshLqFUGNz2KNfzhu2IrHFyxI
 dvrhDN3guCj5uHHPZytfGhC2ApcnimbGGdEFEXC+2Haci447ir0uEEI7XhUhjehI
 M2Lj6g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34cd8041-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Oct 2025 19:54:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-4e884663b25so165228131cf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Oct 2025 12:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1761681272; x=1762286072;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=2afrDbATXikU2P98B6c0J0m4ZgHNuW/14p+YdDAqu64=;
 b=YHrc+n4k2Zs2POjUDpEwGd1MbKTZBmKxl0LQ8XcnLr5evfFM3xhJIY9TZGpNzyCVCZ
 S7my0a2Qc8W8SEEIsJNmb/yu3UWnK8hNWRvDMFqIFKwULpQs9QhqUzTK6QpSC2VQ5o3l
 JSP6r2Jqj6W49yJQmiLW+aQ49PElMkkQhohU9Rt1gJ2AQmYz+ac+2UEhy3RFHUhy7Fhl
 kXNKva2zaHa/G9zs8I8CyLAYr+lbFeVxfYL2EWAsYPLyOFjnMtpXQXHmOxK/24IpD9DE
 O8TpsFo8JagyC8Fjul5EZLDdo96ZEPeGOU7M1fnzf8rpUclHP/VeVr7jeNX4O7WDotft
 cqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761681272; x=1762286072;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2afrDbATXikU2P98B6c0J0m4ZgHNuW/14p+YdDAqu64=;
 b=bqJcU18LWJyKvc53qn0/0pfQ17zEXicUI2JMTfG/SH9pTQKrnuAA/CEaUnoSIan5S3
 QTy65R8YCwsdQ1HGdW8GLfW4kNh7+sM5XTqsd/xi/ib85W7o5Uv77HIT+BIGacRyfmzI
 hsmMlFSrAverhkPOe8RJ0dnrOCdzk5jMLiI6iewtfOhsl5dkwq9X13kQKdc2lmnmXPNn
 EvZLaZ9cTUUwiVSmqQD8s4W5J9elgT1g3VJRQGHyXOeOBw+eD0P6VYKHg55aEL1uRH4/
 5GfdJTP8kxt0KcLMevorbHRrcdh+BBW0YHBLTeIJRvFkDQRmiLEKgwP6pKGrUdSvUTS8
 UwsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQxT8e1rU0bOokuCoyThsD1lmzODx3FJjvOE0yg+JW6gnH9rocMRBdiK1C4kNGXzEfUjcbv5eFBsg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwZo1dsfW/1jnMzlhqPNzMHSbZSqFvQiIL4UNuPJtyHmdDQoxRT
 4OmjE4YnnAHqjeAiQ7fw3Yrz0nVPfCV9ouFSo9cVJCOmSBEgcuVMWW1N8RiSD0Y7jNpXKbg9nO3
 KRkhDc0GZgiU2KXKaZUiugJedpiMoabj4zTtSOfWsiViP0oXE0aa2K+eFhun1UApvfCFAlFA=
X-Gm-Gg: ASbGncsS4sY4f5IY/i53y1l5LReKcWBDtIKWyAod1l9aSgVM1tIOmKKt33hfrP3a/5t
 uCrXiskKdP1p1Zu+PXLVj+JdA7TQUgvMLR8IgBRjfD9g1McH/+VdzmybTxr8jDFdWuPkQVJT8Ok
 7TLnzI7CNtbHv5+piSSCN9SKwdkBayawhcP9EYDOez2Lm1iF8uOXv897NnNq/7gD9QxAELpVamP
 BrVvYwOQresUKABqrl6ICV57TT2e2DGBChCBrlUWwueqDN2VKeWyBWQRzkemiQGITIDQGq6KTeU
 3iaYV4GlP/5P6dUG739vswgjwAgIoVYK5iDaRknAYg+nkvs27v/iilVuy17OdgonRkckN0V/RLP
 RPhuC99cANTGUxwK3X4arfbDf9DrTHL/JV1tZXdiyDp+PJV1+uW1df5RmiRrTuoETRO3877Nb+b
 3nxrgB/67JRLbH
X-Received: by 2002:ac8:5754:0:b0:4d7:bf73:7641 with SMTP id
 d75a77b69052e-4ed15bb30c4mr5992771cf.17.1761681271909; 
 Tue, 28 Oct 2025 12:54:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFp30l/mxiO0/x28DsAYuBVAOl6GnYN2VrIZ7Onq+dUKIoHEjlqng8hPS5TJz3djMSRii/+MQ==
X-Received: by 2002:ac8:5754:0:b0:4d7:bf73:7641 with SMTP id
 d75a77b69052e-4ed15bb30c4mr5992331cf.17.1761681271214; 
 Tue, 28 Oct 2025 12:54:31 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59301f87f14sm3312685e87.112.2025.10.28.12.54.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Oct 2025 12:54:30 -0700 (PDT)
Date: Tue, 28 Oct 2025 21:54:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, javierm@redhat.com,
 airlied@gmail.com, simona@ffwll.ch, linux@armlinux.org.uk,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, patrik.r.jakobsson@gmail.com,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 robin.clark@oss.qualcomm.com, lumag@kernel.org,
 abhinav.kumar@linux.dev, sean@poorly.run,
 marijn.suijten@somainline.org, tomi.valkeinen@ideasonboard.com,
 alexander.deucher@amd.com, thierry.reding@gmail.com,
 mperttunen@nvidia.com, jonathanh@nvidia.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2] drm/fb-helper: Allocate and release fb_info in single
 place
Message-ID: <dlvkkogiueskk4emkwdkpst4pvqk54ordyuqobh3hzqckuzz3f@gguhnqagpvwj>
References: <20251027081245.80262-1-tzimmermann@suse.de>
 <3d1bc193-fbee-464a-b62e-ceca06d8829f@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3d1bc193-fbee-464a-b62e-ceca06d8829f@amd.com>
X-Proofpoint-ORIG-GUID: 7P1YO3sPZ5RdlPd-FcsN9w05iPlRnW7h
X-Proofpoint-GUID: 7P1YO3sPZ5RdlPd-FcsN9w05iPlRnW7h
X-Authority-Analysis: v=2.4 cv=avi/yCZV c=1 sm=1 tr=0 ts=69011f78 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=zd2uoN0lAAAA:8 a=EUspDBNiAAAA:8 a=G-TusFqAXxKo-7y7638A:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE2NyBTYWx0ZWRfX4CY2jZm7xlim
 Vu9zR0wVUWLSbO0TX33v/6eG/s3/92dqVUNHK0oRwArfAT0pleNUN5YJaLWURptxgFp95KJgG+I
 +QBcJ5u3MWzuZkIjRQe5CHUqZTb8YsPhSrl5yH8swlT6R1ZPj1bakHyD5SbOzK3r7YA7B+0IS3Y
 5Dg7LT9g5fjX1dp9L0mtYW+CzGZTZ6Zvc0gLtj6qxnyJfkXSq8KovhKM5dw3yfa58WGL1xeal5A
 woIW+b+UlEI2B8aEZ+Omz+e1USIn4QhVsfhoO2iZEpQlJ9Zjjc4VjrRVb2A7xiZcOKi7dQGKPjm
 oYz2NnRIxN71gIuq5m0Mr6iX041YmrjeDCWQcIuuwAoyvlh2yMFn4EhwN6GeVnmmxdeck+kiDCC
 FMVHwNLJDgB7TkMMdJoljhhxYy8vkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510280167
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

On Tue, Oct 28, 2025 at 08:58:10AM +0100, Christian König wrote:
> On 10/27/25 09:12, Thomas Zimmermann wrote:
> > Move the calls to drm_fb_helper_alloc_info() from drivers into a
> > single place in fbdev helpers. Allocates struct fb_info for a new
> > framebuffer device. Then call drm_fb_helper_single_fb_probe() to
> > create an fbdev screen buffer. Also release the instance on errors
> > by calling drm_fb_helper_release_info().
> > 
> > Simplifies the code and fixes the error cleanup for some of the
> > drivers.
> > 
> > Regular release of the struct fb_info instance still happens in
> > drm_fb_helper_fini() as before.
> > 
> > v2:
> > - remove error rollback in driver implementations (kernel test robot)
> > - initialize info in TTM implementation (kernel test robot)
> > 
> > Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> 
> Acked-by: Christian König <christian.koenig@amd.com> for the radeon changes.
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # msm


-- 
With best wishes
Dmitry
