Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3909AC4304B
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 18:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBBE10E1E0;
	Sat,  8 Nov 2025 17:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="W8zryxwm";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NzTkGw5L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC9D10E1E0
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Nov 2025 17:00:52 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5A8GvWkr2201319
 for <intel-gfx@lists.freedesktop.org>; Sat, 8 Nov 2025 17:00:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=SymD3woxruHShZlmzgGQ9Ao5
 sdm1n6xaKEBnyNrZI5I=; b=W8zryxwmyyS0uVOxyZdcWyJS7fEeS3r+4YSWjwAH
 0XsaGqv6tzTMZ3Pco9DdQqZSl2SDWFk+/GcF1CEWld8UTkEY7RcdX9bKPUdaI2ik
 MSIKK6If78PXQokl1VbgYqrE5UvCY+1p9ZJBIaWBsgSb6OftqJwRpa9N+iuLz5vB
 avPoz9QgcFuCQL2t785LjXPrOr1AK8mCQqaSlh1MolBFH71HQZrkAHq1hHm+/gCU
 I0F8y/Nkh2WkGUffdAXDrjwTEUKkD8SFX3r0sqWdBpsRrZ9yPnS5lTYruEkH1hSU
 eYtSU1MHNq9GN6+HMgz5HbHRaH0yn9NpB+Hwr5A+7khPgg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xs78w8h-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 08 Nov 2025 17:00:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-4ed5f5a2948so49264411cf.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 08 Nov 2025 09:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1762621250; x=1763226050;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SymD3woxruHShZlmzgGQ9Ao5sdm1n6xaKEBnyNrZI5I=;
 b=NzTkGw5LqsizL6ssv3i86nmILDQ95960u1JZqF/rTg47inBLvXPjcpboWIOtuLcHAQ
 4XMgPyuugaafTwRcM+cHDKDrpQmjy+fHFxhtfCblvO4BS1T22Erm/73PeQRNXi/l6Kry
 tEYaJIK30IsoQMX1uKkaC3F/QDDUPmD9Mcv7+e9qboHznr2EdFLkEbQ/CX0Y4yspARDV
 O4jeM2Mc7TERQgLKl1dMJXmeIy21qtL97azKYkKAn/tlW5yNKFJFh4pzDslevT3+qaaP
 qIcjf6ffb/AndCRFKZRaM4JlxTviEVw3MekfuaV/7Bxw9IOvNULaFhqFR6d+nXJQMp9d
 YlSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762621250; x=1763226050;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SymD3woxruHShZlmzgGQ9Ao5sdm1n6xaKEBnyNrZI5I=;
 b=BETjljd62LdJEWj9sIlBUz7X3PkYbt7BQNgnWpaQJHt/xNWtdBQFMiXqkW+Iw7LcLy
 9NQOBTvyFkR1OWH/jKsupBehN8YyDNl9WovNRL2MJUJ0IqhjsTcmvrY+I05iP/s/cjbo
 ZejNuruBRxyzCb3laMHnetiBqYba1BIP4UZQpQUL1p3/VKyUnFYfhw73MJ2tgUrlnmq5
 Bv3KSygjNs9LTX4zZ2NpKbfugn+jq8xcnAtNVoOq/oB5agPM407XmCrtB0oFkMFWcXJp
 NPM/npPjLgXlZ1mxqdbQnYCuy0RO7e0OKeoada0u2IbZw7NnRm2Zlg9Tj0FVgf++UDEs
 e4cw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWwuSCI3D9voyt00s4WXNvC2TKBY2lOStUm9QnYCoHOrPtnipkH/SCpUnhEkrkS/GHohnyJbkn2+aA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx/n/qXtSnRcN4KFHmBQt3StL3fXg50ffR+ndf23zF5a2HuJhZL
 Dvrlm2+sf46OlJDMpEqyMTuOnU4lufJkN0ZBbiZcGVHYWkjq6tnPe0L/QLV26Xs2JLaFCRKTWVr
 zc8ZzMECkU+gZcLKUB08y5EB+BSEHK27tMRD/rCAIlglZuQ97bAipb68M1LG0flAYki7SmsE=
X-Gm-Gg: ASbGncvX+k64CtPS6W+BAQ3qdl0prU51tLsdTtT0tWpLyXboJMGTHh7/tTLIfCJGjwa
 swzUleo2bf1nK5gY24r8qdoTVeo0/kZK8Vj0JIvz8NoAVOchHOEo5jnUq7k+0Ti61/pKBeB8wOM
 shc6DFtHO1G8aAuTDzpMVWOemrI/xVIzeOipgd1wswpvmkuAHqChD+8KHo1YmNHR9R4sZgRX5RH
 iFWQzG5Gw0k4WkNUxwRknY/+tqBFGGVj2wBsKoCcWZhzS9k+599fIdXyTwe79GWxW2Znju+u6kb
 YuCq9OHaMIoYhpIeWJEId4WUs8o1O+aC0Nql2jkG6H/I+OksLfUisslOftsG+lgQYUvDUYymlEy
 RmyH+sLDKRk/IgvsQmMNPc02MnXJZiX75dGHcyZUamdWOOzr6bT6FM4dRrge0sf0kUtwbGmC4NC
 DFI7gM7Mp0Ng1s
X-Received: by 2002:ac8:5acd:0:b0:4ed:43c4:5e79 with SMTP id
 d75a77b69052e-4eda4e7bf1cmr44278721cf.12.1762621250277; 
 Sat, 08 Nov 2025 09:00:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1ot36r/5empkRXCspZfcIecbvIzABkFl724CS94Vw2gQkEMA6LYJRcTmCK9inn074sbu6tw==
X-Received: by 2002:ac8:5acd:0:b0:4ed:43c4:5e79 with SMTP id
 d75a77b69052e-4eda4e7bf1cmr44277961cf.12.1762621249762; 
 Sat, 08 Nov 2025 09:00:49 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5944a01a67asm2305233e87.38.2025.11.08.09.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Nov 2025 09:00:49 -0800 (PST)
Date: Sat, 8 Nov 2025 19:00:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/msm: use drm_crtc_vblank_waitqueue()
Message-ID: <hvbwatl37zseui27epzns5btxdzrjehamtua34ja6flenjxz3q@ac57pl6niv62>
References: <cover.1762513240.git.jani.nikula@intel.com>
 <5917fd537f4a775a1c135a68f294df3917980943.1762513240.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5917fd537f4a775a1c135a68f294df3917980943.1762513240.git.jani.nikula@intel.com>
X-Proofpoint-GUID: Hc6BAV1pfNt3iXBVHIGw_yRV-Im4BaEj
X-Proofpoint-ORIG-GUID: Hc6BAV1pfNt3iXBVHIGw_yRV-Im4BaEj
X-Authority-Analysis: v=2.4 cv=LtifC3dc c=1 sm=1 tr=0 ts=690f7743 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=tVI0ZWmoAAAA:8
 a=e5mUnYsNAAAA:8 a=QyXUC8HyAAAA:8 a=32IxprGEISmnaGXNLfEA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=-BPWgnxRz2uhmvdm1NTO:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA4MDEzNiBTYWx0ZWRfX+WietX0EB9Og
 Q58KOO5yaGTarsRintcQl3X8rveyvzTgpA/fneRgma21iZWxQFOI7h8oxaJuzUg5HX7qFhFmrX+
 3t7sKDgsAzr0QVKXZa+hfRG1/nLSp0uiMyem5AAgZVVc7FBp23DR+oL+kXsWgeYyWI4Lf/qd9x5
 vo0BOeRfjnZQP6hzvJ9EsW9TgQroJRij63OndTi2lIGQXYC0hGWVf6PVTDKL1hImRry42HOAj3/
 ExDGqwG3GX7naK5Y49rcL2DWbAJjko0BdoPYFhvoFsHGkGazyXmXXjy7WG5sql9s0jDP8ml4mLi
 1nT/dReuLLJP86Nz+8RBnaPbAcyY/9lfUWyVVH//FHo8I1mf9riQlWCb4VLivxOBjiiaTa6pW5U
 PcXOGe8Dw/9rLrygZeZH5LnhwmBk7g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-08_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011 suspectscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511080136
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

On Fri, Nov 07, 2025 at 01:04:57PM +0200, Jani Nikula wrote:
> We have drm_crtc_vblank_waitqueue() to get the wait_queue_head_t pointer
> for a vblank. Use it instead of poking at dev->vblank[] directly.
> 
> Due to the macro maze of wait_event_timeout() that uses the address-of
> operator on the argument, we have to pass it in with the indirection
> operator.
> 
> Cc: Rob Clark <robin.clark@oss.qualcomm.com>
> Cc: Dmitry Baryshkov <lumag@kernel.org>
> Cc: Abhinav Kumar <abhinav.kumar@linux.dev>
> Cc: Jessica Zhang <jesszhan0024@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: freedreno@lists.freedesktop.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c | 3 ++-
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
