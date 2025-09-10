Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1B1B52155
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 21:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45FD10E9CF;
	Wed, 10 Sep 2025 19:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="avc37zmE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1290610E0C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 19:44:40 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACh7ZN012683
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 19:44:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=MRFwGcw4G0+ktZMni3vfLtmQ
 O/YRU2ZQtqpoFx/hjaA=; b=avc37zmEzVW7YjVsxItPhtWI22GJZQQOvskkWisI
 fAPD0eUnTWrwGwoiLO6/vxsGmyPbq3IOT3bDNSVNVJ9Cb2MPH1f/YAmv7QAcY8Lh
 yTzmcpRFSSiZfYNDmLTj7y+7A+m6xea7WQH0GmwOe5wmaLw5jv5tY2TEC0YocBab
 CzOvW1/dr2D6JZc7kOT9YGSwQkckprDcudn/1rdT9By0GObcCpBRtPZxTT2b7c1e
 QPuKJ5WTYEV9Uc7qEOByIVZQUFjqVgbtBlcdN/okWE5aChurpHzl8cLP8lDRQrBc
 PU9xSiqsSMWBtA8NUcn7IkT2woCXAPQ+JlIxcIPC+4K4PA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0w1tq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 19:44:39 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-72023d1be83so16292156d6.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 12:44:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757533478; x=1758138278;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MRFwGcw4G0+ktZMni3vfLtmQO/YRU2ZQtqpoFx/hjaA=;
 b=WJJT+b0ZBt4xVB9NAeYackIMrVZcHvkSa5tNELv7wcDfImQVLpsFJ7KAJSsA6yhk4G
 08ZVbgujfN7aPLuKXLjAFRC7LMh/pN217ABKhO0tUpbMZJyLvnAqIykdBmocCgWDmach
 WBoI/8pQDH36/TS/zbupZt+d+MjQj2KRM7ZIYcYixTfWPu+cDmMzNAOPc8RY5Mfd2DdK
 xTuuWbqWM80pPYSEF4AqRfvPgJb6HBcp/ILL8uN+0Cenzkf5kBzGtlESVSDfzSgtvEWL
 Jw9m4d4tPlnjsh4KBPoEkNPiEUWQszme86BbQ1nRMEyyostrCw/nLxvOIC5tsPDWvOM7
 a2aw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXU7DndwkQHBUA8qHp1ds0Tz7neYODjF57eVKyxy5t68cc9iuq5MSpQSBbHqJk7YqymeUxrNmVlpcg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyPYfgHb6CYpNZJ/g9G+1iuXUalsAUTYt+CKYAwLyuDVX0Ti27W
 h7l6YYxkWaFqGuM0r1cIs3mWd0dPzd2gwpfupcU20hU1qYvTrAZS/W5SkIkn0Bhm4lQkh3mADLH
 jRxcGCaDUPL73tBa+H7CcpOG2HRYt+x43WgxU/u460Zdws25XW5rdco/3cQJlSYaCRSfz4Dw=
X-Gm-Gg: ASbGncvhmZHd4rwjQin1rxOyNHkwazJKo5XfV4F7FhoXWczG0c68bYo3rwA/chzDYEw
 ltGaJDeo2PFWV3fYP064XNB7OYfxlnyNhXcj95zirfa3YKp6RXl/u/i/spnyIwk1Hbs2Nu05vLZ
 yFYyC2ZhXNoE5PsXOc5t3OWGlJHxsS/K9LyJ1aYL/X256dXVNeqmldm/H76wMPi1QGGE/dBgkar
 XK1oYnWwA9iySFVEEBKuXDSZQyTdy4N+W2/s6mHBpVhOZ1ydpFBrStn0SQyMgbBuSuAm5jMcxTc
 Z01OFZ4tFhz9ATirLIlX2zVdPOnFHW9tyeQ40tBttGC1VVpoMEvL7calWcFuLy1t/zLyHZZrHrK
 jZO0TtC7JVqIg2R/vjU0pFhF7im5/9mGctjdEJzPP8sI7AYezDLrA
X-Received: by 2002:a05:6214:d83:b0:722:4cf0:43ca with SMTP id
 6a1803df08f44-7393ec165cfmr207443226d6.36.1757533477921; 
 Wed, 10 Sep 2025 12:44:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLTybLfL00fFfCA42iPicU5GPH+S6SfBfiUJaoauFhGCNadtLOwQ0vunk0e3CAte+J5/R2vA==
X-Received: by 2002:a05:6214:d83:b0:722:4cf0:43ca with SMTP id
 6a1803df08f44-7393ec165cfmr207442566d6.36.1757533477313; 
 Wed, 10 Sep 2025 12:44:37 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-337f4c4ffd5sm43997081fa.14.2025.09.10.12.44.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Sep 2025 12:44:35 -0700 (PDT)
Date: Wed, 10 Sep 2025 22:44:32 +0300
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
Subject: Re: [PATCH 2/7] drm: writeback: Modify writeback init helpers
Message-ID: <nw4ehd7a655rzyf6g5yxb3z25en45esja2i5uowzy4wpmb2el6@orycag5iccho>
References: <20250909100649.1509696-1-suraj.kandpal@intel.com>
 <20250909100649.1509696-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909100649.1509696-3-suraj.kandpal@intel.com>
X-Proofpoint-ORIG-GUID: x3NJXaQoFF035UmUG5nFjHVAXm78vdF9
X-Proofpoint-GUID: x3NJXaQoFF035UmUG5nFjHVAXm78vdF9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfX0/488fjKQ5Fl
 dOT2LVn/wO+ia0nidJrKQgiw+k26hopgx+cw0L38WyXMNYxyVP6c9/n3EwWu9+QCD/dXSknzgjO
 B6kTotDvmutr4ZamD12yyoszimZj23I6wTa+rvuaoALOwCTmZaYlunADJOs2272IcKPnsqklbtG
 yg8xhBqQHX6vGClhI1s8w++J8u5saP5eCHUogeMK5zQStcSuuVZibo2/W36Tqt6HFQvJQNKcD/7
 Su+q4DlerHbFXBrqo05qmDjjosG+RhfYnGIL4jgFJdIm3sZmavBV5+JeHLNbh/+nlHiOzpJe6cX
 2fCoQ/XWNRbrGvEgQ3upnmagf0+k/qar+lAn8mdgdB4N1xwMH+nh653hv+8R5Vjlfp0Iq16uyW2
 NMKyv8Ab
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68c1d527 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=QyXUC8HyAAAA:8 a=T65gB5C1oy4ZwBZl7KYA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024
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

On Tue, Sep 09, 2025 at 03:36:44PM +0530, Suraj Kandpal wrote:
> Now with drm_writeback_connector moved to drm_connector it makes
> more sense use drm_connector as an argument rather than drm_connector.

than drm_writeback_connector

> The writeback connector can easily be derived from drm_connector.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c |  2 +-
>  .../drm/arm/display/komeda/komeda_wb_connector.c |  5 +----
>  drivers/gpu/drm/arm/malidp_mw.c                  |  2 +-
>  drivers/gpu/drm/drm_writeback.c                  | 16 ++++++++--------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c    |  2 +-
>  .../gpu/drm/renesas/rcar-du/rcar_du_writeback.c  |  3 +--
>  drivers/gpu/drm/vc4/vc4_txp.c                    |  2 +-
>  drivers/gpu/drm/vkms/vkms_writeback.c            |  4 ++--
>  include/drm/drm_writeback.h                      |  4 ++--
>  9 files changed, 18 insertions(+), 22 deletions(-)
> 
> @@ -338,13 +338,13 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
>   * Returns: 0 on success, or a negative error code
>   */
>  int drmm_writeback_connector_init(struct drm_device *dev,
> -				  struct drm_writeback_connector *wb_connector,
> +				  struct drm_connector *connector,
>  				  const struct drm_connector_funcs *con_funcs,
>  				  struct drm_encoder *enc,
>  				  const u32 *formats, int n_formats)
>  {
> -	struct drm_connector *connector =
> -		drm_writeback_to_connector(wb_connector);
> +	struct drm_writeback_connector *wb_connector =
> +		drm_connector_to_writeback(connector);

You can use &connector->writeback without extra wrappers.

>  	int ret;
>  
>  	ret = drmm_connector_init(dev, connector, con_funcs,

-- 
With best wishes
Dmitry
