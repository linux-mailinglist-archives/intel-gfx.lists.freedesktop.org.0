Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EECB193E1
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Aug 2025 13:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B8C10E009;
	Sun,  3 Aug 2025 11:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="SJIwlYss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E2F10E009
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 Aug 2025 11:49:56 +0000 (UTC)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573A14p8031445
 for <intel-gfx@lists.freedesktop.org>; Sun, 3 Aug 2025 11:49:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=F0atcWDoi+Vh1I34Vx1HQrc9
 2SNS7uLMwCYa5Xut8DM=; b=SJIwlYssh9KLB/uQrHMtx6S0u09XzPlNa//seJws
 sPxs0Y/oCGI6ZNtXcXgADEGYO1vuOsW5zp64v9yb9cqdENyRma4Xnkp0xNePOX/I
 fiObKaDKS98g6F0uD4Pvx5KtnuA0OD7g0FP6EGanq0CHjqUgK83ZHLFhVjLGxWnf
 WKlySZ1Q3XTKQoneGV/5W0uBmCPLt/VQWnL9gb6Nxhy/nS1GW9T66YsKZpfShLEu
 rXIk+Cd7cuiJONPE+dGSF8h04Vjj23dwmZ96lw8GIwb4ZnaWTC6UfrwqPRsCZDp6
 C7tJFs+ts0SRJ/bOUwoN9p7Eg5wB5EbwI7hI4jcLPWjuyg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48a2ke09xh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 03 Aug 2025 11:49:55 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-7073f12d546so72883106d6.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 03 Aug 2025 04:49:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754221794; x=1754826594;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=F0atcWDoi+Vh1I34Vx1HQrc92SNS7uLMwCYa5Xut8DM=;
 b=gx3tL8UUPr2WLf+JiZOCls+NrhdqvFmACJ9LSZAk10atbhNE2XnsdirF43OAIAkrBt
 8ZyVUukbP3RBtCKsNtxq/qrvqosfOJTYiI1sL7q08j4nDj1fYmDLpBfyCPFiFwJr9vY5
 So0QLmEerjA09r2uh2vKwxBn6tsOemJ2KBM+aqeUSLCFdD1ltcGCaEGx+lFoZeISsvZJ
 ztL8h2YIq+EHFed2dLO1KPjSllTYZrdvxZj3HhmjBQmtZhgaNe//sCIR7efY0Q+/+IXK
 gBLc/qxzfgop9/GLI4vyK6TeeU3jib0N6MkIa89ctDIHR3HYJcEY1ME10evqp1yEB8jE
 OOpw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxs7xzP6A6hzoRfaAwW3ZjpW2xqLr3ZhASv/wfNtT/6ls3EwfJheqPIBywKFDYUk8D9DYXuuqrS2s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxCT5p4TpuKBeqEqRgdJW/zpMsqnyDjsnalZhqc0c/jIaNXFKPv
 ysasQm552C4U8zRC0SQARyj+ErzUShql5ryDf9OP7Vr0kWyEH/tyyEELsbiB5hio6J53wIFKDJc
 LF7XvVbLlShFeGrQGX8VWfg3HRWSWBYAWpAMg66DdCUAuEoUENpFNLH9KTiMWkUDpnKmmfZ8=
X-Gm-Gg: ASbGncskVV1enjzOYos/grbQHh8OgjVKpi835MTXATm77D5MUvFb/c0VihXQe/zdR0y
 +UW9oUX2Qf5HLCMeblkvvBBt3MO0sES0wUzFABqxb5kQlA7DbSekB9unNmewDWimj6L41Y04iF6
 6BLV5Iol7xJlJl7tIVi1bBWttrnrPMmeWkdt0ZrGgsfhS51j9DXiklMWK4zsZJ/i//L1kYkz6Mh
 xc/mJc6Fi08smwVKHH91yxm2sCWicv5cLwGcfliLe3Gk1l2y6k5+kBP5oUvmCtVHR7gSUXi4s4A
 u9xcue/gnDtKqLCnhHcP22VZ8PpCUmycszJkL0tKeBO4qZwHA6Uj6tlAg+l/j19RkPSIL8c++U1
 jAbZvBTF2ikhjneJ2H8bH1AmS04Shr3GQu/teZmg+8f8Ob/gyilUD
X-Received: by 2002:a05:6214:cc4:b0:707:3f8b:a5a4 with SMTP id
 6a1803df08f44-709365781bfmr87897066d6.13.1754221794097; 
 Sun, 03 Aug 2025 04:49:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjhr/vnQ2UfAYXxw4URGjLAiAh2TXLLrb5gVPWPnRmIZywfUY0NMaZxf605O95p1SSwKofcg==
X-Received: by 2002:a05:6214:cc4:b0:707:3f8b:a5a4 with SMTP id
 6a1803df08f44-709365781bfmr87896826d6.13.1754221793639; 
 Sun, 03 Aug 2025 04:49:53 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b88cabb67sm1307362e87.152.2025.08.03.04.49.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Aug 2025 04:49:52 -0700 (PDT)
Date: Sun, 3 Aug 2025 14:49:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Cc: airlied@gmail.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net
Subject: Re: [PATCH] drm/i915: move struct_mutex from drm_device to
 drm_i915_private
Message-ID: <kqvtvlhwbwrkdueeszroeojflengsjdvqwu2n6lh4stl3vm2mg@7xgftffaqecw>
References: <20250718161725.289944-1-luiz.mello@estudante.ufscar.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718161725.289944-1-luiz.mello@estudante.ufscar.br>
X-Proofpoint-ORIG-GUID: -c4PKNuGQWEGV_Pjr3JgpMXHVA3aizkw
X-Authority-Analysis: v=2.4 cv=TMNFS0la c=1 sm=1 tr=0 ts=688f4ce3 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=JRnknix9L4mqcjwq-FsA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAzMDA4MCBTYWx0ZWRfX/EY3CzzpeaP9
 hMb+3nFxv26YtZMyovwdZs5W9rzDgOEhCpqak/JG5NFxY3wiSw5Xh1HO3fJtNCdVQT6LlNtqudT
 j8ylNH8TN+ydFsKBGBNBHM9GHVL1gpjr01M61selbRkQlsciPUkW+kjPM2NRo2vt2jRLtES+Y60
 QaOSPd5UmglNhYF2yrr2w0vHaBtxhRfc0AAu6bV5npGXZkLbHCWh8XgBqhfeUOP5zxKMXyyU8wM
 dv9KtwENwy9UBvCQMJbBYJk1DZBid8krVNNaMGmpRqKCw3R5NG/XYOwSH8AVn8nNks1JvXVdiZU
 XXP5jEgBKmsFZfwOqipadtJ+IXgp++Q8P6fIcwfVWL8IsEUXI3eLNizCIxNqdoALqeVFqAJcl1m
 OtKednibrR0T7suoFG8Yua7+dPTnzotnXnvZj301asKlPnI/eyBJVxjxFTvl/4CixH687p22
X-Proofpoint-GUID: -c4PKNuGQWEGV_Pjr3JgpMXHVA3aizkw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-03_03,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 priorityscore=1501 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508030080
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

On Fri, Jul 18, 2025 at 01:17:25PM -0300, Luiz Otavio Mello wrote:
> i915 is the only remaining user of struct_mutex lock.
> 
> Move it from drm_device to drm_i915_private so it is only used within
> the i915 driver.
> 
> Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 4 ++--
>  drivers/gpu/drm/i915/i915_drv.h            | 8 ++++++++

You need to perform actual move: call mutex_init() somewhere, drop the
fields from struct drm_device, etc.

>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index e8a04e476c57..7135fdb0ebb4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -678,7 +678,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>  	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
>  		return -EINVAL;
>  
> -	mutex_lock(&i915->drm.struct_mutex);
> +	mutex_lock(&i915->struct_mutex);
>  
>  	if (log->level == level)
>  		goto out_unlock;
> @@ -696,7 +696,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>  	log->level = level;
>  
>  out_unlock:
> -	mutex_unlock(&i915->drm.struct_mutex);
> +	mutex_unlock(&i915->struct_mutex);
>  
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d0e1980dcba2..c585569b6036 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -224,6 +224,14 @@ struct drm_i915_private {
>  
>  	bool irqs_enabled;
>  
> +	/*
> +	 * Currently, struct_mutex is only used by the i915 driver as a replacement
> +	 * for BLK. 
> +	 * 
> +	 * For this reason, it is no longer part of struct drm_device.
> +	*/
> +	struct mutex struct_mutex;
> +
>  	/* LPT/WPT IOSF sideband protection */
>  	struct mutex sbi_lock;
>  
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry
